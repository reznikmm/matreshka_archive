package body scanner.IO is

   use Ada.Wide_Wide_Text_IO;

   --  Gets input and stuffs it into 'buf'.  number of characters read, or
   --  YY_NULL is returned in 'result'.

   procedure YY_Input
     (Buf      : out Unbounded_Character_Array;
      Result   : out Integer;
      Max_Size : integer)
   is
      C   : Wide_Wide_character;
      I   : Integer := 1;
      Loc : Integer := Buf'First;
   begin
      if Is_Open (User_Input_File) then
         while I <= Max_Size loop
            if End_Of_Line (User_Input_File) then
               --  Ada ate our newline, put it back on the end.
               Buf (Loc) := Ada.Characters.Wide_Wide_Latin_1.LF;
               Skip_Line (User_Input_File, 1);

            else
-- UCI CODES CHANGED:
--    The following codes are modified. Previous codes is commented out.
--    The purpose of doing this is to make it possible to set Temp_Line
--    in Ayacc-extension specific codes. Definitely, we can read the character
--    into the Temp_Line and then set the buf. But Temp_Line will only
--    be used in Ayacc-extension specific codes which makes this approach impossible.
               Get (User_Input_File, C);
               Buf (Loc) := C;
--               get(user_input_file, buf(loc));
            end if;

            Loc := Loc + 1;
            I := I + 1;
         end loop;
      else
         while I <= Max_Size loop
            if end_of_line then
               -- Ada ate our newline, put it back on the end.
               Buf (Loc) := Ada.Characters.Wide_Wide_Latin_1.LF;
               Skip_Line (1);

         else
--    The following codes are modified. Previous codes is commented out.
--    The purpose of doing this is to make it possible to set Temp_Line
--    in Ayacc-extension specific codes. Definitely, we can read the character
--    into the Temp_Line and then set the buf. But Temp_Line will only
--    be used in Ayacc-extension specific codes which makes this approach impossible.
           get(c);
           buf(loc) := c;
--         get(buf(loc));
         end if; 

         loc := loc + 1;
         i := i + 1;
      end loop;
    end if; -- for input file being standard input

    result := i - 1; 
    exception
        when END_ERROR => result := i - 1;
    -- when we hit EOF we need to set yy_eof_has_been_seen
    yy_eof_has_been_seen := true;
end YY_INPUT;

-- yy_get_next_buffer - try to read in new buffer
--
-- returns a code representing an action
--     EOB_ACT_LAST_MATCH - 
--     EOB_ACT_RESTART_SCAN - restart the scanner
--     EOB_ACT_END_OF_FILE - end of file

function yy_get_next_buffer return eob_action_type is
    dest : integer := 0;
    source : integer := yytext_ptr - 1; -- copy prev. char, too
    number_to_move : integer;
    ret_val : eob_action_type;
    num_to_read : integer;
begin    
    if ( yy_c_buf_p > yy_n_chars + 1 ) then
        raise NULL_IN_INPUT;
    end if;

    -- try to read more data

    -- first move last chars to start of buffer
    number_to_move := yy_c_buf_p - yytext_ptr;

    for i in 0..number_to_move - 1 loop
        yy_ch_buf.data (dest) := yy_ch_buf.data (source);
    dest := dest + 1;
    source := source + 1;
    end loop;
        
    if ( yy_eof_has_been_seen ) then
    -- don't do the read, it's not guaranteed to return an EOF,
    -- just force an EOF

    yy_n_chars := 0;
    else
    num_to_read := YY_BUF_SIZE - number_to_move - 1;

    if ( num_to_read > YY_READ_BUF_SIZE ) then
        num_to_read := YY_READ_BUF_SIZE;
        end if;

    -- read in more data
    YY_INPUT( yy_ch_buf.data (number_to_move..yy_ch_buf.data'last), yy_n_chars, num_to_read );
    end if;
    if ( yy_n_chars = 0 ) then
    if ( number_to_move = 1 ) then
        ret_val := EOB_ACT_END_OF_FILE;
    else
        ret_val := EOB_ACT_LAST_MATCH;
        end if;

    yy_eof_has_been_seen := true;
    else
    ret_val := EOB_ACT_RESTART_SCAN;
    end if;
    
    yy_n_chars := yy_n_chars + number_to_move;
    yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;
    yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;

    -- yytext begins at the second character in
    -- yy_ch_buf; the first character is the one which
    -- preceded it before reading in the latest buffer;
    -- it needs to be kept around in case it's a
    -- newline, so yy_get_previous_state() will have
    -- with '^' rules active

    yytext_ptr := 1;

    return ret_val;
end yy_get_next_buffer;

   procedure YYUnput (C : Wide_Wide_Character; YY_BP: in out Integer) is
      number_to_move : Integer;
      dest : integer;
      source : integer;
      tmp_yy_cp : integer;

   begin
      tmp_yy_cp := yy_c_buf_p;

      if ( tmp_yy_cp < 2 ) then
         -- need to shift things up to make room
         number_to_move := yy_n_chars + 2; -- +2 for EOB chars
         dest := YY_BUF_SIZE + 2;
         source := number_to_move;

         while ( source > 0 ) loop
            dest := dest - 1;
            source := source - 1;
            yy_ch_buf.data (dest) := yy_ch_buf.data (source);
         end loop;

         tmp_yy_cp := tmp_yy_cp + dest - source;
         yy_bp := yy_bp + dest - source;
         yy_n_chars := YY_BUF_SIZE;

         if ( tmp_yy_cp < 2 ) then
            raise PUSHBACK_OVERFLOW;
         end if;
      end if;

      if tmp_yy_cp > yy_bp
        and then yy_ch_buf.data (tmp_yy_cp-1) = Ada.Characters.Wide_Wide_Latin_1.LF
      then
         yy_ch_buf.data (tmp_yy_cp-2) := Ada.Characters.Wide_Wide_Latin_1.LF;
      end if;

      tmp_yy_cp := tmp_yy_cp - 1;
      yy_ch_buf.data (tmp_yy_cp) := c;

      --  Note:  this code is the text of YY_DO_BEFORE_ACTION, only
      --         here we get different yy_cp and yy_bp's
      yytext_ptr := yy_bp;
      yy_c_buf_p := tmp_yy_cp;
   end yyunput;

   procedure Unput (C : Wide_Wide_Character) is
   begin
      YYUnput (C, yy_bp);
   end Unput;

   function Input return Wide_Wide_Character is
      C     : Wide_Wide_Character;
      YY_CP : Integer := YY_C_Buf_P;

   begin
      if YY_CH_Buf.Data (YY_C_Buf_P) = YY_END_OF_BUFFER_CHAR then
         --  need more input

         yytext_ptr := yy_c_buf_p;
         yy_c_buf_p := yy_c_buf_p + 1;

         case yy_get_next_buffer is
         -- this code, unfortunately, is somewhat redundant with
         -- that above

            when EOB_ACT_END_OF_FILE =>
               if yywrap then
                  yy_c_buf_p := yytext_ptr;

                  return Ada.Characters.Wide_Wide_Latin_1.NUL;
               end if;

               yy_ch_buf.data (0) := Ada.Characters.Wide_Wide_Latin_1.LF;
               yy_n_chars := 1;
               yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;
               yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;
               yy_eof_has_been_seen := false;
               yy_c_buf_p := 1;
               yytext_ptr := yy_c_buf_p;

               return Input;

            when EOB_ACT_RESTART_SCAN =>
               yy_c_buf_p := yytext_ptr;

            when EOB_ACT_LAST_MATCH =>
               raise UNEXPECTED_LAST_MATCH;

            when others => null;
         end case;
      end if;

      c := yy_ch_buf.data (yy_c_buf_p);
      yy_c_buf_p := yy_c_buf_p + 1;

      return C;
   end Input;

   procedure Output (C : Wide_Wide_Character) is
   begin
      if Is_Open (User_Output_File) then
         Put (User_Output_File, C);

       else
         Put (C);
       end if;
   end Output;

   --  Default yywrap function - always treat EOF as an EOF

   function YYWrap return Boolean is
   begin
      return True;
   end YYWrap;

   procedure Open_Input (FName : String) is
   begin
      YY_Init := True;
      Open (User_Input_File, In_File, FName);
   end Open_Input;

   procedure Create_Output (FName : String := "") is
   begin
      if fname /= "" then
         Create (User_Output_File, Out_File, FName);
      end if;
   end Create_Output;

   procedure Close_Input is
   begin
      if Is_Open (User_Input_File) then
         Close (User_Input_File);
      end if;
   end Close_Input;

   procedure Close_Output is
   begin
      if Is_Open (User_Output_File) then
         Close (User_Output_File);
      end if;
   end Close_Output;


end scanner.IO;
