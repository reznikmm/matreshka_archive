with Aaa.Scanners;
with Aaa;

package body UAFLEX_Handler is
   
   --------------------
   -- Check_New_Line --
   --------------------
   
   procedure Check_New_Line (Self : not null access Handler'Class) is
   begin
      if Self.Line_Feed then
         Self.Line := Self.Line + 1;
         Self.Line_Feed := False;
      end if;
   end Check_New_Line;
   
   ------------------
   -- End_Of_Macro --
   ------------------

   procedure End_Of_Macro
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Token);
      pragma Unreferenced (Skip);
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.INITIAL);
      Self.New_Line (Scanner);
   end End_Of_Macro;

   ----------------------
   -- End_Of_Name_List --
   ----------------------

   procedure End_Of_Name_List
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.INITIAL);
      Token := Parser_Tokens.Name_List_End;
      Skip := False;
      Self.New_Line (Scanner);
   end End_Of_Name_List;
   
   --------------
   -- Get_Line --
   --------------
   
   function Get_Line (Self : Handler) return Positive is
   begin
      return Self.Line;
   end Get_Line;
   
   --------------
   -- New_Line --
   --------------
   
   procedure New_Line
     (Self    : not null access Handler'Class;
      Scanner : not null access Aaa.Scanners.Scanner'Class) is
   begin
      Self.Line_Feed := True;
   end New_Line;
      
   ---------------
   -- On_Action --
   ---------------

   procedure On_Action
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      NL : constant Wide_Wide_Character := Wide_Wide_Character'Val (10);
   begin
      Self.Check_New_Line;
      Token := Parser_Tokens.Action;
      Self.Line := Self.Line + Scanner.Get_Text.Count (NL);
      Skip := False;
   end On_Action;

   --------------------
   -- On_End_Of_Rule --
   --------------------

   procedure On_End_Of_Rule
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Token);
      pragma Unreferenced (Skip);
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.SECT2);
      Self.New_Line (Scanner);
   end On_End_Of_Rule;

   ------------------
   -- On_Exclusive --
   ------------------

   procedure On_Exclusive
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.NAMELIST);
      Token := Parser_Tokens.Excl_Start;
      Skip := False;
   end On_Exclusive;

   -------------
   -- On_Name --
   -------------

   procedure On_Name
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.DEF);
      Token := Parser_Tokens.Name;
      Skip := False;
   end On_Name;

   ---------------
   -- On_Name_2 --
   ---------------

   procedure On_Name_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Scanner);
   begin
      Self.Check_New_Line;
      Token := Parser_Tokens.Name;
      Skip := False;
   end On_Name_2;

   ---------------
   -- On_Regexp --
   ---------------

   procedure On_Regexp
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Scanner);
   begin
      Self.Check_New_Line;
      Token := Parser_Tokens.Regexp;
      Skip := False;
   end On_Regexp;

   -----------------
   -- On_Regexp_2 --
   -----------------

   procedure On_Regexp_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.INRULE);
      Token := Parser_Tokens.Regexp;
      Skip := False;
   end On_Regexp_2;

   --------------------
   -- On_Section_End --
   --------------------

   procedure On_Section_End
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.SECT2);
      Token := Parser_Tokens.Section_End;
      Skip := False;
      Self.New_Line (Scanner);
   end On_Section_End;

   ----------------------
   -- On_Section_End_2 --
   ----------------------

   procedure On_Section_End_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.INITIAL);
      Token := Parser_Tokens.Section_End;
      Skip := False;
      Self.New_Line (Scanner);
   end On_Section_End_2;

   --------------
   -- On_Start --
   --------------

   procedure On_Start
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
   begin
      Self.Check_New_Line;
      Scanner.Set_Start_Condition (Aaa.NAMELIST);
      Token := Parser_Tokens.Start;
      Skip := False;
   end On_Start;
   
   ----------------
   --  Skip_Line --
   ----------------
   
   procedure Skip_Line
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Token);
      pragma Unreferenced (Skip);
   begin
      Self.Check_New_Line;
      Self.New_Line (Scanner);
   end Skip_Line;

end UAFLEX_Handler;
