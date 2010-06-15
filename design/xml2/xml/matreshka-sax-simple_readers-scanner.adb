------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Matreshka.Internals.Unicode;
with Matreshka.SAX.Simple_Readers.Scanner.Tables;

package body Matreshka.SAX.Simple_Readers.Scanner is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.SAX.Simple_Readers.Scanner.Tables;

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer);
   pragma Inline (Enter_Start_Condition);
   --  Enter a start condition.

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer) is
   begin
      Self.Scanner_State.YY_Start_State := 1 + 2 * State;
   end Enter_Start_Condition;

   ---------------------------
   -- Push_Parameter_Entity --
   ---------------------------

   procedure Push_Parameter_Entity
    (Self : not null access SAX_Simple_Reader'Class;
     Data : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State := (Data, others => <>);
      Enter_Start_Condition (Self, DOCTYPE_DECL);
   end Push_Parameter_Entity;

   -----------
   -- YYLex --
   -----------

   function YYLex
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      procedure Enter_Start_Condition (State : Integer);
      pragma Inline (Enter_Start_Condition);
      --  Enter a start condition.

      ---------------------------
      -- Enter_Start_Condition --
      ---------------------------

      procedure Enter_Start_Condition (State : Integer) is
      begin
         Self.Scanner_State.YY_Start_State := 1 + 2 * State;
      end Enter_Start_Condition;

      YY_Action                  : Integer;
      YY_Base_Position           : Utf16_String_Index;
      YY_Base_Index              : Positive;
      YY_C                       : Integer;
      YY_Current_State           : Integer;
      YY_Current_Code            : Code_Point;
      YY_Last_Accepting_Position : Utf16_String_Index;
      YY_Last_Accepting_State    : Integer;
      YY_Next_Position           : Utf16_String_Index;
      YY_Last_Match_Position     : Utf16_String_Index;
      YY_Last_Match_Index        : Integer;
      YY_Last_Match_State        : Integer;

--
--         --  copy whatever the last rule matched to the standard output
--
--         procedure ECHO is
--         begin
--            if Ada.Wide_Wide_Text_IO.Is_Open (User_Output_File) then
--               Ada.Wide_Wide_Text_IO.Put (User_Output_File, YYText);
--
--            else
--               Ada.Wide_Wide_Text_IO.Put (YYText);
--            end if;
--         end ECHO;
--
--         --  action number for EOF rule of a given start state
--function YY_STATE_EOF(state : Integer) return Integer is
--begin
--     return YY_END_OF_BUFFER + state + 1;
--end YY_STATE_EOF;
--pragma Inline (YY_STATE_EOF);
--
---- return all but the first 'n' matched characters back to the input stream
--procedure yyless(n : Integer) is
--begin
--        yy_cp := yy_bp + n;
--        yy_c_buf_p := yy_cp;
--        YY_DO_BEFORE_ACTION; -- set up yytext again
--end yyless;
--pragma Inline (yyless);
--
--         --  yy_get_previous_state - get the state just before the EOB char
--         --  was reached
--
--         function YY_Get_Previous_State return YY_State_Type is
--            YY_Current_State : YY_State_Type;
--            YY_C             : Short;
--            Index            : Integer;
--            Code             : Wide_Wide_Character;
--begin
--   yy_current_state := yy_start;
--
--   declare
--      yy_cp : integer := yytext_ptr;
--
--   begin
--      while yy_cp < yy_c_buf_p loop
--         Index := yy_cp;
--
--         Next (yy_ch_buf, Index, Code);
--         yy_c := yy_ec(Code);
--         if (yy_accept(yy_current_state) /= 0 ) then
--            yy_last_accepting_state := yy_current_state;
--            yy_last_accepting_cpos := yy_cp;
--         end if;
--         while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
--            yy_current_state := yy_def(yy_current_state);
--            if yy_current_state >= YY_FIRST_TEMPLATE then
--               yy_c := yy_meta(yy_c);
--            end if;
--         end loop;
--         yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
--            yy_cp := Index;
--      end loop;
--   end;
--
--   return yy_current_state;
--end yy_get_previous_state;
--
--         Index : Integer;
--         Code  : Wide_Wide_Character;
--
   begin
<<new_file>>
--         --  This is where we enter upon encountering an end-of-file and
--         --  yywrap() indicating that we should continue processing
--
--    if ( yy_init ) then
--        if ( yy_start = 0 ) then
--            yy_start := 1;      -- first start state
--        end if;
--
--        -- we put in the '\n' and start reading from [1] so that an
--        -- initial match-at-newline will be true.
--
--        yy_ch_buf.data (0) := Ada.Characters.Wide_Wide_Latin_1.LF;
--        yy_n_chars := 1;
--
--        -- we always need two end-of-buffer characters.  The first causes
--        -- a transition to the end-of-buffer state.  The second causes
--        -- a jam in that state.
--
--        yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;
--        yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;
--
--        yy_eof_has_been_seen := false;
--
--        yytext_ptr := 1;
--        yy_c_buf_p := yytext_ptr;
--        yy_init := false;
--    end if; -- yy_init

      loop  --  Loops until end-of-data is reached.
--      yy_bp := yy_cp;
         YY_Base_Position := Self.Scanner_State.YY_Current_Position;
         YY_Base_Index    := Self.Scanner_State.YY_Current_Index;
--      yy_current_state := yy_start;
         YY_Current_State := Self.Scanner_State.YY_Start_State;
--
--        yy_cp := yy_c_buf_p;
--
--        -- yy_bp points to the position in yy_ch_buf of the start of the
--        -- current run.
         loop
            YY_Next_Position := Self.Scanner_State.YY_Current_Position;
            Unchecked_Next
             (Self.Scanner_State.Data.Value,
              YY_Next_Position,
              YY_Current_Code);
            YY_C :=
              YY_EC_Base
               (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);

            --  My section BEGIN

            if YY_Current_Code = 0 then
               --  XXX Current code is "end of buffer" mark. It is need to be
               --  reviewed and carefully implented without assumption that
               --  last character has zero code. But in general it is a case,
               --  character with zero code is prohibited and used as implicit
               --  terminator in the internal string representation.

               YY_Last_Match_Position := YY_Last_Accepting_Position;
--                 Self.Scanner_State.YY_Current_Position - 1;
               YY_Last_Match_Index := Self.Scanner_State.YY_Current_Index;
               YY_Last_Match_State := YY_Last_Accepting_State;
--
--               if YY_Last_Match_Position /= YY_Last_Accepting_Position then
--                  raise Program_Error with "still have data atfer";
--               end if;
            end if;

            --  My section END

            if YY_Accept (YY_Current_State) /= 0 then
               --  Accepting state reached, save for possible backtrack.

               YY_Last_Accepting_State    := YY_Current_State;
               YY_Last_Accepting_Position :=
                 Self.Scanner_State.YY_Current_Position;
            end if;

            while YY_Chk (YY_Base (YY_Current_State) + YY_C)
                    /= YY_Current_State
            loop
               YY_Current_State := YY_Def (YY_Current_State);

               if YY_Current_State >= YY_First_Template then
                  YY_C := YY_Meta (YY_C);
               end if;
            end loop;

            YY_Current_State := YY_Nxt (YY_Base (YY_Current_State) + YY_C);
            Self.Scanner_State.YY_Current_Position := YY_Next_Position;
            Self.Scanner_State.YY_Current_Index :=
              Self.Scanner_State.YY_Current_Index + 1;

            exit when YY_Current_State = YY_Jam_State;
         end loop;

         --  Return back to last accepting state.

         Self.Scanner_State.YY_Current_Position := YY_Last_Accepting_Position;
         YY_Current_State                       := YY_Last_Accepting_State;

   <<Next_Action>>
         YY_Action := YY_Accept (YY_Current_State);
--            YY_DO_BEFORE_ACTION;
--            YY_USER_ACTION;
--
--<<do_action>>   -- this label is used only to access EOF actions
         case YY_Action is
            when 0 =>  --  must backtrack
               raise Program_Error with "Backtrack is not implemented";
--               yy_cp := yy_last_accepting_cpos;
--               yy_current_state := yy_last_accepting_state;

--               goto next_action;


            when 1 =>
               Enter_Start_Condition (Self, XML_DECL);
            
               return Token_XML_Decl_Open;

            when 2 =>
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_PI_Close;

            when 3 =>
               --  All white spaces from rules [23], [24], [25], [32], [80] are ignored.
            
               null;

            when 4 =>
               --  Open tag of document type declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_DECL);
            
               return Token_Doctype_Decl_Open;

            when 5 =>
               --  Close tag of document type declaration, rule [28].
            
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_Close;

            when 6 =>
               --  Name of root element type, rule [28].
            
               return Token_Name;

            when 7 =>
               return Token_PE_Reference;

            when 8 =>
               --  All white spaces from rules [28] are ignored.
            
               null;

            when 9 =>
               --  XXX Unexpected character
            
               raise Program_Error with "Unexpected character in DOCTYPE_DECL";

            when 10 =>
               return Token_Entity_Decl_Open;

            when 11 =>
               --  Temporary rule to setup scanner transformation properly.
            
               null;
--            when 1 => 
----# line 4 "../xml_scanner.l"
--ECHO;
--            when YY_END_OF_BUFFER + INITIAL + 1 
--            =>
--               return End_Of_Input;
--
            when YY_End_Of_Buffer =>
               if Self.Scanner_State.Last_Match then
                  Self.Scanner_State.YY_Current_Position :=
                    YY_Last_Match_Position;
                  Self.Scanner_State.YY_Current_Index := YY_Last_Match_Index;
                  YY_Current_State := YY_Last_Match_State;
                  Self.Scanner_State.Last_Match := False;

                  --  XXX Need to be double checked for the scenario when
                  --  last accepted state is not at the last buffer's
                  --  position.

                  goto Next_Action;
--                     yy_c_buf_p := yy_n_chars;
--                     yy_current_state := yy_get_previous_state;
--
--                     yy_cp := yy_c_buf_p;
--                     yy_bp := yytext_ptr;
--
--                     goto next_action;

               else
                  if Self.Scanner_Stack.Is_Empty then
                     raise Program_Error with "End of data";

                  else
                     Self.Scanner_State := Self.Scanner_Stack.Last_Element;
                     Self.Scanner_Stack.Delete_Last;

                     goto New_File;
                  end if;
               end if;
--            when YY_END_OF_BUFFER =>
--               yytext_ptr := yy_bp;
--
--               case yy_get_next_buffer is
--                  when EOB_ACT_END_OF_FILE =>
--                     begin
--                        if yywrap then
--                           --  note: because we've taken care in
--                           --  yy_get_next_buffer() to have set up yytext,
--                           --  we can now set up yy_c_buf_p so that if some
--                           --  total hoser (like aflex itself) wants
--                           --  to call the scanner after we return the
--                           --  End_Of_Input, it'll still work - another
--                           --  End_Of_Input will get returned.
--
--                           yy_c_buf_p := yytext_ptr;
--                           yy_act := YY_STATE_EOF ((yy_start - 1) / 2);
--
--                           goto do_action;
--
--                        else
--                           --  start processing a new file
--
--                           yy_init := true;
--
--                           goto new_file;
--                        end if;
--                     end;
--
--                  when EOB_ACT_RESTART_SCAN =>
--                     yy_c_buf_p := yytext_ptr;
--
--                  when EOB_ACT_LAST_MATCH =>
--                     yy_c_buf_p := yy_n_chars;
--                     yy_current_state := yy_get_previous_state;
--
--                     yy_cp := yy_c_buf_p;
--                     yy_bp := yytext_ptr;
--
--                     goto next_action;
--               end case; -- case yy_get_next_buffer()

            when others =>
               raise Program_Error
                 with "Unhandled action"
                        & Integer'Image (YY_Action) & " in scanner";
         end case;
      end loop;  --  end of loop waiting for end of file
   end YYLex;

end Matreshka.SAX.Simple_Readers.Scanner;
