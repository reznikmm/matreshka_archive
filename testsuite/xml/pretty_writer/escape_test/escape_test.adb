------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Wide_Wide_Text_IO;

with League.Strings;

with XML.SAX.Attributes;
with XML.SAX.String_Output_Destinations;
with XML.SAX.Pretty_Writers;

use League.Strings;

procedure Escape_Test is
   Output         : aliased
     XML.SAX.String_Output_Destinations.String_Output_Destination;
   Writer         : XML.SAX.Pretty_Writers.XML_Pretty_Writer;
   OK             : Boolean := True;
   Attrs          : XML.SAX.Attributes.SAX_Attributes;
   NS_URI         : constant Universal_String := To_Universal_String ("");
   Local_Name     : constant Universal_String := To_Universal_String ("");
   Qualified_Name : constant Universal_String := To_Universal_String ("A");
   Reference      : constant Universal_String
     := To_Universal_String ("<?xml version='1.1'?>"
                               & "<A>some_text</A>"
                               & "<A>alert('hello');</A>"
                               & "<A>aa&amp;bb'cc&lt;dd>ee</A>");

   ------------
   -- Assert --
   ------------

   procedure Assert (OK : Boolean) is
   begin
      if not OK then
         Ada.Wide_Wide_Text_IO.Put_Line
           (Writer.Error_String.To_Wide_Wide_String);
         raise Program_Error with "Assertion Failed";
      end if;
   end Assert;

begin
   --  Creating document
   Writer.Set_Output_Destination (Output'Unchecked_Access);
   Writer.Set_Version (XML.SAX.Pretty_Writers.XML_1_1);

   --  Adding first tag
   Writer.Start_Document (OK);
   Assert (OK);

   Writer.Start_Element (NS_URI, Local_Name, Qualified_Name, Attrs, OK);
   Assert (OK);

   Writer.Characters (To_Universal_String ("some_text"), OK);
   Assert (OK);

   Writer.End_Element (NS_URI, Local_Name, Qualified_Name, OK);
   Assert (OK);

   Writer.Start_Element (NS_URI, Local_Name, Qualified_Name, Attrs, OK);
   Assert (OK);

   Writer.Characters (To_Universal_String ("alert('hello');"), OK);
   Assert (OK);

   Writer.End_Element (NS_URI, Local_Name, Qualified_Name, OK);
   Assert (OK);

   Writer.Start_Element (NS_URI, Local_Name, Qualified_Name, Attrs, OK);
   Assert (OK);

   Writer.Characters (To_Universal_String ("aa&bb'cc<dd>ee"), OK);
   Assert (OK);

   Writer.End_Element (NS_URI, Local_Name, Qualified_Name, OK);
   Assert (OK);


   Writer.End_Document (OK);
   Assert (OK);

   Assert (Output.Get_Text = Reference);
   --  Ada.Wide_Wide_Text_IO.Put_Line (Writer.Text.To_Wide_Wide_String);
end Escape_Test;
