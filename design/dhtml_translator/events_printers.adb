------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                             Examples Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright B© 2011, Vadim Godunko <vgodunko@gmail.com>                    --
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
with Ada.Characters.Conversions;
with Ada.Wide_Wide_Text_IO;
with Put_Line;
with Put;
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Attributes;
with XML.SAX.Pretty_Writers;

package body Events_Printers is

   function "+" (Item : Wide_Wide_String) return League.Strings.Universal_String
                 renames League.Strings.To_Universal_String;
   use type League.Strings.Universal_String;

   Resault_File      : aliased Ada.Wide_Wide_Text_IO.File_Type;
   Is_Program_Code   : Boolean := False;
   Resault_File_Name : String (1..128);
   Resault_File_Name_Length : Positive;
   ASP_Namespace     : constant League.Strings.Universal_String
     					:= +"http://www.ada-ru.org/ASP";


   procedure Set_Resault_File_Name (Name : String) is
   begin
      Resault_File_Name (1..Name'Length-4) := Name(Name'First..Name'Last-4);
      Resault_File_Name_Length := Name'Length-4;
   end Set_Resault_File_Name;

   procedure Open (File_Name : String) is
   begin
      Ada.Wide_Wide_Text_IO.Open  (Resault_File,
                                   Ada.Wide_Wide_Text_IO.Out_File,
                                   File_Name);
   end Open;

   procedure Create (File_Name : String) is
   begin
      Ada.Wide_Wide_Text_IO.Create (Resault_File,
                                    Ada.Wide_Wide_Text_IO.Out_File,
                                    File_Name);
   end Create;

   procedure Close is
   begin
      Ada.Wide_Wide_Text_IO.Close (Resault_File);
   end Close;

   procedure Write (Item : League.Strings.Universal_String) is
   begin
      Put_Line (Item);
   end Write;

   function Get_File return File_Access is
   begin
      return Resault_File'Access;
   end Get_File;


   function Image (Item : XML.SAX.Locators.SAX_Locator)
     return League.Strings.Universal_String;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Is_Program_Code then
         Put_Line (+"      Writer.Characters (" & Text & ");");
      else
         Put_Line (+"      Writer.Characters (+" & '"' & Text & '"' & ");");
      end if;

   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line ("-- " & Text);
   end Comment;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Events_Printer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if not (Namespace_URI = ASP_Namespace) then
         Put_Line(+"      Writer.End_Element (Namespace_URI => +" & '"'
                  & Namespace_URI & '"' & ",");
         Put_Line(+"                            Local_Name => +" & '"'
                  & Local_Name & '"' & ",");
         Put_Line(+"                            Qualified_Name => +" & '"'
                  & Qualified_Name & '"' & ");");
      else
         declare
            Tag : constant ASP_Tags := ASP_Tags'Value
              (Ada.Characters.Conversions.To_String
                 (Local_Name.To_Wide_Wide_String) & "_Tag");
         begin
            case Tag is
               when Root_Tag => null;
               when With_Tag => null;
               when Body_Tag =>
                  Put_Line (+"      Writer.End_Document;");
                  Put_Line (+"      return AWS.Response.Build");
                  Put_Line (+"       (" & '"' & "application/xhtml+xml"
                            & '"' & ",");
                  Put_Line (+"        Encoder.Encode "
                            & "(Writer.Text).To_Stream_Element_Array);");
                  Put_Line (+"   end Call_Back;");
                  Put (+"end ");
                  Put (+Ada.Characters.Conversions.To_Wide_Wide_String
                       (Resault_File_Name (1..Resault_File_Name_Length)) & ";");
               when Expression_Tag => Is_Program_Code := False;
               when others => null;
            end case;
         end;

      end if;
   end End_Element;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding procedure End_Prefix_Mapping
    (Self    : in out Events_Printer;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Prefix = +"asp" then
         null;
      else
         Put_Line (+"      Writer.End_Prefix_Mapping(+"& '"' & Prefix & '"'
                   & ");");
      end if;
   end End_Prefix_Mapping;

   -----------
   -- Error --
   -----------

   overriding procedure Error
    (Self       : in out Events_Printer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (">>> (Error) "
          & Image (Self.Locator).To_Wide_Wide_String
          & ": '"
          & Occurrence.Message.To_Wide_Wide_String
          & "'");
   end Error;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Events_Printer)
       return League.Strings.Universal_String is
   begin
      return X : League.Strings.Universal_String;
   end Error_String;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Events_Printer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (">>> (Fatal_Error) "
          & Image (Self.Locator).To_Wide_Wide_String
          & ": '"
          & Occurrence.Message.To_Wide_Wide_String
          & "'");
   end Fatal_Error;

   -----------
   -- Image --
   -----------

   function Image (Item : XML.SAX.Locators.SAX_Locator)
     return League.Strings.Universal_String
   is
      L : constant Wide_Wide_String := Natural'Wide_Wide_Image (Item.Line);
      C : constant Wide_Wide_String := Natural'Wide_Wide_Image (Item.Column);

   begin
      return
        League.Strings.To_Universal_String
         (L (L'First + 1 .. L'Last)
            & ':'
            & C (C'First + 1 .. C'Last));
   end Image;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out Events_Printer;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      Self.Locator := Locator;
   end Set_Document_Locator;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Events_Printer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if not (Namespace_URI = ASP_Namespace) then
         Put_Line (+"      Attributes.Clear;");
         for J in 1 .. Attributes.Length loop
            if not (Attributes.Namespace_URI (J) = ASP_Namespace) then
               Put_Line (+"      Attributes.Set_Value (Qualified_Name => +"
                         & '"' & Attributes.Qualified_Name (J) & '"' & ", "
                         & "Value => +" & '"' & Attributes.Value (J) & '"'
                         & ");");
            else
               declare
                  --Program_Attribute : ASP_Attributes;
               begin
                  -- exclusive situation
                  null;
               end;
            end if;
         end loop;

         Put_Line(+"      Writer.Start_Element (Namespace_URI => +" & '"'
                  & Namespace_URI & '"' & ",");
         Put_Line(+"                            Local_Name => +" & '"'
                  & Local_Name & '"' & ",");
         Put_Line(+"                            Qualified_Name => +" & '"'
                  & Qualified_Name & '"' & ",");
         Put_Line(+"                            Attributes => Attributes);");


      else
         declare
            Tag : constant ASP_Tags := ASP_Tags'Value
              (Ada.Characters.Conversions.To_String
                 (Local_Name.To_Wide_Wide_String) & "_Tag");
         begin
            case Tag is
               when Root_Tag => Put_Line (+"with XML.SAX.Attributes;");
                  Put_Line (+"with XML.SAX.Pretty_Writers;");
                  Put_Line (+"with League.Text_Codecs;");
                  Put_Line (+"with League.Strings;");
               when With_Tag => Put_Line (+"with "
                                                 & Attributes.Value (1) & ";");
               when Body_Tag =>
                  Put (+"package body ");
                  Put
                    (+Ada.Characters.Conversions.To_Wide_Wide_String
                       (Resault_File_Name (1..Resault_File_Name_Length)));
                  Put_Line (+" is");
                  Put_Line (+"   function " & '"' & "+" & '"'
                            & " (Item : Wide_Wide_String)"
                            & " return League.Strings.Universal_String");
                  Put_Line (+"                 renames"
                            & " League.Strings.To_Universal_String;");
                  Put_Line (+"   function Call_Back (Request : AWS.Status.Data)"
                            & "return AWS.Response.Data is");
                  Put_Line (+"      pragma Unreferenced (Request);");
                  Put_Line (+"      Encoder : League.Text_Codecs.Text_Codec");
                  Put_Line (+"        := League.Text_Codecs.Codec (+" & '"'
                            & "utf-8" & '"' & ");");
                  Put_Line (+"      Writer     : "
                            & "XML.SAX.Pretty_Writers.SAX_Pretty_Writer;");
                  Put_Line (+"      Attributes : "
                            & "XML.SAX.Attributes.SAX_Attributes;");
                  Put_Line (+"   begin");
                  Put_Line (+"      Writer.Start_Document;");
               when Expression_Tag => Is_Program_Code := True;
               when others => null;
            end case;
         end;
      end if;
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out Events_Printer;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      if Namespace_URI = ASP_Namespace then
         null;
      else
         Put_Line (+"      Writer.Start_Prefix_Mapping(+"& '"' & Prefix & '"'
                   & ", +" & '"' & Namespace_URI & '"' & ");");
      end if;
   end Start_Prefix_Mapping;

   -------------
   -- Warning --
   -------------

   overriding procedure Warning
    (Self       : in out Events_Printer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (">>> (Warning) "
          & Image (Self.Locator).To_Wide_Wide_String
          & ": '"
          & Occurrence.Message.To_Wide_Wide_String
          & "'");
   end Warning;

end Events_Printers;
