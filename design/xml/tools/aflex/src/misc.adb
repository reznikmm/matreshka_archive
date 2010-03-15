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

-- TITLE  miscellaneous aflex routines
-- AUTHOR: John Self (UCI)
-- DESCRIPTION
-- NOTES contains functions used in various places throughout aflex.
-- $Header: /dc/uc/self/arcadia/aflex/ada/src/RCS/miscB.a,v 1.22 1991/07/01 21:30:37 self Exp self $
with Ada.Calendar;
with Ada.Directories;
with Ada.Integer_Text_IO;
with Ada.Strings.Unbounded.Text_IO;

with MISC, Main_Body;
use MISC;

package body MISC is

   use Ada.Integer_Text_IO;
   use Ada.Strings.Unbounded.Text_IO;
   use Unicode;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   function "+" (Item : Unbounded_String) return String
     renames To_String;

  -- action_out - write the actions from the temporary file to lex.yy.c

   procedure Action_OUT is
      Buf : Unbounded_String;

   begin
      while not End_Of_File (Temp_Action_File) loop
         GET_LINE (Temp_Action_File, Buf);
         if Length (BUF) >= 2
           and then Slice (Buf, 1, 2) = "%%"
         then
            exit;
         else
            PUT_LINE(BUF);
         end if;
      end loop;
   end ACTION_OUT;

  -- bubble - bubble sort an integer array in increasing order
  --
  -- description
  --   sorts the first n elements of array v and replaces them in
  --   increasing order.
  --
  -- passed
  --   v - the array to be sorted
  --   n - the number of elements of 'v' to be sorted

  procedure BUBBLE(V : in INT_PTR;
                   N : in INTEGER) is
    K : INTEGER;
  begin
    for I in reverse 2 .. N loop
      for J in 1 .. I - 1 loop
        if (V(J) > V(J + 1)) then

          -- compare
          K := V(J);

          -- exchange
          V(J) := V(J + 1);
          V(J + 1) := K;
        end if;
      end loop;
    end loop;
  end BUBBLE;


  -- clower - replace upper-case letter to lower-case

  function CLOWER(C : in INTEGER) return INTEGER is
  begin
    if (ISUPPER(CHARACTER'VAL(C))) then
      return TOLOWER(C);
    else
      return C;
    end if;
  end CLOWER;

   ------------
   -- CSHELL --
   ------------

   procedure CSHELL
    (V : in out Unicode_Character_Array;
     N : Integer)
   is
      GAP, J, JG  : INTEGER;
      K           : Unicode_Character;
      LOWER_BOUND : constant INTEGER := V'FIRST;

   begin
      GAP := N / 2;

      while GAP > 0 loop
         for I in GAP .. N - 1 loop
            J := I - GAP;
            while (J >= 0) loop
               JG := J + GAP;

               if (V(J + LOWER_BOUND) <= V(JG + LOWER_BOUND)) then
                  exit;
               end if;

               K := V (J + LOWER_BOUND);
               V(J + LOWER_BOUND) := V(JG + LOWER_BOUND);
               V(JG + LOWER_BOUND) := K;
               J := J - GAP;
            end loop;
         end loop;

         GAP := GAP/2;
      end loop;
   end CSHELL;

  -- dataend - finish up a block of data declarations

  procedure DATAEND is
  begin
    if (DATAPOS > 0) then
      DATAFLUSH;

      -- add terminator for initialization
      Put_Line ("    );");
      New_Line;

      DATALINE := 0;
    end if;
  end DATAEND;


  -- dataflush - flush generated data statements

  procedure DATAFLUSH (File : in File_Type) is
  begin
    New_Line (File);
    DATALINE := DATALINE + 1;
    if DATALINE >= NUMDATALINES then

      -- put out a blank line so that the table is grouped into
      -- large blocks that enable the user to find elements easily
      New_Line (File);
      DATALINE := 0;
    end if;

    -- reset the number of characters written on the current line
    DATAPOS := 0;
  end DATAFLUSH;

  procedure DATAFLUSH is
  begin
    DATAFLUSH(CURRENT_OUTPUT);
  end DATAFLUSH;

   --------------------
   -- Aflex_Get_Time --
   --------------------

   function Aflex_Get_Time return Unbounded_String is

      use Ada.Calendar;

      Seconds_Per_Hour : constant Day_Duration := 3600.0;

      Current_Time     : Time;
      Current_Year     : Year_Number;
      Current_Month    : Month_Number;
      Current_Day      : Day_Number;
      Current_Seconds  : Day_Duration;
      Month_String     : Unbounded_String;
      Hour_String      : Unbounded_String;
      Minute_String    : Unbounded_String;
      Second_String    : Unbounded_String;
      Hour             : Integer;
      Minute           : Integer;
      Second           : Integer;

   begin
      Current_Time := Clock;
      Split
       (Current_Time,
        Current_Year,
        Current_Month,
        Current_Day,
        Current_Seconds);

      case Current_Month is
         when 1 =>
            Month_String := +"Jan";
         when 2 =>
            Month_String := +"Feb";
         when 3 =>
            Month_String := +"Mar";
         when 4 =>
            Month_String := +"Apr";
         when 5 =>
            Month_String := +"May";
         when 6 =>
            Month_String := +"Jun";
         when 7 =>
            Month_String := +"Jul";
         when 8 =>
            Month_String := +"Aug";
         when 9 =>
            Month_String := +"Sep";
         when 10 =>
            Month_String := +"Oct";
         when 11 =>
            Month_String := +"Nov";
         when 12 =>
            Month_String := +"Dec";
      end case;

      Hour   := Integer (Current_Seconds) / Integer (Seconds_Per_Hour);
      Minute := Integer ((Current_Seconds - (Hour * Seconds_Per_Hour)) / 60);
      Second :=
        Integer (Current_Seconds - Hour * Seconds_Per_Hour - Minute * 60.0);

      if Hour >= 10 then
         Hour_String := +Integer'Image (Hour) (2 .. 3);

      else
         Hour_String := +"0" & Integer'Image (Hour) (2);
      end if;

      if Minute >= 10 then
         Minute_String := +Integer'Image (Minute) (2 .. 3);

      else
         Minute_String := +"0" & Integer'Image (Minute) (2);
      end if;

      if Second >= 10 then
         Second_String := +Integer'Image (Second) (2 .. 3);

      else
         Second_String := +"0" & Integer'Image (Second) (2);
      end if;

      return
        Month_String
          & Integer'Image (Current_Day)
          & Hour_String
          & ":"
          & Minute_String
          & ":"
          & Second_String
          & Integer'Image (Current_Year);
   end Aflex_Get_Time;

   -----------------
   -- Aflex_Error --
   -----------------

   procedure Aflex_Error (Msg : Unbounded_String) is
   begin
      Put (Standard_Error, "aflex: " & Msg);
      New_Line (Standard_Error);
      Main_Body.Aflex_End (1);
   end Aflex_Error;

   -----------------
   -- Aflex_Error --
   -----------------

   procedure Aflex_Error (Msg : String) is
   begin
      Put (Standard_Error, "aflex: " & Msg);
      New_Line (Standard_Error);
      Main_Body.Aflex_End (1);
   end Aflex_Error;

   -----------------
   -- Aflex_Fatal --
   -----------------

   procedure Aflex_Fatal (Msg : String) is
   begin
      Put (Standard_Error, "aflex: fatal internal error " & Msg);
      New_Line (Standard_Error);
      Main_Body.Aflex_End (1);
   end Aflex_Fatal;

   -----------------
   -- Aflex_Fatal --
   -----------------

   procedure Aflex_Fatal (Msg : Unbounded_String) is
   begin
      Put (Standard_Error, "aflex: fatal internal error " & Msg);
      New_Line (Standard_Error);
      Main_Body.Aflex_End (1);
   end Aflex_Fatal;

   --------------
   -- Basename --
   --------------

   function Basename return Unbounded_String is
      End_Char_Pos   : Natural := Length (In_File_Name);
      Start_Char_Pos : Integer;

   begin
      if Length (In_File_Name) = 0 then
         -- if reading standard input give everything this name

         return +"aflex_yy";
      end if;

      return +Ada.Directories.Base_Name (+In_File_Name);
   end Basename;

  -- line_directive_out - spit out a "# line" statement

  procedure LINE_DIRECTIVE_OUT(OUTPUT_FILE_NAME : in FILE_TYPE) is
  begin
    if GEN_LINE_DIRS then
      Put (OUTPUT_FILE_NAME, "--# line ");
      Put (OUTPUT_FILE_NAME, LINENUM, 1);
      Put (OUTPUT_FILE_NAME, " """);
      Put (OUTPUT_FILE_NAME, In_File_Name);
      Put_Line (OUTPUT_FILE_NAME, """");
    end if;
  end LINE_DIRECTIVE_OUT;


  procedure LINE_DIRECTIVE_OUT is
  begin
    if (GEN_LINE_DIRS) then
      PUT("--# line ");
      PUT(LINENUM, 1);
      PUT(" """);
      PUT(In_File_Name);
      PUT_LINE("""");
    end if;
  end LINE_DIRECTIVE_OUT;

  -- all_upper - returns true if a string is all upper-case
--    function ALL_UPPER(STR : in VSTRING) return BOOLEAN is
--    begin
--      for I in 1 .. LEN(STR) loop
--        if (not ((CHAR(STR, I) >= 'A') and (CHAR(STR, I) <= 'Z'))) then
--          return FALSE;
--        end if;
--      end loop;
--      return TRUE;
--    end ALL_UPPER;

  -- all_lower - returns true if a string is all lower-case
--    function ALL_LOWER(STR : in VSTRING) return BOOLEAN is
--    begin
--      for I in 1 .. LEN(STR) loop
--        if (not ((CHAR(STR, I) >= 'a') and (CHAR(STR, I) <= 'z'))) then
--          return FALSE;
--        end if;
--      end loop;
--      return TRUE;
--    end ALL_LOWER;

  -- mk2data - generate a data statement for a two-dimensional array
  --
  --  generates a data statement initializing the current 2-D array to "value"

  procedure MK2DATA(FILE  : in FILE_TYPE;
                    VALUE : in INTEGER) is
  begin

    if (DATAPOS >= NUMDATAITEMS) then
      PUT(FILE, ',');
      DATAFLUSH(FILE);
    end if;

    if (DATAPOS = 0) then

      -- indent
      PUT(FILE, "    ");
    else
      PUT(FILE, ',');
    end if;

    DATAPOS := DATAPOS + 1;

    PUT(FILE, VALUE, 5);
  end MK2DATA;

  procedure MK2DATA(VALUE : in INTEGER) is
  begin
    MK2DATA(CURRENT_OUTPUT, VALUE);
  end MK2DATA;

  --
  --  generates a data statement initializing the current array element to
  --  "value"

  procedure MKDATA(VALUE : in INTEGER) is
  begin
    if (DATAPOS >= NUMDATAITEMS) then
      PUT(',');
      DATAFLUSH;
    end if;

    if (DATAPOS = 0) then

      -- indent
      PUT("    ");
    else
      PUT(',');
    end if;

    DATAPOS := DATAPOS + 1;

    PUT(VALUE, 5);
  end MKDATA;


  -- myctoi - return the integer represented by a string of digits

  function MYCTOI(NUM_ARRAY : in Unbounded_String) return INTEGER is
    TOTAL : INTEGER := 0;
    CNT   : INTEGER := 1;
  begin
    while CNT <= Length (NUM_ARRAY) loop
      TOTAL := TOTAL*10;
         TOTAL :=
           TOTAL
             + CHARACTER'POS (Element (NUM_ARRAY, CNT)) - CHARACTER'POS('0')
        ;
      CNT := CNT + 1;
    end loop;
    return TOTAL;
  end MYCTOI;

   -----------
   -- MYESC --
   -----------

   function MYESC (ARR : Unbounded_String) return Unicode.Unicode_Character is
   begin
      case Element (ARR, 2) is
         when 'a' =>
            return Unicode.BEL;

         when 'b' =>
            return Unicode.BS;

         when 'f' =>
            return Unicode.FF;

         when 'n' =>
            return Unicode.LF;

         when 'r' =>
            return Unicode.CR;

         when 't' =>
            return Unicode.HT;

         when 'v' =>
            return Unicode.VT;

         when 'u' =>
            -- \u<Unicode>

            declare
               Esc_Char : constant Unicode_Character
                 := Unicode_Character'Val
                     (Integer'Value
                       ("16#" & Slice (Arr, 3, Length (Arr)) & "#"));

            begin
               if (ESC_CHAR = Unicode.NUL) then
                  MISC.SYNERR("escape sequence for null not allowed");

                  return Unicode.SOH;
               end if;

               return ESC_CHAR;
            end;

         when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
            -- \<octal>

            declare
               ESC_CHAR : Character;

            begin
               ESC_CHAR :=
                 OTOI (Unbounded_Slice (ARR, 2, Length (ARR)));

               if (ESC_CHAR = ASCII.NUL) then
                  MISC.SYNERR("escape sequence for null not allowed");

                  return Unicode.SOH;
               end if;

               return Unicode_Character'Val (Character'Pos (ESC_CHAR));
            end;

         when others =>
            return Unicode_Character'Val (Character'Pos (Element (ARR, 2)));
      end case;
  end MYESC;


  -- otoi - convert an octal digit string to an integer value

  function OTOI(STR : Unbounded_String) return CHARACTER is
    TOTAL : INTEGER := 0;
    CNT   : INTEGER := 1;
  begin
    while CNT <= Length (STR) loop
      TOTAL := TOTAL*8;
      TOTAL := TOTAL + CHARACTER'POS(Element (STR, CNT)) - CHARACTER'POS('0');
      CNT := CNT + 1;
    end loop;
    return CHARACTER'VAL(TOTAL);
  end OTOI;

   -------------------
   -- Readable_Form --
   -------------------

  -- readable_form - return the the human-readable form of a character
  --
  -- The returned string is in static storage.

   function Readable_Form (C : Wide_Wide_Character) return Unbounded_String is
      To_Hex_Digit : constant String := "0123456789ABCDEF";
      Code         : constant Integer := Wide_Wide_Character'Pos (C);

   begin
      if Code <= 16#FFFF# then
         case C is
            when LF =>
               --  Newline

               return +"\n";

            when HT =>
               --  Horizontal Tab

               return +"\t";

            when FF =>
               --  Form Feed

               return +"\f";

            when CR =>
               --  Carriage Return

               return +"\r";

            when BS =>
               --  Backspace

               return +"\b";

            when ' ' =>
               --  Space

               return +"' '";

            when Wide_Wide_Character'Val (33)
               .. Wide_Wide_Character'Val (127) =>
               return
                 +String'
                 (1 .. 1 => Character'Val (Wide_Wide_Character'Pos (C)));

            when others =>
               declare
                  Image : String (1 .. 6) := "\uXXXX";

               begin
                  Image (3) := To_Hex_Digit ((Code / 2 ** 12) mod 16 + 1);
                  Image (4) := To_Hex_Digit ((Code / 2 ** 8) mod 16 + 1);
                  Image (5) := To_Hex_Digit ((Code / 2 ** 4) mod 16 + 1);
                  Image (6) := To_Hex_Digit (Code mod 16 + 1);

                  return +Image;
               end;
         end case;

      else
         declare
            Image : String (1 .. 8) := "\uXXXXXX";

         begin
            Image (3) := To_Hex_Digit (Code / 2 ** 20 + 1);
            Image (4) := To_Hex_Digit ((Code / 2 ** 16) mod 2 ** 4 + 1);
            Image (5) := To_Hex_Digit ((Code / 2 ** 12) mod 2 ** 4 + 1);
            Image (6) := To_Hex_Digit ((Code / 2 ** 8) mod 2 ** 4 + 1);
            Image (7) := To_Hex_Digit ((Code / 2 ** 4) mod 2 ** 4 + 1);
            Image (8) := To_Hex_Digit (Code mod 2 ** 4 + 1);

            return +Image;
         end;
      end if;
   end Readable_Form;

  -- transition_struct_out - output a yy_trans_info structure
  --
  -- outputs the yy_trans_info structure with the two elements, element_v and
  -- element_n.  Formats the output with spaces and carriage returns.

  procedure TRANSITION_STRUCT_OUT(ELEMENT_V, ELEMENT_N : in INTEGER) is
  begin
    PUT(ELEMENT_V, 7);
    PUT(", ");
    PUT(ELEMENT_N, 5);
    PUT(",");
    DATAPOS := DATAPOS + TRANS_STRUCT_PRINT_LENGTH;

    if (DATAPOS >= 75) then
      NEW_LINE;

      DATALINE := DATALINE + 1;

      if DATALINE mod 10 = 0 then
        NEW_LINE;
      end if;

      DATAPOS := 0;
    end if;
  end TRANSITION_STRUCT_OUT;

  function SET_YY_TRAILING_HEAD_MASK(SRC : in INTEGER) return INTEGER is
  begin
    if (CHECK_YY_TRAILING_HEAD_MASK(SRC) = 0) then
      return SRC + YY_TRAILING_HEAD_MASK;
    else
      return SRC;
    end if;
  end SET_YY_TRAILING_HEAD_MASK;

  function CHECK_YY_TRAILING_HEAD_MASK(SRC : in INTEGER) return INTEGER is
  begin
    if (SRC >= YY_TRAILING_HEAD_MASK) then
      return YY_TRAILING_HEAD_MASK;
    else
      return 0;
    end if;
  end CHECK_YY_TRAILING_HEAD_MASK;

  function SET_YY_TRAILING_MASK(SRC : in INTEGER) return INTEGER is
  begin
    if (CHECK_YY_TRAILING_MASK(SRC) = 0) then
      return SRC + YY_TRAILING_MASK;
    else
      return SRC;
    end if;
  end SET_YY_TRAILING_MASK;

  function CHECK_YY_TRAILING_MASK(SRC : in INTEGER) return INTEGER is
  begin

-- this test is whether both bits are on, or whether onlyy TRAIL_MASK is set
    if ((SRC >= YY_TRAILING_HEAD_MASK + YY_TRAILING_MASK) or ((
      CHECK_YY_TRAILING_HEAD_MASK(SRC) = 0) and (SRC >= YY_TRAILING_MASK)))
      then
      return YY_TRAILING_MASK;
    else
      return 0;
    end if;
  end CHECK_YY_TRAILING_MASK;

  function ISLOWER(C : in CHARACTER) return BOOLEAN is
  begin
    return (C in 'a' .. 'z');
  end ISLOWER;


  function ISUPPER(C : in CHARACTER) return BOOLEAN is
  begin
    return (C in 'A' .. 'Z');
  end ISUPPER;

  function ISDIGIT(C : in CHARACTER) return BOOLEAN is
  begin
    return (C in '0' .. '9');
  end ISDIGIT;

  function TOLOWER(C : in INTEGER) return INTEGER is
  begin
    return C - CHARACTER'POS('A') + CHARACTER'POS('a');
  end TOLOWER;

  procedure SYNERR(STR : in STRING) is
  begin
    SYNTAXERROR := TRUE;
    PUT(STANDARD_ERROR, "Syntax error at line ");
    PUT(STANDARD_ERROR, LINENUM);
    PUT(STANDARD_ERROR, STR);
    NEW_LINE(STANDARD_ERROR);
  end SYNERR;

end MISC;
