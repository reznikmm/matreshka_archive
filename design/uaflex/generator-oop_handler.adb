with Matreshka.Internals.Finite_Automatons;
with Ada.Wide_Wide_Text_IO;
with Ada.Containers.Ordered_Sets;

package body Generator.OOP_Handler is
   procedure Go
     (Actions : League.String_Vectors.Universal_String_Vector;
      File    : String;
      Unit    : League.Strings.Universal_String;
      Scanner : League.Strings.Universal_String;
      Tokens  : League.Strings.Universal_String)
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
      
      package String_Sets is new Ada.Containers.Ordered_Sets
        (League.Strings.Universal_String,
         League.Strings."<",
         League.Strings."=");
      
      Ready : String_Sets.Set;
      
   begin
      Ada.Wide_Wide_Text_IO.Create (Output, Name => File);
      
      P ("limited with " & Scanner.To_Wide_Wide_String & ";");
      P ("with " & Tokens.To_Wide_Wide_String & ";");
      P ("");
      P ("package Aaa.Handlers is");
      P ("");
      P ("   type Handler is abstract tagged limited null record;");
      P ("");
      
      for J in 1 .. Actions.Length loop
         if not Ready.Contains (Actions.Element (J)) then
            P ("   procedure " & Actions.Element (J).To_Wide_Wide_String);
            P ("     (Self    : not null access Handler;");
            P ("      Scanner : not null access " &
                 Scanner.To_Wide_Wide_String & ".Scanner'Class;");
            P ("      Token   : out " & Tokens.To_Wide_Wide_String & ".Token;");
            P ("      Skip    : in out Boolean) is abstract;");
            P ("");
            
            Ready.Insert (Actions.Element (J));
         end if;
      end loop;
      
      P ("   type Handler_Access is access all Handler'Class;");
      P ("");
      P ("end Aaa.Handlers;");
      
      Ada.Wide_Wide_Text_IO.Close (Output);
   end Go;
   
   ---------------
   -- On_Accept --
   ---------------
   
   procedure On_Accept
     (Actions : League.String_Vectors.Universal_String_Vector;
      File    : String;
      Handler : League.Strings.Universal_String;
      Scanner : League.Strings.Universal_String;
      Tokens  : League.Strings.Universal_String)
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
      Ada.Wide_Wide_Text_IO.Create (Output, Name => File);
      
      P ("separate (" & Scanner.To_Wide_Wide_String & ")");
      P ("procedure On_Accept");
      P ("  (Self    : not null access " &
           Handler.To_Wide_Wide_String & ".Handler'Class;");
      P ("   Scanner : not null access " &
           Scanner.To_Wide_Wide_String & ".Scanner'Class;");
      P ("   Rule    : Rule_Index;");
      P ("   Token   : out " & Tokens.To_Wide_Wide_String & ".Token;");
      P ("   Skip    : in out Boolean) is");
      P ("begin");
      P ("   case Rule is");
      
      for J in 1 .. Actions.Length loop
         P ("      when " & Image (J) & " =>");
         P ("         Self." & Actions.Element (J).To_Wide_Wide_String &
              " (Scanner, Token, Skip);");
         P ("");
      end loop;
      
      P ("      when others =>");
      P ("         raise Constraint_Error;");
      P ("   end case;");
      P ("end On_Accept;");
      
      Ada.Wide_Wide_Text_IO.Close (Output);
   end On_Accept;
end Generator.OOP_Handler;
