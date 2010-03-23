with scanner.DFA; use scanner.DFA;
with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Unicode;

package scanner.IO is
user_input_file : file_type;
user_output_file : file_type;
NULL_IN_INPUT : exception;
AFLEX_INTERNAL_ERROR : exception;
UNEXPECTED_LAST_MATCH : exception;
PUSHBACK_OVERFLOW : exception;
AFLEX_SCANNER_JAMMED : exception;
type eob_action_type is ( EOB_ACT_RESTART_SCAN,
                          EOB_ACT_END_OF_FILE,
                          EOB_ACT_LAST_MATCH );
YY_END_OF_BUFFER_CHAR :  constant Wide_Wide_character:=  Unicode.NUL;
yy_n_chars : integer;       -- number of characters read into yy_ch_buf

-- true when we've seen an EOF for the current input file
yy_eof_has_been_seen : boolean;


procedure YY_INPUT(buf: out unbounded_character_array; result: out integer; max_size: in integer);
function yy_get_next_buffer return eob_action_type;
procedure yyunput( c : wide_wide_character; yy_bp: in out integer );
procedure unput(c : wide_wide_character);
function input return wide_wide_character;
procedure output(c : wide_wide_character);
function yywrap return boolean;
procedure Open_Input(fname : in String);
procedure Close_Input;
procedure Create_Output(fname : in String := "");
procedure Close_Output;


end scanner.IO;
