with Aaa.Scanners;
with Aaa;

package body UAFLEX_Handler is

   ------------------
   -- End_Of_Macro --
   ------------------

   procedure End_Of_Macro
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Token);
      pragma Unreferenced (Skip);
   begin
      Scanner.Set_Start_Condition (Aaa.INITIAL);
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
      pragma Unreferenced (Self);
   begin
      Scanner.Set_Start_Condition (Aaa.INITIAL);
      Token := Parser_Tokens.Name_List_End;
      Skip := False;
   end End_Of_Name_List;

   ---------------
   -- On_Action --
   ---------------

   procedure On_Action
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Scanner);
   begin
      Token := Parser_Tokens.Action;
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
      pragma Unreferenced (Self);
      pragma Unreferenced (Token);
      pragma Unreferenced (Skip);
   begin
      Scanner.Set_Start_Condition (Aaa.SECT2);
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
      pragma Unreferenced (Self);
   begin
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
      pragma Unreferenced (Self);
   begin
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
      pragma Unreferenced (Self);
      pragma Unreferenced (Scanner);
   begin
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
      pragma Unreferenced (Self);
      pragma Unreferenced (Scanner);
   begin
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
      pragma Unreferenced (Self);
   begin
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
      pragma Unreferenced (Self);
   begin
      Scanner.Set_Start_Condition (Aaa.SECT2);
      Token := Parser_Tokens.Section_End;
      Skip := False;
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
      pragma Unreferenced (Self);
   begin
      Scanner.Set_Start_Condition (Aaa.INITIAL);
      Token := Parser_Tokens.Section_End;
      Skip := False;
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
      pragma Unreferenced (Self);
   begin
      Scanner.Set_Start_Condition (Aaa.NAMELIST);
      Token := Parser_Tokens.Start;
      Skip := False;
   end On_Start;

end UAFLEX_Handler;
