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
--  This package is an equivalent for System.Address_To_Access_Conversions
--  except it operates on markable addresses.
with System;

with Matreshka.Internals.Host_Types;

generic
   type Object (<>) is limited private;

package Matreshka.Internals.Markable_Address_To_Access_Conversions is

   pragma Preelaborate;
   pragma Assert (Object'Alignment > 1);
   --  Lower bit is used for mark.

   type Object_Pointer is access all Object;
   for Object_Pointer'Size use Matreshka.Internals.Host_Types.Address_Size;

   function To_Pointer (Value : System.Address) return Object_Pointer;
   pragma Inline (To_Pointer);

   function To_Address (Value : Object_Pointer) return System.Address;
   pragma Inline (To_Address);

   function To_Marked_Address (Value : Object_Pointer) return System.Address;
   pragma Inline (To_Marked_Address);

end Matreshka.Internals.Markable_Address_To_Access_Conversions;
