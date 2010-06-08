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

with Matreshka.SAX.Attributes;
with Matreshka.SAX.Locators;

package Matreshka.SAX.Content_Handlers is

   pragma Preelaborate;

   type SAX_Content_Handler is limited interface;

   not overriding function Characters
    (Self : not null access SAX_Content_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function End_Document
    (Self : not null access SAX_Content_Handler)
       return Boolean is abstract;

   not overriding function End_Element
    (Self           : not null access SAX_Content_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function End_Prefix_Mapping
    (Self   : not null access SAX_Content_Handler;
     Prefix : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function Error_String
    (Self : not null access SAX_Content_Handler)
       return League.Strings.Universal_String is abstract;

   not overriding function Ignorable_Whitespace
    (Self : not null access SAX_Content_Handler;
     Text : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function Processing_Instruction
    (Self   : not null access SAX_Content_Handler;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding procedure Set_Document_Locator
    (Self    : not null access SAX_Content_Handler;
     Locator : not null Matreshka.SAX.Locators.SAX_Locator_Access) is null;
   --  XXX This is can lead to dangling pointers, so it would be nice to
   --  review and change API.

   not overriding function Skipped_Entity
    (Self : not null access SAX_Content_Handler;
     Name : League.Strings.Universal_String)
       return Boolean is abstract;

   not overriding function Start_Document
    (Self : not null access SAX_Content_Handler)
       return Boolean is abstract;

   not overriding function Start_Element
    (Self           : not null access SAX_Content_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes)
       return Boolean is abstract;

   not overriding function Start_Prefix_Mapping
    (Self   : not null access SAX_Content_Handler;
     Prefix : League.Strings.Universal_String;
     URI    : League.Strings.Universal_String)
       return Boolean is abstract;

end Matreshka.SAX.Content_Handlers;
