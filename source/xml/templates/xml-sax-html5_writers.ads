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
--  This package provides specialized SAX Writer to generate HTML5 documents
--  from XHTML5 SAX events streams. This writer doesn't fix any potential
--  issues in generated document right now. It provides some optimization of
--  output data:
--   - all attributes are output using most compact syntax;
--   - boolean attributes are output using empty attribute syntax;
--   - all optional tags are omitted when allowed;
--   - close tag for void elements are omitted.
------------------------------------------------------------------------------
private with Ada.Containers.Vectors;

private with League.Strings;
private with XML.SAX.Attributes;
with XML.SAX.Writers;

package XML.SAX.HTML5_Writers is

   type HTML5_Writer is limited new XML.SAX.Writers.SAX_Writer with private;

private

   type Element_Kinds is
    (Normal,
     Escapable_Raw_Text,
     Raw_Text,
     Void,
     Foreign);

   type Simple_Omit_Kinds is
    (None,
     Foreign,          --  For foreign elements this is used to determine
                       --  absence of content and to generate self-closing
                       --  start tags.
     HTML_Start_Tag,
     HTML_End_Tag,
     Head_Start_Tag,
     Head_End_Tag,
     Body_Start_Tag,
     Body_End_Tag,
     Li_End_Tag,
     Dt_End_Tag,
     Dd_End_Tag,
     P_End_Tag,
     Rt_End_Tag,
     Rp_End_Tag,
     Optgroup_End_Tag,
     Option_End_Tag,
     Colgroup_Start_Tag,
     Colgroup_End_Tag,
     Thead_End_Tag,
     Tbody_Start_Tag,
     Tbody_End_Tag,
     Tfoot_End_Tag,
     Tr_End_Tag,
     Td_End_Tag,
     Th_End_Tag);
   --  Current state of handling of tag omit. None means no tag omited right
   --  now, Foreign is used to control handling of foreign tags, others are
   --  corresponds to currently processed tag omit.

   type Omit_History_Kinds is
    (None,
     Colgroup_End_Tag,
     Tbody_End_Tag,
     Thead_End_Tag,
     Tfoot_End_Tag);
   --  Context of handling optional tags requires knownledge of previously
   --  omited tags. None means that no significant tag omit state before, other
   --  corresponds to previously omited tag.

   type Writer_State is record
      Element_Kind : Element_Kinds := Normal;
   end record;

   package State_Stacks is
     new Ada.Containers.Vectors (Positive, Writer_State);

   type HTML5_Writer is
     limited new XML.SAX.Writers.SAX_Writer with record
      Output          : XML.SAX.Writers.SAX_Output_Destination_Access;
      Diagnosis       : League.Strings.Universal_String;
      State           : Writer_State;
      Stack           : State_Stacks.Vector;
      DOCTYPE_Written : Boolean := False;
      --  <!DOCTYPE html> has been output. This can happen on Start_DTD event
      --  if any, or be synthesized on first Start_Element event.
      Document_Start  : Boolean := True;
      --  <head> has not been processed. It enables suppression of space
      --  characters and adding new line after comments. In absence of <head>
      --  element it is activated by <body> element for convinience.
      CDATA_Mode      : Boolean := False;
      --  In CDATA mode writer doesn't escape text.

      Omit            : Simple_Omit_Kinds := None;
      --  Currently omitted tag.
      History         : Omit_History_Kinds := None;
      --  Previous state of tags omit handling.
   end record;

   overriding procedure Set_Output
    (Self   : in out HTML5_Writer;
     Output : not null XML.SAX.Writers.SAX_Output_Destination_Access);

   overriding procedure Characters
    (Self    : in out HTML5_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Comment
    (Self    : in out HTML5_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_CDATA
    (Self    : in out HTML5_Writer;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out HTML5_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding function Error_String
    (Self : HTML5_Writer) return League.Strings.Universal_String;

   overriding procedure Ignorable_Whitespace
    (Self    : in out HTML5_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) renames Characters;

   overriding procedure Start_Document
    (Self    : in out HTML5_Writer;
     Success : in out Boolean);

   overriding procedure Start_CDATA
    (Self    : in out HTML5_Writer;
     Success : in out Boolean);

   overriding procedure Start_DTD
    (Self      : in out HTML5_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out HTML5_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

end XML.SAX.HTML5_Writers;
