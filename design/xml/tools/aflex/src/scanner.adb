with Ada.Integer_Text_IO;
with Ada.Strings.Unbounded;
with Ada.Text_IO;

with misc_defs, misc, sym;
use misc_defs;
with Unicode.Ucd;
with scanner.DFA; use scanner.DFA;
with scanner.IO; use scanner.IO;
package body scanner is
   use Ada.Integer_Text_IO;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Parser.Tokens;
   use Unicode;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

beglin : boolean := false;
i, bracelevel: integer;

function YYLex return Token is
    toktype : Token;
    didadef, indented_code : boolean;
    cclval : integer;
    nmdefptr : Unbounded_String;
    nmdef    : Unbounded_String;
    tmpbuf   : Unbounded_String;

procedure ACTION_ECHO is
begin
    Put (temp_action_file, YYText (1 .. YYLength));
end ACTION_ECHO;

procedure MARK_END_OF_PROLOG is
begin
     Put (temp_action_file, "%%%% end of prolog");
     New_Line (temp_action_file);
end MARK_END_OF_PROLOG;

   ---------------------
   -- Put_Back_String --
   ---------------------

   procedure Put_Back_String (Str : Unbounded_String; Start : Integer) is
   begin
      for J in reverse Start + 1 .. Length (Str) loop
         unput (Element (Str, J));
      end loop;
   end Put_Back_String;

function check_yylex_here return boolean is
begin
	return ( (yytext'length >= 2) and then
			((yytext(1) = '#') and (yytext(2) = '#')));
end check_yylex_here;

function YYLex return Token is
subtype short is Integer range -32768..32767;
    yy_act : Integer;
    yy_c   : short;

-- returned upon end-of-file
YY_END_TOK : constant Integer := 0;
YY_END_OF_BUFFER : constant := 84;
YY_Current_State : YY_State_Type;
   INITIAL : constant YY_State_Type := 0;
   SECT2 : constant YY_State_Type := 1;
   SECT2PROLOG : constant YY_State_Type := 2;
   SECT3 : constant YY_State_Type := 3;
   PICKUPDEF : constant YY_State_Type := 4;
   SC : constant YY_State_Type := 5;
   CARETISBOL : constant YY_State_Type := 6;
   NUM : constant YY_State_Type := 7;
   QUOTE : constant YY_State_Type := 8;
   FIRSTCCL : constant YY_State_Type := 9;
   CCL : constant YY_State_Type := 10;
   ACTION : constant YY_State_Type := 11;
   RECOVER : constant YY_State_Type := 12;
   BRACEERROR : constant YY_State_Type := 13;
   ACTION_STRING : constant YY_State_Type := 14;
yy_accept : constant array(0..307) of short :=
    (   0,
        0,    0,    0,    0,    0,    0,   82,   82,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
       84,   13,    6,   12,   10,    1,   11,   13,   13,   13,
        9,   40,   31,   32,   25,   40,   39,   23,   40,   40,
       40,   31,   21,   40,   40,   24,   83,   19,   82,   82,
       15,   14,   16,   46,   83,   42,   43,   45,   47,   61,
       62,   59,   58,   60,   48,   50,   49,   48,   54,   53,
       54,   54,   56,   56,   56,   57,   67,   72,   71,   73,
       67,   73,   68,   65,   66,   83,   17,   64,   63,   74,

       76,   77,   78,    6,   12,   10,    1,   11,    0,    0,
        2,    0,    7,    4,    5,    0,    9,   31,   32,    0,
       28,    0,    0,    0,   79,   79,   79,   79,   27,   26,
       27,    0,   31,   21,    0,    0,   35,    0,    0,   19,
       18,   82,   82,   15,   14,   44,   45,   58,   80,   80,
       80,   80,   51,   52,   55,   67,    0,   70,    0,   67,
       68,    0,   17,   74,   75,    0,    7,    0,    0,    3,
        0,   29,    0,   36,    0,    0,    0,   79,    0,    0,
       27,   27,   38,    0,    0,    0,   35,    0,   30,   80,
        0,    0,   67,   69,    0,    0,    8,    0,    0,    0,

        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,   22,    0,   22,
        0,   22,    0,    0,    4,    0,    0,    0,    0,   79,
        0,   80,   34,    0,    0,    0,   79,    0,   80,    0,
        0,    0,   79,    0,   80,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,   37,    0,   81,    0,    0,    0,    0,    0,

        0,    0,    0,    0,    0,    0,    0
    );

type Secondary_Stage_Index is range 0 .. 16#FF#;
type Primary_Stage_Index is range 0 .. 16#10FF#;
type Secondary_Stage_Array is array (Secondary_Stage_Index) of Short;
type Secondary_Stage_Array_Access is access constant Secondary_Stage_Array;
yy_ec_0 : aliased constant Secondary_Stage_Array :=
    (
        0,    1,    1,    1,    1,    1,    1,    1,    1,    2,
        3,    1,    4,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    5,    1,    6,    7,    8,    9,    1,   10,
       11,   11,   11,   11,   12,   13,   11,   14,   15,   15,
       15,   15,   15,   15,   15,   15,   15,   15,    1,    1,
       16,    1,   17,   11,    1,   23,   24,   25,   24,   26,
       27,   28,   29,   30,   28,   28,   28,   28,   31,   32,
       33,   28,   34,   35,   36,   37,   28,   38,   39,   40,
       28,   18,   19,   20,   21,   22,    1,   23,   24,   25,

       24,   26,   27,   28,   29,   30,   28,   28,   28,   28,
       31,   32,   33,   28,   34,   35,   36,   37,   28,   38,
       39,   40,   28,   41,   42,   43,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,

        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1
    );

yy_ec_1 : aliased constant Secondary_Stage_Array :=
    (
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,

        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,

        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1
    );

yy_ec_base : constant
  array (Primary_Stage_Index) of Secondary_Stage_Array_Access :=
   (     0 => yy_ec_0'Access, others => yy_ec_1'Access);

function yy_ec (Item : Character) return short is
   Code   : constant Integer := Character'Pos (Item);
   Group  : constant Primary_Stage_Index :=
     Primary_Stage_Index (Code / 256);
   Offset : constant Secondary_Stage_Index :=
     Secondary_Stage_Index (Code mod 256);

begin
   return yy_ec_base (Group) (Offset);
end yy_ec;
yy_meta : constant array(0..43) of short :=
    (   0,
        1,    2,    3,    2,    2,    4,    1,    1,    1,    5,
        1,    1,    6,    5,    6,    1,    1,    1,    7,    8,
        1,    9,    9,    9,    9,    9,    9,    9,    9,    9,
        9,    9,    9,    9,    9,    9,    9,    9,    9,    9,
        5,    1,   10
    );

yy_base : constant array(0..349) of short :=
    (   0,
        0,   43,   85,  126, 1156, 1155, 1154, 1153,  103,  107,
      168,    0, 1134, 1133,  110,  121,  135,  140,  209,  210,
      213,  221,  241,    0, 1150, 1149,  112,  113,  146,  282,
     1151, 1160,  115, 1160,    0,  287, 1160, 1147,  277, 1136,
        0, 1160,  291, 1160, 1160,   92, 1160, 1132, 1128,  202,
      333,  375, 1160, 1137, 1132, 1160, 1141,    0, 1140, 1160,
        0,  146, 1160, 1160, 1160, 1160, 1121,    0, 1160, 1160,
     1160, 1160, 1126, 1160, 1160, 1160, 1160,   77, 1160, 1160,
      272, 1127, 1160,    0,  282, 1160,    0, 1160, 1160,  147,
     1126, 1160,    0, 1160, 1160, 1135, 1160, 1160, 1160,    0,

     1160, 1160,    0,  158, 1160,    0,  318, 1160, 1124, 1133,
     1160, 1130,    0, 1098, 1160, 1130,    0,  379, 1160, 1129,
     1160, 1105,  195,  291, 1160, 1115, 1088,  370,    0, 1160,
      421, 1115,  463, 1160, 1114,  224,    0, 1123, 1122,    0,
     1160, 1121, 1160,    0,  216, 1160,    0, 1051, 1160, 1042,
      986,  375, 1160, 1160, 1160,    0,  288, 1160,    0,  505,
        0, 1014, 1160,    0, 1160, 1008,    0,  985, 1004, 1160,
      990, 1160,  960, 1160,  284,  367,  534,  968,  944,  388,
        0,    0, 1160,  963,  305,  314,    0,  972, 1160,  955,
      932,  454,    0, 1160,  561,  952, 1160,  911,  914,  310,

      372,  589,  917,  459,  928,  908,  907,  858,  472,  840,
      854,  294,  387,  602,  831,  477,  863, 1160,  840, 1160,
      839, 1160,  693,  560, 1160,  711,  452,  615,  691,  573,
      687,  621, 1160,  531,  634,  696,  640,  684,  647,  575,
      660,  670, 1160,  668, 1160,  571,  399,  665,  663,  587,
      656,  647,  471,  435,  517,  657,  616,  621,  597,  595,
      591,  573,  558,  541,  533,  526,  662,  613,  458,  453,
      439,  388,  632,  669,  397,  390,  386,  378,  600,  671,
      350,  314,  293,  304,  679,  681,  267,  267,  195,  201,
      687,  689, 1160,  192, 1160,  186,  692,  135,  100,  694,

       96,   77,  696,   74,   72,  700, 1160,  730,  740,  750,
      760,  770,  780,  790,  800,  810,  820,  830,  835,  844,
      854,  859,  868,  878,  888,  898,  908,  918,  928,  933,
      942,  952,  962,  972,  980,  985,  994, 1004, 1014, 1024,
     1034, 1044, 1054, 1063, 1073, 1083, 1093, 1103, 1113
    );

yy_def : constant array(0..349) of short :=
    (   0,
      307,  307,  308,  308,  309,  309,  310,  310,  311,  311,
      307,   11,  312,  312,  313,  313,  314,  314,  315,  315,
      316,  316,  307,   23,  317,  317,  312,  312,  318,  318,
      307,  307,  307,  307,  319,  307,  307,  320,  321,  307,
      322,  307,  307,  307,  307,  307,  307,  307,  323,  324,
      307,  325,  307,  307,  307,  307,  326,  327,  328,  307,
      329,  307,  307,  307,  307,  307,  307,  330,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  324,  307,  307,
      331,  332,  307,  333,  324,  307,  334,  307,  307,  335,
      334,  307,  336,  307,  307,  337,  307,  307,  307,  338,

      307,  307,  339,  307,  307,  319,  307,  307,  307,  320,
      307,  307,  340,  307,  307,  341,  322,  307,  307,  342,
      307,  307,  323,  323,  307,  307,  307,  307,  343,  307,
      307,  307,  325,  307,  307,  342,  344,  345,  326,  327,
      307,  328,  307,  329,  307,  307,  330,  307,  307,  307,
      307,  307,  307,  307,  307,  334,  335,  307,  335,  307,
      336,  337,  307,  338,  307,  346,  340,  307,  341,  307,
      342,  307,  307,  307,  323,  323,  323,  307,  307,  307,
      343,  131,  307,  307,  345,  342,  344,  345,  307,  307,
      307,  307,  160,  307,  160,  346,  307,  307,  307,  323,

      323,  323,  307,  307,  347,  348,  349,  307,  307,  307,
      307,  323,  323,  323,  307,  307,  347,  307,  348,  307,
      349,  307,  307,  307,  307,  307,  323,  323,  307,  307,
      307,  307,  307,  323,  323,  307,  307,  307,  307,  323,
      323,  307,  307,  307,  307,  323,  323,  307,  307,  323,
      307,  307,  323,  307,  307,  323,  307,  307,  307,  307,
      323,  323,  307,  307,  307,  307,  323,  323,  307,  307,
      307,  307,  323,  323,  307,  307,  307,  307,  323,  323,
      307,  307,  307,  307,  323,  323,  307,  307,  307,  307,
      323,  323,  307,  307,  307,  307,  323,  307,  307,  323,

      307,  307,  323,  307,  307,  323,    0,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307
    );

yy_nxt : constant array(0..1203) of short :=
    (   0,
       32,   33,   34,   33,   33,   32,   32,   32,   32,   32,
       32,   32,   32,   32,   32,   32,   32,   32,   32,   32,
       32,   35,   35,   35,   35,   35,   35,   35,   35,   35,
       35,   35,   35,   35,   35,   35,   35,   35,   35,   35,
       32,   32,   32,   32,   36,   37,   36,   36,   32,   38,
       32,   39,   32,   32,   32,   40,   32,   32,   32,   32,
       32,   32,   32,   32,   41,   41,   41,   41,   41,   41,
       41,   41,   41,   41,   41,   41,   41,   41,   41,   41,
       41,   41,   41,   32,   32,   32,   43,   44,   43,   43,
       45,  126,   46,  121,  121,   47,  121,  289,   47,  287,

       48,  305,   49,   50,   62,   63,   62,   62,   62,   63,
       62,   62,   71,  128,   98,   98,  104,  105,  104,  104,
      304,   72,  302,   71,   73,   51,   47,   52,   53,   52,
       52,   45,   72,   46,   54,   73,   47,   76,   55,   47,
       77,   48,   76,   49,   50,   77,   56,  145,  101,  145,
      145,  102,   74,   78,   99,   99,  158,  301,   78,  104,
      105,  104,  104,   74,  103,  159,   51,   47,   64,   64,
       65,   64,   64,   64,   64,   64,   64,   64,   64,   66,
       64,   64,   64,   64,   67,   64,   64,   64,   64,   68,
       68,   68,   68,   68,   68,   68,   68,   68,   68,   68,

       68,   68,   68,   68,   68,   68,   68,   68,   64,   64,
       64,   65,   65,  124,  174,   65,  126,  145,  299,  145,
      145,   80,   80,   65,  298,   84,  172,   81,   81,   82,
       82,   85,   86,   84,  127,  296,  186,  295,  128,   85,
       86,   87,   87,   88,   87,   87,   89,   87,   87,   87,
       90,   87,   87,   91,   92,   87,   87,   87,   87,   87,
       87,   87,   93,   93,   93,   93,   93,   93,   93,   93,
       93,   93,   93,   93,   93,   93,   93,   93,   93,   93,
       93,   94,   87,   95,  101,  113,  150,  102,  107,  108,
      107,  107,  118,  119,  118,  118,  126,  158,  200,  109,

      103,  294,  124,  174,  151,  175,  159,  189,  152,  293,
      123,  114,  124,  174,  127,  115,  172,  206,  128,  107,
      108,  107,  107,  176,  212,  290,  207,  177,  124,  174,
      109,  289,  120,  129,  129,  288,  129,  129,  129,  129,
      129,  129,  129,  129,  129,  129,  129,  130,  129,  129,
      129,  129,  129,  129,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  129,  129,  129,  133,  134,  133,  133,
      118,  119,  118,  118,  180,  124,  174,  135,  287,  192,
      124,  174,  180,  180,  180,  180,  180,  192,  192,  192,

      192,  192,  204,  284,  213,  124,  174,  201,  283,  227,
      204,  204,  204,  204,  204,  282,  136,  124,  174,  281,
      120,  181,  181,  278,  181,  181,  181,  181,  181,  181,
      181,  181,  181,  182,  181,  182,  181,  181,  181,  181,
      181,  181,  182,  182,  182,  182,  182,  182,  182,  182,
      182,  182,  182,  182,  182,  182,  182,  182,  182,  182,
      182,  181,  181,  183,  133,  134,  133,  133,  209,  257,
      124,  174,  258,  216,  277,  135,  209,  209,  209,  209,
      209,  216,  216,  216,  216,  216,  224,  234,  276,  124,
      174,  230,  256,  275,  224,  224,  224,  224,  224,  230,

      230,  230,  230,  230,  136,  193,  193,  194,  193,  193,
      195,  193,  193,  193,  195,  193,  193,  193,  195,  193,
      193,  193,  193,  193,  193,  193,  195,  195,  195,  195,
      195,  195,  195,  195,  195,  195,  195,  195,  195,  195,
      195,  195,  195,  195,  195,  195,  193,  195,  202,  124,
      174,  259,  124,  174,  260,  272,  202,  202,  202,  202,
      202,  195,  195,  271,  195,  195,  240,  195,  195,  195,
      270,  195,  195,  195,  232,  195,  195,  195,  195,  195,
      195,  195,  232,  232,  232,  232,  232,  237,  269,  124,
      174,  124,  174,  124,  174,  237,  237,  237,  237,  237,

      246,  268,  195,  214,  250,  124,  174,  124,  174,  124,
      174,  214,  214,  214,  214,  214,  228,  253,  124,  174,
      124,  174,  285,  266,  228,  228,  228,  228,  228,  235,
      267,  124,  174,  124,  174,  239,  265,  235,  235,  235,
      235,  235,  274,  239,  239,  239,  239,  239,  241,  264,
      124,  174,  124,  174,  243,  263,  241,  241,  241,  241,
      241,  245,  243,  243,  243,  243,  243,  279,  255,  245,
      245,  245,  245,  245,  247,  124,  174,  254,  124,  174,
      124,  174,  247,  247,  247,  247,  247,  124,  174,  124,
      174,  261,  273,  252,  262,  251,  286,  124,  174,  124,

      174,  249,  292,  248,  280,  124,  174,  124,  174,  244,
      124,  174,  124,  174,  124,  174,  303,  291,  124,  174,
      306,  242,  238,  297,  300,  291,  236,  233,  231,  212,
       42,   42,   42,   42,   42,   42,   42,   42,   42,   42,
       57,   57,   57,   57,   57,   57,   57,   57,   57,   57,
       59,   59,   59,   59,   59,   59,   59,   59,   59,   59,
       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
       65,   65,   65,   65,   65,   65,   65,   65,   65,   65,
       70,   70,   70,   70,   70,   70,   70,   70,   70,   70,
       75,   75,   75,   75,   75,   75,   75,   75,   75,   75,

       79,   79,   79,   79,   79,   79,   79,   79,   79,   79,
       83,   83,   83,   83,   83,   83,   83,   83,   83,   83,
       96,   96,   96,   96,   96,   96,   96,   96,   96,   96,
      100,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      106,  222,  220,  106,  110,  110,  110,  110,  110,  110,
      110,  110,  110,  110,  112,  112,  112,  112,  112,  112,
      112,  112,  112,  112,  117,  218,  229,  117,  123,  123,
      226,  123,  123,  123,  123,  225,  123,  123,  125,  125,
      223,  125,  125,  125,  125,  125,  125,  125,  132,  132,
      132,  132,  132,  132,  132,  132,  132,  132,  139,  139,

      139,  139,  139,  139,  139,  139,  139,  139,  141,  222,
      220,  141,  141,  141,  141,  141,  141,  141,  142,  142,
      142,  142,  142,  142,  142,  142,  142,  142,  144,  144,
      218,  144,  144,  144,  144,  144,  144,  144,  147,  215,
      211,  147,  149,  149,  210,  149,  149,  149,  149,  149,
      149,  149,  153,  153,  197,  153,  153,  153,  153,  153,
      153,  153,  155,  155,  208,  155,  155,  155,  155,  149,
      155,  155,  156,  156,  189,  205,  203,  156,  156,  156,
      157,  157,  125,  157,  157,  157,  157,  157,  157,  157,
      161,  199,  172,  161,  162,  162,  162,  162,  162,  162,

      162,  162,  162,  162,  164,  164,  170,  198,  164,  164,
      197,  164,  164,  164,  165,  165,  163,  165,  165,  165,
      165,  165,  165,  165,  167,  167,  191,  167,  167,  167,
      167,  167,  167,  167,  169,  169,  169,  169,  169,  169,
      169,  169,  169,  169,  171,  171,  171,  171,  171,  171,
      171,  171,  171,  171,  181,  181,  190,  181,  181,  181,
      181,  181,  181,  187,  187,  148,  187,  187,  187,  187,
      187,  187,  187,  188,  188,  188,  188,  188,  188,  188,
      188,  188,  188,  196,  196,  196,  196,  196,  196,  196,
      196,  196,  196,  217,  217,  217,  217,  217,  217,  217,

      217,  217,  217,  219,  219,  219,  219,  219,  219,  219,
      219,  219,  219,  221,  221,  221,  221,  221,  221,  221,
      221,  221,  221,  143,  140,  189,  185,  184,  179,  178,
      173,  172,  170,  168,  166,  111,  116,  163,  160,  154,
      148,  146,  143,  140,  138,  137,  124,  122,  116,  111,
      307,   97,   97,   69,   69,   60,   60,   58,   58,   31,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,

      307,  307,  307
    );

yy_chk : constant array(0..1203) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    3,    3,    3,    3,
        3,   78,    3,   46,   46,    3,   46,  305,    3,  304,

        3,  302,    3,    3,    9,    9,    9,    9,   10,   10,
       10,   10,   15,   78,   27,   28,   33,   33,   33,   33,
      301,   15,  299,   16,   15,    3,    3,    4,    4,    4,
        4,    4,   16,    4,    4,   16,    4,   17,    4,    4,
       17,    4,   18,    4,    4,   18,    4,   62,   29,   62,
       62,   29,   15,   17,   27,   28,   90,  298,   18,  104,
      104,  104,  104,   16,   29,   90,    4,    4,   11,   11,
       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,

       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
       11,   19,   20,  123,  123,   21,   50,  145,  296,  145,
      145,   19,   20,   22,  294,   21,  136,   19,   20,   19,
       20,   21,   21,   22,   50,  290,  136,  289,   50,   22,
       22,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   30,   39,   81,   30,   36,   36,
       36,   36,   43,   43,   43,   43,   85,  157,  175,   36,

       30,  288,  175,  175,   81,  124,  157,  185,   81,  287,
      124,   39,  212,  212,   85,   39,  186,  185,   85,  107,
      107,  107,  107,  124,  200,  284,  186,  124,  200,  200,
      107,  283,   43,   51,   51,  282,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   52,   52,   52,   52,
      118,  118,  118,  118,  128,  176,  176,   52,  281,  152,
      201,  201,  128,  128,  128,  128,  128,  152,  152,  152,

      152,  152,  180,  278,  201,  213,  213,  176,  277,  213,
      180,  180,  180,  180,  180,  276,   52,  247,  247,  275,
      118,  131,  131,  272,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  133,  133,  133,  133,  192,  254,
      227,  227,  254,  204,  271,  133,  192,  192,  192,  192,
      192,  204,  204,  204,  204,  204,  209,  227,  270,  253,
      253,  216,  253,  269,  209,  209,  209,  209,  209,  216,

      216,  216,  216,  216,  133,  160,  160,  160,  160,  160,
      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
      160,  160,  160,  160,  160,  160,  160,  160,  177,  234,
      234,  255,  177,  177,  255,  266,  177,  177,  177,  177,
      177,  195,  195,  265,  195,  195,  234,  195,  195,  195,
      264,  195,  195,  195,  224,  195,  195,  195,  195,  195,
      195,  195,  224,  224,  224,  224,  224,  230,  263,  246,
      246,  262,  262,  240,  240,  230,  230,  230,  230,  230,

      240,  262,  195,  202,  246,  250,  250,  202,  202,  261,
      261,  202,  202,  202,  202,  202,  214,  250,  279,  279,
      214,  214,  279,  260,  214,  214,  214,  214,  214,  228,
      261,  268,  268,  228,  228,  232,  259,  228,  228,  228,
      228,  228,  268,  232,  232,  232,  232,  232,  235,  258,
      273,  273,  235,  235,  237,  257,  235,  235,  235,  235,
      235,  239,  237,  237,  237,  237,  237,  273,  252,  239,
      239,  239,  239,  239,  241,  256,  256,  251,  241,  241,
      267,  267,  241,  241,  241,  241,  241,  274,  274,  280,
      280,  256,  267,  249,  256,  248,  280,  285,  285,  286,

      286,  244,  286,  242,  274,  291,  291,  292,  292,  238,
      297,  297,  300,  300,  303,  303,  300,  285,  306,  306,
      303,  236,  231,  292,  297,  306,  229,  226,  223,  291,
      308,  308,  308,  308,  308,  308,  308,  308,  308,  308,
      309,  309,  309,  309,  309,  309,  309,  309,  309,  309,
      310,  310,  310,  310,  310,  310,  310,  310,  310,  310,
      311,  311,  311,  311,  311,  311,  311,  311,  311,  311,
      312,  312,  312,  312,  312,  312,  312,  312,  312,  312,
      313,  313,  313,  313,  313,  313,  313,  313,  313,  313,
      314,  314,  314,  314,  314,  314,  314,  314,  314,  314,

      315,  315,  315,  315,  315,  315,  315,  315,  315,  315,
      316,  316,  316,  316,  316,  316,  316,  316,  316,  316,
      317,  317,  317,  317,  317,  317,  317,  317,  317,  317,
      318,  318,  318,  318,  318,  318,  318,  318,  318,  318,
      319,  221,  219,  319,  320,  320,  320,  320,  320,  320,
      320,  320,  320,  320,  321,  321,  321,  321,  321,  321,
      321,  321,  321,  321,  322,  217,  215,  322,  323,  323,
      211,  323,  323,  323,  323,  210,  323,  323,  324,  324,
      208,  324,  324,  324,  324,  324,  324,  324,  325,  325,
      325,  325,  325,  325,  325,  325,  325,  325,  326,  326,

      326,  326,  326,  326,  326,  326,  326,  326,  327,  207,
      206,  327,  327,  327,  327,  327,  327,  327,  328,  328,
      328,  328,  328,  328,  328,  328,  328,  328,  329,  329,
      205,  329,  329,  329,  329,  329,  329,  329,  330,  203,
      199,  330,  331,  331,  198,  331,  331,  331,  331,  331,
      331,  331,  332,  332,  196,  332,  332,  332,  332,  332,
      332,  332,  333,  333,  191,  333,  333,  333,  333,  190,
      333,  333,  334,  334,  188,  184,  179,  334,  334,  334,
      335,  335,  178,  335,  335,  335,  335,  335,  335,  335,
      336,  173,  171,  336,  337,  337,  337,  337,  337,  337,

      337,  337,  337,  337,  338,  338,  169,  168,  338,  338,
      166,  338,  338,  338,  339,  339,  162,  339,  339,  339,
      339,  339,  339,  339,  340,  340,  151,  340,  340,  340,
      340,  340,  340,  340,  341,  341,  341,  341,  341,  341,
      341,  341,  341,  341,  342,  342,  342,  342,  342,  342,
      342,  342,  342,  342,  343,  343,  150,  343,  343,  343,
      343,  343,  343,  344,  344,  148,  344,  344,  344,  344,
      344,  344,  344,  345,  345,  345,  345,  345,  345,  345,
      345,  345,  345,  346,  346,  346,  346,  346,  346,  346,
      346,  346,  346,  347,  347,  347,  347,  347,  347,  347,

      347,  347,  347,  348,  348,  348,  348,  348,  348,  348,
      348,  348,  348,  349,  349,  349,  349,  349,  349,  349,
      349,  349,  349,  142,  139,  138,  135,  132,  127,  126,
      122,  120,  116,  114,  112,  110,  109,   96,   91,   82,
       73,   67,   59,   57,   55,   54,   49,   48,   40,   38,
       31,   26,   25,   14,   13,    8,    7,    6,    5,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,
      307,  307,  307,  307,  307,  307,  307,  307,  307,  307,

      307,  307,  307
    );


-- copy whatever the last rule matched to the standard output

procedure ECHO is
begin
   if Ada.Text_IO.Is_Open (User_Output_File) then
     Ada.Text_IO.Put (User_Output_File, YYText);
   else
     Ada.Text_IO.Put (yytext);
   end if;
end ECHO;
pragma Inline (ECHO);

-- enter a start condition.
-- Using procedure requires a () after the ENTER, but makes everything
-- much neater.

procedure ENTER( state : Integer ) is
begin
     yy_start := 1 + 2 * state;
end ENTER;
pragma Inline (ENTER);

-- action number for EOF rule of a given start state
function YY_STATE_EOF(state : Integer) return Integer is
begin
     return YY_END_OF_BUFFER + state + 1;
end YY_STATE_EOF;
pragma Inline (YY_STATE_EOF);

-- return all but the first 'n' matched characters back to the input stream
procedure yyless(n : Integer) is
begin
        yy_cp := yy_bp + n;
        yy_c_buf_p := yy_cp;
        YY_DO_BEFORE_ACTION; -- set up yytext again
end yyless;
pragma Inline (yyless);

-- redefine this if you have something you want each time.
procedure YY_USER_ACTION is
begin
        null;
end;
pragma Inline (YY_USER_ACTION);

-- yy_get_previous_state - get the state just before the EOB char was reached

function yy_get_previous_state return YY_State_Type is
    yy_current_state : YY_State_Type;
    yy_c : short;
   Index : Integer;
   Code  : Character;
    yy_bp : integer := yytext_ptr;
begin
    yy_current_state := yy_start;
    if Previous (yy_ch_buf, yy_bp) = ASCII.LF then
	yy_current_state := yy_current_state + 1;
    end if;

   declare
      yy_cp : integer := yytext_ptr;

   begin
      while yy_cp < yy_c_buf_p loop
         Index := yy_cp;

	Index := yy_cp;
	Next (yy_ch_buf, Index, Code);
	yy_c := yy_ec(Code);
	if (yy_accept(yy_current_state) /= 0 ) then
	    yy_last_accepting_state := yy_current_state;
	    yy_last_accepting_cpos := yy_cp;
	end if;
	while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
	    yy_current_state := yy_def(yy_current_state);
	    if ( yy_current_state >= 308 ) then
		yy_c := yy_meta(yy_c);
	    end if;
	end loop;
	yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
         yy_cp := Index;
      end loop;
   end;

    return yy_current_state;
end yy_get_previous_state;

procedure yyrestart( input_file : file_type ) is
begin
   Open_Input (Ada.Text_IO.Name (Input_File));
end yyrestart;
pragma Inline (yyrestart);

   Index : Integer;
   Code  : Character;

begin -- of YYLex
<<new_file>>
        -- this is where we enter upon encountering an end-of-file and
        -- yywrap() indicating that we should continue processing

    if ( yy_init ) then
        if ( yy_start = 0 ) then
            yy_start := 1;      -- first start state
        end if;

        -- we put in the '\n' and start reading from [1] so that an
        -- initial match-at-newline will be true.

        yy_ch_buf.data (0) := ASCII.LF;
        yy_n_chars := 1;

        -- we always need two end-of-buffer characters.  The first causes
        -- a transition to the end-of-buffer state.  The second causes
        -- a jam in that state.

        yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;
        yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;

        yy_eof_has_been_seen := false;

        yytext_ptr := 1;
        yy_c_buf_p := yytext_ptr;
        yy_init := false;
    end if; -- yy_init

    loop                -- loops until end-of-file is reached


        yy_cp := yy_c_buf_p;

        -- yy_bp points to the position in yy_ch_buf of the start of the
        -- current run.
	yy_bp := yy_cp;
	yy_current_state := yy_start;
	if Previous (yy_ch_buf, yy_bp) = ASCII.LF then
	    yy_current_state := yy_current_state + 1;
	end if;
	loop
		Index := yy_cp;
		Next (yy_ch_buf, Index, Code);
		yy_c := yy_ec(Code);
		if (yy_accept(yy_current_state) /= 0 ) then
		    yy_last_accepting_state := yy_current_state;
		    yy_last_accepting_cpos := yy_cp;
		end if;
		while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
		    yy_current_state := yy_def(yy_current_state);
		    if ( yy_current_state >= 308 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := Index;
if ( yy_current_state = 307 ) then
    exit;
end if;
	end loop;
	yy_cp := yy_last_accepting_cpos;
	yy_current_state := yy_last_accepting_state;

<<next_action>>
	    yy_act := yy_accept(yy_current_state);
            YY_DO_BEFORE_ACTION;
            YY_USER_ACTION;

        if aflex_debug then  -- output acceptance info. for (-d) debug mode
            ada.text_io.put( Standard_Error, "--accepting rule #" );
            ada.text_io.put( Standard_Error, INTEGER'IMAGE(yy_act) );
            ada.text_io.put_line( Standard_Error, "(""" & yytext & """)");
        end if;


<<do_action>>   -- this label is used only to access EOF actions
            case yy_act is
		when 0 => -- must backtrack
		yy_cp := yy_last_accepting_cpos;
		yy_current_state := yy_last_accepting_state;
		goto next_action;



when 1 => 
--# line 47 "scanner.l"
 indented_code := true; 

when 2 => 
--# line 48 "scanner.l"
 linenum := linenum + 1; ECHO;
				-- treat as a comment;
			

when 3 => 
--# line 51 "scanner.l"
 linenum := linenum + 1; ECHO; 

when 4 => 
--# line 52 "scanner.l"
 return ( SCDECL ); 

when 5 => 
--# line 53 "scanner.l"
 return ( XSCDECL ); 

when 6 => 
--# line 55 "scanner.l"
 return ( WHITESPACE ); 

when 7 => 
--# line 57 "scanner.l"

			sectnum := 2;
			misc.line_directive_out;
			ENTER(SECT2PROLOG);
			return ( SECTEND );
			

when 8 => 
--# line 64 "scanner.l"

			Put (Standard_Error, "old-style lex command at line ");
			Put (Standard_Error, Linenum);
			Put (Standard_Error, "ignored:");
			New_Line (Standard_Error );
			Put (Standard_Error, ASCII.HT );
			Put (Standard_Error, YYText (1 .. YYLength));
			Linenum := Linenum + 1;
			

when 9 => 
--# line 74 "scanner.l"

			nmstr := +YYText (1 .. YYLength);
			didadef := false;
			ENTER(PICKUPDEF);
			

when 10 => 
--# line 80 "scanner.l"
 nmstr := +YYText (1 .. YYLength);
			  return NAME;
			

when 11 => 
--# line 83 "scanner.l"
 linenum := linenum + 1;
			  -- allows blank lines in section 1;
			

when 12 => 
--# line 86 "scanner.l"
 linenum := linenum + 1; return Newline; 

when 13 => 
--# line 87 "scanner.l"
 misc.synerr( "illegal character" );ENTER(RECOVER);

when 14 => 
--# line 89 "scanner.l"
 null;
			  -- separates name and definition;
			

when 15 => 
--# line 93 "scanner.l"

			nmdef := +YYText (1 .. YYLength);

			i := length (nmdef);
			while i >= 1 loop
			    if Element (nmdef, i) /= ' '
                              and Element (nmdef, i) /= ASCII.HT
                            then
				exit;
			    end if;
			    i := i - 1;
			end loop;

                        sym.ndinstal (nmstr, Unbounded_Slice (nmdef, 1, i));
			didadef := true;
			

when 16 => 
--# line 110 "scanner.l"

			if ( not didadef ) then
			    misc.synerr( "incomplete name definition" );
			end if;
			ENTER(0);
			linenum := linenum + 1;
			

when 17 => 
--# line 118 "scanner.l"
 linenum := linenum + 1;
			  ENTER(0);
			  nmstr := +YYText (1 .. YYLength);
			  return NAME;
			

when 18 => 
yy_cp := yy_cp - 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 124 "scanner.l"

			linenum := linenum + 1;
			ACTION_ECHO;
			MARK_END_OF_PROLOG;
			ENTER(SECT2);
			

when 19 => 
--# line 131 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when YY_END_OF_BUFFER +SECT2PROLOG + 1 
 =>
--# line 133 "scanner.l"
 MARK_END_OF_PROLOG;
			  return End_Of_Input;
			

when 21 => 
--# line 137 "scanner.l"
 linenum := linenum + 1;
			  -- allow blank lines in sect2;

			-- this rule matches indented lines which
			-- are not comments.
when 22 => 
--# line 142 "scanner.l"

			misc.synerr("indented code found outside of action");
			linenum := linenum + 1;
			

when 23 => 
--# line 147 "scanner.l"
 ENTER(SC); return ( '<' ); 

when 24 => 
--# line 148 "scanner.l"
 return ( '^' ); 

when 25 => 
--# line 149 "scanner.l"
 ENTER(QUOTE); return ( '"' ); 

when 26 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 150 "scanner.l"
 ENTER(NUM); return ( '{' ); 

when 27 => 
--# line 151 "scanner.l"
 ENTER(BRACEERROR); 

when 28 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 152 "scanner.l"
 return ( '$' ); 

when 29 => 
--# line 154 "scanner.l"
 continued_action := true;
			  linenum := linenum + 1;
			  return Newline;
			

when 30 => 
--# line 159 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 31 => 
--# line 161 "scanner.l"

			-- this rule is separate from the one below because
			-- otherwise we get variable trailing context, so
			-- we can't build the scanner using -f,F

			bracelevel := 0;
			continued_action := false;
			ENTER(ACTION);
			return Newline;
			

when 32 => 
yy_cp := yy_cp - 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 172 "scanner.l"

			bracelevel := 0;
			continued_action := false;
			ENTER(ACTION);
			return Newline;
			

when 33 => 
--# line 179 "scanner.l"
 linenum := linenum + 1; return Newline; 

when 34 => 
--# line 181 "scanner.l"
 return ( EOF_OP ); 

when 35 => 
--# line 183 "scanner.l"

			sectnum := 3;
			ENTER(SECT3);
			return ( End_Of_Input );
			-- to stop the parser
			

when 36 => 
--# line 190 "scanner.l"


			nmstr := +YYText (1 .. YYLength);

			-- check to see if we've already encountered this ccl
                        cclval := sym.ccllookup (nmstr);
			if ( cclval /= 0 ) then
			    yylval := cclval;
			    cclreuse := cclreuse + 1;
			    return ( PREVCCL );
			else
			    -- we fudge a bit.  We know that this ccl will
			    -- soon be numbered as lastccl + 1 by cclinit
			    sym.cclinstal (nmstr, lastccl + 1);

			    -- push back everything but the leading bracket
			    -- so the ccl can be rescanned

			    Put_Back_String (nmstr, 1);

			    ENTER(FIRSTCCL);
			    return ( '[' );
			end if;
			

when 37 => 
--# line 215 "scanner.l"

			declare
			   Image : constant String := YYText;

			begin
			   YYLVal :=
			     Unicode.Ucd.Boolean_Properties'Pos
			      (Unicode.Ucd.Boolean_Properties'Value
			        (Image (Image'First + 3 .. Image'Last - 1))) + 1;

                           if Image (Image'First + 1) = 'P' then
			      YYLVal := -YYLVal;
			   end if;

			   return PROP;
			end;
			

when 38 => 
--# line 233 "scanner.l"

			nmstr := +YYText (1 .. YYLength);
			-- chop leading and trailing brace
			tmpbuf := Unbounded_Slice (+yytext (1 .. YYLength),
							2, YYLength - 1);

			nmdefptr := sym.ndlookup (tmpbuf);
			if nmdefptr = Null_Unbounded_String then
			    misc.synerr( "undefined {name}" );
			else
			    -- push back name surrounded by ()'s
			    unput(')');
			    Put_Back_String (nmdefptr, 0);
			    unput('(');
			end if;
			

when 39 => 
--# line 250 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  case Element (tmpbuf, 1) is
				when '/' => return '/';
				when '|' => return '|';
				when '*' => return '*';
				when '+' => return '+';
				when '?' => return '?';
				when '.' => return '.';
				when '(' => return '(';
				when ')' => return ')';
				when others =>
					Misc.Aflex_Error ("error in aflex case");
			  end case;
			

when 40 => 
--# line 264 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 41 => 
--# line 268 "scanner.l"
 linenum := linenum + 1; return Newline; 

when 42 => 
--# line 271 "scanner.l"
 return ( ',' ); 

when 43 => 
--# line 272 "scanner.l"
 ENTER(SECT2); return ( '>' ); 

when 44 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 273 "scanner.l"
 ENTER(CARETISBOL); return ( '>' ); 

when 45 => 
--# line 274 "scanner.l"
 nmstr := +YYText (1 .. YYLength);
			  return NAME;
			

when 46 => 
--# line 277 "scanner.l"
 misc.synerr( "bad start condition name" ); 

when 47 => 
--# line 279 "scanner.l"
 ENTER(SECT2); return ( '^' ); 

when 48 => 
--# line 282 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 49 => 
--# line 286 "scanner.l"
 ENTER(SECT2); return ( '"' ); 

when 50 => 
--# line 288 "scanner.l"

			misc.synerr( "missing quote" );
			ENTER(SECT2);
			linenum := linenum + 1;
			return ( '"' );
			

when 51 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 296 "scanner.l"
 ENTER(CCL); return ( '^' ); 

when 52 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 297 "scanner.l"
 return ( '^' ); 

when 53 => 
--# line 298 "scanner.l"
 ENTER(CCL); yylval := CHARACTER'POS('-'); return ( CHAR ); 

when 54 => 
--# line 299 "scanner.l"
 ENTER(CCL);
			  tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 55 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 305 "scanner.l"
 return ( '-' ); 

when 56 => 
--# line 306 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 57 => 
--# line 310 "scanner.l"
 ENTER(SECT2); return ( ']' ); 

when 58 => 
--# line 313 "scanner.l"

			yylval := misc.myctoi (+YYText (1 .. YYLength));
			return ( NUMBER );
			

when 59 => 
--# line 318 "scanner.l"
 return ( ',' ); 

when 60 => 
--# line 319 "scanner.l"
 ENTER(SECT2); return ( '}' ); 

when 61 => 
--# line 321 "scanner.l"

			misc.synerr( "bad character inside {}'s" );
			ENTER(SECT2);
			return ( '}' );
			

when 62 => 
--# line 327 "scanner.l"

			misc.synerr( "missing }" );
			ENTER(SECT2);
			linenum := linenum + 1;
			return ( '}' );
			

when 63 => 
--# line 335 "scanner.l"
 misc.synerr( "bad name in {}'s" ); ENTER(SECT2); 

when 64 => 
--# line 336 "scanner.l"
 misc.synerr( "missing }" );
			  linenum := linenum + 1;
			  ENTER(SECT2);
			

when 65 => 
--# line 341 "scanner.l"
 bracelevel := bracelevel + 1; 

when 66 => 
--# line 342 "scanner.l"
 bracelevel := bracelevel - 1; 

when 67 => 
--# line 343 "scanner.l"
 ACTION_ECHO; 

when 68 => 
--# line 344 "scanner.l"
 ACTION_ECHO; 

when 69 => 
--# line 345 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 70 => 
--# line 346 "scanner.l"
 ACTION_ECHO;
				  -- character constant;
			

when 71 => 
--# line 350 "scanner.l"
 ACTION_ECHO; ENTER(ACTION_STRING); 

when 72 => 
--# line 352 "scanner.l"

			linenum := linenum + 1;
			ACTION_ECHO;
			if ( bracelevel = 0 ) then
			    New_Line (Temp_Action_File);
			    ENTER(SECT2);
	                end if;
			

when 73 => 
--# line 360 "scanner.l"
 ACTION_ECHO; 

when 74 => 
--# line 362 "scanner.l"
 ACTION_ECHO; 

when 75 => 
--# line 363 "scanner.l"
 ACTION_ECHO; 

when 76 => 
--# line 364 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 77 => 
--# line 365 "scanner.l"
 ACTION_ECHO; ENTER(ACTION); 

when 78 => 
--# line 366 "scanner.l"
 ACTION_ECHO; 

when 79 => 
--# line 369 "scanner.l"

			yylval :=
                          Unicode_Character'Pos
                           (Misc.MYESC (+YYText (1 .. YYLength)));

			return CHAR;
			

when 80 => 
--# line 377 "scanner.l"

			yylval :=
                          Unicode_Character'Pos
                           (misc.myesc (+YYText (1 .. YYLength)));
			ENTER(CCL);
			return ( CHAR );
			

when 81 => 
--# line 385 "scanner.l"

			declare
			   Image : constant String := YYText;

			begin
			   YYLVal :=
			     Unicode.Ucd.Boolean_Properties'Pos
			      (Unicode.Ucd.Boolean_Properties'Value
			        (Image (Image'First + 3 .. Image'Last - 1))) + 1;

                           if Image (Image'First + 1) = 'P' then
			      YYLVal := -YYLVal;
			   end if;

			   ENTER(CCL);

			   return PROP;
			end;
			

when 82 => 
--# line 406 "scanner.l"
 if ( check_yylex_here ) then
				return End_Of_Input;
			  else
				ECHO;
			  end if;
			

when 83 => 
--# line 412 "scanner.l"
raise AFLEX_SCANNER_JAMMED;
when YY_END_OF_BUFFER + INITIAL + 1 |
YY_END_OF_BUFFER + SECT2 + 1 |
YY_END_OF_BUFFER + SECT3 + 1 |
YY_END_OF_BUFFER + PICKUPDEF + 1 |
YY_END_OF_BUFFER + SC + 1 |
YY_END_OF_BUFFER + CARETISBOL + 1 |
YY_END_OF_BUFFER + NUM + 1 |
YY_END_OF_BUFFER + QUOTE + 1 |
YY_END_OF_BUFFER + FIRSTCCL + 1 |
YY_END_OF_BUFFER + CCL + 1 |
YY_END_OF_BUFFER + ACTION + 1 |
YY_END_OF_BUFFER + RECOVER + 1 |
YY_END_OF_BUFFER + BRACEERROR + 1 |
YY_END_OF_BUFFER + ACTION_STRING + 1 => 
    return End_Of_Input;

                when YY_END_OF_BUFFER =>
                    yytext_ptr := yy_bp;

                    case yy_get_next_buffer is
                        when EOB_ACT_END_OF_FILE =>
                            begin
                            if ( yywrap ) then
                                -- note: because we've taken care in
                                -- yy_get_next_buffer() to have set up yytext,
                                -- we can now set up yy_c_buf_p so that if some
                                -- total hoser (like aflex itself) wants
                                -- to call the scanner after we return the
                                -- End_Of_Input, it'll still work - another
                                -- End_Of_Input will get returned.

                                yy_c_buf_p := yytext_ptr;

                                yy_act := YY_STATE_EOF((yy_start - 1) / 2);

                                goto do_action;
                            else
                                --  start processing a new file
                                yy_init := true;
                                goto new_file;
                            end if;
                            end;

                        when EOB_ACT_RESTART_SCAN =>
                            yy_c_buf_p := yytext_ptr;

                        when EOB_ACT_LAST_MATCH =>
                            yy_c_buf_p := yy_n_chars;
                            yy_current_state := yy_get_previous_state;

                            yy_cp := yy_c_buf_p;
                            yy_bp := yytext_ptr;
                            goto next_action;

                        when others => null;
                        end case; -- case yy_get_next_buffer()

                when others =>
                    ada.text_io.put( "action # " );
                    ada.text_io.put( INTEGER'IMAGE(yy_act) );
                    ada.text_io.new_line;
                    raise AFLEX_INTERNAL_ERROR;
            end case; -- case (yy_act)
        end loop; -- end of loop waiting for end of file
end YYLex;
--# line 412 "scanner.l"
begin
    if (call_yylex) then
    	toktype := YYLex;
    	call_yylex := false;
    	return toktype;
    end if;

    if ( eofseen ) then
	toktype := End_Of_Input;
    else
	toktype := YYLex;
    end if;
-- this tracing code allows easy tracing of aflex runs
if (trace) then
   New_Line (Standard_Error);
   Put (Standard_Error, "toktype = :");
   Put (Standard_Error, Token'Image (toktype));
   Put_line (Standard_Error, ":");
end if;

    if ( toktype = End_Of_Input ) then
	eofseen := true;

	if ( sectnum = 1 ) then
	    misc.synerr(  "unexpected EOF" );
	    sectnum := 2;
	    toktype := SECTEND;
	else
	    if ( sectnum = 2 ) then
	    	sectnum := 3;
	    	toktype := SECTEND;
	    end if;
    	end if;
    end if;

    if ( trace ) then
	if ( beglin ) then
	    Put (Standard_Error, Num_Rules + 1);
	    Put (Standard_Error, ASCII.HT);
	    Beglin := False;
    	end if;

	case toktype is
	    when '<' | '>'|'^'|'$'|'"'|'['|']'|'{'|'}'|'|'|'('|
    	    	 ')'|'-'|'/'|'?'|'.'|'*'|'+'|',' =>
		Put (Standard_Error, Token'Image (Toktype));

	    when NEWLINE =>
		New_Line (Standard_Error);
		if sectnum = 2 then
		    beglin := true;
    	    	end if;

	    when SCDECL =>
		Put (Standard_Error, "%s");

	    when XSCDECL =>
   		Put (Standard_Error, "%x");

	    when WHITESPACE =>
       		Put (Standard_Error, " ");

	    when SECTEND =>
       		Put_Line (Standard_Error, "%%");

		-- we set beglin to be true so we'll start
		-- writing out numbers as we echo rules.  aflexscan() has
		-- already assigned sectnum

		if sectnum = 2 then
		    beglin := true;
    	    	end if;

	    when NAME =>
		Put (Standard_Error, ''');
		Put (Standard_Error, YYText);
		Put (Standard_Error, ''');

	    when CHAR =>
	    	if ( (yylval < CHARACTER'POS(' ')) or
		     (yylval = CHARACTER'POS(ASCII.DEL)) )
                then
		    Put (Standard_Error, '\');
		    Put (Standard_Error, YYLVal);
    		    Put (Standard_Error, '\');

		else
		    Put (Standard_Error, Token'Image (toktype));
    	    	end if;

	    when NUMBER =>
    	    	Put (Standard_Error, YYLVal);

	    when PREVCCL =>
		Put (Standard_Error, '[');
   	    	Put (Standard_Error, YYLVal);
		Put (Standard_Error, ']');

    	    when End_Of_Input =>
    	    	Put (Standard_Error, "End Marker");

	    when others =>
	    	Put (Standard_Error, "Something weird:");
		Put_Line (Standard_Error, Token'Image (toktype));
    	end case;
    end if;

    return toktype;

end YYLex;
end scanner;
