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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Exceptions;
with Ada.Text_IO;

with League.Application;
with Matreshka.XML_Catalogs.Entry_Files;
with Matreshka.XML_Catalogs.Loader;
with Matreshka.XML_Catalogs.Resolver;

package body AMF.Internals.XMI_URI_Rewriter is

   use type League.Strings.Universal_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   Namespace_Rules : aliased
     Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List;
   Document_Rules  : aliased
     Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List;
   --  Rules to rewrite URIs of namespaces and documents.

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      --  Load metamodels mapping.

      begin
         Namespace_Rules.Catalog_Entry_Files.Append
          (Matreshka.XML_Catalogs.Loader.Load_By_File_Name
            (League.Application.Environment.Value (+"AMF_DATA_DIR", +".")
               & "/metamodels/mapping.xml",
             Matreshka.XML_Catalogs.Entry_Files.System));

      exception
         when E : others =>
            Ada.Text_IO.Put_Line
             (Ada.Text_IO.Standard_Error,
              Ada.Exceptions.Exception_Information (E));
      end;

      --  Load models mapping.

      begin
         Document_Rules.Catalog_Entry_Files.Append
          (Matreshka.XML_Catalogs.Loader.Load_By_File_Name
            (League.Application.Environment.Value (+"AMF_DATA_DIR", +".")
               & "/models/mapping.xml",
             Matreshka.XML_Catalogs.Entry_Files.System));

      exception
         when E : others =>
            Ada.Text_IO.Put_Line
             (Ada.Text_IO.Standard_Error,
              Ada.Exceptions.Exception_Information (E));
      end;
   end Initialize;

   -----------------------
   -- Rewrite_Model_URI --
   -----------------------

   function Rewrite_Model_URI
    (URI : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Resolved : League.Strings.Universal_String;
      Success  : Boolean;

   begin
      Matreshka.XML_Catalogs.Resolver.Resolve_URI
       (Document_Rules'Access, URI, Resolved, Success);

      return Resolved;
   end Rewrite_Model_URI;

   ---------------------------
   -- Rewrite_Namespace_URI --
   ---------------------------

   function Rewrite_Namespace_URI
    (URI : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Resolved : League.Strings.Universal_String;
      Success  : Boolean;

   begin
      Matreshka.XML_Catalogs.Resolver.Resolve_URI
       (Namespace_Rules'Access, URI, Resolved, Success);

      return Resolved;
   end Rewrite_Namespace_URI;

end AMF.Internals.XMI_URI_Rewriter;
