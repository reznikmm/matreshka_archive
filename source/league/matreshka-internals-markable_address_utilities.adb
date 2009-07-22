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
with Ada.Unchecked_Conversion;

with Matreshka.Internals.Host_Types;

package body Matreshka.Internals.Markable_Address_Utilities is

   use Matreshka.Internals.Host_Types;

   type Pointer is mod 2 ** Address_Size;
   for Pointer'Size use Address_Size;

   function Convert is
     new Ada.Unchecked_Conversion (System.Address, Pointer);

   function Convert is
     new Ada.Unchecked_Conversion (Pointer, System.Address);

   ---------------
   -- Is_Marked --
   ---------------

   function Is_Marked (Value : System.Address) return Boolean is
   begin
      return (Convert (Value) and Address_Mark_Bit) /= 0;
   end Is_Marked;

   ----------
   -- Mark --
   ----------

   procedure Mark (Value : in out System.Address) is
   begin
      Value := Convert (Convert (Value) or Address_Mark_Bit);
   end Mark;

   ---------------
   -- To_Marked --
   ---------------

   function To_Marked (Value : System.Address) return System.Address is
   begin
      return Convert (Convert (Value) or Address_Mark_Bit);
   end To_Marked;

   -----------------
   -- To_Unmarked --
   -----------------

   function To_Unmarked (Value : System.Address) return System.Address is
   begin
      return Convert (Convert (Value) and Address_Mark_Mask);
   end To_Unmarked;

   ------------
   -- Unmark --
   ------------

   procedure Unmark (Value : in out System.Address) is
   begin
      Value := Convert (Convert (Value) and Address_Mark_Mask);
   end Unmark;

end Matreshka.Internals.Markable_Address_Utilities;
