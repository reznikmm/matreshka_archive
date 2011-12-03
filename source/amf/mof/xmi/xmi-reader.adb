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
with League.IRIs;
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with AMF.Internals.XMI_Handlers;
with AMF.Internals.XMI_URI_Rewriter;

package body XMI.Reader is

   ---------------
   -- Read_File --
   ---------------

   function Read_File
    (File_Name   : League.Strings.Universal_String;
     Context_URI : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
       return AMF.URI_Stores.URI_Store_Access
   is
      use type League.Strings.Universal_String;

      URI      : League.IRIs.IRI;
      Reader   : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Input    : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Handler  : aliased AMF.Internals.XMI_Handlers.XMI_Handler;
      New_Name : League.Strings.Universal_String;

   begin
      if Context_URI.Is_Empty then
         --  Context URI is not defined, use mapping for documents.

         New_Name :=
           AMF.Internals.XMI_URI_Rewriter.Rewrite_Model_URI (File_Name);

         URI := League.IRIs.From_Universal_String (New_Name);

         if New_Name /= File_Name then
            --  File name was rewritten

            Input.Open_By_URI (New_Name);
            Input.Set_System_Id (File_Name);

         elsif not URI.Scheme.Is_Empty then
            --  File name has scheme name

            Input.Open_By_URI (New_Name);

         else
            --  File name doesn't have scheme name

            Input.Open_By_File_Name (New_Name);
         end if;

      else
         --  Context URI is defined, just open specified file and set its
         --  system identifier.

         Input.Open_By_File_Name (File_Name);
         Input.Set_System_Id (Context_URI);
      end if;

      Reader.Set_Content_Handler (Handler'Unchecked_Access);
      Reader.Set_Error_Handler (Handler'Unchecked_Access);
      Reader.Parse (Input'Unchecked_Access);

      return Handler.Root;
   end Read_File;

   --------------
   -- Read_URI --
   --------------

   function Read_URI
    (URI : League.Strings.Universal_String)
       return AMF.URI_Stores.URI_Store_Access
   is
      Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Input   : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Handler : aliased AMF.Internals.XMI_Handlers.XMI_Handler;
      New_URI : League.Strings.Universal_String;

   begin
      New_URI := AMF.Internals.XMI_URI_Rewriter.Rewrite_Model_URI (URI);

      Input.Open_By_URI (New_URI);
      Input.Set_System_Id (URI);

      Reader.Set_Content_Handler (Handler'Unchecked_Access);
      Reader.Set_Error_Handler (Handler'Unchecked_Access);
      Reader.Parse (Input'Unchecked_Access);

      return Handler.Root;
   end Read_URI;

end XMI.Reader;
