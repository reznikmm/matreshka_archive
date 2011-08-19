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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.XML_Catalogs.Handlers;
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

package body Matreshka.XML_Catalogs.Loader is

   ----------
   -- Load --
   ----------

   function Load
    (URI    : League.Strings.Universal_String;
     Prefer : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode)
       return Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access
   is
      Source  : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Handler : aliased Matreshka.XML_Catalogs.Handlers.XML_Catalog_Handler;
      Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;

   begin
      Handler.Set_Default_Prefer_Mode (Prefer);
      Reader.Set_Content_Handler (Handler'Unchecked_Access);

      Source.Open_By_URI (URI);
      Reader.Parse (Source'Unchecked_Access);

      return Handler.Get_Catalog_Entry_File;
   end Load;

   -----------------------
   -- Load_By_File_Name --
   -----------------------

   function Load_By_File_Name
    (Name   : League.Strings.Universal_String;
     Prefer : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode)
       return Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access
   is
      Source  : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Handler : aliased Matreshka.XML_Catalogs.Handlers.XML_Catalog_Handler;
      Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;

   begin
      Handler.Set_Default_Prefer_Mode (Prefer);
      Reader.Set_Content_Handler (Handler'Unchecked_Access);
      Reader.Set_Error_Handler (Handler'Unchecked_Access);

      Source.Open_By_File_Name (Name);
      Reader.Parse (Source'Unchecked_Access);

      return Handler.Get_Catalog_Entry_File;
   end Load_By_File_Name;

end Matreshka.XML_Catalogs.Loader;
