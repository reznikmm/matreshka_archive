------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                             Examples Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright B© 2011, Vadim Godunko <vgodunko@gmail.com>                    --
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
with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Declaration_Handlers;
with XML.SAX.DTD_Handlers;
with XML.SAX.Entity_Resolvers;
with XML.SAX.Error_Handlers;
with XML.SAX.Input_Sources;
with XML.SAX.Lexical_Handlers;
with XML.SAX.Locators;
with XML.SAX.Parse_Exceptions;
with Ada.Wide_Wide_Text_IO;

package Events_Printers is

   type Events_Printer is limited
     new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Declaration_Handlers.SAX_Declaration_Handler
       and XML.SAX.DTD_Handlers.SAX_DTD_Handler
       and XML.SAX.Entity_Resolvers.SAX_Entity_Resolver
       and XML.SAX.Error_Handlers.SAX_Error_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with
   record
      Locator : XML.SAX.Locators.SAX_Locator;
   end record;
   --  GNAT GPL 2010: compiler is unable to compile declaration of this type
   --  when it is declared as private.


   type File_Access is access all Ada.Wide_Wide_Text_IO.File_Type;

   type ASP_Tags is (Root_Tag, With_Tag, Body_Tag, Expression_Tag);

   type ASP_Attributes is (Color_Attribute, Font_Size_Attribute,
                           Bg_Color_Attribute, Font_Color_Attribute);

   procedure Create (File_Name : String);

   procedure Open (File_Name : String);

   procedure Close;

   procedure Write (Item : League.Strings.Universal_String);

   function Get_File return File_Access;

   procedure Set_Resault_File_Name (Name : String);

   overriding procedure Characters
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Comment
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out Events_Printer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure End_Prefix_Mapping
    (Self    : in out Events_Printer;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Error
    (Self       : in out Events_Printer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

   overriding function Error_String
    (Self : Events_Printer)
       return League.Strings.Universal_String;

   overriding procedure Fatal_Error
    (Self       : in out Events_Printer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

   overriding procedure Set_Document_Locator
    (Self    : in out Events_Printer;
     Locator : XML.SAX.Locators.SAX_Locator);

   overriding procedure Start_Element
    (Self           : in out Events_Printer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self          : in out Events_Printer;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean);

   overriding procedure Warning
    (Self       : in out Events_Printer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

end Events_Printers;
