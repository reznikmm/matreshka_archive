------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                             Examples Component                           --
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

with Put_Line;
with Read_File;

package body Events_Printers is

   use type League.Strings.Universal_String;

   function Image (Item : Matreshka.SAX.Locators.SAX_Locator)
     return League.Strings.Universal_String;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line
       (">>> (Characters) " & Image (Self.Locator) & ": '" & Text & "'");
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line (">>> (Comment) " & Image (Self.Locator) & ": '" & Text & "'");
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
      Put_Line
       (">>> (End_Element) "
          & Image (Self.Locator)
          & ": '"
          & Namespace_URI
          & "' '"
          & Local_Name
          & "' '"
          & Qualified_Name
          & "'");
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Events_Printer)
       return League.Strings.Universal_String is
   begin
      return X : League.Strings.Universal_String;
   end Error_String;

   --------------------------
   -- External_Entity_Decl --
   --------------------------

   overriding procedure External_Entity_Decl
    (Self      : in out Events_Printer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      Put_Line
       (">>> (External_Entity_Decl) "
          & Image (Self.Locator)
          & ": '"
          & Name & "' => '" & Public_Id & "' '" & System_Id & "'");
   end External_Entity_Decl;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Events_Printer;
     Occurrence : Matreshka.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Put_Line
       (">>> (Fatal_Error) "
          & Image (Self.Locator)
          & ": '"
          & Occurrence.Message
          & "'");
   end Fatal_Error;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out Events_Printer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line
       (">>> (Ignorable_Whitespace) "
          & Image (Self.Locator)
          & ": '"
          & Text
          & "'");
   end Ignorable_Whitespace;

   -----------
   -- Image --
   -----------

   function Image (Item : Matreshka.SAX.Locators.SAX_Locator)
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
   -- Internal_Entity_Decl --
   --------------------------

   overriding procedure Internal_Entity_Decl
    (Self    : in out Events_Printer;
     Name    : League.Strings.Universal_String;
     Value   : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line
       (">>> (Internal_Entity_Decl) "
          & Image (Self.Locator)
          & ": '"
          & Name
          & "' => '"
          & Value
          & "'");
   end Internal_Entity_Decl;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out Events_Printer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Put_Line
       (">>> (Processing_Instruction) "
          & Image (Self.Locator)
          & ": '"
          & Target
          & "' '"
          & Data
          & "'");
   end Processing_Instruction;

   --------------------
   -- Resolve_Entity --
   --------------------

   overriding procedure Resolve_Entity
    (Self      : in out Events_Printer;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Text      : out League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      Text :=
        Read_File
         (Ada.Characters.Conversions.To_String
           (System_Id.To_Wide_Wide_String));
--      Put_Line (Text);
   end Resolve_Entity;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out Events_Printer;
     Locator : Matreshka.SAX.Locators.SAX_Locator) is
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
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      Put_Line
       (">>> (Start_Element) "
          & Image (Self.Locator)
          & ": '"
          & Namespace_URI
          & "' '"
          & Local_Name
          & "' '"
          & Qualified_Name
          & "'");

      for J in 1 .. Attributes.Length loop
         Put_Line
          ("                    '" & Attributes.Namespace_URI (J)
             & "' '" & Attributes.Local_Name (J)
             & "' '" & Attributes.Qualified_Name (J)
             & "' '" & Attributes.Value (J) & "'");
      end loop;
   end Start_Element;

   --------------------------
   -- Unparsed_Entity_Decl --
   --------------------------

   overriding procedure Unparsed_Entity_Decl
    (Self          : in out Events_Printer;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      Put_Line
       (">>> (Unparsed_Entity_Decl) "
          & Image (Self.Locator)
          & ": '"
          & Name
          & "' => '"
          & Public_Id
          & "' '"
          & System_Id
          & "' '"
          & Notation_Name
          & "'");
   end Unparsed_Entity_Decl;

end Events_Printers;
