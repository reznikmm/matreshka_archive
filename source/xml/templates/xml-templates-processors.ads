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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
private with Ada.Containers.Hashed_Maps;

with League.Holders;
private with League.JSON.Values;
with League.Strings;
private with League.Strings.Hash;
private with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Lexical_Handlers;
with XML.SAX.Readers;
private with XML.Utilities.Namespace_Supports;

private with XML.Templates.Streams;

package XML.Templates.Processors is

   type Template_Processor is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with private;

   procedure Set_Content_Handler
    (Self    : in out Template_Processor'Class;
     Handler : XML.SAX.Readers.SAX_Content_Handler_Access);

   procedure Set_Lexical_Handler
    (Self    : in out Template_Processor'Class;
     Handler : XML.SAX.Readers.SAX_Lexical_Handler_Access);

   procedure Set_Parameter
    (Self  : in out Template_Processor'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Holders.Holder);

private

   package String_Holder_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           League.Holders.Holder,
           League.Strings.Hash,
           League.Strings."=",
           League.Holders."=");

   type Template_Processor is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with record
      Diagnosis        : League.Strings.Universal_String;
      Content_Handler  : XML.SAX.Readers.SAX_Content_Handler_Access;
      Lexical_Handler  : XML.SAX.Readers.SAX_Lexical_Handler_Access;
      Namespaces       : XML.Utilities.Namespace_Supports.XML_Namespace_Support;
      Parameters       : String_Holder_Maps.Map;
      Stream           :
        XML.Templates.Streams.XML_Stream_Element_Vectors.Vector;
      Accumulate       : Natural := 0;
      Skip             : Natural := 0;
      --  Skip all events. Used to process 'if' directive.
      Accumulated_Text : League.Strings.Universal_String;
      --  Character data is accumulated in this member to simplify processing.
      Object_Name      : League.Strings.Universal_String;
      Container_Value  : League.Holders.Holder;
   end record;

   --  Override SAX event handling subprogram.

   overriding procedure Characters
    (Self    : in out Template_Processor;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Comment
    (Self    : in out Template_Processor;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_CDATA
    (Self    : in out Template_Processor;
     Success : in out Boolean);

   overriding procedure End_Document
    (Self    : in out Template_Processor;
     Success : in out Boolean);

   overriding procedure End_DTD
    (Self    : in out Template_Processor;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out Template_Processor;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure End_Prefix_Mapping
    (Self    : in out Template_Processor;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding function Error_String
    (Self : Template_Processor) return League.Strings.Universal_String;

   overriding procedure Ignorable_Whitespace
    (Self    : in out Template_Processor;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) renames Characters;

   overriding procedure Processing_Instruction
    (Self    : in out Template_Processor;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Start_CDATA
    (Self    : in out Template_Processor;
     Success : in out Boolean);

   overriding procedure Start_Document
    (Self    : in out Template_Processor;
     Success : in out Boolean);

   overriding procedure Start_DTD
    (Self      : in out Template_Processor;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out Template_Processor;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self          : in out Template_Processor;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean);

   --  Supplimentary subprograms.

   procedure To_Holder
    (Value   : League.JSON.Values.JSON_Value;
     Holder  : out League.Holders.Holder;
     Success : in out Boolean);
   --  Converts JSON_Value object to holder of corresponding type. Supported
   --  types are booleans, strings, numbers, arrays, and objects. For
   --  unsupported kinds of JSON_Value (empty and null) is resets Holder to
   --  empty state and sets Success to False.

end XML.Templates.Processors;
