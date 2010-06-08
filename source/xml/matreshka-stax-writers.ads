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

with Matreshka.StAX.Attributes;
with Matreshka.StAX.Readers;

package Matreshka.StAX.Writers is

   type StAX_Writer is limited interface;

   not overriding function Auto_Formatting
    (Self : not null access constant StAX_Writer) return Boolean is abstract;

   not overriding function Auto_Formatting_Indent
    (Self : not null access constant StAX_Writer) return Natural is abstract;

   not overriding procedure Set_Auto_Formatting
    (Self   : not null access constant StAX_Writer;
     Enable : Boolean) is abstract;

   not overriding procedure Set_Auto_Formatting_Indent
    (Self   : not null access StAX_Writer;
     Spaces : Natural) is abstract;

   not overriding procedure Write_Attribute
    (Self          : not null access StAX_Writer;
     Namespace_URI : League.Strings.Universal_String;
     Name          : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Attribute
    (Self           : not null access StAX_Writer;
     Qualified_Name : League.Strings.Universal_String;
     Value          : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Attribute
    (Self      : not null access StAX_Writer;
     Attribute : Matreshka.StAX.Attributes.StAX_Attribute) is abstract;

   not overriding procedure Write_Attributes
    (Self       : not null access StAX_Writer;
     Attributes : Matreshka.StAX.Attributes.StAX_Attributes) is abstract;

   not overriding procedure Write_CDATA
    (Self : not null access StAX_Writer;
     Text : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Characters
    (Self : not null access StAX_Writer;
     Text : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Comment
    (Self : not null access StAX_Writer;
     Text : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Current_Token
    (Self   : not null access StAX_Writer;
     Reader : Matreshka.StAX.Readers.StAX_Reader'Class) is abstract;

   not overriding procedure Write_DTD
    (Self : not null access StAX_Writer;
     DTD  : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Default_Namespace
    (Self          : not null access StAX_Writer;
     Namespace_URI : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Empty_Element
    (Self          : not null access StAX_Writer;
     Namespace_URI : League.Strings.Universal_String;
     Name          : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Empty_Element
    (Self           : not null access StAX_Writer;
     Qualified_Name : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_End_Document
    (Self : not null access StAX_Writer) is abstract;

   not overriding procedure Write_End_Element
    (Self : not null access StAX_Writer) is abstract;

   not overriding procedure Write_Entity_Reference
    (Self : not null access StAX_Writer;
     Name : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Namespace
    (Self          : not null access StAX_Writer;
     Namespace_URI : League.Strings.Universal_String;
     Prefix        : League.Strings.Universal_String) is abstract;
   --  XXX Prefix can be empty string by default.

   not overriding procedure Write_Processing_Instruction
    (Self   : not null access StAX_Writer;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String) is abstract;
   --  XXX Data can be empty string by default.

   not overriding procedure Write_Start_Document
    (Self    : not null access StAX_Writer;
     Version : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Start_Document
    (Self       : not null access StAX_Writer;
     Version    : League.Strings.Universal_String;
     Standalone : Boolean) is abstract;

   not overriding procedure Write_Start_Document
    (Self : not null access StAX_Writer) is abstract;

   not overriding procedure Write_Start_Element
    (Self          : not null access StAX_Writer;
     Namespace_URI : League.Strings.Universal_String;
     Name          : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Start_Element
    (Self           : not null access StAX_Writer;
     Qualified_Name : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Text_Element
    (Self          : not null access StAX_Writer;
     Namespace_URI : League.Strings.Universal_String;
     Name          : League.Strings.Universal_String;
     Text          : League.Strings.Universal_String) is abstract;

   not overriding procedure Write_Text_Element
    (Self           : not null access StAX_Writer;
     Qualified_Name : League.Strings.Universal_String;
     Text           : League.Strings.Universal_String) is abstract;

end Matreshka.StAX.Writers;
