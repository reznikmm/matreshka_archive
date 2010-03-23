with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded;
with Ada.Wide_Wide_Text_IO;

with misc_defs, misc, sym;
use misc_defs;
with Unicode.Ucd;
with scanner.DFA; use scanner.DFA;
with scanner.IO; use scanner.IO;

package body scanner is
   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Strings.Wide_Wide_Unbounded;
   use Ada.Wide_Wide_Text_IO;
   use Parser.Tokens;
   use Unicode;

   function "+" (item : Wide_Wide_String) return Unbounded_Wide_Wide_String
     renames To_Unbounded_Wide_Wide_String;

beglin : boolean := false;
i, bracelevel: integer;

function YYLex return Token is
    toktype : Token;
    didadef, indented_code : boolean;
    cclval : integer;
    nmdefptr : Unbounded_Wide_Wide_String;
    nmdef    : Unbounded_Wide_Wide_String;
    tmpbuf   : Unbounded_Wide_Wide_String;

procedure ACTION_ECHO is
begin
         Ada.Wide_Wide_Text_IO.Put
           (temp_action_file,
            YYText (1 .. YYLength));
end ACTION_ECHO;

procedure MARK_END_OF_PROLOG is
begin
     Ada.Wide_Wide_Text_IO.Put (temp_action_file, "%%%% end of prolog");
     Ada.Wide_Wide_Text_IO.New_Line (temp_action_file);
end MARK_END_OF_PROLOG;

   ---------------------
   -- Put_Back_String --
   ---------------------

      procedure Put_Back_String
        (Str   : Unbounded_Wide_Wide_String;
         Start : Integer) is
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
yy_accept : constant array(0..331) of short :=
    (   0,
        0,    0,    0,    0,    0,    0,   82,   82,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,       84,   13,    6,   12,   10,    1,   11,   13,   13,   13,        9,   40,   31,   32,   25,   40,   39,   23,   40,   40,       40,   31,   21,   40,   40,   24,   83,   19,   82,   82,       15,   14,   16,   46,   83,   42,   43,   45,   47,   61,       62,   59,   58,   60,   48,   50,   49,   48,   54,   53,       54,   54,   56,   56,   56,   57,   67,   72,   71,   73,       67,   73,   68,   65,   66,   83,   17,   64,   63,   74,       76,   77,   78,    6,   12,   10,    1,   11,    0,    0,        2,    0,    7,    4,    5,    0,    9,   31,   32,    0,       28,    0,    0,    0,   79,   79,   79,   79,   27,   26,       27,    0,   31,   21,    0,    0,   35,    0,    0,   19,       18,   82,   82,   15,   14,   44,   45,   58,   80,   80,       80,   80,   51,   52,   55,   67,    0,   70,    0,   67,       68,    0,   17,   74,   75,    0,    7,    0,    0,    3,        0,   29,    0,   36,    0,    0,    0,   79,    0,    0,       27,   27,   38,    0,    0,    0,   35,    0,   30,   80,        0,    0,   67,   69,    0,    0,    8,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,   22,    0,   22,    0,   22,    0,    0,    0,    4,        0,    0,    0,    0,    0,    0,   79,    0,    0,   80,       34,    0,    0,    0,    0,    0,   79,    0,    0,   80,        0,    0,    0,    0,    0,   79,    0,    0,   80,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,   37,        0,    0,   81,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,        0    );

type Secondary_Stage_Index is range 0 .. 16#FF#;
type Primary_Stage_Index is range 0 .. 16#10FF#;
type Secondary_Stage_Array is array (Secondary_Stage_Index) of Short;
type Secondary_Stage_Array_Access is access constant Secondary_Stage_Array;
yy_ec_0 : aliased constant Secondary_Stage_Array :=
    (
        0,    1,    1,    1,    1,    1,    1,    1,    1,    2,        3,    1,    4,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    5,    1,    6,    7,    8,    9,    1,   10,       11,   11,   11,   11,   12,   13,   11,   14,   15,   15,       15,   15,   15,   15,   15,   15,   15,   15,    1,    1,       16,    1,   17,   11,    1,   23,   24,   25,   26,   27,       28,   29,   30,   31,   32,   32,   32,   32,   33,   34,       35,   32,   36,   37,   38,   39,   32,   40,   41,   42,       32,   18,   19,   20,   21,   22,    1,   23,   24,   25,       26,   27,   28,   29,   30,   31,   32,   32,   32,   32,       33,   34,   35,   32,   36,   37,   38,   39,   32,   40,       41,   42,   32,   43,   44,   45,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1    );

yy_ec_1 : aliased constant Secondary_Stage_Array :=
    (
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1    );

yy_ec_base : constant
  array (Primary_Stage_Index) of Secondary_Stage_Array_Access :=
   (     0 => yy_ec_0'Access, others => yy_ec_1'Access);

function yy_ec (Item : Wide_Wide_Character) return short is
   Code   : constant Integer := Wide_Wide_Character'Pos (Item);
   Group  : constant Primary_Stage_Index :=
     Primary_Stage_Index (Code / 256);
   Offset : constant Secondary_Stage_Index :=
     Secondary_Stage_Index (Code mod 256);

begin
   return yy_ec_base (Group) (Offset);
end yy_ec;
yy_meta : constant array(0..45) of short :=
    (   0,
        1,    2,    3,    2,    2,    4,    1,    1,    1,    5,        1,    1,    6,    5,    7,    1,    1,    1,    8,    9,        1,   10,   11,   11,   11,   11,   11,   11,   10,   10,       10,   10,   10,   10,   10,   10,   10,   10,   10,   10,       10,   10,    5,    1,   12    );

yy_base : constant array(0..385) of short :=
    (   0,
        0,   45,   89,  132, 1244, 1243, 1242, 1241,  107,  111,      176,    0, 1222, 1221,  114,  115,  125,  136,  144,  149,      153,  219,  239,    0, 1237, 1236,  116,  119,  282,  283,     1238, 1248,  221, 1248,    0,  290, 1248, 1232,  278, 1221,        0, 1248,  294, 1248, 1248,   96, 1248, 1217, 1211,  275,      338,  382, 1248, 1220, 1215, 1248, 1222,    0, 1221, 1248,        0,  119, 1248, 1248, 1248, 1248, 1202,    0, 1248, 1248,     1248, 1248, 1205, 1248, 1248, 1248, 1248,   81, 1248, 1248,      285, 1206, 1248,    0,  290, 1248,    0, 1248, 1248,  139,     1205, 1248,    0, 1248, 1248, 1212, 1248, 1248, 1248,    0,     1248, 1248,    0,  225, 1248,    0,  304, 1248, 1201, 1210,     1248, 1205,    0, 1171, 1248, 1205,    0,  386, 1248, 1166,     1248, 1141,  214,  296, 1248, 1152, 1121,    0,    0, 1248,      430, 1150,  474, 1248, 1149,  309,    0, 1156, 1155,    0,     1248, 1154, 1248,    0,  328, 1248,    0, 1127, 1248, 1126,     1097,    0, 1248, 1248, 1248,    0,  294, 1248,    0,  518,        0, 1114, 1248,    0, 1248, 1103,    0, 1079, 1098, 1248,     1097, 1248, 1031, 1248,  216,  373,  549, 1038,  139,    0,        0,    0, 1248, 1033,  315,  323,    0, 1039, 1248, 1026,      364,    0,    0, 1248,  577, 1021, 1248,  987,  983,  381,      378,  607,  977,  980,    0,  999,  993,  987,  951,  943,        0,  923,  943,  383,  385,  387,  621,  907,  886,    0,      920, 1248,  885, 1248,  879, 1248,  835,  833,    0, 1248,      853,  461,  395,  635,  819,  802,    0,  682,  665,    0,     1248,  398,  463,  649,  676,  672,    0,  659,  657,    0,      402,  465,  663,  652,  646, 1248,  638,  632, 1248,  469,      471,  404,  638,  624,  626,  610,  474,  476,  610,  607,      597,  604,  479,  486,  581,  297,  577,  474,  580,  583,      567,  559,  557,  538,  538,  541,  546,  585,  587, 1248,      537,  536, 1248,  484,  484,  591,  594,  466,  459,  448,      391,  618,  632,  404,  398,  396,  384,  493,  589,  368,      319,  286,  301,  660,  620,  284,  254,  634,  202,  136,      646,  144,  131,  673,  100,   81,  675,   77,   75,  678,     1248,  705,  717,  729,  741,  753,  765,  777,  789,  801,      813,  825,  832,  843,  855,  862,  873,  885,  897,  909,      921,  933,  945,  952,  963,  975,  987,  999, 1008, 1015,     1026, 1038, 1050, 1062, 1074, 1086, 1092, 1103, 1114, 1126,     1132, 1143, 1149, 1154, 1159, 1170, 1182, 1194, 1200, 1205,     1210, 1215, 1220, 1225, 1230    );

yy_def : constant array(0..385) of short :=
    (   0,
      331,  331,  332,  332,  333,  333,  334,  334,  335,  335,      331,   11,  336,  336,  337,  337,  338,  338,  339,  339,      340,  340,  331,   23,  341,  341,  336,  336,  342,  342,      331,  331,  331,  331,  343,  331,  331,  344,  345,  331,      346,  331,  331,  331,  331,  331,  331,  331,  347,  348,      331,  349,  331,  331,  331,  331,  350,  351,  352,  331,      353,  331,  331,  331,  331,  331,  331,  354,  331,  331,      331,  331,  331,  331,  331,  331,  331,  348,  331,  331,      355,  356,  331,  357,  348,  331,  358,  331,  331,  359,      358,  331,  360,  331,  331,  361,  331,  331,  331,  362,      331,  331,  363,  331,  331,  343,  331,  331,  331,  344,      331,  331,  364,  331,  331,  365,  346,  331,  331,  366,      331,  331,  347,  347,  331,  331,  331,  367,  368,  331,      331,  331,  349,  331,  331,  366,  369,  370,  350,  351,      331,  352,  331,  353,  331,  331,  354,  331,  331,  331,      331,  371,  331,  331,  331,  358,  359,  331,  359,  331,      360,  361,  331,  362,  331,  372,  364,  331,  365,  331,      366,  331,  331,  331,  347,  347,  347,  331,  331,  373,      368,  131,  331,  331,  370,  366,  369,  370,  331,  331,      331,  374,  160,  331,  160,  372,  331,  331,  331,  347,      347,  177,  331,  331,  375,  376,  377,  378,  331,  331,      379,  331,  331,  347,  347,  347,  177,  331,  331,  380,      376,  331,  377,  331,  378,  331,  331,  331,  381,  331,      331,  347,  347,  177,  331,  331,  382,  331,  331,  383,      331,  347,  347,  177,  331,  331,  384,  331,  331,  385,      347,  347,  177,  331,  331,  331,  331,  331,  331,  347,      347,  347,  331,  331,  331,  331,  347,  347,  331,  331,      331,  331,  347,  347,  331,  331,  331,  331,  347,  347,      331,  331,  331,  331,  331,  331,  347,  347,  347,  331,      331,  331,  331,  331,  331,  347,  347,  331,  331,  331,      331,  347,  347,  331,  331,  331,  331,  347,  347,  331,      331,  331,  331,  347,  347,  331,  331,  347,  331,  331,      347,  331,  331,  347,  331,  331,  347,  331,  331,  347,        0,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331    );

yy_nxt : constant array(0..1293) of short :=
    (   0,
       32,   33,   34,   33,   33,   32,   32,   32,   32,   32,       32,   32,   32,   32,   32,   32,   32,   32,   32,   32,       32,   35,   35,   35,   35,   35,   35,   35,   35,   35,       35,   35,   35,   35,   35,   35,   35,   35,   35,   35,       35,   35,   32,   32,   32,   32,   36,   37,   36,   36,       32,   38,   32,   39,   32,   32,   32,   40,   32,   32,       32,   32,   32,   32,   32,   32,   41,   41,   41,   41,       41,   41,   41,   41,   41,   41,   41,   41,   41,   41,       41,   41,   41,   41,   41,   41,   41,   32,   32,   32,       43,   44,   43,   43,   45,  126,   46,  121,  121,   47,      121,  284,   47,  281,   48,  329,   49,   50,   62,   63,       62,   62,   62,   63,   62,   62,   71,   71,   98,  128,      145,   98,  145,  145,  328,   72,   72,   76,   73,   73,       77,   51,   47,   52,   53,   52,   52,   45,   76,   46,       54,   77,   47,   78,   55,   47,   65,   48,  158,   49,       50,   65,   56,  326,   78,   65,   80,  159,   74,   74,       99,   80,   81,   99,   82,   84,  325,   81,  203,   82,      323,   85,   86,  204,   51,   47,   64,   64,   65,   64,       64,   64,   64,   64,   64,   64,   64,   66,   64,   64,       64,   64,   67,   64,   64,   64,   64,   68,   68,   68,       68,   68,   68,   68,   68,   68,   68,   68,   68,   68,       68,   68,   68,   68,   68,   68,   68,   68,   64,   64,       64,   65,  104,  105,  104,  104,  104,  105,  104,  104,      200,   84,  124,  174,  124,  174,  322,   85,   86,   87,       87,   88,   87,   87,   89,   87,   87,   87,   90,   87,       87,   91,   92,   87,   87,   87,   87,   87,   87,   87,       93,   93,   93,   93,   93,   93,   93,   93,   93,   93,       93,   93,   93,   93,   93,   93,   93,   93,   93,   93,       93,   94,   87,   95,  101,  101,  113,  102,  102,  126,      320,  107,  108,  107,  107,  118,  119,  118,  118,  150,      103,  103,  109,  158,  126,  107,  108,  107,  107,  127,      175,  172,  159,  128,  114,  123,  109,  189,  115,  151,      319,  186,  317,  152,  127,  172,  284,  207,  128,  145,      176,  145,  145,  282,  177,  208,  283,  120,  129,  129,      316,  129,  129,  129,  129,  129,  129,  129,  129,  129,      129,  129,  130,  129,  129,  129,  129,  129,  129,  131,      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,      129,  129,  129,  133,  134,  133,  133,  118,  119,  118,      118,  124,  174,  209,  135,  214,  124,  174,  210,  124,      174,  124,  174,  124,  174,  124,  174,  215,  281,  233,      313,  232,  216,  124,  174,  201,  124,  174,  312,  251,      124,  174,  124,  174,  311,  136,  310,  260,  307,  120,      181,  181,  243,  181,  181,  181,  181,  181,  181,  181,      181,  181,  182,  181,  182,  181,  181,  181,  181,  181,      181,  182,  182,  182,  182,  182,  182,  182,  182,  182,      182,  182,  182,  182,  182,  182,  182,  182,  182,  182,      182,  182,  181,  181,  183,  133,  134,  133,  133,  124,      174,  124,  174,  124,  174,  306,  135,  124,  174,  124,      174,  261,  124,  174,  124,  174,  305,  124,  174,  267,      252,  242,  273,  304,  124,  174,  268,  280,  274,  279,      285,  124,  174,  286,  301,  314,  300,  136,  193,  193,      194,  193,  193,  195,  193,  193,  193,  195,  193,  193,      193,  195,  193,  193,  193,  193,  193,  193,  193,  195,      195,  195,  195,  195,  195,  195,  195,  195,  195,  195,      195,  195,  195,  195,  195,  195,  195,  195,  195,  195,      195,  193,  195,  202,  124,  174,  299,  124,  174,  298,      295,  202,  202,  202,  202,  202,  202,  195,  195,  294,      195,  195,  293,  195,  195,  195,  292,  195,  195,  195,      214,  195,  195,  195,  195,  195,  195,  195,  124,  174,      291,  124,  174,  124,  174,  124,  174,  124,  174,  124,      174,  290,  124,  174,  284,  315,  297,  287,  281,  288,      195,  217,  289,  302,  303,  278,  296,  277,  276,  217,      217,  217,  217,  217,  217,  234,  124,  174,  124,  174,      275,  318,  272,  234,  234,  234,  234,  234,  234,  244,      124,  174,  124,  174,  271,  308,  270,  244,  244,  244,      244,  244,  244,  253,  124,  174,  269,  266,  265,  309,      321,  253,  253,  253,  253,  253,  253,  262,  124,  174,      324,  264,  263,  258,  257,  262,  262,  262,  262,  262,      262,  124,  174,  124,  174,  327,  124,  174,  255,  330,      287,  254,  249,  248,  287,   42,   42,   42,   42,   42,       42,   42,   42,   42,   42,   42,   42,   57,   57,   57,       57,   57,   57,   57,   57,   57,   57,   57,   57,   59,       59,   59,   59,   59,   59,   59,   59,   59,   59,   59,       59,   61,   61,   61,   61,   61,   61,   61,   61,   61,       61,   61,   61,   65,   65,   65,   65,   65,   65,   65,       65,   65,   65,   65,   65,   70,   70,   70,   70,   70,       70,   70,   70,   70,   70,   70,   70,   75,   75,   75,       75,   75,   75,   75,   75,   75,   75,   75,   75,   79,       79,   79,   79,   79,   79,   79,   79,   79,   79,   79,       79,   83,   83,   83,   83,   83,   83,   83,   83,   83,       83,   83,   83,   96,   96,   96,   96,   96,   96,   96,       96,   96,   96,   96,   96,  100,  100,  100,  100,  100,      100,  100,  100,  100,  100,  100,  100,  106,  106,  246,      245,  106,  106,  110,  110,  110,  110,  110,  110,  110,      110,  110,  110,  110,  110,  112,  112,  112,  112,  112,      112,  112,  112,  112,  112,  112,  112,  117,  117,  241,      239,  117,  117,  123,  123,  238,  123,  123,  123,  123,      123,  226,  123,  123,  123,  125,  125,  224,  125,  125,      125,  125,  125,  125,  125,  125,  125,  132,  132,  132,      132,  132,  132,  132,  132,  132,  132,  132,  132,  139,      139,  139,  139,  139,  139,  139,  139,  139,  139,  139,      139,  141,  222,  236,  141,  141,  141,  141,  141,  141,      141,  141,  141,  142,  142,  142,  142,  142,  142,  142,      142,  142,  142,  142,  142,  144,  144,  235,  144,  144,      144,  144,  144,  144,  144,  144,  144,  147,  147,  231,      230,  147,  147,  149,  149,  228,  149,  149,  149,  149,      149,  149,  149,  149,  149,  153,  153,  227,  153,  153,      153,  153,  153,  153,  153,  153,  153,  155,  155,  226,      155,  155,  155,  155,  155,  224,  155,  155,  155,  156,      156,  222,  219,  218,  156,  156,  156,  156,  157,  157,      213,  157,  157,  157,  157,  157,  157,  157,  157,  157,      161,  161,  212,  197,  161,  161,  162,  162,  162,  162,      162,  162,  162,  162,  162,  162,  162,  162,  164,  164,      149,  189,  164,  164,  164,  206,  164,  164,  164,  164,      165,  165,  125,  165,  165,  165,  165,  165,  165,  165,      165,  165,  167,  167,  199,  167,  167,  167,  167,  167,      167,  167,  167,  167,  169,  169,  169,  169,  169,  169,      169,  169,  169,  169,  169,  169,  171,  171,  171,  171,      171,  171,  171,  171,  171,  171,  171,  171,  180,  172,      170,  198,  180,  181,  181,  197,  181,  181,  181,  181,      181,  181,  181,  181,  187,  187,  163,  187,  187,  187,      187,  187,  187,  187,  187,  187,  188,  188,  188,  188,      188,  188,  188,  188,  188,  188,  188,  188,  192,  191,      190,  148,  192,  196,  196,  196,  196,  196,  196,  196,      196,  196,  196,  196,  196,  205,  143,  140,  189,  205,      211,  185,  184,  179,  211,  220,  178,  173,  172,  220,      221,  221,  221,  221,  221,  221,  221,  221,  221,  221,      221,  221,  223,  223,  223,  223,  223,  223,  223,  223,      223,  223,  223,  223,  225,  225,  225,  225,  225,  225,      225,  225,  225,  225,  225,  225,  229,  170,  168,  166,      229,  237,  111,  116,  163,  237,  240,  160,  154,  148,      240,  247,  146,  143,  140,  247,  250,  138,  137,  124,      250,  256,  122,  116,  111,  256,  259,  331,   97,   97,      259,   69,   69,   60,   60,   58,   58,   31,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331    );

yy_chk : constant array(0..1293) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,        1,    1,    1,    1,    1,    2,    2,    2,    2,    2,        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,        3,    3,    3,    3,    3,   78,    3,   46,   46,    3,       46,  329,    3,  328,    3,  326,    3,    3,    9,    9,        9,    9,   10,   10,   10,   10,   15,   16,   27,   78,       62,   28,   62,   62,  325,   15,   16,   17,   15,   16,       17,    3,    3,    4,    4,    4,    4,    4,   18,    4,        4,   18,    4,   17,    4,    4,   19,    4,   90,    4,        4,   20,    4,  323,   18,   21,   19,   90,   15,   16,       27,   20,   19,   28,   19,   21,  322,   20,  179,   20,      320,   21,   21,  179,    4,    4,   11,   11,   11,   11,       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,       11,   22,   33,   33,   33,   33,  104,  104,  104,  104,      175,   22,  123,  123,  175,  175,  319,   22,   22,   23,       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,       23,   23,   23,   23,   29,   30,   39,   29,   30,   50,      317,   36,   36,   36,   36,   43,   43,   43,   43,   81,       29,   30,   36,  157,   85,  107,  107,  107,  107,   50,      124,  136,  157,   50,   39,  124,  107,  185,   39,   81,      316,  136,  313,   81,   85,  186,  312,  185,   85,  145,      124,  145,  145,  276,  124,  186,  276,   43,   51,   51,      311,   51,   51,   51,   51,   51,   51,   51,   51,   51,       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,       51,   51,   51,   52,   52,   52,   52,  118,  118,  118,      118,  176,  176,  191,   52,  200,  201,  201,  191,  200,      200,  214,  214,  215,  215,  216,  216,  201,  310,  216,      307,  215,  201,  233,  233,  176,  242,  242,  306,  242,      251,  251,  262,  262,  305,   52,  304,  251,  301,  118,      131,  131,  233,  131,  131,  131,  131,  131,  131,  131,      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,      131,  131,  131,  131,  131,  133,  133,  133,  133,  232,      232,  243,  243,  252,  252,  300,  133,  260,  260,  261,      261,  252,  267,  267,  268,  268,  299,  273,  273,  260,      243,  232,  267,  298,  274,  274,  261,  274,  268,  273,      278,  308,  308,  278,  295,  308,  294,  133,  160,  160,      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,      160,  160,  160,  177,  287,  287,  292,  177,  177,  291,      286,  177,  177,  177,  177,  177,  177,  195,  195,  285,      195,  195,  284,  195,  195,  195,  283,  195,  195,  195,      287,  195,  195,  195,  195,  195,  195,  195,  279,  279,      282,  280,  280,  288,  288,  289,  289,  309,  309,  296,      296,  281,  297,  297,  277,  309,  289,  279,  275,  280,      195,  202,  280,  296,  297,  272,  288,  271,  270,  202,      202,  202,  202,  202,  202,  217,  302,  302,  315,  315,      269,  315,  266,  217,  217,  217,  217,  217,  217,  234,      303,  303,  318,  318,  265,  302,  264,  234,  234,  234,      234,  234,  234,  244,  321,  321,  263,  258,  257,  303,      318,  244,  244,  244,  244,  244,  244,  253,  314,  314,      321,  255,  254,  249,  248,  253,  253,  253,  253,  253,      253,  324,  324,  327,  327,  324,  330,  330,  246,  327,      314,  245,  239,  238,  330,  332,  332,  332,  332,  332,      332,  332,  332,  332,  332,  332,  332,  333,  333,  333,      333,  333,  333,  333,  333,  333,  333,  333,  333,  334,      334,  334,  334,  334,  334,  334,  334,  334,  334,  334,      334,  335,  335,  335,  335,  335,  335,  335,  335,  335,      335,  335,  335,  336,  336,  336,  336,  336,  336,  336,      336,  336,  336,  336,  336,  337,  337,  337,  337,  337,      337,  337,  337,  337,  337,  337,  337,  338,  338,  338,      338,  338,  338,  338,  338,  338,  338,  338,  338,  339,      339,  339,  339,  339,  339,  339,  339,  339,  339,  339,      339,  340,  340,  340,  340,  340,  340,  340,  340,  340,      340,  340,  340,  341,  341,  341,  341,  341,  341,  341,      341,  341,  341,  341,  341,  342,  342,  342,  342,  342,      342,  342,  342,  342,  342,  342,  342,  343,  343,  236,      235,  343,  343,  344,  344,  344,  344,  344,  344,  344,      344,  344,  344,  344,  344,  345,  345,  345,  345,  345,      345,  345,  345,  345,  345,  345,  345,  346,  346,  231,      228,  346,  346,  347,  347,  227,  347,  347,  347,  347,      347,  225,  347,  347,  347,  348,  348,  223,  348,  348,      348,  348,  348,  348,  348,  348,  348,  349,  349,  349,      349,  349,  349,  349,  349,  349,  349,  349,  349,  350,      350,  350,  350,  350,  350,  350,  350,  350,  350,  350,      350,  351,  221,  219,  351,  351,  351,  351,  351,  351,      351,  351,  351,  352,  352,  352,  352,  352,  352,  352,      352,  352,  352,  352,  352,  353,  353,  218,  353,  353,      353,  353,  353,  353,  353,  353,  353,  354,  354,  213,      212,  354,  354,  355,  355,  210,  355,  355,  355,  355,      355,  355,  355,  355,  355,  356,  356,  209,  356,  356,      356,  356,  356,  356,  356,  356,  356,  357,  357,  208,      357,  357,  357,  357,  357,  207,  357,  357,  357,  358,      358,  206,  204,  203,  358,  358,  358,  358,  359,  359,      199,  359,  359,  359,  359,  359,  359,  359,  359,  359,      360,  360,  198,  196,  360,  360,  361,  361,  361,  361,      361,  361,  361,  361,  361,  361,  361,  361,  362,  362,      190,  188,  362,  362,  362,  184,  362,  362,  362,  362,      363,  363,  178,  363,  363,  363,  363,  363,  363,  363,      363,  363,  364,  364,  173,  364,  364,  364,  364,  364,      364,  364,  364,  364,  365,  365,  365,  365,  365,  365,      365,  365,  365,  365,  365,  365,  366,  366,  366,  366,      366,  366,  366,  366,  366,  366,  366,  366,  367,  171,      169,  168,  367,  368,  368,  166,  368,  368,  368,  368,      368,  368,  368,  368,  369,  369,  162,  369,  369,  369,      369,  369,  369,  369,  369,  369,  370,  370,  370,  370,      370,  370,  370,  370,  370,  370,  370,  370,  371,  151,      150,  148,  371,  372,  372,  372,  372,  372,  372,  372,      372,  372,  372,  372,  372,  373,  142,  139,  138,  373,      374,  135,  132,  127,  374,  375,  126,  122,  120,  375,      376,  376,  376,  376,  376,  376,  376,  376,  376,  376,      376,  376,  377,  377,  377,  377,  377,  377,  377,  377,      377,  377,  377,  377,  378,  378,  378,  378,  378,  378,      378,  378,  378,  378,  378,  378,  379,  116,  114,  112,      379,  380,  110,  109,   96,  380,  381,   91,   82,   73,      381,  382,   67,   59,   57,  382,  383,   55,   54,   49,      383,  384,   48,   40,   38,  384,  385,   31,   26,   25,      385,   14,   13,    8,    7,    6,    5,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331,  331,  331,  331,  331,  331,  331,  331,      331,  331,  331    );


-- copy whatever the last rule matched to the standard output

procedure ECHO is
begin
   if Ada.Wide_Wide_Text_IO.Is_Open (User_Output_File) then
     Ada.Wide_Wide_Text_IO.Put (User_Output_File, YYText);
   else
     Ada.Wide_Wide_Text_IO.Put (yytext);
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
   Code  : Wide_Wide_Character;
    yy_bp : integer := yytext_ptr;
begin
    yy_current_state := yy_start;
    if Previous (yy_ch_buf, yy_bp) = LF then
	yy_current_state := yy_current_state + 1;
    end if;

   declare
      yy_cp : integer := yytext_ptr;

   begin
      while yy_cp < yy_c_buf_p loop
         Index := yy_cp;

	Index := yy_cp;
	Next (yy_ch_buf, Index, Code);
	yy_c := yy_ec (Code);
	if (yy_accept(yy_current_state) /= 0 ) then
	    yy_last_accepting_state := yy_current_state;
	    yy_last_accepting_cpos := yy_cp;
	end if;
	while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
	    yy_current_state := yy_def(yy_current_state);
	    if ( yy_current_state >= 332 ) then
		yy_c := yy_meta(yy_c);
	    end if;
	end loop;
	yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
         yy_cp := Index;
      end loop;
   end;

    return yy_current_state;
end yy_get_previous_state;

procedure yyrestart( input_file : Ada.Wide_Wide_Text_IO.file_type ) is
begin
   Open_Input (Ada.Wide_Wide_Text_IO.Name (Input_File));
end yyrestart;
pragma Inline (yyrestart);

   Index : Integer;
   Code  : Wide_Wide_Character;

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

        yy_ch_buf.data (0) := LF;
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
	if Previous (yy_ch_buf, yy_bp) = LF then
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
		    if ( yy_current_state >= 332 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := Index;
if ( yy_current_state = 331 ) then
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
            ada.Wide_Wide_text_io.put( Ada.Wide_Wide_Text_IO.Standard_Error, "--accepting rule #" );
            ada.Wide_Wide_text_io.put( Ada.Wide_Wide_Text_IO.Standard_Error, INTEGER'Wide_Wide_IMAGE(yy_act) );
            ada.Wide_Wide_text_io.put_line( Ada.Wide_Wide_Text_IO.Standard_Error, "(""" & yytext & """)");
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
               Put (Standard_Error, HT );
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
                              and Element (nmdef, i) /= HT
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
			   Image : constant Wide_Wide_String := YYText;

			begin
			   YYLVal :=
			     Unicode.Ucd.Boolean_Properties'Pos
			      (Unicode.Ucd.Boolean_Properties'Wide_Wide_Value
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
			if nmdefptr = Null_Unbounded_Wide_Wide_String then
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
               yylval := Wide_Wide_Character'Pos (Element (tmpbuf, 1));

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
			  yylval := Wide_Wide_CHARACTER'POS (Element (tmpbuf, 1));
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
			  yylval := Wide_Wide_CHARACTER'POS (Element (tmpbuf, 1));
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
			  yylval := Wide_Wide_CHARACTER'POS (Element (tmpbuf, 1));
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
			    Ada.Wide_Wide_Text_IO.New_Line (Temp_Action_File);
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
			   Image : constant Wide_Wide_String := YYText;

			begin
			   YYLVal :=
			     Unicode.Ucd.Boolean_Properties'Pos
			      (Unicode.Ucd.Boolean_Properties'Wide_Wide_Value
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
                    ada.wide_wide_text_io.put( "action # " );
                    ada.Wide_Wide_text_io.put( INTEGER'Wide_Wide_IMAGE(yy_act) );
                    ada.Wide_Wide_text_io.new_line;
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
   Put (Standard_Error, Token'Wide_Wide_Image (toktype));
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
	    Put (Standard_Error, HT);
	    Beglin := False;
    	end if;

	case toktype is
	    when '<' | '>'|'^'|'$'|'"'|'['|']'|'{'|'}'|'|'|'('|
    	    	 ')'|'-'|'/'|'?'|'.'|'*'|'+'|',' =>
		Put (Standard_Error, Token'Wide_Wide_Image (Toktype));

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
		    Put (Standard_Error, Token'Wide_Wide_Image (toktype));
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
		Put_Line (Standard_Error, Token'Wide_Wide_Image (toktype));
    	end case;
    end if;

    return toktype;

end YYLex;
end scanner;
