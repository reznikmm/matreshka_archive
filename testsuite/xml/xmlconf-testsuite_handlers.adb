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
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Characters.Conversions;
with Ada.Directories;
with Ada.Exceptions;

with Put_Line;
with Read_File;
with XML.SAX.Simple_Readers;

package body XMLConf.Testsuite_Handlers is

   use type League.Strings.Universal_String;

   XML_URI             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/XML/1998/namespace");
   Base_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("base");

   Test_Tag            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("TEST");
   Testcases_Tag       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("TESTCASES");
   Id_Name             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ID");
   URI_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("URI");
   Type_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("TYPE");
   Valid_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("valid");
   Invalid_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("invalid");
   Not_Wellformed_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("not-wf");
   Error_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("error");
   Edition_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("EDITION");
   Fifth_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("5");

   procedure Execute_Test
    (Self : in out Testsuite_Handler;
     Id   : League.Strings.Universal_String;
     Base : League.Strings.Universal_String;
     URI  : League.Strings.Universal_String;
     Kind : Test_Kinds);

   ------------------
   -- Execute_Test --
   ------------------

   procedure Execute_Test
    (Self : in out Testsuite_Handler;
     Id   : League.Strings.Universal_String;
     Base : League.Strings.Universal_String;
     URI  : League.Strings.Universal_String;
     Kind : Test_Kinds) is
   begin
      declare
         Cwd    : constant String := Ada.Directories.Current_Directory;
         Dwd    : constant String
           := Ada.Directories.Containing_Directory
               (Ada.Characters.Conversions.To_String
                 (League.Strings.To_Wide_Wide_String (Base & URI)));
         Text   : League.Strings.Universal_String;
         Reader : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;

      begin
         Ada.Directories.Set_Directory (Dwd);

         select
            delay 3.0;

            raise Program_Error with "terminated by timeout";

         then abort
            Text :=
              Read_File
               (Ada.Directories.Simple_Name
                 (Ada.Characters.Conversions.To_String
                   (URI.To_Wide_Wide_String)));
            Reader.Parse (Text);
         end select;

         Ada.Directories.Set_Directory (Cwd);

      exception
         when X : others =>
            Ada.Directories.Set_Directory (Cwd);
            Self.Results (Kind).Crash := Self.Results (Kind).Crash + 1;
            Put_Line (Id & ": crashed");
            Put_Line
             (League.Strings.To_Universal_String
               (Ada.Characters.Conversions.To_Wide_Wide_String
                 (Ada.Exceptions.Exception_Information (X))));
      end;

   exception
      when X : others =>
         Put_Line (Id & ": initialization/finalization crashed");
         Put_Line
          (League.Strings.To_Universal_String
            (Ada.Characters.Conversions.To_Wide_Wide_String
              (Ada.Exceptions.Exception_Information (X))));
   end Execute_Test;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Testsuite_Handler)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_String;
   end Error_String;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Testsuite_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Put_Line ("FATAL ERROR: " & Occurrence.Message);
   end Fatal_Error;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Testsuite_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      Index     : Natural;
      Id        : League.Strings.Universal_String;
      URI       : League.Strings.Universal_String;
      Test_Type : League.Strings.Universal_String;
      Test_Kind : Test_Kinds;
      Skip      : Boolean := False;

   begin
      if Qualified_Name = Test_Tag then
         --  <!ELEMENT TEST (#PCDATA | EM | B)*>
         --  <!ATTLIST TEST
         --    ENTITIES    	(both|none|parameter|general)   "none"
         --    ID          	ID                              #REQUIRED
         --    OUTPUT		CDATA				#IMPLIED
         --    OUTPUT3		CDATA				#IMPLIED
         --    SECTIONS    	CDATA                           #REQUIRED
         --    RECOMMENDATION 	(XML1.0|XML1.1|NS1.0|NS1.1|
         --    			 XML1.0-errata2e|XML1.0-errata3e|XML1.0-errata4e|
         --			 NS1.0-errata1e) 	"XML1.0"
         --    TYPE        	(valid|invalid|not-wf|error)    #REQUIRED
         --    VERSION 	        NMTOKENS 			#IMPLIED
         --    EDITION 	        NMTOKENS 			#IMPLIED
         --    URI         	CDATA                           #REQUIRED
         --    NAMESPACE   	(yes|no)			"yes"
         --    >
         Id  := Attributes.Value (Attributes.Index (Id_Name));
         URI := Attributes.Value (Attributes.Index (URI_Name));

         Test_Type := Attributes.Value (Attributes.Index (Type_Name));

         if Test_Type = Valid_Name then
            Test_Kind := Valid;

         elsif Test_Type = Invalid_Name then
            Test_Kind := Invalid;

         elsif Test_Type = Not_Wellformed_Name then
            Test_Kind := Not_Wellformed;

         elsif Test_Type = Error_Name then
            Test_Kind := Error;

         else
            raise Constraint_Error;
         end if;

         Index := Attributes.Index (Edition_Name);

         if Index /= 0 then
            if Attributes.Value (Index) /= Fifth_Name then
               Skip := True;
            end if;
         end if;

         if not Skip then
            Execute_Test (Self, Id, Self.Base, URI, Test_Kind);
         end if;

      elsif Qualified_Name = Testcases_Tag then
         Index := Attributes.Index (XML_URI, Base_Name);

         if Index /= 0 then
            Self.Base := Attributes.Value (Index);
         end if;
      end if;
   end Start_Element;

end XMLConf.Testsuite_Handlers;
