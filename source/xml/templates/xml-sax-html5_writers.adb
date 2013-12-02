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
with League.Characters.Latin;

package body XML.SAX.HTML5_Writers is

   use type League.Characters.Universal_Character;
   use type League.Strings.Universal_String;

   HTML_URI   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/1999/xhtml");
   MathML_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/1998/Math/MathML");
   SVG_URI    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/2000/svg");
   XLink_URI  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/1999/xlink");
   XML_URI    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/XML/1998/namespace");
   XMLNS_URI  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://www.w3.org/2000/xmlns/");

   A_Tag          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("a");
   Address_Tag    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("address");
   Area_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("area");
   Article_Tag    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("article");
   Aside_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("aside");
   Base_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("base");
   Blockquote_Tag : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("blockquote");
   Body_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("body");
   Br_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("br");
   Col_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("col");
   Colgroup_Tag   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("colgroup");
   Dd_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("dd");
   Dir_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("dir");
   Div_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("div");
   Dl_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("dl");
   Dt_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("dt");
   Embed_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("embed");
   Fieldset_Tag   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("fieldset");
   Footer_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("footer");
   Form_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("form");
   H1_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("h1");
   H2_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("h2");
   H3_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("h3");
   H4_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("h4");
   H5_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("h5");
   H6_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("h6");
   Head_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("head");
   Header_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("header");
   Hgroup_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("hgroup");
   Hr_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("hr");
   HTML_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("html");
   Img_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("img");
   Input_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("input");
   Keygen_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("keygen");
   Li_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("li");
   Link_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("link");
   Main_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("main");
   Meta_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("meta");
   Nav_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("nav");
   Ol_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ol");
   Optgroup_Tag   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("optgroup");
   Option_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("option");
   P_Tag          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("p");
   Param_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("param");
   Pre_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("pre");
   Rp_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("rp");
   Rt_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("rt");
   Script_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("script");
   Section_Tag    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("section");
   Source_Tag     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("source");
   Style_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("style");
   Table_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("table");
   Tbody_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("tbody");
   Td_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("td");
   Textarea_Tag   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("textarea");
   Tfoot_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("tfoot");
   Th_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("th");
   Thead_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("thead");
   Title_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("title");
   Tr_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("tr");
   Track_Tag      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("track");
   Ul_Tag         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ul");
   Wbr_Tag        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("wbr");

   Actuate_Attribute        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("actuate");
   Arcrole_Attribute        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("arcrole");
   Async_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("async");
   Autofocus_Attribute      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("autofocus");
   Autoplay_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("autoplay");
   Base_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("base");
   Checked_Attribute        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("checked");
   Controls_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("controls");
   Default_Attribute        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("default");
   Defer_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("defer");
   Disabled_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("disabled");
   Formnovalidate_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("formnovalidate");
   Hidden_Attribute         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("hidden");
   Href_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("href");
   Ismap_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ismap");
   Lang_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("lang");
   Loop_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("loop");
   Multiple_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("multiple");
   Muted_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("muted");
   Novalidate_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("novalidate");
   Open_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("open");
   Readonly_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("readonly");
   Required_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("required");
   Reversed_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("reversed");
   Role_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("role");
   Scoped_Attribute         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("scoped");
   Seamless_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("seamless");
   Selected_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("selected");
   Show_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("show");
   Space_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("space");
   Title_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("title");
   Type_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
   Typemustmatch_Attribute  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("typemustmatch");
   XLink_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink");
   XLink_Actuate_Attribute  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:actuate");
   XLink_Arcrole_Attribute  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:arcrole");
   XLink_Href_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:href");
   XLink_Role_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:role");
   XLink_Show_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:show");
   XLink_Title_Attribute    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:title");
   XLink_Type_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xlink:type");
   XML_Base_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xml:base");
   XML_Lang_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xml:lang");
   XML_Space_Attribute      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xml:space");
   XMLNS_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xmlns");
   XMLNS_XLink_Attribute    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xmlns:xlink");

   type Attribute_Value_Syntax is
     (Empty, Unquoted, Single_Quoted, Double_Quoted);

   function Is_Space (Item : League.Strings.Universal_String) return Boolean;
   --  Returns True when specified string contains only space characters as
   --  defined by HTML5 specification.
   --
   --  [HTML5] "The space characters, for the purposes of this specification,
   --  are U+0020 SPACE, "tab" (U+0009), "LF" (U+000A), "FF" (U+000C), and "CR"
   --  (U+000D)."

   procedure Write_DOCTYPE (Self : in out HTML5_Writer'Class);
   --  Outputs DOCTYPE declaration.

   procedure Write_Attributes
    (Self       : in out HTML5_Writer'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Output attributes.

   function Is_Boolean_Attribute
    (Name : League.Strings.Universal_String) return Boolean;
   --  Returns True when attribute is boolean attribute in HTML5.

   function Is_Void_Element
    (Tag : League.Strings.Universal_String) return Boolean;
   --  Returns True when specified tag refernce to void element of HTML5.

   function Is_Raw_Text_Element
    (Tag : League.Strings.Universal_String) return Boolean;
   --  Returns True when specified tag refernce to raw text element of HTML5.

   function Is_Escapable_Raw_Text_Element
    (Tag : League.Strings.Universal_String) return Boolean;
   --  Returns True when specified tag refernce to escapable raw text element
   --  of HTML5.

   procedure Escape_Attribute_Value
    (Value  : League.Strings.Universal_String;
     Text   : out League.Strings.Universal_String;
     Syntax : out Attribute_Value_Syntax);
   --  Detects optimal attribute value syntax and escape attribute value.

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out HTML5_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean)
   is
      Escaped_Text : League.Strings.Universal_String;
      C            : League.Characters.Universal_Character;

   begin
      case Self.Omit is
         when None =>
            null;

         when Foreign =>
            Self.Output.Put ('>');

         when HTML_Start_Tag =>
            --  [HTML5] "An html element's start tag may be omitted if the
            --  first thing inside the html element is not a comment."

            null;

         when HTML_End_Tag =>
            --  [HTML5] "An html element's end tag may be omitted if the html
            --  element is not immediately followed by a comment."

            null;

         when Head_Start_Tag =>
            --  [HTML5] "A head element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the head element
            --  is an element."

            Self.Output.Put ("<head>");

         when Head_End_Tag =>
            --  [HTML5] "A head element's end tag may be omitted if the head
            --  element is not immediately followed by a space character or a
            --  comment."

            if not Text.Is_Empty and then Is_Space (Text.Slice (1, 1)) then
               Self.Output.Put ("</head>");
            end if;

         when Body_Start_Tag =>
            --  [HTML5] "A body element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the body element
            --  is not a space character or a comment, except if the first
            --  thing inside the body element is a script or style element."

            if not Text.Is_Empty and then Is_Space (Text.Slice (1, 1)) then
               Self.Output.Put ("<body>");
            end if;

         when Body_End_Tag =>
            --  [HTML5] "A body element's end tag may be omitted if the body
            --  element is not immediately followed by a comment."

            null;

         when Li_End_Tag =>
            --  [HTML5] "An li element's end tag may be omitted if the li
            --  element is immediately followed by another li element or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</li>");

         when Dt_End_Tag =>
            --  [HTML5] "A dt element's end tag may be omitted if the dt
            --  element is immediately followed by another dt element or a dd
            --  element."

            Self.Output.Put ("</dt>");

         when Dd_End_Tag =>
            --  [HTML5] "A dd element's end tag may be omitted if the dd
            --  element is immediately followed by another dd element or a dt
            --  element, or if there is no more content in the parent element."

            Self.Output.Put ("</dd>");

         when Rt_End_Tag =>
            --  [HTML5] "An rt element's end tag may be omitted if the rt
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</rt>");

         when Rp_End_Tag =>
            --  [HTML5] "An rp element's end tag may be omitted if the rp
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</rp>");

         when Optgroup_End_Tag =>
            --  [HTML5] "An optgroup element's end tag may be omitted if the
            --  optgroup element is immediately followed by another optgroup
            --  element, or if there is no more content in the parent element."

            Self.Output.Put ("</optgroup>");

         when Option_End_Tag =>
            --  [HTML5] "An option element's end tag may be omitted if the
            --  option element is immediately followed by another option
            --  element, or if it is immediately followed by an optgroup
            --  element, or if there is no more content in the parent element."

            Self.Output.Put ("</option>");

         when Colgroup_Start_Tag =>
            --  [HTML5] "A colgroup element's start tag may be omitted if the
            --  first thing inside the colgroup element is a col element, and
            --  if the element is not immediately preceded by another colgroup
            --  element whose end tag has been omitted. (It can't be omitted if
            --  the element is empty.)"

            Self.Output.Put ("<colgroup>");

         when Colgroup_End_Tag =>
            --  [HTML5] "A colgroup element's end tag may be omitted if the
            --  colgroup element is not immediately followed by a space
            --  character or a comment."

            if not Text.Is_Empty and then Is_Space (Text.Slice (1, 1)) then
               Self.Output.Put ("</colgroup>");

            else
               Self.History := Colgroup_End_Tag;
            end if;

         when Thead_End_Tag =>
            --  [HTML5] "A thead element's end tag may be omitted if the thead
            --  element is immediately followed by a tbody or tfoot element."

            Self.Output.Put ("</thead>");

         when Tbody_Start_Tag =>
            --  [HTML5] "A tbody element's start tag may be omitted if the
            --  first thing inside the tbody element is a tr element, and if
            --  the element is not immediately preceded by a tbody, thead, or
            --  tfoot element whose end tag has been omitted. (It can't be
            --  omitted if the element is empty.)"

            Self.Output.Put ("<tbody>");

         when Tbody_End_Tag =>
            --  [HTML5] "A tbody element's end tag may be omitted if the tbody
            --  element is immediately followed by a tbody or tfoot element, or
            --  if there is no more content in the parent element."

            Self.Output.Put ("</tbody>");

         when Tfoot_End_Tag =>
            --  [HTML5] "A tfoot element's end tag may be omitted if the tfoot
            --  element is immediately followed by a tbody element, or if there
            --  is no more content in the parent element."

            Self.Output.Put ("</tfoot>");

         when Tr_End_Tag =>
            --  [HTML5] "A tr element's end tag may be omitted if the tr
            --  element is immediately followed by another tr element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</tr>");

         when Td_End_Tag =>
            --  [HTML5] "A td element's end tag may be omitted if the td
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</td>");

         when Th_End_Tag =>
            --  [HTML5] "A th element's end tag may be omitted if the th
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</th>");

         when P_End_Tag =>
            --  [HTML5] "A p element's end tag may be omitted if the p element
            --  is immediately followed by an address, article, aside,
            --  blockquote, dir, div, dl, fieldset, footer, form, h1, h2, h3,
            --  h4, h5, h6, header, hgroup, hr, main, nav, ol, p, pre, section,
            --  table, or ul, element, or if there is no more content in the
            --  parent element and the parent element is not an a element."

            Self.Output.Put ("</p>");
      end case;

      Self.Omit := None;
      Self.History := None;

      if not Self.Document_Start or else not Is_Space (Text) then
         case Self.State.Element_Kind is
            when Void =>
               --  [HTML5] "Void elements can't have any contents (since
               --  there's no end tag, no content can be put between the start
               --  tag and the end tag)."

               Self.Diagnosis :=
                 League.Strings.To_Universal_String
                  ("void element can't have any contents");
               Success        := False;

               return;

            when Raw_Text =>
               --  XXX Verification of the text content can be done here.
               --
               --  [HTML5] "The text in raw text and escapable raw text
               --  elements must not contain any occurrences of the string "</"
               --  (U+003C LESS-THAN SIGN, U+002F SOLIDUS) followed by
               --  characters that case-insensitively match the tag name of the
               --  element followed by one of "tab" (U+0009), "LF" (U+000A),
               --  "FF" (U+000C), "CR" (U+000D), U+0020 SPACE, ">" (U+003E), or
               --  "/" (U+002F)."

               Self.Output.Put (Text);

            when Escapable_Raw_Text =>
               for J in 1 .. Text.Length loop
                  C := Text (J);

                  if C = League.Characters.Latin.Less_Than_Sign
                    and then J < Text.Length
                    and then Text (J + 1) = League.Characters.Latin.Solidus
                  then
                     --  XXX This check can be even more improved:
                     --
                     --  [HTML5] "The text in raw text and escapable raw text
                     --  elements must not contain any occurrences of the
                     --  string "</" (U+003C LESS-THAN SIGN, U+002F SOLIDUS)
                     --  followed by characters that case-insensitively match
                     --  the tag name of the element followed by one of "tab"
                     --  (U+0009), "LF" (U+000A), "FF" (U+000C), "CR" (U+000D),
                     --  U+0020 SPACE, ">" (U+003E), or "/" (U+002F)."

                     Escaped_Text.Append ("&lt;");

                  elsif C = League.Characters.Latin.Ampersand then
                     Escaped_Text.Append ("&amp;");

                  else
                     Escaped_Text.Append (C);
                  end if;
               end loop;

               Self.Output.Put (Escaped_Text);

            when Normal | Foreign =>
               if Self.State.Element_Kind = Foreign and Self.CDATA_Mode then
                  Self.Output.Put (Text);

               else
                  for J in 1 .. Text.Length loop
                     C := Text (J);

                     if C = League.Characters.Latin.Less_Than_Sign then
                        Escaped_Text.Append ("&lt;");

                     elsif C = League.Characters.Latin.Ampersand then
                        Escaped_Text.Append ("&amp;");

                     else
                        Escaped_Text.Append (C);
                     end if;
                  end loop;

                  Self.Output.Put (Escaped_Text);
               end if;
         end case;
      end if;
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self    : in out HTML5_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      --  XXX Content of Text must be checked here to be conformant to HTML5
      --  definition of comment.
      --
      --  [HTML5] "Comments must start with the four character sequence U+003C
      --  LESS-THAN SIGN, U+0021 EXCLAMATION MARK, U+002D HYPHEN-MINUS, U+002D
      --  HYPHEN-MINUS (<!--). Following this sequence, the comment may have
      --  text, with the additional restriction that the text must not start
      --  with a single ">" (U+003E) character, nor start with a "-" (U+002D)
      --  character followed by a ">" (U+003E) character, nor contain two
      --  consecutive U+002D HYPHEN-MINUS characters (--), nor end with a "-"
      --  (U+002D) character. Finally, the comment must be ended by the three
      --  character sequence U+002D HYPHEN-MINUS, U+002D HYPHEN-MINUS, U+003E
      --  GREATER-THAN SIGN (-->)."

      case Self.Omit is
         when None =>
            null;

         when Foreign =>
            Self.Output.Put ('>');

         when HTML_Start_Tag =>
            --  [HTML5] "An html element's start tag may be omitted if the
            --  first thing inside the html element is not a comment."

            Self.Output.Put ("<html>");

            if Self.Stack.Is_Empty then
               --  [HTML5] "It is suggested that newlines be inserted after
               --  the DOCTYPE, after any comments that are before the root
               --  element, after the html element's start tag (if it is not
               --  omitted), and after any comments that are inside the html
               --  element but before the head element."

               Self.Output.Put (League.Characters.Latin.Line_Feed);
            end if;

         when HTML_End_Tag =>
            --  [HTML5] "An html element's end tag may be omitted if the
            --  html element is not immediately followed by a comment."

            Self.Output.Put ("</html>");

         when Head_Start_Tag =>
            --  [HTML5] "A head element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the head
            --  element is an element."

            Self.Output.Put ("<head>");

         when Head_End_Tag =>
            --  [HTML5] "A head element's end tag may be omitted if the head
            --  element is not immediately followed by a space character or a
            --  comment."

            Self.Output.Put ("</head>");

         when Body_Start_Tag =>
            --  [HTML5] "A body element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the body element
            --  is not a space character or a comment, except if the first
            --  thing inside the body element is a script or style element."

            Self.Output.Put ("<body>");

         when Body_End_Tag =>
            --  [HTML5] "A body element's end tag may be omitted if the body
            --  element is not immediately followed by a comment."

            Self.Output.Put ("</body>");

         when Li_End_Tag =>
            --  [HTML5] "An li element's end tag may be omitted if the li
            --  element is immediately followed by another li element or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</li>");

         when Dt_End_Tag =>
            --  [HTML5] "A dt element's end tag may be omitted if the dt
            --  element is immediately followed by another dt element or a dd
            --  element."

            Self.Output.Put ("</dt>");

         when Dd_End_Tag =>
            --  [HTML5] "A dd element's end tag may be omitted if the dd
            --  element is immediately followed by another dd element or a dt
            --  element, or if there is no more content in the parent element."

            Self.Output.Put ("</dd>");

         when Rt_End_Tag =>
            --  [HTML5] "An rt element's end tag may be omitted if the rt
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</rt>");

         when Rp_End_Tag =>
            --  [HTML5] "An rp element's end tag may be omitted if the rp
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</rp>");

         when Optgroup_End_Tag =>
            --  [HTML5] "An optgroup element's end tag may be omitted if the
            --  optgroup element is immediately followed by another optgroup
            --  element, or if there is no more content in the parent element."

            Self.Output.Put ("</optgroup>");

         when Option_End_Tag =>
            --  [HTML5] "An option element's end tag may be omitted if the
            --  option element is immediately followed by another option
            --  element, or if it is immediately followed by an optgroup
            --  element, or if there is no more content in the parent element."

            Self.Output.Put ("</option>");

         when Colgroup_Start_Tag =>
            --  [HTML5] "A colgroup element's start tag may be omitted if the
            --  first thing inside the colgroup element is a col element, and
            --  if the element is not immediately preceded by another colgroup
            --  element whose end tag has been omitted. (It can't be omitted if
            --  the element is empty.)"

            Self.Output.Put ("<colgroup>");

         when Colgroup_End_Tag =>
            --  [HTML5] "A colgroup element's end tag may be omitted if the
            --  colgroup element is not immediately followed by a space
            --  character or a comment."

            Self.Output.Put ("</colgroup>");

         when Thead_End_Tag =>
            --  [HTML5] "A thead element's end tag may be omitted if the thead
            --  element is immediately followed by a tbody or tfoot element."

            Self.Output.Put ("</thead>");

         when Tbody_Start_Tag =>
            --  [HTML5] "A tbody element's start tag may be omitted if the
            --  first thing inside the tbody element is a tr element, and if
            --  the element is not immediately preceded by a tbody, thead, or
            --  tfoot element whose end tag has been omitted. (It can't be
            --  omitted if the element is empty.)"

            Self.Output.Put ("<tbody>");

         when Tbody_End_Tag =>
            --  [HTML5] "A tbody element's end tag may be omitted if the tbody
            --  element is immediately followed by a tbody or tfoot element, or
            --  if there is no more content in the parent element."

            Self.Output.Put ("</tbody>");

         when Tfoot_End_Tag =>
            --  [HTML5] "A tfoot element's end tag may be omitted if the tfoot
            --  element is immediately followed by a tbody element, or if there
            --  is no more content in the parent element."

            Self.Output.Put ("</tfoot>");

         when Tr_End_Tag =>
            --  [HTML5] "A tr element's end tag may be omitted if the tr
            --  element is immediately followed by another tr element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</tr>");

         when Td_End_Tag =>
            --  [HTML5] "A td element's end tag may be omitted if the td
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</td>");

         when Th_End_Tag =>
            --  [HTML5] "A th element's end tag may be omitted if the th
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            Self.Output.Put ("</th>");

         when P_End_Tag =>
            --  [HTML5] "A p element's end tag may be omitted if the p element
            --  is immediately followed by an address, article, aside,
            --  blockquote, dir, div, dl, fieldset, footer, form, h1, h2, h3,
            --  h4, h5, h6, header, hgroup, hr, main, nav, ol, p, pre, section,
            --  table, or ul, element, or if there is no more content in the
            --  parent element and the parent element is not an a element."

            Self.Output.Put ("</p>");
      end case;

      Self.Omit := None;
      Self.History := None;

      Self.Output.Put ("<!--");
      Self.Output.Put (Text);
      Self.Output.Put ("-->");

      if Self.Document_Start then
         --  [HTML5] "It is suggested that newlines be inserted after the
         --  DOCTYPE, after any comments that are before the root element,
         --  after the html element's start tag (if it is not omitted), and
         --  after any comments that are inside the html element but before the
         --  head element."

         Self.Output.Put (League.Characters.Latin.Line_Feed);
      end if;
   end Comment;

   ---------------
   -- End_CDATA --
   ---------------

   overriding procedure End_CDATA
    (Self    : in out HTML5_Writer;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.CDATA_Mode := False;

      if Self.State.Element_Kind = Foreign then
         --  [HTML5] "CDATA sections can only be used in foreign content
         --  (MathML or SVG)."

         Self.Output.Put ("]]>");
      end if;
   end End_CDATA;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out HTML5_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);
      pragma Unreferenced (Success);

      Foreign_Closed : Boolean := False;
      History        : Omit_History_Kinds := None;

   begin
      case Self.Omit is
         when None =>
            null;

         when Foreign =>
            Self.Output.Put ("/>");
            Foreign_Closed := True;

         when HTML_Start_Tag =>
            --  [HTML5] "An html element's start tag may be omitted if the
            --  first thing inside the html element is not a comment."

            null;

         when HTML_End_Tag =>
            --  [HTML5] "An html element's end tag may be omitted if the html
            --  element is not immediately followed by a comment."

            null;

         when Head_Start_Tag =>
            --  [HTML5] "A head element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the head element
            --  is an element."

            null;

         when Head_End_Tag =>
            --  [HTML5] "A head element's end tag may be omitted if the head
            --  element is not immediately followed by a space character or a
            --  comment."

            null;

         when Body_Start_Tag =>
            --  [HTML5] "A body element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the body element
            --  is not a space character or a comment, except if the first
            --  thing inside the body element is a script or style element."

            null;

         when Body_End_Tag =>
            --  [HTML5] "A body element's end tag may be omitted if the body
            --  element is not immediately followed by a comment."

            null;

         when Li_End_Tag =>
            --  [HTML5] "An li element's end tag may be omitted if the li
            --  element is immediately followed by another li element or if
            --  there is no more content in the parent element."

            null;

         when Dt_End_Tag =>
            --  [HTML5] "A dt element's end tag may be omitted if the dt
            --  element is immediately followed by another dt element or a dd
            --  element."

            Self.Output.Put ("</dt>");

         when Dd_End_Tag =>
            --  [HTML5] "A dd element's end tag may be omitted if the dd
            --  element is immediately followed by another dd element or a dt
            --  element, or if there is no more content in the parent element."

            null;

         when Rt_End_Tag =>
            --  [HTML5] "An rt element's end tag may be omitted if the rt
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            null;

         when Rp_End_Tag =>
            --  [HTML5] "An rp element's end tag may be omitted if the rp
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            null;

         when Optgroup_End_Tag =>
            --  [HTML5] "An optgroup element's end tag may be omitted if the
            --  optgroup element is immediately followed by another optgroup
            --  element, or if there is no more content in the parent element."

            null;

         when Option_End_Tag =>
            --  [HTML5] "An option element's end tag may be omitted if the
            --  option element is immediately followed by another option
            --  element, or if it is immediately followed by an optgroup
            --  element, or if there is no more content in the parent element."

            null;

         when Colgroup_Start_Tag =>
            --  [HTML5] "A colgroup element's start tag may be omitted if the
            --  first thing inside the colgroup element is a col element, and
            --  if the element is not immediately preceded by another colgroup
            --  element whose end tag has been omitted. (It can't be omitted if
            --  the element is empty.)"

            Self.Output.Put ("<colgroup>");

         when Colgroup_End_Tag =>
            --  [HTML5] "A colgroup element's end tag may be omitted if the
            --  colgroup element is not immediately followed by a space
            --  character or a comment."

            History := Colgroup_End_Tag;

         when Thead_End_Tag =>
            --  [HTML5] "A thead element's end tag may be omitted if the thead
            --  element is immediately followed by a tbody or tfoot element."

            Self.Output.Put ("</thead>");

         when Tbody_Start_Tag =>
            --  [HTML5] "A tbody element's start tag may be omitted if the
            --  first thing inside the tbody element is a tr element, and if
            --  the element is not immediately preceded by a tbody, thead, or
            --  tfoot element whose end tag has been omitted. (It can't be
            --  omitted if the element is empty.)"

            Self.Output.Put ("<tbody>");

         when Tbody_End_Tag =>
            --  [HTML5] "A tbody element's end tag may be omitted if the tbody
            --  element is immediately followed by a tbody or tfoot element, or
            --  if there is no more content in the parent element."

            History := Tbody_End_Tag;

         when Tfoot_End_Tag =>
            --  [HTML5] "A tfoot element's end tag may be omitted if the tfoot
            --  element is immediately followed by a tbody element, or if there
            --  is no more content in the parent element."

            History := Tfoot_End_Tag;

         when Tr_End_Tag =>
            --  [HTML5] "A tr element's end tag may be omitted if the tr
            --  element is immediately followed by another tr element, or if
            --  there is no more content in the parent element."

            null;

         when Td_End_Tag =>
            --  [HTML5] "A td element's end tag may be omitted if the td
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            null;

         when Th_End_Tag =>
            --  [HTML5] "A th element's end tag may be omitted if the th
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            null;

         when P_End_Tag =>
            --  [HTML5] "A p element's end tag may be omitted if the p element
            --  is immediately followed by an address, article, aside,
            --  blockquote, dir, div, dl, fieldset, footer, form, h1, h2, h3,
            --  h4, h5, h6, header, hgroup, hr, main, nav, ol, p, pre, section,
            --  table, or ul, element, or if there is no more content in the
            --  parent element and the parent element is not an a element."

            if Namespace_URI = HTML_URI and Local_Name = A_Tag then
               Self.Output.Put ("</p>");
            end if;
      end case;

      Self.Omit    := None;
      Self.History := History;

      case Self.State.Element_Kind is
         when Normal | Raw_Text | Escapable_Raw_Text =>
            if Local_Name = Body_Tag then
               Self.Omit := Body_End_Tag;

            elsif Local_Name = Dd_Tag then
               Self.Omit := Dd_End_Tag;

            elsif Local_Name = Dt_Tag then
               Self.Omit := Dt_End_Tag;

            elsif Local_Name = Head_Tag then
               Self.Omit := Head_End_Tag;

            elsif Local_Name = HTML_Tag then
               Self.Omit := HTML_End_Tag;

            elsif Local_Name = Li_Tag then
               Self.Omit := Li_End_Tag;

            elsif Local_Name = Optgroup_Tag then
               Self.Omit := Optgroup_End_Tag;

            elsif Local_Name = Option_Tag then
               Self.Omit := Option_End_Tag;

            elsif Local_Name = Rp_Tag then
               Self.Omit := Rp_End_Tag;

            elsif Local_Name = Rt_Tag then
               Self.Omit := Rt_End_Tag;

            elsif Local_Name = Colgroup_Tag then
               Self.Omit := Colgroup_End_Tag;

            elsif Local_Name = Thead_Tag then
               Self.Omit := Thead_End_Tag;

            elsif Local_Name = Tbody_Tag then
               Self.Omit := Tbody_End_Tag;

            elsif Local_Name = Tfoot_Tag then
               Self.Omit := Tfoot_End_Tag;

            elsif Local_Name = Tr_Tag then
               Self.Omit := Tr_End_Tag;

            elsif Local_Name = Td_Tag then
               Self.Omit := Td_End_Tag;

            elsif Local_Name = Th_Tag then
               Self.Omit := Th_End_Tag;

            elsif Local_Name = P_Tag then
               Self.Omit := P_End_Tag;

            else
               Self.Output.Put ("</");
               Self.Output.Put (Local_Name);
               Self.Output.Put ('>');
            end if;

         when Void =>
            --  Don't generate close tag for void elements.
            --
            --  [HTML5] "Then, if the element is one of the void elements, or
            --  if the element is a foreign element, then there may be a single
            --  U+002F SOLIDUS character (/). This character has no effect on
            --  void elements, but on foreign elements it marks the start tag
            --  as self-closing."

            null;

         when Foreign =>
            if not Foreign_Closed then
               Self.Output.Put ("</");
               Self.Output.Put (Local_Name);
               Self.Output.Put ('>');
            end if;
      end case;

      Self.State := Self.Stack.Last_Element;
      Self.Stack.Delete_Last;
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : HTML5_Writer) return League.Strings.Universal_String is
   begin
      return Self.Diagnosis;
   end Error_String;

   ----------------------------
   -- Escape_Attribute_Value --
   ----------------------------

   procedure Escape_Attribute_Value
    (Value  : League.Strings.Universal_String;
     Text   : out League.Strings.Universal_String;
     Syntax : out Attribute_Value_Syntax)
   is
      C               : League.Characters.Universal_Character;
      Unquoted_Syntax : Boolean := True;
      Apostrophes     : Natural := 0;
      Quotation_Marks : Natural := 0;
      Aux             : League.Strings.Universal_String;
      First           : Positive := 1;
      Index           : Natural;

   begin
      Text.Clear;

      if Value.Is_Empty then
         Syntax := Empty;

      else
         for J in 1 .. Value.Length loop
            C := Value (J);

            if C = League.Characters.Latin.Space
              or C = League.Characters.Latin.Character_Tabulation
              or C = League.Characters.Latin.Line_Feed
              or C = League.Characters.Latin.Form_Feed
              or C = League.Characters.Latin.Carriage_Return
              or C = League.Characters.Latin.Equals_Sign
              or C = League.Characters.Latin.Less_Than_Sign
              or C = League.Characters.Latin.Greater_Than_Sign
              or C = League.Characters.Latin.Grave_Accent
            then
               --  Space characters, '=', '<', '>', '`' are prohibited in
               --  unquoted attribute value syntax.

               Unquoted_Syntax := False;

            elsif C = League.Characters.Latin.Apostrophe then
               --  ''' is prohibited in unquoted attribute value syntax.

               Unquoted_Syntax := False;
               Apostrophes := Apostrophes + 1;

            elsif C = League.Characters.Latin.Quotation_Mark then
               --  '"' is prohibited in unquoted attribute value syntax.

               Unquoted_Syntax := False;
               Quotation_Marks := Quotation_Marks + 1;
            end if;

            if C = League.Characters.Latin.Ampersand then
               --  Replace '&' by character reference in result string.

               Text.Append ("&amp;");

            else
               --  Copy other characters to result string.

               Text.Append (C);
            end if;
         end loop;

         if Unquoted_Syntax then
            --  Use unquoted attribute value syntax then actual attribute value
            --  doesn't violate its restrictions.

            Syntax := Unquoted;

         elsif Apostrophes <= Quotation_Marks then
            --  Number of apostrophes is less than number of quotation marks,
            --  use single-quoted attribute value syntax.

            Syntax := Single_Quoted;

            --  Escape ''' characters

            Aux := Text;
            Text.Clear;

            while First <= Aux.Length loop
               Index := Aux.Index (First, ''');

               if Index = 0 then
                  Text.Append (Aux.Slice (First, Aux.Length));
                  First := Aux.Length + 1;

               else
                  Text.Append (Aux.Slice (First, Index - 1));
                  Text.Append ("&apos;");
                  First := Index + 1;
               end if;
            end loop;

         else
            --  Number of apostrophes is greater than number of quotation
            --  marks, use single-quoted attribute value syntax.

            Syntax := Double_Quoted;

            --  Escape '"' characters

            Aux := Text;
            Text.Clear;

            while First <= Aux.Length loop
               Index := Aux.Index (First, '"');

               if Index = 0 then
                  Text.Append (Aux.Slice (First, Aux.Length));
                  First := Aux.Length + 1;

               else
                  Text.Append (Aux.Slice (First, Index - 1));
                  Text.Append ("&quot;");
                  First := Index + 1;
               end if;
            end loop;
         end if;
      end if;
   end Escape_Attribute_Value;

   --------------------------
   -- Is_Boolean_Attribute --
   --------------------------

   function Is_Boolean_Attribute
    (Name : League.Strings.Universal_String) return Boolean is
   begin
      return
        Name = Async_Attribute
          or Name = Autofocus_Attribute
          or Name = Autoplay_Attribute
          or Name = Checked_Attribute
          or Name = Controls_Attribute
          or Name = Default_Attribute
          or Name = Defer_Attribute
          or Name = Disabled_Attribute
          or Name = Formnovalidate_Attribute
          or Name = Hidden_Attribute
          or Name = Ismap_Attribute
          or Name = Loop_Attribute
          or Name = Multiple_Attribute
          or Name = Muted_Attribute
          or Name = Novalidate_Attribute
          or Name = Open_Attribute
          or Name = Readonly_Attribute
          or Name = Required_Attribute
          or Name = Reversed_Attribute
          or Name = Scoped_Attribute
          or Name = Seamless_Attribute
          or Name = Selected_Attribute
          or Name = Typemustmatch_Attribute;
   end Is_Boolean_Attribute;

   -----------------------------------
   -- Is_Escapable_Raw_Text_Element --
   -----------------------------------

   function Is_Escapable_Raw_Text_Element
    (Tag : League.Strings.Universal_String) return Boolean is
   begin
      return Tag = Textarea_Tag or Tag = Title_Tag;
   end Is_Escapable_Raw_Text_Element;

   -------------------------
   -- Is_Raw_Text_Element --
   -------------------------

   function Is_Raw_Text_Element
    (Tag : League.Strings.Universal_String) return Boolean is
   begin
      return Tag = Script_Tag or Tag = Style_Tag;
   end Is_Raw_Text_Element;

   --------------
   -- Is_Space --
   --------------

   function Is_Space (Item : League.Strings.Universal_String) return Boolean is
      C : League.Characters.Universal_Character;

   begin
      --  [HTML5] "The space characters, for the purposes of this
      --  specification, are U+0020 SPACE, "tab" (U+0009), "LF" (U+000A), "FF"
      --  (U+000C), and "CR" (U+000D)."

      for J in 1 .. Item.Length loop
         C := Item (J);

         if C /= League.Characters.Latin.Space
           and C /= League.Characters.Latin.Character_Tabulation
           and C /= League.Characters.Latin.Line_Feed
           and C /= League.Characters.Latin.Form_Feed
           and C /= League.Characters.Latin.Carriage_Return
         then
            return False;
         end if;
      end loop;

      return True;
   end Is_Space;

   ---------------------
   -- Is_Void_Element --
   ---------------------

   function Is_Void_Element
    (Tag : League.Strings.Universal_String) return Boolean is
   begin
      return
        Tag = Area_Tag
          or Tag = Base_Tag
          or Tag = Br_Tag
          or Tag = Col_Tag
          or Tag = Embed_Tag
          or Tag = Hr_Tag
          or Tag = Img_Tag
          or Tag = Input_Tag
          or Tag = Keygen_Tag
          or Tag = Link_Tag
          or Tag = Meta_Tag
          or Tag = Param_Tag
          or Tag = Source_Tag
          or Tag = Track_Tag
          or Tag = Wbr_Tag;
   end Is_Void_Element;

   ----------------------------
   -- Set_Output_Destination --
   ----------------------------

   procedure Set_Output_Destination
    (Self   : in out HTML5_Writer'Class;
     Output : not null SAX_Output_Destination_Access) is
   begin
      Self.Output := Output;
   end Set_Output_Destination;

   -----------------
   -- Start_CDATA --
   -----------------

   overriding procedure Start_CDATA
    (Self    : in out HTML5_Writer;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      if Self.Omit = Foreign then
         Self.Output.Put ('>');
         Self.Omit := None;
      end if;

      Self.CDATA_Mode := True;

      if Self.State.Element_Kind = Foreign then
         --  [HTML5] "CDATA sections can only be used in foreign content
         --  (MathML or SVG)."

         Self.Output.Put ("<![CDATA[");
      end if;
   end Start_CDATA;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out HTML5_Writer;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.Diagnosis.Clear;
      Self.State := (Element_Kind => Normal);
      Self.Omit            := None;
      Self.History         := None;
      Self.Stack.Clear;
      Self.DOCTYPE_Written := False;
      Self.Document_Start  := True;
      Self.CDATA_Mode      := False;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   overriding procedure Start_DTD
    (Self      : in out HTML5_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean)
   is
      pragma Unreferenced (Name);
      pragma Unreferenced (Public_Id);
      pragma Unreferenced (System_Id);
      pragma Unreferenced (Success);

   begin
      Self.Write_DOCTYPE;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out HTML5_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);

      History : Omit_History_Kinds := None;

   begin
      Self.Stack.Append (Self.State);

      if not Self.DOCTYPE_Written then
         --  DOCTYPE is required by HTML5 but it is optional in XHTML5.

         Self.Write_DOCTYPE;
      end if;

      case Self.Omit is
         when None =>
            null;

         when Foreign =>
            Self.Output.Put ('>');

         when HTML_Start_Tag =>
            --  [HTML5] "An html element's start tag may be omitted if the
            --  first thing inside the html element is not a comment."

            null;

         when HTML_End_Tag =>
            --  [HTML5] "An html element's end tag may be omitted if the html
            --  element is not immediately followed by a comment."

            null;

         when Head_Start_Tag =>
            --  [HTML5] "A head element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the head element
            --  is an element."

            null;

         when Head_End_Tag =>
            --  [HTML5] "A head element's end tag may be omitted if the head
            --  element is not immediately followed by a space character or a
            --  comment."

            null;

         when Body_Start_Tag =>
            --  [HTML5] "A body element's start tag may be omitted if the
            --  element is empty, or if the first thing inside the body element
            --  is not a space character or a comment, except if the first
            --  thing inside the body element is a script or style element."

            if Namespace_URI = HTML_URI
              and (Local_Name = Script_Tag or Local_Name = Style_Tag)
            then
               Self.Output.Put ("<body>");
            end if;

         when Body_End_Tag =>
            --  [HTML5] "A body element's end tag may be omitted if the body
            --  element is not immediately followed by a comment."

            null;

         when Li_End_Tag =>
            --  [HTML5] "An li element's end tag may be omitted if the li
            --  element is immediately followed by another li element or if
            --  there is no more content in the parent element."

            if Namespace_URI = HTML_URI and Local_Name /= Li_Tag then
               Self.Output.Put ("</li>");
            end if;

         when Dt_End_Tag =>
            --  [HTML5] "A dt element's end tag may be omitted if the dt
            --  element is immediately followed by another dt element or a dd
            --  element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Dt_Tag and Local_Name /= Dd_Tag)
            then
               Self.Output.Put ("</dt>");
            end if;

         when Dd_End_Tag =>
            --  [HTML5] "A dd element's end tag may be omitted if the dd
            --  element is immediately followed by another dd element or a dt
            --  element, or if there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Dt_Tag and Local_Name /= Dd_Tag)
            then
               Self.Output.Put ("</dd>");
            end if;

         when Rt_End_Tag =>
            --  [HTML5] "An rt element's end tag may be omitted if the rt
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Rt_Tag and Local_Name /= Rp_Tag)
            then
               Self.Output.Put ("</rt>");
            end if;

         when Rp_End_Tag =>
            --  [HTML5] "An rp element's end tag may be omitted if the rp
            --  element is immediately followed by an rt or rp element, or if
            --  there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Rt_Tag and Local_Name /= Rp_Tag)
            then
               Self.Output.Put ("</rp>");
            end if;

         when Optgroup_End_Tag =>
            --  [HTML5] "An optgroup element's end tag may be omitted if the
            --  optgroup element is immediately followed by another optgroup
            --  element, or if there is no more content in the parent element."

            if Namespace_URI /= HTML_URI or Local_Name /= Optgroup_Tag then
               Self.Output.Put ("</optgroup>");
            end if;

         when Option_End_Tag =>
            --  [HTML5] "An option element's end tag may be omitted if the
            --  option element is immediately followed by another option
            --  element, or if it is immediately followed by an optgroup
            --  element, or if there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Option_Tag and Local_Name /= Optgroup_Tag)
            then
               Self.Output.Put ("</option>");
            end if;

         when Colgroup_Start_Tag =>
            --  [HTML5] "A colgroup element's start tag may be omitted if the
            --  first thing inside the colgroup element is a col element, and
            --  if the element is not immediately preceded by another colgroup
            --  element whose end tag has been omitted. (It can't be omitted if
            --  the element is empty.)"

            if Namespace_URI /= HTML_URI
              or Local_Name /= Col_Tag
              or Self.History = Colgroup_End_Tag
            then
               Self.Output.Put ("<colgroup>");
            end if;

         when Colgroup_End_Tag =>
            --  [HTML5] "A colgroup element's end tag may be omitted if the
            --  colgroup element is not immediately followed by a space
            --  character or a comment."

            History := Colgroup_End_Tag;

         when Thead_End_Tag =>
            --  [HTML5] "A thead element's end tag may be omitted if the thead
            --  element is immediately followed by a tbody or tfoot element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Tbody_Tag and Local_Name /= Tfoot_Tag)
            then
               Self.Output.Put ("</thead>");

            else
               History := Thead_End_Tag;
            end if;

         when Tbody_Start_Tag =>
            --  [HTML5] "A tbody element's start tag may be omitted if the
            --  first thing inside the tbody element is a tr element, and if
            --  the element is not immediately preceded by a tbody, thead, or
            --  tfoot element whose end tag has been omitted. (It can't be
            --  omitted if the element is empty.)"

            if Namespace_URI /= HTML_URI
              or Local_Name /= Tr_Tag
              or Self.History = Thead_End_Tag
              or Self.History = Tbody_End_Tag
              or Self.History = Tfoot_End_Tag
            then
               Self.Output.Put ("<tbody>");
            end if;

         when Tbody_End_Tag =>
            --  [HTML5] "A tbody element's end tag may be omitted if the tbody
            --  element is immediately followed by a tbody or tfoot element, or
            --  if there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Tbody_Tag and Local_Name /= Tfoot_Tag)
            then
               Self.Output.Put ("</tbody>");

            else
               History := Tbody_End_Tag;
            end if;

         when Tfoot_End_Tag =>
            --  [HTML5] "A tfoot element's end tag may be omitted if the tfoot
            --  element is immediately followed by a tbody element, or if there
            --  is no more content in the parent element."

            if Namespace_URI /= HTML_URI or Local_Name /= Tbody_Tag then
               Self.Output.Put ("</tfoot>");

            else
               History := Tfoot_End_Tag;
            end if;

         when Tr_End_Tag =>
            --  [HTML5] "A tr element's end tag may be omitted if the tr
            --  element is immediately followed by another tr element, or if
            --  there is no more content in the parent element."

            if Namespace_URI /= HTML_URI or Local_Name /= Tr_Tag then
               Self.Output.Put ("</tr>");
            end if;

         when Td_End_Tag =>
            --  [HTML5] "A td element's end tag may be omitted if the td
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Td_Tag and Local_Name /= Th_Tag)
            then
               Self.Output.Put ("</td>");
            end if;

         when Th_End_Tag =>
            --  [HTML5] "A th element's end tag may be omitted if the th
            --  element is immediately followed by a td or th element, or if
            --  there is no more content in the parent element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Td_Tag and Local_Name /= Th_Tag)
            then
               Self.Output.Put ("</th>");
            end if;

         when P_End_Tag =>
            --  [HTML5] "A p element's end tag may be omitted if the p element
            --  is immediately followed by an address, article, aside,
            --  blockquote, dir, div, dl, fieldset, footer, form, h1, h2, h3,
            --  h4, h5, h6, header, hgroup, hr, main, nav, ol, p, pre, section,
            --  table, or ul, element, or if there is no more content in the
            --  parent element and the parent element is not an a element."

            if Namespace_URI /= HTML_URI
              or (Local_Name /= Address_Tag
                    and Local_Name /= Article_Tag
                    and Local_Name /= Aside_Tag
                    and Local_Name /= Blockquote_Tag
                    and Local_Name /= Dir_Tag
                    and Local_Name /= Div_Tag
                    and Local_Name /= Dl_Tag
                    and Local_Name /= Fieldset_Tag
                    and Local_Name /= Footer_Tag
                    and Local_Name /= Form_Tag
                    and Local_Name /= H1_Tag
                    and Local_Name /= H2_Tag
                    and Local_Name /= H3_Tag
                    and Local_Name /= H4_Tag
                    and Local_Name /= H5_Tag
                    and Local_Name /= H6_Tag
                    and Local_Name /= Header_Tag
                    and Local_Name /= Hgroup_Tag
                    and Local_Name /= Hr_Tag
                    and Local_Name /= Main_Tag
                    and Local_Name /= Nav_Tag
                    and Local_Name /= Ol_Tag
                    and Local_Name /= P_Tag
                    and Local_Name /= Pre_Tag
                    and Local_Name /= Section_Tag
                    and Local_Name /= Table_Tag
                    and Local_Name /= Ul_Tag)
            then
               Self.Output.Put ("</p>");
            end if;
      end case;

      Self.Omit    := None;
      Self.History := History;

      if Namespace_URI = HTML_URI then
         if Is_Void_Element (Local_Name) then
            Self.State.Element_Kind := Void;

         elsif Is_Raw_Text_Element (Local_Name) then
            Self.State.Element_Kind := Raw_Text;

         elsif Is_Escapable_Raw_Text_Element (Local_Name) then
            Self.State.Element_Kind := Escapable_Raw_Text;

         else
            Self.State.Element_Kind := Normal;
         end if;

         if Local_Name = Body_Tag then
            --  For convinience recognize <body> tag as start of the document's
            --  content.

            Self.Document_Start := False;

            if Attributes.Is_Empty then
               Self.Omit := Body_Start_Tag;
            end if;

         elsif Local_Name = Head_Tag then
            Self.Document_Start := False;

            if Attributes.Is_Empty then
               Self.Omit := Head_Start_Tag;
            end if;

         elsif Local_Name = HTML_Tag then
            if Attributes.Is_Empty then
               Self.Omit := HTML_Start_Tag;
            end if;

         elsif Local_Name = Colgroup_Tag then
            if Attributes.Is_Empty and Self.History /= Colgroup_End_Tag then
               Self.Omit := Colgroup_Start_Tag;
            end if;

         elsif Local_Name = Tbody_Tag then
            if Attributes.Is_Empty
              and (Self.History /= Tbody_End_Tag
                     or Self.History /= Thead_End_Tag
                     or Self.History /= Tfoot_End_Tag)
            then
               Self.Omit := Tbody_Start_Tag;
            end if;
         end if;

         if Self.Omit = None then
            Self.Output.Put ('<');
            Self.Output.Put (Local_Name);
            Self.Write_Attributes (Attributes, Success);

            if not Success then
               return;
            end if;

            Self.Output.Put ('>');

            if Local_Name = HTML_Tag then
               --  [HTML5] "It is suggested that newlines be inserted after the
               --  DOCTYPE, after any comments that are before the root
               --  element, after the html element's start tag (if it is not
               --  omitted), and after any comments that are inside the html
               --  element but before the head element."

               Self.Output.Put (League.Characters.Latin.Line_Feed);
            end if;
         end if;

      elsif Namespace_URI = MathML_URI
        or Namespace_URI = SVG_URI
      then
         Self.State.Element_Kind := Foreign;
         Self.Omit := Foreign;

         Self.Output.Put ('<');
         Self.Output.Put (Local_Name);
         Self.Write_Attributes (Attributes, Success);

         if not Success then
            return;
         end if;

      else
         --  Other namespaces can't be used in HTML5.

         Success        := False;
         Self.Diagnosis :=
           League.Strings.To_Universal_String
            ("namespace is not supported by HTML5");
      end if;
   end Start_Element;

   ----------------------
   -- Write_Attributes --
   ----------------------

   procedure Write_Attributes
    (Self       : in out HTML5_Writer'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is

      procedure Write_Attribute
       (Qualified_Name : League.Strings.Universal_String;
        Value          : League.Strings.Universal_String);

      ---------------------
      -- Write_Attribute --
      ---------------------

      procedure Write_Attribute
       (Qualified_Name : League.Strings.Universal_String;
        Value          : League.Strings.Universal_String)
      is
         Escaped_Value : League.Strings.Universal_String;
         Syntax        : Attribute_Value_Syntax;

      begin
         Escape_Attribute_Value (Value, Escaped_Value, Syntax);

         if Syntax = Empty
           or else (Self.State.Element_Kind /= Foreign
                      and then Is_Boolean_Attribute (Qualified_Name))
         then
            Self.Output.Put (' ');
            Self.Output.Put (Qualified_Name);

         elsif Syntax = Unquoted then
            Self.Output.Put (' ');
            Self.Output.Put (Qualified_Name);
            Self.Output.Put ('=');
            Self.Output.Put (Escaped_Value);

         elsif Syntax = Single_Quoted then
            Self.Output.Put (' ');
            Self.Output.Put (Qualified_Name);
            Self.Output.Put ('=');
            Self.Output.Put (''');
            Self.Output.Put (Escaped_Value);
            Self.Output.Put (''');

         else
            Self.Output.Put (' ');
            Self.Output.Put (Qualified_Name);
            Self.Output.Put ('=');
            Self.Output.Put ('"');
            Self.Output.Put (Escaped_Value);
            Self.Output.Put ('"');
         end if;
      end Write_Attribute;

      Namespace_URI  : League.Strings.Universal_String;
      Local_Name     : League.Strings.Universal_String;
      Qualified_Name : League.Strings.Universal_String;
      Value          : League.Strings.Universal_String;

   begin
      for J in 1 .. Attributes.Length loop
         Namespace_URI  := Attributes.Namespace_URI (J);
         Local_Name     := Attributes.Local_Name (J);
         Qualified_Name := Attributes.Qualified_Name (J);
         Value          := Attributes (J);

         if Namespace_URI.Is_Empty then
            Write_Attribute (Qualified_Name, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XLink_URI
           and Local_Name = Actuate_Attribute
         then
            Write_Attribute (XLink_Actuate_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XLink_URI
           and Local_Name = Arcrole_Attribute
         then
            Write_Attribute (XLink_Arcrole_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
              and Namespace_URI = XLink_URI
              and Local_Name = Href_Attribute
         then
            Write_Attribute (XLink_Href_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XLink_URI
           and Local_Name = Role_Attribute
         then
            Write_Attribute (XLink_Role_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XLink_URI
           and Local_Name = Show_Attribute
         then
            Write_Attribute (XLink_Show_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XLink_URI
           and Local_Name = Title_Attribute
         then
            Write_Attribute (XLink_Title_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XLink_URI
           and Local_Name = Type_Attribute
         then
            Write_Attribute (XLink_Type_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XML_URI
           and Local_Name = Base_Attribute
         then
            Write_Attribute (XML_Base_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XML_URI
           and Local_Name = Lang_Attribute
         then
            Write_Attribute (XML_Lang_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XML_URI
           and Local_Name = Space_Attribute
         then
            Write_Attribute (XML_Space_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XMLNS_URI
           and Local_Name = XMLNS_Attribute
         then
            Write_Attribute (XMLNS_Attribute, Value);

         elsif Self.State.Element_Kind = Foreign
           and Namespace_URI = XMLNS_URI
           and Local_Name = XLink_Attribute
         then
            Write_Attribute (XMLNS_XLink_Attribute, Value);

         else
            --  Other namespaces can't be expressed in HTML5.

            Success        := False;
            Self.Diagnosis :=
              League.Strings.To_Universal_String
               ("namespaced attribute can't be expressed in HTML5");

            return;
         end if;
      end loop;
   end Write_Attributes;

   -------------------
   -- Write_DOCTYPE --
   -------------------

   procedure Write_DOCTYPE (Self : in out HTML5_Writer'Class) is
   begin
      Self.DOCTYPE_Written := True;
      Self.Output.Put ("<!DOCTYPE html>");

      --  [HTML5] "It is suggested that newlines be inserted after the DOCTYPE,
      --  after any comments that are before the root element, after the html
      --  element's start tag (if it is not omitted), and after any comments
      --  that are inside the html element but before the head element."

      Self.Output.Put (League.Characters.Latin.Line_Feed);
   end Write_DOCTYPE;

end XML.SAX.HTML5_Writers;
