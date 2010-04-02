with Ada.Wide_Wide_Text_IO;

package body Test_Handlers is

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self : not null access Test_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean)
   is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("SaxContentHandler::characters reported: '"
          & Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Text)
          & ''');
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self : not null access Test_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean)
   is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("SaxLexicalHandler::comment reported: '"
          & Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Text)
          & ''');
   end Comment;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self : not null access Test_Handler;
     Stop : in out Boolean)
   is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("SaxContentHandler::endDocument reported");
   end End_Document;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access constant Test_Handler)
       return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String
   is
   begin
      return Ada.Strings.Wide_Wide_Unbounded.Null_Unbounded_Wide_Wide_String;
   end Error_String;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self : not null access Test_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean)
   is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("SaxContentHandler::ignorableWhitespace reported");
   end Ignorable_Whitespace;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self   : not null access Test_Handler;
     Target : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Data   : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop   : in out Boolean)
   is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("SaxContentHandler::processingInstruction reported: '"
          & Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Target)
          & "' '"
          & Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Data)
          & ''');
   end Processing_Instruction;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self : not null access Test_Handler;
     Stop : in out Boolean)
   is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("SaxContentHandler::startDocument reported");
   end Start_Document;

end Test_Handlers;
