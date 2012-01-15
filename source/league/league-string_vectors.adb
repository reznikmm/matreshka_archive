------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings.Internals;
with Matreshka.Internals.Strings.Configuration;

package body League.String_Vectors is

   use Matreshka.Internals.String_Vectors;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Strings.Configuration;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String_Vector) is
   begin
      Matreshka.Internals.String_Vectors.Reference (Self.Data);
   end Adjust;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Universal_String_Vector'Class;
     Item : League.Strings.Universal_String'Class) is
   begin
      Append (Self.Data, League.Strings.Internals.Internal (Item));
      Matreshka.Internals.Strings.Reference
       (League.Strings.Internals.Internal (Item));
   end Append;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Universal_String_Vector'Class) is
   begin
      Matreshka.Internals.String_Vectors.Dereference (Self.Data);
      Self.Data :=
        Matreshka.Internals.String_Vectors.Empty_Shared_String_Vector'Access;
   end Clear;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Universal_String_Vector'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error with "Index is out of range";
      end if;

      return League.Strings.Internals.Create (Self.Data.Value (Index));
   end Element;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_String_Vector) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   -----------
   -- Index --
   -----------

   function Index
    (Self    : Universal_String_Vector'Class;
     Pattern : League.Strings.Universal_String'Class) return Natural
   is
      V_D : constant not null
        Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
          := Self.Data;
      P_D : constant not null Shared_String_Access
        := League.Strings.Internals.Internal (Pattern);

   begin
      for J in 1 .. V_D.Length loop
         if String_Handler.Is_Equal (V_D.Value (J), P_D) then
            return J;
         end if;
      end loop;

      return 0;
   end Index;

   -----------
   -- Index --
   -----------

   function Index
    (Self    : Universal_String_Vector'Class;
     Pattern : Wide_Wide_String) return Natural is
   begin
      return Self.Index (League.Strings.To_Universal_String (Pattern));
   end Index;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : Universal_String_Vector'Class) return Boolean is
   begin
      return Self.Data.Length = 0;
   end Is_Empty;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : League.Strings.Universal_String'Class)
       return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         if not Self.Is_Empty then
            Result.Append (Self.Element (1));
         end if;

         for J in 2 .. Self.Length loop
            Result.Append (Separator);
            Result.Append (Self.Element (J));
         end loop;
      end return;
   end Join;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : Wide_Wide_String)
       return League.Strings.Universal_String is
   begin
      return Self.Join (League.Strings.To_Universal_String (Separator));
   end Join;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : League.Characters.Universal_Character'Class)
       return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         if not Self.Is_Empty then
            Result.Append (Self.Element (1));
         end if;

         for J in 2 .. Self.Length loop
            Result.Append (Separator);
            Result.Append (Self.Element (J));
         end loop;
      end return;
   end Join;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : Wide_Wide_Character)
       return League.Strings.Universal_String is
   begin
      return Self.Join (League.Characters.To_Universal_Character (Separator));
   end Join;

   ------------
   -- Length --
   ------------

   function Length (Self : Universal_String_Vector'Class) return Natural is
   begin
      return Self.Data.Length;
   end Length;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Self : in out Universal_String_Vector'Class;
     Item : Universal_String_Vector'Class) is
   begin
      Matreshka.Internals.String_Vectors.Prepend (Self.Data, Item.Data);
   end Prepend;

   ----------
   -- Read --
   ----------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String_Vector)
   is
      Aux    : League.Strings.Universal_String;
      Length : Natural;

   begin
      Natural'Read (Stream, Length);

      Item.Clear;

      for J in 1 .. Length loop
         League.Strings.Universal_String'Read (Stream, Aux);
         Item.Append (Aux);
      end loop;
   end Read;

   -----------
   -- Write --
   -----------

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String_Vector) is
   begin
      Natural'Write (Stream, Item.Data.Length);

      for J in 1 .. Item.Length loop
         League.Strings.Universal_String'Write (Stream, Item.Element (J));
      end loop;
   end Write;

end League.String_Vectors;
