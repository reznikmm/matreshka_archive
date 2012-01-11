------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with XML.SAX.Attributes;

package body AWF.HTML_Writers is

   HTML_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/1999/xhtml");

   Body_Element   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("body");
   Div_Element    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("div");
   Head_Element   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("head");
   HTML_Element   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("html");
   Script_Element : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("script");
   Table_Element  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("table");
   Td_Element     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("td");
   Title_Element  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("title");
   Tr_Element     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("tr");

   Id_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("id");
   On_Click_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("onclick");
   Style_Attribute    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("style");

   ----------------
   -- Characters --
   ----------------

   not overriding procedure Characters
    (Self : in out HTML_Writer;
     Text : League.Strings.Universal_String) is
   begin
      Self.Writer.Characters (Text);
   end Characters;

   --------------
   -- End_Body --
   --------------

   not overriding procedure End_Body (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Body_Element);
   end End_Body;

   -------------
   -- End_Div --
   -------------

   not overriding procedure End_Div (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Div_Element);
   end End_Div;

   --------------
   -- End_Head --
   --------------

   not overriding procedure End_Head (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Head_Element);
   end End_Head;

   --------------
   -- End_HTML --
   --------------

   not overriding procedure End_HTML (Self : in out HTML_Writer) is
   begin
      --  End 'html' element and end XHTML namespace.

      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => HTML_Element);
      Self.Writer.End_Prefix_Mapping;

      --  End XML document.

      Self.Writer.End_Document;
   end End_HTML;

   ----------------
   -- End_Script --
   ----------------

   not overriding procedure End_Script (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Script_Element);
   end End_Script;

   ---------------
   -- End_Table --
   ---------------

   not overriding procedure End_Table (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Table_Element);
   end End_Table;

   ------------
   -- End_Td --
   ------------

   not overriding procedure End_Td (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Td_Element);
   end End_Td;

   ---------------
   -- End_Title --
   ---------------

   not overriding procedure End_Title (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Title_Element);
   end End_Title;

   ------------
   -- End_Tr --
   ------------

   not overriding procedure End_Tr (Self : in out HTML_Writer) is
   begin
      Self.Writer.End_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Tr_Element);
   end End_Tr;

   ----------------
   -- Start_Body --
   ----------------

   not overriding procedure Start_Body (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Body_Element);
   end Start_Body;

   ---------------
   -- Start_Div --
   ---------------

   not overriding procedure Start_Div
    (Self     : in out HTML_Writer;
     Id       : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Style    : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     On_Click : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
   is
      Attributes : XML.SAX.Attributes.SAX_Attributes;

   begin
      if not Id.Is_Empty then
         Attributes.Set_Value (Id_Attribute, Id);
      end if;

      if not Style.Is_Empty then
         Attributes.Set_Value (Style_Attribute, Style);
      end if;

      if not On_Click.Is_Empty then
         Attributes.Set_Value (On_Click_Attribute, On_Click);
      end if;

      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace,
        Local_Name    => Div_Element,
        Attributes    => Attributes);
   end Start_Div;

   ----------------
   -- Start_Head --
   ----------------

   not overriding procedure Start_Head (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Head_Element);
   end Start_Head;

   ----------------
   -- Start_HTML --
   ----------------

   not overriding procedure Start_HTML (Self : in out HTML_Writer) is
   begin
      Self.Writer.Set_Offset (2);

      --  Start XML document.

      Self.Writer.Start_Document;

      --  Declare document type.

      Self.Writer.Start_DTD (Name => HTML_Element);
      Self.Writer.End_DTD;

      --  Declare XHTML namespace and start 'html' element.

      Self.Writer.Start_Prefix_Mapping (Namespace_URI => HTML_Namespace);
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => HTML_Element);
   end Start_HTML;

   ------------------
   -- Start_Script --
   ------------------

   not overriding procedure Start_Script (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Script_Element);
   end Start_Script;

   -----------------
   -- Start_Table --
   -----------------

   not overriding procedure Start_Table (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Table_Element);
   end Start_Table;

   --------------
   -- Start_Td --
   --------------

   not overriding procedure Start_Td (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Td_Element);
   end Start_Td;

   -----------------
   -- Start_Title --
   -----------------

   not overriding procedure Start_Title (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Title_Element);
   end Start_Title;

   --------------
   -- Start_Tr --
   --------------

   not overriding procedure Start_Tr (Self : in out HTML_Writer) is
   begin
      Self.Writer.Start_Element
       (Namespace_URI => HTML_Namespace, Local_Name => Tr_Element);
   end Start_Tr;

   ----------
   -- Text --
   ----------

   not overriding function Text
    (Self : HTML_Writer) return League.Strings.Universal_String is
   begin
      return Self.Writer.Text;
   end Text;

end AWF.HTML_Writers;
