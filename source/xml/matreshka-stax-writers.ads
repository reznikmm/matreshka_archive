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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
