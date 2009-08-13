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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Matreshka.Internals.Utf16;

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
         D : constant Internal_String_Access := Self.Object.Data;

      begin
         if Self.Current not in D.Value'First .. D.Last then
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

      declare
         D : constant Internal_String_Access := Self.Object.Data;

      begin
         return Self.Current in D.Value'First .. D.Last;
      end;
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

      Self.Current := Self.Object.Data.Last + 1;

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
         D : constant Internal_String_Access := Self.Object.Data;

      begin
         if Self.Current in D.Value'First .. D.Last then
            Unchecked_Next (D.Value, Self.Current);

         elsif Self.Current = D.Value'First - 1 then
            Self.Current := Self.Current + 1;
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
   begin
      if Self.Current in Changed_First .. Removed_Last then
         Self.Object := null;

      elsif Self.Current > Removed_Last then
         Self.Current := Self.Current + Inserted_Last - Removed_Last;
      end if;
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
         D : constant Internal_String_Access := Self.Object.Data;

      begin
         if Self.Current = 1 then
            Self.Current := 0;

         elsif Self.Current in 2 .. D.Last + 1 then
            Unchecked_Previous (D.Value, Self.Current);
         end if;
      end;
   end Previous;

end League.Strings.Cursors.Characters;
