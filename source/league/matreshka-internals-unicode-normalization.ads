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
-- Copyright © 2009, 2010 Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides implementation of the Normalization Algorithms from
--  the Unicode specification, see UAX #15 Unicode Normalization Forms.
with Matreshka.Internals.Strings;

package Matreshka.Internals.Unicode.Normalization is

   pragma Preelaborate;

   procedure NFC
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);
   --  Converts Source into Normalization Form C (canonical decomposition and
   --  canonical composition) and returns it in Destination.

   procedure NFD
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);
   --  Converts Source into Normalization Form D (canonical decomposition)
   --  and returns it in Destination.

   procedure NFKC
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);
   --  Converts Source into Normalization Form KC (compatibility decomposition
   --  and canonical composition) and returns it in Destination.

   procedure NFKD
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);
   --  Converts Source into Normalization Form KD (compatibility decomposition)
   --  and returns it in Destination.

end Matreshka.Internals.Unicode.Normalization;
