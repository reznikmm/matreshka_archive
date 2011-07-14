------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;

with League.Characters;

package body Generator.Contexts is

   use type League.Characters.Universal_Character;
   use type League.Strings.Universal_String;

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Context_Information, Context_Information_Access);

   procedure Remove_Parents
    (Self       : in out Context;
     Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean);
   --  Looks for context clauses for parent packages and removes them when they
   --  doesn't needed.

   function Parent_Compilation_Unit
    (Unit : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns name of the parent compilation unit is any. Returns empty string
   --  when there is no parent compilation unit for the specified compilation
   --  unit.

   function Is_Hidden
    (Self       : in out Context;
     Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean) return Boolean;
   --  Returns True when specified compilation unit is "hidden" by one of the
   --  context clauses.

   ---------
   -- Add --
   ---------

   procedure Add
    (Self       : in out Context;
     Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean := False;
     Is_Private : Boolean := False)
   is
      Position : String_Context_Maps.Cursor := Self.Map.Find (Unit);
      Info     : Context_Information_Access;

   begin
      if Unit.Is_Empty then
         return;
      end if;

      Remove_Parents (Self, Unit, Is_Limited, Is_Private);

      if String_Context_Maps.Has_Element (Position) then
         Info := String_Context_Maps.Element (Position);

         if not Is_Limited then
            Info.Is_Limited := False;
         end if;

      elsif not Is_Hidden (Self, Unit, Is_Limited, Is_Private) then
         Self.Map.Insert
          (Unit, new Context_Information'(Is_Limited, Is_Private));
      end if;
   end Add;

   -----------------
   -- Instantiate --
   -----------------

   procedure Instantiate
    (Self : in out Context;
     Unit : League.Strings.Universal_String) is
   begin
      --  Remove context clauses for all parent packages.

      Remove_Parents (Self, Unit, False, False);

      --  Remove record for package itself if any.

      declare
         Position : String_Context_Maps.Cursor := Self.Map.Find (Unit);
         Info     : Context_Information_Access;

      begin
         if String_Context_Maps.Has_Element (Position) then
            Info := String_Context_Maps.Element (Position);
            Free (Info);
            Self.Map.Delete (Position);
         end if;
      end;
   end Instantiate;

   -------------
   -- Iterate --
   -------------

   procedure Iterate
    (Self     : Context;
     Iterator : not null access procedure
      (Unit       : League.Strings.Universal_String;
       Is_Limited : Boolean := False;
       Is_Private : Boolean := False))
   is
      procedure Call_Iterator (Position : String_Context_Maps.Cursor);

      -------------------
      -- Call_Iterator --
      -------------------

      procedure Call_Iterator (Position : String_Context_Maps.Cursor) is
         Info : constant Context_Information_Access
           := String_Context_Maps.Element (Position);

      begin
         Iterator
          (String_Context_Maps.Key (Position),
           Info.Is_Limited,
           Info.Is_Private);
      end Call_Iterator;

   begin
      Self.Map.Iterate (Call_Iterator'Access);
   end Iterate;

   ---------------
   -- Is_Hidden --
   ---------------

   function Is_Hidden
    (Self       : in out Context;
     Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean) return Boolean
   is
      Unit_Dot : constant League.Strings.Universal_String := Unit & '.';
      Result   : Boolean := False;

      procedure Check (Position : String_Context_Maps.Cursor);

      -----------
      -- Check --
      -----------

      procedure Check (Position : String_Context_Maps.Cursor) is
         Info : constant Context_Information_Access
           := String_Context_Maps.Element (Position);

      begin
         if String_Context_Maps.Key (Position).Starts_With (Unit_Dot) then
            if Info.Is_Limited = Is_Limited or not Info.Is_Limited then
               --  Non-limited with clause hides any other clauses for parent
               --  units;

               Result := True;
            end if;
         end if;
      end Check;

   begin
      Self.Map.Iterate (Check'Access);

      return Result;
   end Is_Hidden;

   -----------------------------
   -- Parent_Compilation_Unit --
   -----------------------------

   function Parent_Compilation_Unit
    (Unit : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Separator : Natural := 0;

   begin
      for J in reverse 1 .. Unit.Length loop
         if Unit.Element (J) = '.' then
            Separator := J;

            exit;
         end if;
      end loop;

      if Separator = 0 then
         return League.Strings.Empty_Universal_String;

      else
         return Unit.Slice (1, Separator - 1);
      end if;
   end Parent_Compilation_Unit;

   --------------------
   -- Remove_Parents --
   --------------------

   procedure Remove_Parents
    (Self       : in out Context;
     Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean)
   is
      Parent   : constant League.Strings.Universal_String
        := Parent_Compilation_Unit (Unit);
      Position : String_Context_Maps.Cursor := Self.Map.Find (Parent);
      Info     : Context_Information_Access;

   begin
      if not Parent.Is_Empty then
         Remove_Parents (Self, Parent, Is_Limited, Is_Private);
      end if;

      if String_Context_Maps.Has_Element (Position) then
         Info := String_Context_Maps.Element (Position);

         if not Is_Limited
           or else (Is_Limited and Info.Is_Limited)
         then
            Free (Info);
            Self.Map.Delete (Position);
         end if;
      end if;
   end Remove_Parents;

end Generator.Contexts;
