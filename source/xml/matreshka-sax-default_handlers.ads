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
with Matreshka.SAX.Content_Handlers;
with Matreshka.SAX.DTD_Handlers;
with Matreshka.SAX.Decl_Handlers;
with Matreshka.SAX.Error_Handlers;
with Matreshka.SAX.Lexical_Handlers;
with Matreshka.SAX.Locators;
with Matreshka.SAX.Parse_Exceptions;

package Matreshka.SAX.Default_Handlers is

   pragma Preelaborate;

   type SAX_Default_Handler is
     limited new Matreshka.SAX.Content_Handlers.SAX_Content_Handler
       and Matreshka.SAX.DTD_Handlers.SAX_DTD_Handler
       and Matreshka.SAX.Decl_Handlers.SAX_Decl_Handler
       and Matreshka.SAX.Error_Handlers.SAX_Error_Handler
       and Matreshka.SAX.Lexical_Handlers.SAX_Lexical_Handler with null record;

   overriding function Attribute_Decl
    (Self          : not null access SAX_Default_Handler;
     E_Name        : League.Strings.Universal_String;
     A_Name        : League.Strings.Universal_String;
     A_Type        : League.Strings.Universal_String;
     Value_Default : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return Boolean;

   overriding function Characters
    (Self : not null access SAX_Default_Handler;
     Text : League.Strings.Universal_String)
       return Boolean;

   overriding function Comment
    (Self : not null access SAX_Default_Handler;
     Text : League.Strings.Universal_String)
       return Boolean;

   overriding function End_CDATA
    (Self : not null access SAX_Default_Handler)
       return Boolean;

   overriding function End_Document
    (Self : not null access SAX_Default_Handler)
       return Boolean;

   overriding function End_DTD
    (Self : not null access SAX_Default_Handler)
       return Boolean;

   overriding function End_Element
    (Self           : not null access SAX_Default_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean;

   overriding function End_Entity
    (Self : not null access SAX_Default_Handler;
     Name : League.Strings.Universal_String)
       return Boolean;

   overriding function End_Prefix_Mapping
    (Self   : not null access SAX_Default_Handler;
     Prefix : League.Strings.Universal_String)
       return Boolean;

   overriding function Error
    (Self       : not null access SAX_Default_Handler;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception)
       return Boolean;

   overriding function Error_String
    (Self : not null access SAX_Default_Handler)
       return League.Strings.Universal_String;

   overriding function External_Entity_Decl
    (Self      : not null access SAX_Default_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean;

   overriding function Fatal_Error
    (Self       : not null access SAX_Default_Handler;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception)
       return Boolean;

   overriding function Ignorable_Whitespace
    (Self : not null access SAX_Default_Handler;
     Text : League.Strings.Universal_String)
       return Boolean;

   overriding function Internal_Entity_Decl
    (Self  : not null access SAX_Default_Handler;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
       return Boolean;

   overriding function Notation_Decl
    (Self          : not null access SAX_Default_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String)
       return Boolean;

   overriding function Processing_Instruction
    (Self   : not null access SAX_Default_Handler;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String)
       return Boolean;

   overriding procedure Set_Document_Locator
    (Self    : not null access SAX_Default_Handler;
     Locator : not null Matreshka.SAX.Locators.SAX_Locator_Access) is null;

   overriding function Skipped_Entity
    (Self : not null access SAX_Default_Handler;
     Name : League.Strings.Universal_String)
       return Boolean;

   overriding function Start_CDATA
    (Self : not null access SAX_Default_Handler)
       return Boolean;

   overriding function Start_Document
    (Self : not null access SAX_Default_Handler)
       return Boolean;

   overriding function Start_DTD
    (Self      : not null access SAX_Default_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean;

   overriding function Start_Element
    (Self           : not null access SAX_Default_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes)
       return Boolean;

   overriding function Start_Entity
    (Self : not null access SAX_Default_Handler;
     Name : League.Strings.Universal_String)
       return Boolean;

   overriding function Start_Prefix_Mapping
    (Self   : not null access SAX_Default_Handler;
     Prefix : League.Strings.Universal_String;
     URI    : League.Strings.Universal_String)
       return Boolean;

   overriding function Unparsed_Entity_Decl
    (Self          : not null access SAX_Default_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String)
       return Boolean;

   overriding function Warning
    (Self       : not null access SAX_Default_Handler;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception)
       return Boolean;

end Matreshka.SAX.Default_Handlers;
