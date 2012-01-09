with Matreshka.Internals.Finite_Automatons;
with Ada.Wide_Wide_Text_IO;
with League.String_Vectors;

procedure Generator.OOP_Handler
  (Actions : League.String_Vectors.Universal_String_Vector;
   File    : String;
   Unit    : Wide_Wide_String)
is
   procedure P (Text : Wide_Wide_String);
   procedure N (Text : Wide_Wide_String);
   
   Output  : Ada.Wide_Wide_Text_IO.File_Type;
   
   procedure N (Text : Wide_Wide_String) is
   begin
      Ada.Wide_Wide_Text_IO.Put (Output, Text);
   end N;

   procedure P (Text : Wide_Wide_String) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line (Output, Text);
   end P;
   
begin
   Ada.Wide_Wide_Text_IO.Create (Output, Name => File & ".ads");
   
   P ("limited with Aaa.Scanners;");
   P ("with Parser_Tokens;");
   P ("");
   P ("package Aaa.Handlers is");
   P ("");
   P ("   type Handler is abstract tagged limited null record;");

   P ("   procedure On_Accept");
   P ("     (Self    : not null access Handler'Class;");
   P ("      Scanner : not null access Scanners.Scanner'Class;");
   P ("      Rule    : Rule_Index;");
   P ("      Token   : out Parser_Tokens.Token;");
   P ("      Skip    : in out Boolean);");
   P ("");
   
   for J in 1 .. Actions.Length loop
      P ("   procedure " & Actions.Element (J).To_Wide_Wide_String);
      P ("     (Self    : not null access Handler;");
      P ("      Scanner : not null access Scanners.Scanner'Class;");
      P ("      Token   : out Parser_Tokens.Token;");
      P ("      Skip    : in out Boolean) is abstract;");
      P ("");
   end loop;
   
   P ("   type Handler_Access is access all Handler'Class;");
   P ("");
   P ("end Aaa.Handlers;");
   
   Ada.Wide_Wide_Text_IO.Close (Output);
   Ada.Wide_Wide_Text_IO.Create (Output, Name => File & ".adb");
   
   P ("package body Aaa.Handlers is");
   P ("");
   P ("   procedure On_Accept");
   P ("     (Self    : not null access Handler'Class;");
   P ("      Scanner : not null access Scanners.Scanner'Class;");
   P ("      Rule    : Rule_Index;");
   P ("      Token   : out Parser_Tokens.Token;");
   P ("      Skip    : in out Boolean) is");
   P ("   begin");
   P ("      case Rule is");
   
   for J in 1 .. Actions.Length loop
      P ("         when " & Image (J) & " =>");
      P ("            Self." & Actions.Element (J).To_Wide_Wide_String &
           " (Scanner, Token, Skip);");
      P ("");
   end loop;
   
   P ("         when others =>");
   P ("            raise Constraint_Error;");
   P ("      end case;");
   P ("   end On_Accept;");
   P ("");
   P ("end Aaa.Handlers;");
   
   Ada.Wide_Wide_Text_IO.Close (Output);
end Generator.OOP_Handler;
