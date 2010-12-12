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

package body XML.SAX.Pretty_Writers is

   use type League.Strings.Universal_String;

   function Replace (Text : League.Strings.Universal_String)
      return League.Strings.Universal_String;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Text.Append (Replace (Text));
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Text.Append (League.Strings.To_Universal_String ("<!-- "));
      Self.Text.Append (Text);
      Self.Text.Append (League.Strings.To_Universal_String (" -->"));
   end Comment;

   ---------------
   -- End_CDATA --
   ---------------

   overriding procedure End_CDATA
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end End_CDATA;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end End_Document;

   -------------
   -- End_DTD --
   -------------

   overriding procedure End_DTD
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end End_DTD;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out SAX_Pretty_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      Self.Text.Append (League.Strings.To_Universal_String ("</"));
      Self.Text.Append (Qualified_Name);
      Self.Text.Append (League.Strings.To_Universal_String (">"));
   end End_Element;

   ----------------
   -- End_Entity --
   ----------------

   overriding procedure End_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end End_Entity;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding procedure End_Prefix_Mapping
    (Self    : in out SAX_Pretty_Writer;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end End_Prefix_Mapping;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : SAX_Pretty_Writer) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Ignorable_Whitespace;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out SAX_Pretty_Writer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Processing_Instruction;

   -------------
   -- Replace --
   -------------

   function Replace (Text : League.Strings.Universal_String)
      return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
        for J in 1 .. Text.Length loop

           case Text.Element (J) is

              when '=' =>
                 Result := Result & "&amp;";

              when ''' =>
                 Result := Result & "&apos;";

              when '"' =>
                 Result := Result & "&quot;";

              when '>' =>
                 Result := Result & "&gt;";

              when '<' =>
                 Result := Result & "&lt;";

              when others =>
                 Result.Append (Text.Element (J).To_Wide_Wide_Character);
           end case;

        end loop;
      end return;
   end Replace;

   --------------------
   -- Skipped_Entity --
   --------------------

   overriding procedure Skipped_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Skipped_Entity;

   -----------------
   -- Start_CDATA --
   -----------------

   overriding procedure Start_CDATA
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end Start_CDATA;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   overriding procedure Start_DTD
    (Self      : in out SAX_Pretty_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      null;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out SAX_Pretty_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      Self.Text.Append (League.Strings.To_Universal_String ("<"));
      Self.Text.Append (Qualified_Name);

      if Attributes.Length > 0 then
         for J in 1 .. Attributes.Length loop
            Self.Text.Append (League.Strings.To_Universal_String (" "));
            Self.Text.Append (Attributes.Local_Name (J));
            Self.Text.Append (League.Strings.To_Universal_String ("="""));
            Self.Text.Append (Attributes.Value (J));
            Self.Text.Append (League.Strings.To_Universal_String (""""));
         end loop;
      end if;

      Self.Text.Append (League.Strings.To_Universal_String (">"));
   end Start_Element;

   ------------------
   -- Start_Entity --
   ------------------

   overriding procedure Start_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Start_Entity;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out SAX_Pretty_Writer;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      null;
   end Start_Prefix_Mapping;

   ----------
   -- Text --
   ----------

   not overriding function Text
    (Self : SAX_Pretty_Writer) return League.Strings.Universal_String is
   begin
      return Self.Text;
   end Text;

end XML.SAX.Pretty_Writers;
