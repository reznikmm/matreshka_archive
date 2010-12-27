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
--  $Revision: 877 $ $Date: 2010-08-05 10:56:50 +0400 (Чтв, 05 Авг 2010) $
------------------------------------------------------------------------------
with Ada.Wide_Wide_Text_IO;

with League.Strings;

with XML.SAX.Attributes;
with XML.SAX.Pretty_Writers;

use League.Strings;

procedure Simple_Test is
   Writer     : XML.SAX.Pretty_Writers.SAX_Pretty_Writer_Access
     := new XML.SAX.Pretty_Writers.SAX_Pretty_Writer;
   OK         : Boolean := False;
   Attrs      : XML.SAX.Attributes.SAX_Attributes;
   NS_URI     : Universal_String := To_Universal_String ("");
   Local_Name : Universal_String := To_Universal_String ("");
   Qualified_Name : Universal_String := To_Universal_String ("A");

begin
   --  Setting attributes

   --  Creating document
   Writer.Set_Version (XML.SAX.Pretty_Writers.XML_1_1);
   Writer.Start_Document (OK);
   Writer.Start_Element (NS_URI,
                         Local_Name,
                         Qualified_Name,
                         Attrs,
                         OK);

   Writer.Characters
     (To_Universal_String (Wide_Wide_Character'Val (16#2#) & """test"""), OK);
   Writer.End_Element (NS_URI,
                       Local_Name,
                       Qualified_Name,
                       OK);

   Writer.End_Document (OK);

   Ada.Wide_Wide_Text_IO.Put_Line ("Result : "
                                     & Writer.Text.To_Wide_Wide_String);
end Simple_Test;
