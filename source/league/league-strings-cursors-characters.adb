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
-- Copyright © 2009-2010, Vadim Godunko <vgodunko@gmail.com>                --
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

package body League.Strings.Cursors.Characters is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Utf16;

   -------------
   -- Element --
   -------------

   function Element (Self : Character_Cursor'Class)
     return Wide_Wide_Character
   is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      declare
         D : constant Shared_String_Access := Self.Object.Data;

      begin
         if Self.Current >= D.Unused then
            raise Constraint_Error with "Cursor out of range";
         end if;

         return
           Wide_Wide_Character'Val
            (Unchecked_To_Code_Point (D.Value, Self.Current));
      end;
   end Element;

   -----------
   -- First --
   -----------

   procedure First
    (Self : in out Character_Cursor'Class;
     Item : in out Universal_String)
   is
   begin
      Self.Attach (Item);
      Self.Current := Self.Object.Data.Value'First;
   end First;

   -----------------
   -- Has_Element --
   -----------------

   function Has_Element (Self : Character_Cursor'Class) return Boolean is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      return Self.Current < Self.Object.Data.Unused;
   end Has_Element;

   ----------
   -- Last --
   ----------

   procedure Last
    (Self : in out Character_Cursor'Class;
     Item : in out Universal_String)
   is
   begin
      Self.Attach (Item);

      Self.Current := Self.Object.Data.Unused;

      if Self.Object.Data.Length /= 0 then
         Unchecked_Previous (Self.Object.Data.Value, Self.Current);
      end if;
   end Last;

   ----------
   -- Next --
   ----------

   procedure Next (Self : in out Character_Cursor'Class) is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      declare
         D : constant Shared_String_Access := Self.Object.Data;

      begin
         if Self.Current < D.Unused then
            Unchecked_Next (D.Value, Self.Current);

         elsif Self.Current = Utf16_String_Index'Last then
            Self.Current := 0;
         end if;
      end;
   end Next;

   ----------------
   -- On_Changed --
   ----------------

   overriding procedure On_Changed
    (Self          : not null access Character_Cursor;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural)
   is
      pragma Unreferenced (Changed_First);
      pragma Unreferenced (Removed_Last);
      pragma Unreferenced (Inserted_Last);

   begin
--      if Self.Current in Changed_First .. Removed_Last then
         Self.Object := null;

--      elsif Self.Current > Removed_Last then
--         Self.Current := Self.Current + Inserted_Last - Removed_Last;
--      end if;
   end On_Changed;

   --------------
   -- Previous --
   --------------

   procedure Previous (Self : in out Character_Cursor'Class) is
   begin
      if Self.Object = null then
         raise Program_Error with "Invalid iterator";
      end if;

      declare
         D : constant Shared_String_Access := Self.Object.Data;

      begin
         if Self.Current = 0 then
            Self.Current := Utf16_String_Index'Last;

         elsif Self.Current in 1 .. D.Unused then
            Unchecked_Previous (D.Value, Self.Current);
         end if;
      end;
   end Previous;

end League.Strings.Cursors.Characters;
