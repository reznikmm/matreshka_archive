package body Aaa.Handlers is

   procedure On_Accept
     (Self    : not null access Handler'Class;
      Scanner : not null access Scanners.Scanner'Class;
      Rule    : Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is
   begin
      case Rule is
         when 1 =>
            Self.Skip_Comment (Scanner, Token, Skip);

         when 2 =>
            Self.On_Start (Scanner, Token, Skip);

         when 3 =>
            Self.On_Exclusive (Scanner, Token, Skip);

         when 4 =>
            Self.On_Name (Scanner, Token, Skip);

         when 5 =>
            Self.On_Section_End (Scanner, Token, Skip);

         when 6 =>
            Self.Skip_Empty_Line (Scanner, Token, Skip);

         when 7 =>
            Self.Skip_Spaces (Scanner, Token, Skip);

         when 8 =>
            Self.On_Regexp (Scanner, Token, Skip);

         when 9 =>
            Self.End_Of_Macro (Scanner, Token, Skip);

         when 10 =>
            Self.End_Of_Name_List (Scanner, Token, Skip);

         when 11 =>
            Self.On_Name_2 (Scanner, Token, Skip);

         when 12 =>
            Self.Skip_Spaces_2 (Scanner, Token, Skip);

         when 13 =>
            Self.On_Regexp_2 (Scanner, Token, Skip);

         when 14 =>
            Self.Skip_Empty_Line_2 (Scanner, Token, Skip);

         when 15 =>
            Self.On_Section_End_2 (Scanner, Token, Skip);

         when 16 =>
            Self.On_Action (Scanner, Token, Skip);

         when 17 =>
            Self.Skip_Spaces_3 (Scanner, Token, Skip);

         when 18 =>
            Self.On_End_Of_Rule (Scanner, Token, Skip);

         when others =>
            raise Constraint_Error;
      end case;
   end On_Accept;

end Aaa.Handlers;
