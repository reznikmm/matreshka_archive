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
with Ada.Wide_Wide_Text_IO;

with League.IRIs;
with XML.SAX.Input_Sources.Streams.Files;

with AMF.Internals.XMI_URI_Rewriter;

package body AMF.Internals.XMI_Document_Resolvers is

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Default_Document_Resolver)
       return League.Strings.Universal_String is
   begin
      return Self.Error_String;
   end Error_String;

   ----------------------
   -- Resolve_Document --
   ----------------------

   overriding procedure Resolve_Document
    (Self    : in out Default_Document_Resolver;
     URI     : League.Strings.Universal_String;
     Source  : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success : in out Boolean)
   is
      use type League.Strings.Universal_String;

      New_URI    : constant League.Strings.Universal_String
        := AMF.Internals.XMI_URI_Rewriter.Rewrite_Model_URI (URI);
      Parsed_URI : constant League.IRIs.IRI
        := League.IRIs.From_Universal_String (New_URI);

   begin
      Self.Error_String.Clear;

      Source :=
        new XML.SAX.Input_Sources.Streams.Files.File_Input_Source;

      --  Open input source.

      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error,
        "Opening '"
          & URI.To_Wide_Wide_String
          & "' (use '"
          & New_URI.To_Wide_Wide_String
          & "')");

      if not Parsed_URI.Scheme.Is_Empty then
         XML.SAX.Input_Sources.Streams.Files.File_Input_Source'Class
          (Source.all).Open_By_URI (New_URI);

      else
         XML.SAX.Input_Sources.Streams.Files.File_Input_Source'Class
          (Source.all).Open_By_File_Name (New_URI);
      end if;

      --  Set system identifier when is was rewritten.

      if URI /= New_URI then
         Source.Set_System_Id (URI);
      end if;
   end Resolve_Document;

end AMF.Internals.XMI_Document_Resolvers;
