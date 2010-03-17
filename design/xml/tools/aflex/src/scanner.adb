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
YY_END_OF_BUFFER : constant := 83;
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
yy_accept : constant array(0..254) of short :=
    (   0,
        0,    0,    0,    0,    0,    0,   81,   81,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
       83,   13,    6,   12,   10,    1,   11,   13,   13,   13,
        9,   40,   31,   32,   25,   40,   39,   23,   40,   40,
       40,   31,   21,   40,   40,   24,   82,   19,   81,   81,
       15,   14,   16,   46,   82,   42,   43,   45,   47,   61,
       62,   59,   58,   60,   48,   50,   49,   48,   54,   53,
       54,   54,   56,   56,   56,   57,   67,   72,   71,   73,
       67,   73,   68,   65,   66,   82,   17,   64,   63,   74,

       76,   77,   78,    6,   12,   10,    1,   11,    0,    0,
        2,    0,    7,    4,    5,    0,    9,   31,   32,    0,
       28,    0,    0,    0,   79,   79,   79,   79,   27,   26,
       27,    0,   31,   21,    0,    0,   35,    0,    0,   19,
       18,   81,   81,   15,   14,   44,   45,   58,   80,   80,
       80,   51,   52,   55,   67,    0,   70,    0,   67,   68,
        0,   17,   74,   75,    0,    7,    0,    0,    3,    0,
       29,    0,   36,    0,    0,   79,    0,    0,   27,   27,
       38,    0,    0,    0,   35,    0,   30,   80,    0,   67,
       69,    0,    0,    8,    0,    0,    0,    0,    0,    0,

        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,   22,    0,   22,    0,   22,    0,    4,    0,    0,
        0,   79,   80,   34,    0,    0,   79,   80,    0,    0,
       79,   80,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,   37,    0,
        0,    0,    0,    0
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

yy_base : constant array(0..296) of short :=
    (   0,
        0,   43,   85,  126,  678,  675,  674,  673,  103,  107,
      168,    0,  648,  647,  110,  121,  135,  140,  209,  210,
      213,  221,  241,    0,  653,  649,  112,  113,  146,  282,
      651, 1081,  115, 1081,    0,  287, 1081,  647,  277,  630,
        0, 1081,  291, 1081, 1081,   92, 1081,  621,  614,  202,
      333,  375, 1081,  623,  618, 1081,  621,    0,  620, 1081,
        0,  146, 1081, 1081, 1081, 1081,  599,    0, 1081, 1081,
     1081, 1081,  604, 1081, 1081, 1081, 1081,   77, 1081, 1081,
      199,  605, 1081,    0,  200, 1081,    0, 1081, 1081,  147,
      598, 1081,    0, 1081, 1081,  607, 1081, 1081, 1081,    0,

     1081, 1081,    0,  158, 1081,    0,  300, 1081,  594,  603,
     1081,  600,    0,  566, 1081,  598,    0,  379, 1081,  592,
     1081,  568,  199,  291, 1081,  578,  551,  294,    0, 1081,
      421,  578,  463, 1081,  577,  284,    0,  586,  568,    0,
     1081,  564, 1081,    0,  320, 1081,    0,  549, 1081,  541,
      370, 1081, 1081, 1081,    0,  288, 1081,    0,  505,    0,
      552, 1081,    0, 1081,  549,    0,  528,  547, 1081,  491,
     1081,  461, 1081,  295,  534,  476,  457,  375,    0,    0,
     1081,  476,  323,  400,    0,  485, 1081,  460,  454,    0,
     1081,  561,  470, 1081,  438,  444,  312,  589,  447,  459,

      421,  417,  416,  472,  382,  399,  201,  602,  379,  477,
      411, 1081,  409, 1081,  408, 1081,  560, 1081,  393,  615,
      373,  573,  621, 1081,  634,  382,  640,  647,  660,  373,
     1081, 1081,  310,  375,  383,  351,  364,  363,  360,  357,
      287,  272,  276,  212,  188,  203,  115,   88, 1081,   88,
       79,   75,   72, 1081,  687,  697,  707,  717,  727,  737,
      747,  757,  767,  777,  787,  792,  801,  811,  816,  825,
      835,  845,  855,  865,  875,  885,  890,  899,  909,  919,
      929,  937,  942,  951,  961,  971,  981,  991, 1001, 1011,
     1020, 1030, 1040, 1050, 1060, 1070

    );

yy_def : constant array(0..296) of short :=
    (   0,
      254,  254,  255,  255,  256,  256,  257,  257,  258,  258,
      254,   11,  259,  259,  260,  260,  261,  261,  262,  262,
      263,  263,  254,   23,  264,  264,  259,  259,  265,  265,
      254,  254,  254,  254,  266,  254,  254,  267,  268,  254,
      269,  254,  254,  254,  254,  254,  254,  254,  270,  271,
      254,  272,  254,  254,  254,  254,  273,  274,  275,  254,
      276,  254,  254,  254,  254,  254,  254,  277,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  271,  254,  254,
      278,  279,  254,  280,  271,  254,  281,  254,  254,  282,
      281,  254,  283,  254,  254,  284,  254,  254,  254,  285,

      254,  254,  286,  254,  254,  266,  254,  254,  254,  267,
      254,  254,  287,  254,  254,  288,  269,  254,  254,  289,
      254,  254,  270,  270,  254,  254,  254,  254,  290,  254,
      254,  254,  272,  254,  254,  289,  291,  292,  273,  274,
      254,  275,  254,  276,  254,  254,  277,  254,  254,  254,
      254,  254,  254,  254,  281,  282,  254,  282,  254,  283,
      284,  254,  285,  254,  293,  287,  254,  288,  254,  289,
      254,  254,  254,  270,  270,  254,  254,  254,  290,  131,
      254,  254,  292,  289,  291,  292,  254,  254,  254,  159,
      254,  159,  293,  254,  254,  254,  270,  270,  254,  254,

      294,  295,  296,  254,  254,  254,  270,  270,  254,  254,
      294,  254,  295,  254,  296,  254,  254,  254,  254,  270,
      254,  254,  254,  254,  270,  254,  254,  254,  270,  254,
      254,  254,  270,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,    0,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254

    );

yy_nxt : constant array(0..1124) of short :=
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
       45,  126,   46,  121,  121,   47,  121,  247,   47,  253,

       48,  252,   49,   50,   62,   63,   62,   62,   62,   63,
       62,   62,   71,  128,   98,   98,  104,  105,  104,  104,
      251,   72,  250,   71,   73,   51,   47,   52,   53,   52,
       52,   45,   72,   46,   54,   73,   47,   76,   55,   47,
       77,   48,   76,   49,   50,   77,   56,  145,  101,  145,
      145,  102,   74,   78,   99,   99,  157,  249,   78,  104,
      105,  104,  104,   74,  103,  158,   51,   47,   64,   64,
       65,   64,   64,   64,   64,   64,   64,   64,   64,   66,
       64,   64,   64,   64,   67,   64,   64,   64,   64,   68,
       68,   68,   68,   68,   68,   68,   68,   68,   68,   68,

       68,   68,   68,   68,   68,   68,   68,   68,   64,   64,
       64,   65,   65,  150,  126,   65,  126,  124,  173,  124,
      173,   80,   80,   65,  248,   84,  247,   81,   81,   82,
       82,   85,   86,   84,  127,  151,  128,  246,  128,   85,
       86,   87,   87,   88,   87,   87,   89,   87,   87,   87,
       90,   87,   87,   91,   92,   87,   87,   87,   87,   87,
       87,   87,   93,   93,   93,   93,   93,   93,   93,   93,
       93,   93,   93,   93,   93,   93,   93,   93,   93,   93,
       93,   94,   87,   95,  101,  113,  171,  102,  107,  108,
      107,  107,  118,  119,  118,  118,  184,  157,  245,  109,

      103,  107,  108,  107,  107,  174,  158,  244,  178,  197,
      123,  114,  109,  124,  173,  115,  178,  178,  178,  178,
      178,  145,  243,  145,  145,  187,  207,  175,  124,  173,
      124,  173,  120,  129,  129,  202,  129,  129,  129,  129,
      129,  129,  129,  129,  129,  129,  129,  130,  129,  129,
      129,  129,  129,  129,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  129,  129,  129,  133,  134,  133,  133,
      118,  119,  118,  118,  189,  237,  242,  135,  238,  200,
      241,  240,  189,  189,  189,  189,  189,  200,  200,  200,

      200,  200,  171,  239,  236,  235,  234,  230,  226,  224,
      216,  214,  203,  212,  221,  219,  136,  218,  216,  214,
      120,  179,  179,  212,  179,  179,  179,  179,  179,  179,
      179,  179,  179,  180,  179,  180,  179,  179,  179,  179,
      179,  179,  180,  180,  180,  180,  180,  180,  180,  180,
      180,  180,  180,  180,  180,  180,  180,  180,  180,  180,
      180,  179,  179,  181,  133,  134,  133,  133,  204,  209,
      206,  205,  194,  210,  149,  135,  204,  204,  204,  204,
      204,  210,  210,  210,  210,  210,  217,  187,  201,  199,
      125,  222,  196,  171,  217,  217,  217,  217,  217,  222,

      222,  222,  222,  222,  136,  190,  190,  191,  190,  190,
      192,  190,  190,  190,  192,  190,  190,  190,  192,  190,
      190,  190,  190,  190,  190,  190,  192,  192,  192,  192,
      192,  192,  192,  192,  192,  192,  192,  192,  192,  192,
      192,  192,  192,  192,  192,  192,  190,  192,  198,  169,
      195,  194,  124,  173,  162,  188,  198,  198,  198,  198,
      198,  192,  192,  148,  192,  192,  143,  192,  192,  192,
      140,  192,  192,  192,  223,  192,  192,  192,  192,  192,
      192,  192,  223,  223,  223,  223,  223,  227,  187,  183,
      182,  177,  176,  172,  171,  227,  227,  227,  227,  227,

      169,  167,  192,  208,  165,  111,  116,  124,  173,  162,
      159,  208,  208,  208,  208,  208,  220,  153,  148,  146,
      124,  173,  143,  140,  220,  220,  220,  220,  220,  225,
      138,  137,  124,  124,  173,  228,  122,  225,  225,  225,
      225,  225,  116,  228,  228,  228,  228,  228,  229,  111,
      254,   97,  124,  173,  231,   97,  229,  229,  229,  229,
      229,  232,  231,  231,  231,  231,  231,   69,   69,  232,
      232,  232,  232,  232,  233,   60,   60,   58,  124,  173,
       58,  254,  233,  233,  233,  233,  233,   42,   42,   42,
       42,   42,   42,   42,   42,   42,   42,   57,   57,   57,

       57,   57,   57,   57,   57,   57,   57,   59,   59,   59,
       59,   59,   59,   59,   59,   59,   59,   61,   61,   61,
       61,   61,   61,   61,   61,   61,   61,   65,   65,   65,
       65,   65,   65,   65,   65,   65,   65,   70,   70,   70,
       70,   70,   70,   70,   70,   70,   70,   75,   75,   75,
       75,   75,   75,   75,   75,   75,   75,   79,   79,   79,
       79,   79,   79,   79,   79,   79,   79,   83,   83,   83,
       83,   83,   83,   83,   83,   83,   83,   96,   96,   96,
       96,   96,   96,   96,   96,   96,   96,  100,  100,  100,
      100,  100,  100,  100,  100,  100,  100,  106,  254,  254,

      106,  110,  110,  110,  110,  110,  110,  110,  110,  110,
      110,  112,  112,  112,  112,  112,  112,  112,  112,  112,
      112,  117,  254,  254,  117,  123,  123,  254,  123,  123,
      123,  123,  254,  123,  123,  125,  125,  254,  125,  125,
      125,  125,  125,  125,  125,  132,  132,  132,  132,  132,
      132,  132,  132,  132,  132,  139,  139,  139,  139,  139,
      139,  139,  139,  139,  139,  141,  254,  254,  141,  141,
      141,  141,  141,  141,  141,  142,  142,  142,  142,  142,
      142,  142,  142,  142,  142,  144,  144,  254,  144,  144,
      144,  144,  144,  144,  144,  147,  254,  254,  147,  149,

      149,  254,  149,  149,  149,  149,  149,  149,  149,  152,
      152,  254,  152,  152,  152,  152,  152,  152,  152,  154,
      154,  254,  154,  154,  154,  154,  254,  154,  154,  155,
      155,  254,  254,  254,  155,  155,  155,  156,  156,  254,
      156,  156,  156,  156,  156,  156,  156,  160,  254,  254,
      160,  161,  161,  161,  161,  161,  161,  161,  161,  161,
      161,  163,  163,  254,  254,  163,  163,  254,  163,  163,
      163,  164,  164,  254,  164,  164,  164,  164,  164,  164,
      164,  166,  166,  254,  166,  166,  166,  166,  166,  166,
      166,  168,  168,  168,  168,  168,  168,  168,  168,  168,

      168,  170,  170,  170,  170,  170,  170,  170,  170,  170,
      170,  179,  179,  254,  179,  179,  179,  179,  179,  179,
      185,  185,  254,  185,  185,  185,  185,  185,  185,  185,
      186,  186,  186,  186,  186,  186,  186,  186,  186,  186,
      193,  193,  193,  193,  193,  193,  193,  193,  193,  193,
      211,  211,  211,  211,  211,  211,  211,  211,  211,  211,
      213,  213,  213,  213,  213,  213,  213,  213,  213,  213,
      215,  215,  215,  215,  215,  215,  215,  215,  215,  215,
       31,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,

      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254
    );

yy_chk : constant array(0..1124) of short :=
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
        3,   78,    3,   46,   46,    3,   46,  253,    3,  252,

        3,  251,    3,    3,    9,    9,    9,    9,   10,   10,
       10,   10,   15,   78,   27,   28,   33,   33,   33,   33,
      250,   15,  248,   16,   15,    3,    3,    4,    4,    4,
        4,    4,   16,    4,    4,   16,    4,   17,    4,    4,
       17,    4,   18,    4,    4,   18,    4,   62,   29,   62,
       62,   29,   15,   17,   27,   28,   90,  247,   18,  104,
      104,  104,  104,   16,   29,   90,    4,    4,   11,   11,
       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,

       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
       11,   19,   20,   81,   85,   21,   50,  123,  123,  207,
      207,   19,   20,   22,  246,   21,  245,   19,   20,   19,
       20,   21,   21,   22,   50,   81,   85,  244,   50,   22,
       22,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   30,   39,  136,   30,   36,   36,
       36,   36,   43,   43,   43,   43,  136,  156,  243,   36,

       30,  107,  107,  107,  107,  124,  156,  242,  128,  174,
      124,   39,  107,  174,  174,   39,  128,  128,  128,  128,
      128,  145,  241,  145,  145,  183,  197,  124,  233,  233,
      197,  197,   43,   51,   51,  183,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,
       51,   51,   51,   51,   51,   51,   52,   52,   52,   52,
      118,  118,  118,  118,  151,  236,  240,   52,  236,  178,
      239,  238,  151,  151,  151,  151,  151,  178,  178,  178,

      178,  178,  184,  237,  235,  234,  230,  226,  221,  219,
      215,  213,  184,  211,  209,  206,   52,  205,  203,  202,
      118,  131,  131,  201,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  131,
      131,  131,  131,  131,  133,  133,  133,  133,  189,  199,
      196,  195,  193,  200,  188,  133,  189,  189,  189,  189,
      189,  200,  200,  200,  200,  200,  204,  186,  182,  177,
      176,  210,  172,  170,  204,  204,  204,  204,  204,  210,

      210,  210,  210,  210,  133,  159,  159,  159,  159,  159,
      159,  159,  159,  159,  159,  159,  159,  159,  159,  159,
      159,  159,  159,  159,  159,  159,  159,  159,  159,  159,
      159,  159,  159,  159,  159,  159,  159,  159,  159,  159,
      159,  159,  159,  159,  159,  159,  159,  159,  175,  168,
      167,  165,  175,  175,  161,  150,  175,  175,  175,  175,
      175,  192,  192,  148,  192,  192,  142,  192,  192,  192,
      139,  192,  192,  192,  217,  192,  192,  192,  192,  192,
      192,  192,  217,  217,  217,  217,  217,  222,  138,  135,
      132,  127,  126,  122,  120,  222,  222,  222,  222,  222,

      116,  114,  192,  198,  112,  110,  109,  198,  198,   96,
       91,  198,  198,  198,  198,  198,  208,   82,   73,   67,
      208,  208,   59,   57,  208,  208,  208,  208,  208,  220,
       55,   54,   49,  220,  220,  223,   48,  220,  220,  220,
      220,  220,   40,  223,  223,  223,  223,  223,  225,   38,
       31,   26,  225,  225,  227,   25,  225,  225,  225,  225,
      225,  228,  227,  227,  227,  227,  227,   14,   13,  228,
      228,  228,  228,  228,  229,    8,    7,    6,  229,  229,
        5,    0,  229,  229,  229,  229,  229,  255,  255,  255,
      255,  255,  255,  255,  255,  255,  255,  256,  256,  256,

      256,  256,  256,  256,  256,  256,  256,  257,  257,  257,
      257,  257,  257,  257,  257,  257,  257,  258,  258,  258,
      258,  258,  258,  258,  258,  258,  258,  259,  259,  259,
      259,  259,  259,  259,  259,  259,  259,  260,  260,  260,
      260,  260,  260,  260,  260,  260,  260,  261,  261,  261,
      261,  261,  261,  261,  261,  261,  261,  262,  262,  262,
      262,  262,  262,  262,  262,  262,  262,  263,  263,  263,
      263,  263,  263,  263,  263,  263,  263,  264,  264,  264,
      264,  264,  264,  264,  264,  264,  264,  265,  265,  265,
      265,  265,  265,  265,  265,  265,  265,  266,    0,    0,

      266,  267,  267,  267,  267,  267,  267,  267,  267,  267,
      267,  268,  268,  268,  268,  268,  268,  268,  268,  268,
      268,  269,    0,    0,  269,  270,  270,    0,  270,  270,
      270,  270,    0,  270,  270,  271,  271,    0,  271,  271,
      271,  271,  271,  271,  271,  272,  272,  272,  272,  272,
      272,  272,  272,  272,  272,  273,  273,  273,  273,  273,
      273,  273,  273,  273,  273,  274,    0,    0,  274,  274,
      274,  274,  274,  274,  274,  275,  275,  275,  275,  275,
      275,  275,  275,  275,  275,  276,  276,    0,  276,  276,
      276,  276,  276,  276,  276,  277,    0,    0,  277,  278,

      278,    0,  278,  278,  278,  278,  278,  278,  278,  279,
      279,    0,  279,  279,  279,  279,  279,  279,  279,  280,
      280,    0,  280,  280,  280,  280,    0,  280,  280,  281,
      281,    0,    0,    0,  281,  281,  281,  282,  282,    0,
      282,  282,  282,  282,  282,  282,  282,  283,    0,    0,
      283,  284,  284,  284,  284,  284,  284,  284,  284,  284,
      284,  285,  285,    0,    0,  285,  285,    0,  285,  285,
      285,  286,  286,    0,  286,  286,  286,  286,  286,  286,
      286,  287,  287,    0,  287,  287,  287,  287,  287,  287,
      287,  288,  288,  288,  288,  288,  288,  288,  288,  288,

      288,  289,  289,  289,  289,  289,  289,  289,  289,  289,
      289,  290,  290,    0,  290,  290,  290,  290,  290,  290,
      291,  291,    0,  291,  291,  291,  291,  291,  291,  291,
      292,  292,  292,  292,  292,  292,  292,  292,  292,  292,
      293,  293,  293,  293,  293,  293,  293,  293,  293,  293,
      294,  294,  294,  294,  294,  294,  294,  294,  294,  294,
      295,  295,  295,  295,  295,  295,  295,  295,  295,  295,
      296,  296,  296,  296,  296,  296,  296,  296,  296,  296,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,

      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254,  254,  254,  254,  254,  254,  254,
      254,  254,  254,  254
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
	    if ( yy_current_state >= 255 ) then
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
		    if ( yy_current_state >= 255 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := Index;
if ( yy_current_state = 254 ) then
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
--# line 46 "scanner.l"
 indented_code := true; 

when 2 => 
--# line 47 "scanner.l"
 linenum := linenum + 1; ECHO;
				-- treat as a comment;
			

when 3 => 
--# line 50 "scanner.l"
 linenum := linenum + 1; ECHO; 

when 4 => 
--# line 51 "scanner.l"
 return ( SCDECL ); 

when 5 => 
--# line 52 "scanner.l"
 return ( XSCDECL ); 

when 6 => 
--# line 54 "scanner.l"
 return ( WHITESPACE ); 

when 7 => 
--# line 56 "scanner.l"

			sectnum := 2;
			misc.line_directive_out;
			ENTER(SECT2PROLOG);
			return ( SECTEND );
			

when 8 => 
--# line 63 "scanner.l"

			Put (Standard_Error, "old-style lex command at line ");
			Put (Standard_Error, Linenum);
			Put (Standard_Error, "ignored:");
			New_Line (Standard_Error );
			Put (Standard_Error, ASCII.HT );
			Put (Standard_Error, YYText (1 .. YYLength));
			Linenum := Linenum + 1;
			

when 9 => 
--# line 73 "scanner.l"

			nmstr := +YYText (1 .. YYLength);
			didadef := false;
			ENTER(PICKUPDEF);
			

when 10 => 
--# line 79 "scanner.l"
 nmstr := +YYText (1 .. YYLength);
			  return NAME;
			

when 11 => 
--# line 82 "scanner.l"
 linenum := linenum + 1;
			  -- allows blank lines in section 1;
			

when 12 => 
--# line 85 "scanner.l"
 linenum := linenum + 1; return Newline; 

when 13 => 
--# line 86 "scanner.l"
 misc.synerr( "illegal character" );ENTER(RECOVER);

when 14 => 
--# line 88 "scanner.l"
 null;
			  -- separates name and definition;
			

when 15 => 
--# line 92 "scanner.l"

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
--# line 109 "scanner.l"

			if ( not didadef ) then
			    misc.synerr( "incomplete name definition" );
			end if;
			ENTER(0);
			linenum := linenum + 1;
			

when 17 => 
--# line 117 "scanner.l"
 linenum := linenum + 1;
			  ENTER(0);
			  nmstr := +YYText (1 .. YYLength);
			  return NAME;
			

when 18 => 
yy_cp := yy_cp - 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 123 "scanner.l"

			linenum := linenum + 1;
			ACTION_ECHO;
			MARK_END_OF_PROLOG;
			ENTER(SECT2);
			

when 19 => 
--# line 130 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when YY_END_OF_BUFFER +SECT2PROLOG + 1 
 =>
--# line 132 "scanner.l"
 MARK_END_OF_PROLOG;
			  return End_Of_Input;
			

when 21 => 
--# line 136 "scanner.l"
 linenum := linenum + 1;
			  -- allow blank lines in sect2;

			-- this rule matches indented lines which
			-- are not comments.
when 22 => 
--# line 141 "scanner.l"

			misc.synerr("indented code found outside of action");
			linenum := linenum + 1;
			

when 23 => 
--# line 146 "scanner.l"
 ENTER(SC); return ( '<' ); 

when 24 => 
--# line 147 "scanner.l"
 return ( '^' ); 

when 25 => 
--# line 148 "scanner.l"
 ENTER(QUOTE); return ( '"' ); 

when 26 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 149 "scanner.l"
 ENTER(NUM); return ( '{' ); 

when 27 => 
--# line 150 "scanner.l"
 ENTER(BRACEERROR); 

when 28 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 151 "scanner.l"
 return ( '$' ); 

when 29 => 
--# line 153 "scanner.l"
 continued_action := true;
			  linenum := linenum + 1;
			  return Newline;
			

when 30 => 
--# line 158 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 31 => 
--# line 160 "scanner.l"

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
--# line 171 "scanner.l"

			bracelevel := 0;
			continued_action := false;
			ENTER(ACTION);
			return Newline;
			

when 33 => 
--# line 178 "scanner.l"
 linenum := linenum + 1; return Newline; 

when 34 => 
--# line 180 "scanner.l"
 return ( EOF_OP ); 

when 35 => 
--# line 182 "scanner.l"

			sectnum := 3;
			ENTER(SECT3);
			return ( End_Of_Input );
			-- to stop the parser
			

when 36 => 
--# line 189 "scanner.l"


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
--# line 214 "scanner.l"

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
--# line 232 "scanner.l"

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
--# line 249 "scanner.l"
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
--# line 263 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 41 => 
--# line 267 "scanner.l"
 linenum := linenum + 1; return Newline; 

when 42 => 
--# line 270 "scanner.l"
 return ( ',' ); 

when 43 => 
--# line 271 "scanner.l"
 ENTER(SECT2); return ( '>' ); 

when 44 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 272 "scanner.l"
 ENTER(CARETISBOL); return ( '>' ); 

when 45 => 
--# line 273 "scanner.l"
 nmstr := +YYText (1 .. YYLength);
			  return NAME;
			

when 46 => 
--# line 276 "scanner.l"
 misc.synerr( "bad start condition name" ); 

when 47 => 
--# line 278 "scanner.l"
 ENTER(SECT2); return ( '^' ); 

when 48 => 
--# line 281 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 49 => 
--# line 285 "scanner.l"
 ENTER(SECT2); return ( '"' ); 

when 50 => 
--# line 287 "scanner.l"

			misc.synerr( "missing quote" );
			ENTER(SECT2);
			linenum := linenum + 1;
			return ( '"' );
			

when 51 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 295 "scanner.l"
 ENTER(CCL); return ( '^' ); 

when 52 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 296 "scanner.l"
 return ( '^' ); 

when 53 => 
--# line 297 "scanner.l"
 ENTER(CCL); yylval := CHARACTER'POS('-'); return ( CHAR ); 

when 54 => 
--# line 298 "scanner.l"
 ENTER(CCL);
			  tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 55 => 
yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 304 "scanner.l"
 return ( '-' ); 

when 56 => 
--# line 305 "scanner.l"
 tmpbuf := +YYText (1 .. YYLength);
			  yylval := CHARACTER'POS (Element (tmpbuf, 1));
			  return CHAR;
			

when 57 => 
--# line 309 "scanner.l"
 ENTER(SECT2); return ( ']' ); 

when 58 => 
--# line 312 "scanner.l"

			yylval := misc.myctoi (+YYText (1 .. YYLength));
			return ( NUMBER );
			

when 59 => 
--# line 317 "scanner.l"
 return ( ',' ); 

when 60 => 
--# line 318 "scanner.l"
 ENTER(SECT2); return ( '}' ); 

when 61 => 
--# line 320 "scanner.l"

			misc.synerr( "bad character inside {}'s" );
			ENTER(SECT2);
			return ( '}' );
			

when 62 => 
--# line 326 "scanner.l"

			misc.synerr( "missing }" );
			ENTER(SECT2);
			linenum := linenum + 1;
			return ( '}' );
			

when 63 => 
--# line 334 "scanner.l"
 misc.synerr( "bad name in {}'s" ); ENTER(SECT2); 

when 64 => 
--# line 335 "scanner.l"
 misc.synerr( "missing }" );
			  linenum := linenum + 1;
			  ENTER(SECT2);
			

when 65 => 
--# line 340 "scanner.l"
 bracelevel := bracelevel + 1; 

when 66 => 
--# line 341 "scanner.l"
 bracelevel := bracelevel - 1; 

when 67 => 
--# line 342 "scanner.l"
 ACTION_ECHO; 

when 68 => 
--# line 343 "scanner.l"
 ACTION_ECHO; 

when 69 => 
--# line 344 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 70 => 
--# line 345 "scanner.l"
 ACTION_ECHO;
				  -- character constant;
			

when 71 => 
--# line 349 "scanner.l"
 ACTION_ECHO; ENTER(ACTION_STRING); 

when 72 => 
--# line 351 "scanner.l"

			linenum := linenum + 1;
			ACTION_ECHO;
			if ( bracelevel = 0 ) then
			    New_Line (Temp_Action_File);
			    ENTER(SECT2);
	                end if;
			

when 73 => 
--# line 359 "scanner.l"
 ACTION_ECHO; 

when 74 => 
--# line 361 "scanner.l"
 ACTION_ECHO; 

when 75 => 
--# line 362 "scanner.l"
 ACTION_ECHO; 

when 76 => 
--# line 363 "scanner.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 77 => 
--# line 364 "scanner.l"
 ACTION_ECHO; ENTER(ACTION); 

when 78 => 
--# line 365 "scanner.l"
 ACTION_ECHO; 

when 79 => 
--# line 368 "scanner.l"

			yylval :=
                          Unicode_Character'Pos
                           (Misc.MYESC (+YYText (1 .. YYLength)));

			return CHAR;
			

when 80 => 
--# line 376 "scanner.l"

			yylval :=
                          Unicode_Character'Pos
                           (misc.myesc (+YYText (1 .. YYLength)));
			ENTER(CCL);
			return ( CHAR );
			

when 81 => 
--# line 385 "scanner.l"
 if ( check_yylex_here ) then
				return End_Of_Input;
			  else
				ECHO;
			  end if;
			

when 82 => 
--# line 391 "scanner.l"
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
--# line 391 "scanner.l"
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
