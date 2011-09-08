------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Examples Component                            --
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
with Ada.Characters.Conversions;
with Ada.Directories;
with Ada.Streams.Stream_IO;
with Ada.Wide_Wide_Text_IO;

with League.String_Vectors;
with League.Text_Codecs;
with League.Application;

with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Attributes;
with XML.SAX.Pretty_Writers;

package body Events_Printers is

   use type League.Strings.Universal_String;

   type ASP_Tags is (Root_Tag, With_Tag, Body_Tag,
                     Expression_Tag, Declare_Tag);

   Open_Tags  : array (ASP_Tags) of League.Strings.Universal_String;
   Close_Tags : array (ASP_Tags) of League.Strings.Universal_String;

   type ASP_Attributes is (Color_Attribute, Font_Size_Attribute,
                           Bg_Color_Attribute, Font_Color_Attribute);

   function "+" (Item : Wide_Wide_String)
     return League.Strings.Universal_String
     renames League.Strings.To_Universal_String;

   function Image (Item : XML.SAX.Locators.SAX_Locator)
     return League.Strings.Universal_String;

   procedure Put_Line (Item : League.Strings.Universal_String);

   Result_Text       : League.Strings.Universal_String;
   Is_Program_Code   : Boolean := False;
   Is_Declare_Tag_Be : Boolean := False;
   ASP_Namespace     : constant League.Strings.Universal_String
     := +"http://www.ada-ru.org/ASP";

   NL : constant Wide_Wide_Character := Wide_Wide_Character'Val (10);

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Is_Program_Code then
         Put_Line (+"      " & Text);
      else
         declare
            Lines : constant League.String_Vectors.Universal_String_Vector :=
              Text.Split (NL);
         begin
            for J in 1 .. Lines.Length - 1 loop
               Put_Line (+"      Writer.Characters (+(""" &
                           Lines.Element (J) &
                           """ & Wide_Wide_Character'Val (10)));");
            end loop;
            
            Put_Line (+"      Writer.Characters (+""" &
                        Lines.Element (Lines.Length) & """);");
         end;
      end if;
   end Characters;

   -----------
   -- Close --
   -----------

   procedure Close is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line (Result_Text.To_Wide_Wide_String);
   end Close;

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
      if Namespace_URI = ASP_Namespace then
         declare
            Tag : constant ASP_Tags := ASP_Tags'Value
              (Ada.Characters.Conversions.To_String
                 (Local_Name.To_Wide_Wide_String) & "_Tag");
         begin
            Put_Line (Close_Tags (Tag));

            case Tag is
               when Declare_Tag =>
                  Is_Program_Code := False;
               when Body_Tag =>
                  Is_Declare_Tag_Be := False;
               when Expression_Tag =>
                  Is_Program_Code := False;
               when others =>
                  null;
            end case;
         end;
      else
         Put_Line (+"      Writer.End_Element (Namespace_URI => +"""
                  & Namespace_URI & """,");
         Put_Line (+"                            Local_Name => +"""
                  & Local_Name & """,");
         Put_Line (+"                            Qualified_Name => +"""
                  & Qualified_Name & """);");
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

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is

      Package_Name_Index : Positive := 2;

      function Read_File
        (Name : League.Strings.Universal_String)
        return League.Strings.Universal_String
      is
         File_Name : constant String :=
           League.Text_Codecs.To_Exception_Message (Name);
      begin
         if Ada.Directories.Exists (File_Name) then
            declare
               Decoder : League.Text_Codecs.Text_Codec :=
                 League.Text_Codecs.Codec (+"utf-8");

               Size : constant Ada.Directories.File_Size :=
                 Ada.Directories.Size (File_Name);

               Length : constant Ada.Streams.Stream_Element_Offset :=
                 Ada.Streams.Stream_Element_Count (Size);

               File   : Ada.Streams.Stream_IO.File_Type;
               Data   : Ada.Streams.Stream_Element_Array (1 .. Length);
               Last   : Ada.Streams.Stream_Element_Offset;
            begin
               Ada.Streams.Stream_IO.Open
                 (File, Ada.Streams.Stream_IO.In_File, File_Name);
               Ada.Streams.Stream_IO.Read (File, Data, Last);
               Ada.Streams.Stream_IO.Close (File);

               return Decoder.Decode (Data (1 .. Last));

            end;
         else
            return League.Strings.Empty_Universal_String;
         end if;
      end Read_File;

      procedure Read_Template_Files is
      begin
         for J in ASP_Tags loop
            Open_Tags (J) := Read_File
              (League.Application.Arguments.Element (3) &
                 "OPEN_" & ASP_Tags'Wide_Wide_Image (J));

            Close_Tags (J) := Read_File
              (League.Application.Arguments.Element (3) &
                 "CLOSE_" & ASP_Tags'Wide_Wide_Image (J));
         end loop;
      end Read_Template_Files;

      procedure Substitute_Variables
        (Text : in out League.Strings.Universal_String)
      is
         Index : Natural := Text.Index ('$');
         Name  : constant League.Strings.Universal_String := +"$Package_Name$";
      begin
         if Index /= 0 and then
           Text.Slice (Index, Index + Name.Length - 1) = Name
         then
            Text.Replace
              (Index,
               Index + Name.Length - 1,
               League.Application.Arguments.Element (Package_Name_Index));
         end if;
      end Substitute_Variables;

      NL : constant Wide_Wide_Character := Wide_Wide_Character'Val (10);
   begin
      if League.Application.Arguments.Element (2) = +"--templates" then

         Package_Name_Index := Package_Name_Index + 2;

         Read_Template_Files;

      else

         Open_Tags (Root_Tag) :=
           +"with XML.SAX.Attributes;" & NL &
           "with XML.SAX.Pretty_Writers;" & NL &
           "with League.Text_Codecs;" & NL &
           "with League.Strings;";

         Open_Tags (Declare_Tag) :=
           +"package body $Package_Name$ is" & NL &
           "   function ""+"" (Item : Wide_Wide_String)" &
           " return League.Strings.Universal_String" & NL &
           "     renames League.Strings.To_Universal_String;" & NL & NL &
           "   function Call_Back (Request : AWS.Status.Data)" &
           "return AWS.Response.Data is" & NL &
           "      pragma Unreferenced (Request);" & NL &
           "      Encoder : League.Text_Codecs.Text_Codec" & NL &
           "        := League.Text_Codecs.Codec (+""utf-8""" & NL &
           "      Writer     : " &
           "XML.SAX.Pretty_Writers.SAX_Pretty_Writer;" & NL &
           "      Attributes : " &
           "XML.SAX.Attributes.SAX_Attributes;" & NL & NL;

         Open_Tags (Body_Tag) :=
           +"   begin" & NL &
           "      Writer.Start_Document;" & NL;

         Close_Tags (Body_Tag) :=
           +"      Writer.End_Document;" & NL &
           "      return AWS.Response.Build" & NL &
           "       (""application/xhtml+xml""," & NL &
           "        Encoder.Encode (Writer.Text).To_Stream_Element_Array);" &
           NL &
           "   end Call_Back;" & NL &
           "end $Package_Name$;" & NL;
      end if;

      for J in ASP_Tags loop
         Substitute_Variables (Open_Tags (J));
         Substitute_Variables (Close_Tags (J));
      end loop;

   end Initialize;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (Item : League.Strings.Universal_String) is
   begin
      Result_Text.Append (Item);
      Result_Text.Append (NL);
   end Put_Line;

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
      if Namespace_URI = ASP_Namespace then
         declare
            Tag : constant ASP_Tags := ASP_Tags'Value
              (Ada.Characters.Conversions.To_String
                 (Local_Name.To_Wide_Wide_String) & "_Tag");
         begin
            case Tag is
               when Root_Tag =>
                  Put_Line (Open_Tags (Tag));
               when With_Tag =>
                  Put_Line (+"with " & Attributes.Value (1) & ";");
               when Declare_Tag =>
                  Is_Declare_Tag_Be := True;
                  Put_Line (Open_Tags (Tag));
                  Is_Program_Code := True;
               when Body_Tag =>
                  if not Is_Declare_Tag_Be then
                     Put_Line (Open_Tags (Declare_Tag));
                  end if;
                  Put_Line (Open_Tags (Tag));
               when Expression_Tag =>
                  Is_Program_Code := True;
               when others => null;
            end case;
         end;
      else
         Put_Line (+"      Attributes.Clear;");
         for J in 1 .. Attributes.Length loop
            if not (Attributes.Namespace_URI (J) = ASP_Namespace) then
               Put_Line (+"      Attributes.Set_Value (Qualified_Name => +"
                         & '"' & Attributes.Qualified_Name (J) & """, "
                         & "Value => +""" & Attributes.Value (J) & '"'
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

         Put_Line (+"      Writer.Start_Element (Namespace_URI => +"""
                  & Namespace_URI & """,");
         Put_Line (+"                            Local_Name => +"""
                  & Local_Name & """,");
         Put_Line (+"                            Qualified_Name => +"""
                  & Qualified_Name & """,");
         Put_Line (+"                            Attributes => Attributes);");

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
         Put_Line (+"      Writer.Start_Prefix_Mapping (+""" & Prefix
                     & """, +""" & Namespace_URI & """);");
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
