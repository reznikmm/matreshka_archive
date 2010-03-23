-- Copyright (c) 1990 Regents of the University of California.
-- All rights reserved.
--
-- This software was developed by John Self of the Arcadia project
-- at the University of California, Irvine.
--
-- Redistribution and use in source and binary forms are permitted
-- provided that the above copyright notice and this paragraph are
-- duplicated in all such forms and that any documentation,
-- advertising materials, and other materials related to such
-- distribution and use acknowledge that the software was developed
-- by the University of California, Irvine.  The name of the
-- University may not be used to endorse or promote products derived
-- from this software without specific prior written permission.
-- THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
-- IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
-- WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

-- TITLE template manager
-- AUTHOR: John Self (UCI)
-- DESCRIPTION supports output of internalized templates for the IO and DFA
--             packages.
-- NOTES This package is quite a memory hog, and is really only useful on
--       virtual memory systems.  It could use an external file to store the
--       templates like the skeleton manager.  This would save memory at the
--       cost of a slight reduction in speed and the necessity of keeping
--       copies of the template files in a known place.
-- $Header: /dc/uc/self/arcadia/aflex/ada/src/RCS/template_managerB.a,v 1.21 1992/12/29 22:46:15 self Exp self $

with Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with MISC_DEFS, EXTERNAL_FILE_MANAGER, MISC;
use MISC_DEFS;

package body Template_Manager is

   use Ada.Strings.Wide_Wide_Unbounded;
   use Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;

   type File_Array is array (Positive range <>) of Unbounded_Wide_Wide_String;

   function "+" (Item : Wide_Wide_String) return Unbounded_Wide_Wide_String
     renames To_Unbounded_Wide_Wide_String;

   DFA_Template : constant File_Array :=
     (
--  DFA TEMPLATE START
+"",
+"   YYText_Ptr : Integer; -- points to start of yytext in buffer",
+"",
+"   --  yy_ch_buf has to be 2 characters longer than YY_BUF_SIZE because we",
+"   --  need to put in 2 end-of-buffer characters (this is explained where",
+"   --  it is done) at the end of yy_ch_buf",
+"   YY_READ_BUF_SIZE : constant Integer := 8192;",
+"   YY_BUF_SIZE      : constant Integer := YY_READ_BUF_SIZE * 2;",
+"   --  Size of input buffer",
+"",
+"   type Unbounded_Character_Array is",
+"     array (Integer range <>) of Wide_Wide_Character;",
+"",
+"   type Ch_Buf_Type is record",
+"      Data : Unbounded_Character_Array (0 .. YY_BUF_SIZE + 1);",
+"   end record;",
+"",
+"   function Previous",
+"     (Data : Ch_Buf_Type; Index : Integer) return Wide_Wide_Character;",
+"   procedure Next",
+"     (Data  : Ch_Buf_Type;",
+"      Index : in out Integer;",
+"      Code  : out Wide_Wide_Character);",
+"",
+"   YY_Ch_Buf : Ch_Buf_Type;",
+"   YY_CP     : Integer;",
+"   YY_BP     : Integer;",
+"",
+"   YY_C_Buf_P : Integer;  --  Points to current character in buffer",
+"",
+"   function YYText return Wide_Wide_String;",
+"   function YYLength return Integer;",
+"   procedure YY_DO_BEFORE_ACTION;",
+"",
+"   --  These variables are needed between calls to YYLex.",
+"",
+"   YY_Init  : Boolean := True;  --  do we need to initialize YYLex?",
+"   YY_Start : Integer := 0;     -- current start state number",
+"   subtype YY_State_Type is Integer;",
+"   YY_Last_Accepting_State : YY_State_Type;",
+"   YY_Last_Accepting_Cpos  : Integer;",
+"",
+"%%",
+"",
+"   function YYText return Wide_Wide_String is",
+"      Aux : constant Wide_Wide_String (1 .. YY_CP - YY_BP)",
+"        := Wide_Wide_String (YY_Ch_Buf.Data (YY_BP .. YY_CP - 1));",
+"",
+"   begin",
+"      return Aux;",
+"   end YYText;",
+"",
+"   --  returns the length of the matched text",
+"   function YYLength return Integer is",
+"   begin",
+"      return YY_CP - YY_BP;",
+"   end YYLength;",
+"",
+"   --  done after the current pattern has been matched and before the",
+"   --  corresponding action - sets up yytext",
+"",
+"   procedure YY_DO_BEFORE_ACTION is",
+"   begin",
+"      YYText_Ptr := YY_BP;",
+"      YY_C_Buf_P := YY_CP;",
+"   end YY_DO_BEFORE_ACTION;",
+"",
+"   function Previous",
+"     (Data : CH_Buf_Type; Index : Integer) return Wide_Wide_Character",
+"   is",
+"      Aux : constant Integer := Index - 1;",
+"",
+"   begin",
+"      return Data.Data (Aux);",
+"   end Previous;",
+"",
+"   procedure Next",
+"     (Data  : CH_Buf_Type;",
+"      Index : in out Integer;",
+"      Code  : out Wide_Wide_Character) is",
+"   begin",
+"      Code := Data.Data (Index);",
+"      Index := Index + 1;",
+"   end Next;"
--  DFA TEMPLATE END
);

   DFA_Current_Line : Integer := 1;

   IO_Template : constant File_Array :=
    (
--  IO TEMPLATE START
+"with Ada.Characters.Wide_Wide_Latin_1;",
+"with Ada.Wide_Wide_Text_IO;",
+"",
+"%%",
+"",
+"   User_Input_File  : Ada.Wide_Wide_Text_IO.File_Type;",
+"   User_Output_File : Ada.Wide_Wide_Text_IO.File_Type;",
+"",
+"   Null_In_Input         : exception;",
+"   Aflex_Internal_Error  : exception;",
+"   Unexpected_Last_Match : exception;",
+"   Pushback_Overflow     : exception;",
+"   Aflex_Scanner_Jammed  : exception;",
+"",
+"   type EOB_Action_Type is",
+"     (EOB_ACT_RESTART_SCAN,",
+"      EOB_ACT_END_OF_FILE,",
+"      EOB_ACT_LAST_MATCH);",
+"",
+"   YY_END_OF_BUFFER_CHAR : constant Wide_Wide_Character :=",
+"     Ada.Characters.Wide_Wide_Latin_1.NUL;",
+"   yy_n_chars : integer;       --  number of characters read into yy_ch_buf",
+"",
+"   --  true when we've seen an EOF for the current input file",
+"   yy_eof_has_been_seen : boolean;",
+"",
+"-- UMASS CODES :" ,
+"   --   In order to support YY_Get_Token_Line, we need",
+"   --   a variable to hold current line.",
+"   type String_Ptr is access Wide_Wide_String;",
+"",
+"   Saved_Tok_Line1                : String_Ptr := Null;",
+"   Line_Number_Of_Saved_Tok_Line1 : Integer := 0;",
+"   Saved_Tok_Line2                : String_Ptr := Null;",
+"   Line_Number_Of_Saved_Tok_Line2 : Integer := 0;",
+"",
+"   --  Aflex will try to get next buffer before it processs the",
+"   --  last token. Since now Aflex has been changed to accept",
+"   --  one line by one line, the last token in the buffer is",
+"   --  always end_of_line ( or end_of_buffer ). So before the",
+"   --  end_of_line is processed, next line will be retrieved",
+"   --  into the buffer. So we need to maintain two lines,",
+"   --  which line will be returned in Get_Token_Line is",
+"   --  determined according to the line number. It is the same",
+"   --  reason that we can not reinitialize tok_end_col to 0 in",
+"   --  Yy_Input, but we must do it in yylex after we process the",
+"   --  end_of_line.",
+"",
+"   Tok_Begin_Line       : Integer := 1;",
+"   Tok_End_Line         : Integer := 1;",
+"   Tok_End_Col          : Integer := 0;",
+"   Tok_Begin_Col        : Integer := 0;",
+"   Token_At_End_Of_Line : Boolean := False;",
+"   --  Indicates whether or not last matched token is end_of_line.",
+"-- END OF UMASS CODES.",
+"",
+"   procedure YY_Input",
+"     (Buf      : out Unbounded_Character_Array;",
+"      Result   : out Integer;",
+"      Max_Size : Integer);",
+"   function YY_Get_Next_Buffer return EOB_Action_Type;",
+"   procedure YYUnput (c : Wide_Wide_Character; YY_BP: in out Integer);",
+"   procedure Unput (c : Wide_Wide_Character);",
+"   function Input return Wide_Wide_Character;",
+"   procedure Output (c : Wide_Wide_Character);",
+"   function YYWrap return Boolean;",
+"   procedure Open_Input (FName : String);",
+"   procedure Close_Input;",
+"   procedure Create_Output (FName : String := """");",
+"   procedure Close_Output;",
+"",
+"-- UMASS CODES :",
+"   procedure Yy_Get_Token_Line",
+"     (Yy_Line_String : out Wide_Wide_String;",
+"      Yy_Line_Length : out Natural);",
+"   --  Returnes the entire line in the input, on which the currently",
+"   --  matched token resides.",
+"",
+"   function Yy_Line_Number return Natural;",
+"   --  Returns the line number of the currently matched token.",
+"   --  In case a token spans lines, then the line number of the first line",
+"   --  is returned.",
+"",
+"   function Yy_Begin_Column return Natural;",
+"   function Yy_End_Column return Natural;",
+"   --  Returns the beginning and ending column positions of the",
+"   --  currently mathched token. If the token spans lines then the",
+"   --  begin column number is the column number on the first line",
+"   --  and the end columne number is the column number on the last line.",
+"",
+"-- END OF UMASS CODES.",
+"",
+"%%",
+"",
+"   use Ada.Wide_Wide_Text_IO;",
+"",
+"   --  Gets input and stuffs it into 'buf'.  number of characters read, or",
+"   --  YY_NULL is returned in 'result'.",
+"",
+"   procedure YY_Input",
+"     (Buf      : out Unbounded_Character_Array;",
+"      Result   : out Integer;",
+"      Max_Size : integer)",
+"   is",
+"      C   : Wide_Wide_character;",
+"      I   : Integer := 1;",
+"      Loc : Integer := Buf'First;",
+"-- UMASS CODES :",
+"      --    Since buf is an out parameter which is not readable",
+"      --    and saved lines is a string pointer which space must",
+"      --    be allocated after we know the size, we maintain",
+"      --    an extra buffer to collect the input line and",
+"      --    save it into the saved line 2.",
+"      Temp_Line : Wide_Wide_String (1 .. YY_BUF_SIZE + 2);",
+"-- END OF UMASS CODES.",
+"   begin",
+"-- UMASS CODES :",
+"      buf := (others => Ada.Characters.Wide_Wide_Latin_1.NUL);",
+"      --  Move the saved lines forward.",
+"      Saved_Tok_Line1 := Saved_Tok_Line2;",
+"      Line_Number_Of_Saved_Tok_Line1 := Line_Number_Of_Saved_Tok_Line2;",
+"",
+"-- END OF UMASS CODES.",
+"      if Is_Open (User_Input_File) then",
+"         while I <= Max_Size loop",
+"            if End_Of_Line (User_Input_File) then",
+"               --  Ada ate our newline, put it back on the end.",
+"               Buf (Loc) := Ada.Characters.Wide_Wide_Latin_1.LF;",
+"               Skip_Line (User_Input_File, 1);",
+"-- UMASS CODES :",
+"               --  We try to get one line by one line. So we return",
+"               --  here because we saw the end_of_line.",
+"               Result := I;",
+"               Temp_Line (I) := Ada.Characters.Wide_Wide_Latin_1.LF;",
+"               Saved_Tok_Line2 := new String (1 .. I);",
+"               Saved_Tok_Line2 (1 .. I) := Temp_Line (1 .. I);",
+"               Line_Number_Of_Saved_Tok_Line2 :=",
+"                 Line_Number_Of_Saved_Tok_Line1 + 1;",
+"",
+"               return;",
+"-- END OF UMASS CODES.",
+"",
+"            else",
+"-- UCI CODES CHANGED:",
+"--    The following codes are modified. Previous codes is commented out.",
+"--    The purpose of doing this is to make it possible to set Temp_Line",
+"--    in Ayacc-extension specific codes. Definitely, we can read the character",
+"--    into the Temp_Line and then set the buf. But Temp_Line will only",
+"--    be used in Ayacc-extension specific codes which makes this approach impossible.",
+"               Get (User_Input_File, C);",
+"               Buf (Loc) := C;",
+"--               get(user_input_file, buf(loc));",
+"-- UMASS CODES :",
+"               Temp_Line (I) := C;",
+"-- END OF UMASS CODES.",
+"            end if;",
+"",
+"            Loc := Loc + 1;",
+"            I := I + 1;",
+"         end loop;",
+"      else",
+"         while I <= Max_Size loop",
+"            if end_of_line then",
+"               -- Ada ate our newline, put it back on the end.",
+"               Buf (Loc) := Ada.Characters.Wide_Wide_Latin_1.LF;",
+"               Skip_Line (1);",
+"-- UMASS CODES :",
+"               --  We try to get one line by one line. So we return",
+"               --  here because we saw the end_of_line.",
+"               Result := I;",
+"               Temp_Line (I) := Ada.Characters.Wide_Wide_Latin_1.LF;",
+"               Saved_Tok_Line2 := new String (1 .. I);",
+"               Saved_Tok_Line2 (1 .. I) := Temp_Line (1 .. I);",
+"               Line_Number_Of_Saved_Tok_Line2 :=",
+"                 Line_Number_Of_Saved_Tok_Line1 + 1;",
+"",
+"               return;",
+"-- END OF UMASS CODES.",
+"%%",
+"",
+"         else",
+"--    The following codes are modified. Previous codes is commented out.",
+"--    The purpose of doing this is to make it possible to set Temp_Line",
+"--    in Ayacc-extension specific codes. Definitely, we can read the character",
+"--    into the Temp_Line and then set the buf. But Temp_Line will only",
+"--    be used in Ayacc-extension specific codes which makes this approach impossible.",
+"           get(c);",
+"           buf(loc) := c;",
+"--         get(buf(loc));",
+"-- UMASS CODES :",
+"           Temp_Line(i) := c;",
+"-- END OF UMASS CODES.",
+"         end if; ",
+"",
+"         loc := loc + 1;",
+"         i := i + 1;",
+"      end loop;",
+"    end if; -- for input file being standard input",
+"",
+"    result := i - 1; ",
+"-- UMASS CODES :",
+"--   Since we get one line by one line, if we",
+"--   reach here, it means that current line have",
+"--   more that max_size characters. So it is",
+"--   impossible to hold the whole line. We",
+"--   report the warning message and continue.",
+"    buf(loc - 1) := Ascii.LF;",
+"    if (is_open(user_input_file)) then",
+"      skip_line(user_input_file, 1);",
+"    else",
+"      skip_line(1);",
+"    end if;",
+"    Temp_Line(i-1) := ASCII.LF;",
+"    Saved_Tok_Line2 := new String ( 1 .. i - 1);",
+"    Saved_Tok_Line2 ( 1 .. i - 1 ) := Temp_Line ( 1 .. i - 1 );",
+"    Line_Number_Of_Saved_Tok_Line2 := Line_Number_Of_Saved_Tok_Line1 + 1;",
+"    Put_Line ( ""Input line """,
+"               & Integer'Image ( Line_Number_Of_Saved_Tok_Line2 )",
+"               & ""has more than """,
+"               & Integer'Image ( max_size )",
+"               & "" characters, ... truncated."" );",
+"-- END OF UMASS CODES.",
+"    exception",
+"        when END_ERROR => result := i - 1;",
+"    -- when we hit EOF we need to set yy_eof_has_been_seen",
+"    yy_eof_has_been_seen := true;",
+"-- UMASS CODES :",
+"--   Processing incomplete line.",
+"        if i /= 1 then",
+"          -- Current line is not empty but do not have end_of_line.",
+"          -- So current line is incomplete line. But we still need",
+"          -- to save it.",
+"          Saved_Tok_Line2 := new String ( 1 .. i - 1 );",
+"          Saved_Tok_Line2 ( 1 .. i - 1 ) := Temp_Line ( 1 .. i - 1 );",
+"          Line_Number_Of_Saved_Tok_Line2 := Line_Number_Of_Saved_Tok_Line1 + 1;",
+"        end if;",
+"-- END OF UMASS CODES.",
+"end YY_INPUT;",
+"",
+"-- yy_get_next_buffer - try to read in new buffer",
+"--",
+"-- returns a code representing an action",
+"--     EOB_ACT_LAST_MATCH - ",
+"--     EOB_ACT_RESTART_SCAN - restart the scanner",
+"--     EOB_ACT_END_OF_FILE - end of file",
+"",
+"function yy_get_next_buffer return eob_action_type is",
+"    dest : integer := 0;",
+"    source : integer := yytext_ptr - 1; -- copy prev. char, too",
+"    number_to_move : integer;",
+"    ret_val : eob_action_type;",
+"    num_to_read : integer;",
+"begin    ",
+"    if ( yy_c_buf_p > yy_n_chars + 1 ) then",
+"        raise NULL_IN_INPUT;",
+"    end if;",
+"",
+"    -- try to read more data",
+"",
+"    -- first move last chars to start of buffer",
+"    number_to_move := yy_c_buf_p - yytext_ptr;",
+"",
+"    for i in 0..number_to_move - 1 loop",
+"        yy_ch_buf.data (dest) := yy_ch_buf.data (source);",
+"    dest := dest + 1;",
+"    source := source + 1;",
+"    end loop;",
+"        ",
+"    if ( yy_eof_has_been_seen ) then",
+"    -- don't do the read, it's not guaranteed to return an EOF,",
+"    -- just force an EOF",
+"",
+"    yy_n_chars := 0;",
+"    else",
+"    num_to_read := YY_BUF_SIZE - number_to_move - 1;",
+"",
+"    if ( num_to_read > YY_READ_BUF_SIZE ) then",
+"        num_to_read := YY_READ_BUF_SIZE;",
+"        end if;",
+"",
+"    -- read in more data",
+"    YY_INPUT( yy_ch_buf.data (number_to_move..yy_ch_buf.data'last), yy_n_chars, num_to_read );",
+"    end if;",
+"    if ( yy_n_chars = 0 ) then",
+"    if ( number_to_move = 1 ) then",
+"        ret_val := EOB_ACT_END_OF_FILE;",
+"    else",
+"        ret_val := EOB_ACT_LAST_MATCH;",
+"        end if;",
+"",
+"    yy_eof_has_been_seen := true;",
+"    else",
+"    ret_val := EOB_ACT_RESTART_SCAN;",
+"    end if;",
+"    ",
+"    yy_n_chars := yy_n_chars + number_to_move;",
+"    yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;",
+"    yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;",
+"",
+"    -- yytext begins at the second character in",
+"    -- yy_ch_buf; the first character is the one which",
+"    -- preceded it before reading in the latest buffer;",
+"    -- it needs to be kept around in case it's a",
+"    -- newline, so yy_get_previous_state() will have",
+"    -- with '^' rules active",
+"",
+"    yytext_ptr := 1;",
+"",
+"    return ret_val;",
+"end yy_get_next_buffer;",
+"",
+"   procedure YYUnput (C : Wide_Wide_Character; YY_BP: in out Integer) is",
+"      number_to_move : Integer;",
+"      dest : integer;",
+"      source : integer;",
+"      tmp_yy_cp : integer;",
+"",
+"   begin",
+"      tmp_yy_cp := yy_c_buf_p;",
+"",
+"      if ( tmp_yy_cp < 2 ) then",
+"         -- need to shift things up to make room",
+"         number_to_move := yy_n_chars + 2; -- +2 for EOB chars",
+"         dest := YY_BUF_SIZE + 2;",
+"         source := number_to_move;",
+"",
+"         while ( source > 0 ) loop",
+"            dest := dest - 1;",
+"            source := source - 1;",
+"            yy_ch_buf.data (dest) := yy_ch_buf.data (source);",
+"         end loop;",
+"",
+"         tmp_yy_cp := tmp_yy_cp + dest - source;",
+"         yy_bp := yy_bp + dest - source;",
+"         yy_n_chars := YY_BUF_SIZE;",
+"",
+"         if ( tmp_yy_cp < 2 ) then",
+"            raise PUSHBACK_OVERFLOW;",
+"         end if;",
+"      end if;",
+"",
+"      if tmp_yy_cp > yy_bp",
+"        and then yy_ch_buf.data (tmp_yy_cp-1) = Ada.Characters.Wide_Wide_Latin_1.LF",
+"      then",
+"         yy_ch_buf.data (tmp_yy_cp-2) := Ada.Characters.Wide_Wide_Latin_1.LF;",
+"      end if;",
+"",
+"      tmp_yy_cp := tmp_yy_cp - 1;",
+"      yy_ch_buf.data (tmp_yy_cp) := c;",
+"",
+"      --  Note:  this code is the text of YY_DO_BEFORE_ACTION, only",
+"      --         here we get different yy_cp and yy_bp's",
+"      yytext_ptr := yy_bp;",
+"      yy_c_buf_p := tmp_yy_cp;",
+"   end yyunput;",
+"",
+"   procedure Unput (C : Wide_Wide_Character) is",
+"   begin",
+"      YYUnput (C, yy_bp);",
+"   end Unput;",
+"",
+"   function Input return Wide_Wide_Character is",
+"      C     : Wide_Wide_Character;",
+"      YY_CP : Integer := YY_C_Buf_P;",
+"",
+"   begin",
+"      if YY_CH_Buf.Data (YY_C_Buf_P) = YY_END_OF_BUFFER_CHAR then",
+"         --  need more input",
+"",
+"         yytext_ptr := yy_c_buf_p;",
+"         yy_c_buf_p := yy_c_buf_p + 1;",
+"",
+"         case yy_get_next_buffer is",
+"         -- this code, unfortunately, is somewhat redundant with",
+"         -- that above",
+"",
+"            when EOB_ACT_END_OF_FILE =>",
+"               if yywrap then",
+"                  yy_c_buf_p := yytext_ptr;",
+"",
+"                  return Ada.Characters.Wide_Wide_Latin_1.NUL;",
+"               end if;",
+"",
+"               yy_ch_buf.data (0) := Ada.Characters.Wide_Wide_Latin_1.LF;",
+"               yy_n_chars := 1;",
+"               yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;",
+"               yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;",
+"               yy_eof_has_been_seen := false;",
+"               yy_c_buf_p := 1;",
+"               yytext_ptr := yy_c_buf_p;",
+"",
+"               return Input;",
+"",
+"            when EOB_ACT_RESTART_SCAN =>",
+"               yy_c_buf_p := yytext_ptr;",
+"",
+"            when EOB_ACT_LAST_MATCH =>",
+"               raise UNEXPECTED_LAST_MATCH;",
+"",
+"            when others => null;",
+"         end case;",
+"      end if;",
+"",
+"      c := yy_ch_buf.data (yy_c_buf_p);",
+"      yy_c_buf_p := yy_c_buf_p + 1;",
+"",
+"      return C;",
+"   end Input;",
+"",
+"   procedure Output (C : Wide_Wide_Character) is",
+"   begin",
+"      if Is_Open (User_Output_File) then",
+"         Put (User_Output_File, C);",
+"",
+"       else",
+"         Put (C);",
+"       end if;",
+"   end Output;",
+"",
+"   --  Default yywrap function - always treat EOF as an EOF",
+"",
+"   function YYWrap return Boolean is",
+"   begin",
+"      return True;",
+"   end YYWrap;",
+"",
+"   procedure Open_Input (FName : String) is",
+"   begin",
+"      YY_Init := True;",
+"      Open (User_Input_File, In_File, FName, ""wcem=8"");",
+"   end Open_Input;",
+"",
+"   procedure Create_Output (FName : String := """") is",
+"   begin",
+"      if fname /= """" then",
+"         Create (User_Output_File, Out_File, FName);",
+"      end if;",
+"   end Create_Output;",
+"",
+"   procedure Close_Input is",
+"   begin",
+"      if Is_Open (User_Input_File) then",
+"         Close (User_Input_File);",
+"      end if;",
+"   end Close_Input;",
+"",
+"   procedure Close_Output is",
+"   begin",
+"      if Is_Open (User_Output_File) then",
+"         Close (User_Output_File);",
+"      end if;",
+"   end Close_Output;",
+"",
+"-- UMASS CODES :",
+"procedure Yy_Get_Token_Line ( Yy_Line_String : out String;",
+"                              Yy_Line_Length : out Natural ) is",
+"begin",
+"  -- Currently processing line is either in saved token line1 or",
+"  -- in saved token line2.",
+"  if Yy_Line_Number = Line_Number_Of_Saved_Tok_Line1 then",
+"    Yy_Line_Length := Saved_Tok_Line1.all'length;",
+"    Yy_Line_String ( Yy_Line_String'First .. ( Yy_Line_String'First + Saved_Tok_Line1.all'length - 1 ))",
+"      := Saved_Tok_Line1 ( 1 .. Saved_Tok_Line1.all'length );",
+"  else",
+"    Yy_Line_Length := Saved_Tok_Line2.all'length;",
+"    Yy_Line_String ( Yy_Line_String'First .. ( Yy_Line_String'First + Saved_Tok_Line2.all'length - 1 ))",
+"      := Saved_Tok_Line2 ( 1 .. Saved_Tok_Line2.all'length );",
+"  end if;",
+"end Yy_Get_Token_Line;",
+"",
+"function Yy_Line_Number return Natural is",
+"begin",
+"   return Tok_Begin_Line;",
+"end Yy_Line_Number;",
+"",
+"function Yy_Begin_Column return Natural is",
+"begin",
+"   return Tok_Begin_Col;",
+"end Yy_Begin_Column;",
+"",
+"function Yy_End_Column return Natural is",
+"begin",
+"   return Tok_End_Col;",
+"end Yy_End_Column;",
+"",
+"-- END OF UMASS CODES.",
+""
--  IO TEMPLATE END
);

   IO_Current_Line : Integer := 1;

   ------------------
   -- Template_Out --
   ------------------

   procedure Template_Out
    (Out_File         : File_Type;
     Current_Template : File_Array;
     Line_Number      : in out Integer)
   is
-- UMASS CODES :
      Umass_Codes : Boolean := False;
      --  Indicates whether or not current line of the template
      --  is the Umass codes.
-- END OF UMASS CODES.
      Buf         : Unbounded_Wide_Wide_String;

   begin
      while not (Line_Number > Current_Template'Last) loop
         Buf := Current_Template (Line_Number);
         Line_Number := Line_Number + 1;

         if Length (Buf) >= 2 and then Slice (Buf, 1, 2) = "%%" then
            exit;
         else
-- UMASS CODES :
--   In the template, the codes between "-- UMASS CODES : " and
--   "-- END OF UMASS CODES." are specific to be used by Ayacc-extension.
--   Ayacc-extension has more power in error recovery. So we
--   generate those codes only when Ayacc_Extension_Flag is True.
            if Buf = "-- UMASS CODES :" then
               Umass_Codes := True;
            end if;

            if not Umass_Codes or else Ayacc_Extension_Flag then
               Put_Line (Out_File, Buf);
            end if;

            if Buf = "-- END OF UMASS CODES." then
               Umass_Codes := False;
            end if;
-- END OF UMASS CODES.

-- UCI CODES commented out :
--   The following line is commented out because it is done in Umass codes.
--      FILE_STRING.PUT_LINE(OUTFILE,BUF);
         end if;
      end loop;
   end Template_Out;

   -----------------------
   -- Generate_DFA_File --
   -----------------------

   procedure Generate_DFA_File is
      DFA_Out_Spec_File, DFA_Out_Body_File : File_Type;

   begin
      External_File_Manager.Get_DFA_Spec_File (DFA_Out_Spec_File);
      External_File_Manager.Get_DFA_Body_File (DFA_Out_Body_File);
      Put_Line (DFA_Out_Spec_File, "package " & Misc.Basename & ".DFA is");

      if DDebug then
         -- make a scanner that output acceptance information

         Put_Line (DFA_Out_Spec_File, "Aflex_Debug : Boolean := True;");

      else
         Put_Line (DFA_Out_Spec_File, "Aflex_Debug : Boolean := False;");
      end if;

      Template_Out (DFA_Out_Spec_File, DFA_Template, DFA_Current_Line);
      Put_Line (DFA_Out_Spec_File, "end " & Misc.Basename & ".DFA;");

      Put_Line (DFA_Out_Body_File, "package body " & Misc.Basename & ".DFA is");
      Template_Out (DFA_Out_Body_File, DFA_Template, DFA_Current_Line);
      Put_Line (DFA_Out_Body_File, "end " & Misc.Basename & ".DFA;");
   end Generate_DFA_File;

   ----------------------
   -- Generate_IO_File --
   ----------------------

   procedure Generate_IO_File is
      IO_Out_Spec_File, IO_Out_Body_File : File_Type;

   begin
      External_File_Manager.Get_IO_Spec_File (IO_Out_Spec_File);
      External_File_Manager.Get_IO_Body_File (IO_Out_Body_File);

      Put (IO_Out_Spec_File, "with " & Misc.Basename & ".DFA;");
      Put_Line (IO_Out_Spec_File, " use " & Misc.Basename & ".DFA;");
      Template_Out (IO_Out_Spec_File, IO_Template, IO_Current_Line);
      Put_Line (IO_Out_Spec_File, "package " & Misc.Basename & ".IO is");
      Template_Out (IO_Out_Spec_File, IO_Template, IO_Current_Line);
      Put_Line (IO_Out_Spec_File, "end " & Misc.Basename & ".IO;");

      Put_Line (IO_Out_Body_File, "package body " & Misc.Basename & ".IO is");
      Template_Out (IO_Out_Body_File, IO_Template, IO_Current_Line);

      -- If we're generating a scanner for interactive mode we need to generate
      -- a YY_INPUT that stops at the end of each line

      if Interactive then
         Put_Line
          (IO_Out_Body_File,
           "            i := i + 1; -- update counter, miss end of loop");
         Put_Line
          (IO_Out_Body_File,
           "            exit; -- in interactive mode return at end of line.");
      end if;

      Template_Out (IO_Out_Body_File, IO_Template, IO_Current_Line);
      Put_Line (IO_Out_Body_File, "end " & Misc.Basename & ".IO;");
   end Generate_IO_File;

end Template_Manager;
