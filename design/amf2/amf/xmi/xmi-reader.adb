------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with AMF.Internals.XMI_Handlers;

function XMI.Reader
 (File_Name : League.Strings.Universal_String)
    return AMF.URI_Stores.URI_Store_Access
is
   use type League.Strings.Universal_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
   Input   : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
   Handler : aliased AMF.Internals.XMI_Handlers.XMI_Handler;

begin
   --  XXX It would be nice to use XML Catalogs here, but it is not supported
   --  by Matreshka XML Processor now; so, simple hack is used here.

   if File_Name = +"http://schema.omg.org/spec/MOF/2.0/cmof.xml" then
      Input.Open_By_File_Name (+"data/CMOF.cmof");
      Input.Set_System_Id (+"http://schema.omg.org/spec/MOF/2.0/cmof.xml");

   elsif File_Name = +"http://www.omg.org/spec/UML/20100901/" then
      Input.Open_By_File_Name (+"data/UML24.cmof");
      Input.Set_System_Id (+"http://www.omg.org/spec/UML/20100901/");

   elsif File_Name = +"http://www.omg.org/spec/UML/20100901/UML.xmi" then
      Input.Open_By_File_Name (+"UML.xmi");
      Input.Set_System_Id (+"http://www.omg.org/spec/UML/20100901/UML.xmi");

   elsif File_Name
           = +"http://www.omg.org/spec/UML/20100901/PrimitiveTypes.xmi"
   then
      Input.Open_By_File_Name (+"data/PrimitiveTypes24.cmof");
      Input.Set_System_Id
       (+"http://www.omg.org/spec/UML/20100901/PrimitiveTypes.xmi");

   else
      Input.Open_By_File_Name (File_Name);
   end if;

   Reader.Set_Content_Handler (Handler'Unchecked_Access);
   Reader.Set_Error_Handler (Handler'Unchecked_Access);
   Reader.Parse (Input'Unchecked_Access);

   return Handler.Root;
end XMI.Reader;
