------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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
with League.Strings;

package Matreshka.StAX.Attributes is

   pragma Preelaborate;

   type StAX_Attribute is tagged private;

   function Create
    (Qualified_Name : League.Strings.Universal_String;
     Value          : League.Strings.Universal_String)
       return StAX_Attribute;

   function Create
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return StAX_Attribute;

   function Is_Default (Self : StAX_Attribute'Class) return Boolean;

   function Local_Name (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice;

   function Namespace_URI (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice;

   function Prefix (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice;

   function Qualified_Name (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice;

   function Value (Self : StAX_Attribute'Class)
     return League.Strings.Universal_Slice;

   type StAX_Attributes is tagged private;

private

   type StAX_Attribute is tagged null record;

   type StAX_Attributes is tagged null record;

end Matreshka.StAX.Attributes;
