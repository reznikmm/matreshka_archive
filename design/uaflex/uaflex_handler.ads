with Aaa.Handlers;
with Parser_Tokens;
limited with Aaa.Scanners;

package UAFLEX_Handler is
   type Handler is new Aaa.Handlers.Handler with null record;
   
   procedure Skip_Comment
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure On_Start
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Exclusive
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Name
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Section_End
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure Skip_Empty_Line
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure Skip_Spaces
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure On_Regexp
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure End_Of_Macro
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure End_Of_Name_List
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Name_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure Skip_Spaces_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure On_Regexp_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure Skip_Empty_Line_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure On_Section_End_2
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Action
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure Skip_Spaces_3
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure On_End_Of_Rule
     (Self    : not null access Handler;
      Scanner : not null access Aaa.Scanners.Scanner'Class;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

end UAFLEX_Handler;
