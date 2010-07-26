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
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;
with XMLConf.Canonical_Writers;
with XMLConf.Entity_Resolvers;
with XMLConf.Events_Writers;

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
   Output_Name         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("OUTPUT");
   Namespace_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("NAMESPACE");
   No_Name             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("no");
   Yes_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("yes");

   procedure Execute_Test
    (Self       : in out Testsuite_Handler;
     Id         : League.Strings.Universal_String;
     Base       : League.Strings.Universal_String;
     URI        : League.Strings.Universal_String;
     Kind       : Test_Kinds;
     Namespaces : Boolean;
     Output     : League.Strings.Universal_String);

   ------------------
   -- Execute_Test --
   ------------------

   procedure Execute_Test
    (Self       : in out Testsuite_Handler;
     Id         : League.Strings.Universal_String;
     Base       : League.Strings.Universal_String;
     URI        : League.Strings.Universal_String;
     Kind       : Test_Kinds;
     Namespaces : Boolean;
     Output     : League.Strings.Universal_String)
   is
      Failed : Boolean := False;

   begin
      --  SAX test.

      declare
         Cwd      : constant String := Ada.Directories.Current_Directory;
         Dwd      : constant String
           := Ada.Directories.Containing_Directory
               (Ada.Characters.Conversions.To_String
                 (League.Strings.To_Wide_Wide_String (Base & URI)));
         Source   : aliased
           XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
         Reader   : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
         Writer   : aliased XMLConf.Events_Writers.Events_Writer;
         Expected : League.Strings.Universal_String;

      begin
         Expected :=
           Read_File
            ("../xmlconf-expected-sax/"
               & Ada.Characters.Conversions.To_String
                  (League.Strings.To_Wide_Wide_String (Base & URI)));
         Ada.Directories.Set_Directory (Dwd);

         select
            delay 3.0;

            raise Program_Error with "terminated by timeout";

         then abort
            Reader.Set_Content_Handler (Writer'Unchecked_Access);
            Reader.Set_Error_Handler (Writer'Unchecked_Access);
            Reader.Set_Entity_Resolver (Writer'Unchecked_Access);
            Reader.Set_Enable_Namespaces (Namespaces);

            Source.Open
             (Ada.Directories.Simple_Name
               (Ada.Characters.Conversions.To_String
                 (URI.To_Wide_Wide_String)));
            Reader.Parse (Source'Access);
            Writer.Done;

            case Kind is
               when Valid =>
                  if Writer.Has_Fatal_Errors or Writer.Has_Errors then
                     Failed := True;
                  end if;

               when Invalid =>
                  if not Writer.Has_Fatal_Errors and not Writer.Has_Errors then
                     Failed := True;
                  end if;

               when Not_Wellformed =>
                  if not Writer.Has_Fatal_Errors then
                     Failed := True;
                  end if;

               when Error =>
                  null;
            end case;
         end select;

         if not Failed and Writer.Text /= Expected then
            Put_Line (Id & ": SAX");
            Put_Line ("Expected: '" & Expected & "'");
            Put_Line ("Actual  : '" & Writer.Text & "'");

            Self.Results (Kind).SAX := Self.Results (Kind).SAX + 1;
            Failed := True;
         end if;

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
            Failed := True;
      end;

      --  Canonical output test.

      if not Failed and not Output.Is_Empty then
         declare
            Cwd      : constant String := Ada.Directories.Current_Directory;
            Dwd      : constant String
              := Ada.Directories.Containing_Directory
                  (Ada.Characters.Conversions.To_String
                    (League.Strings.To_Wide_Wide_String (Base & URI)));
            Source   : aliased
              XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
            Reader   : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
            Resolver : aliased XMLConf.Entity_Resolvers.Entity_Resolver;
            Writer   : aliased XMLConf.Canonical_Writers.Canonical_Writer;
            Expected : League.Strings.Universal_String;

         begin
            Expected :=
              Read_File
               (Ada.Characters.Conversions.To_String
                 (Base.To_Wide_Wide_String & Output.To_Wide_Wide_String));

            Ada.Directories.Set_Directory (Dwd);

            select
               delay 3.0;

               raise Program_Error with "terminated by timeout";

            then abort
               Reader.Set_Entity_Resolver (Resolver'Unchecked_Access);
               Reader.Set_Content_Handler (Writer'Unchecked_Access);
               Reader.Set_Enable_Namespaces (Namespaces);

               Source.Open
                (Ada.Directories.Simple_Name
                  (Ada.Characters.Conversions.To_String
                    (URI.To_Wide_Wide_String)));
               Reader.Parse (Source'Access);

               if Expected /= Writer.Text then
                  Put_Line (Id & ": output");
                  Put_Line ("Expected output: '" & Expected & "'");
                  Put_Line ("Actual output  : '" & Writer.Text & "'");

                  Self.Results (Kind).Output := Self.Results (Kind).Output + 1;
                  Failed := True;
               end if;
            end select;

            Ada.Directories.Set_Directory (Cwd);

         exception
            when X : others =>
               Ada.Directories.Set_Directory (Cwd);
               Self.Results (Kind).Crash := Self.Results (Kind).Crash + 1;
               Put_Line (Id & ": crashed (output test)");
               Put_Line
                (League.Strings.To_Universal_String
                  (Ada.Characters.Conversions.To_Wide_Wide_String
                    (Ada.Exceptions.Exception_Information (X))));
               Failed := True;
         end;
      end if;

      if Failed then
         Self.Results (Kind).Failed := Self.Results (Kind).Failed + 1;

      else
         Self.Results (Kind).Passed := Self.Results (Kind).Passed + 1;
      end if;

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
      return League.Strings.Empty_Universal_String;
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
      Index      : Natural;
      Id         : League.Strings.Universal_String;
      URI        : League.Strings.Universal_String;
      Test_Type  : League.Strings.Universal_String;
      Output     : League.Strings.Universal_String;
      Test_Kind  : Test_Kinds;
      Namespaces : Boolean := True;
      Skip       : Boolean := False;

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

         Index := Attributes.Index (Output_Name);

         if Index /= 0 then
            Output := Attributes.Value (Index);
         end if;

         Index := Attributes.Index (Namespace_Name);

         if Index /= 0 then
            if Attributes.Value (Index) = No_Name then
               Namespaces := False;

            elsif Attributes.Value (Index) = Yes_Name then
               Namespaces := True;

            else
               raise Program_Error;
            end if;
         end if;

         if not Skip then
            Execute_Test
             (Self, Id, Self.Base, URI, Test_Kind, Namespaces, Output);
         end if;

      elsif Qualified_Name = Testcases_Tag then
         Index := Attributes.Index (XML_URI, Base_Name);

         if Index /= 0 then
            Self.Base := Attributes.Value (Index);
         end if;
      end if;
   end Start_Element;

end XMLConf.Testsuite_Handlers;
