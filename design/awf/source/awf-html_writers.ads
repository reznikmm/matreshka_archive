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
with League.Strings;
with XML.SAX.Pretty_Writers;

package AWF.HTML_Writers is

   type HTML_Writer is tagged limited private;

   type Content_Editable_Kinds is (False, True, Inherit);

   type Dir_Kinds is (LTR, RTL, Auto);

   type Draggable_Kinds is (False, True, Auto);

   type Spellcheck_Kinds is (False, True, Default);

   not overriding function Text
    (Self : HTML_Writer) return League.Strings.Universal_String;

   not overriding procedure Characters
    (Self : in out HTML_Writer;
     Text : League.Strings.Universal_String);

   not overriding procedure Start_Body (Self : in out HTML_Writer);
   not overriding procedure End_Body (Self : in out HTML_Writer);

   not overriding procedure Start_Div
    (Self     : in out HTML_Writer;
     Id       : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Style    : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     On_Click : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String);
   not overriding procedure End_Div (Self : in out HTML_Writer);

   not overriding procedure Start_HTML (Self : in out HTML_Writer);
--    (Self             : in out HTML_Writer;
--     Access_Key       : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Class            : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Content_Editable : Content_Editable_Kinds := Inherit;
--     Context_Menu     : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Dir              : Dir_Kinds := LTR;
--     Draggable        : Draggable_Kinds := Auto;
--     Drop_Zone        : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Hidden           : Boolean := False;
--     Id               : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Lang             : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Spell_Check      : Spellcheck_Kinds := Default;
--     Style            : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String;
--     Tab_Index        : Integer := 0;
--     Title            : League.Strings.Universal_String
--       := League.Strings.Empty_Universal_String);
   not overriding procedure End_HTML (Self : in out HTML_Writer);

   not overriding procedure Start_Head (Self : in out HTML_Writer);
   not overriding procedure End_Head (Self : in out HTML_Writer);

   not overriding procedure Start_Script
    (Self : in out HTML_Writer;
     Src  : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String);
   not overriding procedure End_Script (Self : in out HTML_Writer);

   not overriding procedure Start_Table (Self : in out HTML_Writer);
   not overriding procedure End_Table (Self : in out HTML_Writer);

   not overriding procedure Start_Td (Self : in out HTML_Writer);
   not overriding procedure End_Td (Self : in out HTML_Writer);

   not overriding procedure Start_Title (Self : in out HTML_Writer);
   not overriding procedure End_Title (Self : in out HTML_Writer);

   not overriding procedure Start_Tr (Self : in out HTML_Writer);
   not overriding procedure End_Tr (Self : in out HTML_Writer);

private

   type HTML_Writer is tagged limited record
      Writer : XML.SAX.Pretty_Writers.SAX_Pretty_Writer;
   end record;

end AWF.HTML_Writers;
