------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Directories;

with League.Application;
with Matreshka.Config;
with Matreshka.CLDR.AllKeys_Reader;
with Matreshka.CLDR.Collation_Compiler;
with Matreshka.CLDR.Collation_Data;
with Matreshka.CLDR.LDML_Parsers;
with XML.SAX.File_Input_Sources;
with XML.SAX.Simple_Readers;

package body Matreshka.CLDR.Collation_Loader is

   use type League.Strings.Universal_String;

   CDLR_Root_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("MATRESHKA_CLDR_DIR");
   CLDR_Root             : constant League.Strings.Universal_String
     := Matreshka.Config.Prefix
          & League.Strings.To_Universal_String ("/share/matreshka/cldr/");
   AllKeys_Relative_Path : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("/common/uca/allkeys_CLDR.txt");
   --  Path to allkeys.txt file relative to root of CLDR directory.
   Collation_Root : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("/common/collation/");
   XML_Suffix     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String (".xml");

   function AllKeys_Path
    (Root : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   function Collation_Path
    (Root     : League.Strings.Universal_String;
     Language : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   ------------------
   -- AllKeys_Path --
   ------------------

   function AllKeys_Path
    (Root : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return Root & AllKeys_Relative_Path;
   end AllKeys_Path;

   --------------------
   -- Collation_Path --
   --------------------

   function Collation_Path
    (Root     : League.Strings.Universal_String;
     Language : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      return Root & Collation_Root & Language & XML_Suffix;
   end Collation_Path;

   -------------------------
   -- Load_Collation_Data --
   -------------------------

   procedure Load_Collation_Data
    (Language : League.Strings.Universal_String;
     Locale   : not null access Matreshka.Internals.Locales.Locale_Data;
     Location : League.Strings.Universal_String)
   is
      Data   : Matreshka.CLDR.Collation_Data.Collation_Information_Access;
      Input  : aliased XML.SAX.File_Input_Sources.File_Input_Source;
      Parser : aliased Matreshka.CLDR.LDML_Parsers.LDML_Parser;
      Reader : XML.SAX.Simple_Readers.Simple_Reader;

   begin
      Data :=
        Matreshka.CLDR.AllKeys_Reader.Load_AllKeys_File
         (AllKeys_Path (Location));

      Input.Open_By_File_Name (Collation_Path (Location, Language));
      Parser.Collations := Data;
      Reader.Set_Content_Handler (Parser'Unchecked_Access);
      Reader.Parse (Input'Unchecked_Access);
      Input.Close;

      Matreshka.CLDR.Collation_Compiler.Construct_Collation_Information
       (Data.all, Locale);
   end Load_Collation_Data;

   -------------------------
   -- Load_Collation_Data --
   -------------------------

   procedure Load_Collation_Data
    (Language : League.Strings.Universal_String;
     Locale   : not null access Matreshka.Internals.Locales.Locale_Data)
   is
      Env : constant League.Strings.Universal_String
        := League.Application.Environment.Value (CDLR_Root_Name);

   begin
      if not Env.Is_Empty then
         Load_Collation_Data (Language, Locale, Env);

      else
         Load_Collation_Data (Language, Locale, CLDR_Root);
      end if;
   end Load_Collation_Data;

end Matreshka.CLDR.Collation_Loader;
