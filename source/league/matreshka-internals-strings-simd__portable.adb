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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
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
--  This is portable implementation of the package. It doesn't use any
--  platform specific features and its efficiency completely rely on
--  compiler's optimization.
------------------------------------------------------------------------------

package body Matreshka.Internals.Strings.SIMD is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   --------------------------
   -- Fill_Null_Terminator --
   --------------------------

   procedure Fill_Null_Terminator (Self : not null Shared_String_Access) is
   begin
      Self.Value (Self.Last + 1) := 0;
   end Fill_Null_Terminator;

   --------------
   -- Is_Equal --
   --------------

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      return
        Left = Right
          or else (Left.Last = Right.Last
                     and then Left.Value (1 .. Left.Last)
                                = Right.Value (1 .. Right.Last));
   end Is_Equal;

   ----------------
   -- Is_Greater --
   ----------------

   function Is_Greater
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left /= Right then
         for J in 1 .. Natural'Min (Left.Last, Right.Last) loop
            if Left.Value (J) /= Right.Value (J) then
               return
                 Left.Value (J) + Utf16_Fixup (Left.Value (J) / 16#800#)
                   > Right.Value (J) + Utf16_Fixup (Right.Value (J) / 16#800#);
            end if;
         end loop;

         if Left.Last > Right.Last then
            return True;
         end if;
      end if;

      return False;
   end Is_Greater;

   -------------------------
   -- Is_Greater_Or_Equal --
   -------------------------

   function Is_Greater_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left /= Right then
         for J in 1 .. Natural'Min (Left.Last, Right.Last) loop
            if Left.Value (J) /= Right.Value (J) then
               return
                 Left.Value (J) + Utf16_Fixup (Left.Value (J) / 16#800#)
                   > Right.Value (J) + Utf16_Fixup (Right.Value (J) / 16#800#);
            end if;
         end loop;

         if Left.Last < Right.Last then
            return False;
         end if;
      end if;

      return True;
   end Is_Greater_Or_Equal;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left /= Right then
         for J in 1 .. Natural'Min (Left.Last, Right.Last) loop
            if Left.Value (J) /= Right.Value (J) then
               return
                 Left.Value (J) + Utf16_Fixup (Left.Value (J) / 16#800#)
                   < Right.Value (J) + Utf16_Fixup (Right.Value (J) / 16#800#);
            end if;
         end loop;

         if Left.Last < Right.Last then
            return True;
         end if;
      end if;

      return False;
   end Is_Less;

   ----------------------
   -- Is_Less_Or_Equal --
   ----------------------

   function Is_Less_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left /= Right then
         for J in 1 .. Natural'Min (Left.Last, Right.Last) loop
            if Left.Value (J) /= Right.Value (J) then
               return
                 Left.Value (J) + Utf16_Fixup (Left.Value (J) / 16#800#)
                   < Right.Value (J) + Utf16_Fixup (Right.Value (J) / 16#800#);
            end if;
         end loop;

         if Left.Last > Right.Last then
            return False;
         end if;
      end if;

      return True;
   end Is_Less_Or_Equal;

end Matreshka.Internals.Strings.SIMD;
