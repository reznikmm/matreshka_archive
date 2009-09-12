with ascan.DFA; use ascan.DFA; 
with ascan.IO; use ascan.IO; 
package body ascan is
package ascan_DFA renames ascan.DFA;
package ascan_IO renames ascan.IO;
   use Unicode;

beglin : boolean := false;
i, bracelevel: integer;

function get_token return Token is
    toktype : Token;
    didadef, indented_code : boolean;
    cclval : integer;
    nmdefptr : vstring;
    nmdef, tmpbuf : vstring;

procedure ACTION_ECHO is
begin
    text_io.put( temp_action_file, yytext(1..YYLength) );
end ACTION_ECHO;

procedure MARK_END_OF_PROLOG is
begin
     text_io.put( temp_action_file, "%%%% end of prolog" );
     text_io.new_line( temp_action_file );
end MARK_END_OF_PROLOG;

procedure PUT_BACK_STRING(str : vstring; start : integer) is
begin
	for i in reverse start+1..tstring.len(str) loop
	    unput( CHAR(str,i) );
	end loop;
end PUT_BACK_STRING;

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
YY_END_OF_BUFFER : constant := 82;
subtype yy_state_type is integer;
yy_current_state : yy_state_type;
INITIAL : constant := 0;
SECT2 : constant := 1;
SECT2PROLOG : constant := 2;
SECT3 : constant := 3;
PICKUPDEF : constant := 4;
SC : constant := 5;
CARETISBOL : constant := 6;
NUM : constant := 7;
QUOTE : constant := 8;
FIRSTCCL : constant := 9;
CCL : constant := 10;
ACTION : constant := 11;
RECOVER : constant := 12;
BRACEERROR : constant := 13;
ACTION_STRING : constant := 14;
yy_accept : constant array(0..227) of short :=
    (   0,
        0,    0,    0,    0,    0,    0,   80,   80,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
       82,   13,    6,   12,   10,    1,   11,   13,   13,   13,
        9,   39,   31,   32,   25,   39,   38,   23,   39,   39,
       39,   31,   21,   39,   39,   24,   81,   19,   80,   80,
       15,   14,   16,   45,   81,   41,   42,   44,   46,   60,
       61,   58,   57,   59,   47,   49,   48,   47,   53,   52,
       53,   53,   55,   55,   55,   56,   66,   71,   70,   72,
       66,   72,   67,   64,   65,   81,   17,   63,   62,   73,

       75,   76,   77,    6,   12,   10,    1,   11,    0,    0,
        2,    0,    7,    4,    5,    0,    9,   31,   32,    0,
       28,    0,    0,    0,   78,   78,   78,   27,   26,   27,
        0,   31,   21,    0,    0,   35,    0,    0,   19,   18,
       80,   80,   15,   14,   43,   44,   57,   79,   79,   79,
       50,   51,   54,   66,    0,   69,    0,   66,   67,    0,
       17,   73,   74,    0,    7,    0,    0,    3,    0,   29,
        0,   36,    0,    0,   78,    0,   27,   27,   37,    0,
        0,    0,   35,    0,   30,   79,    0,   66,   68,    0,
        0,    8,    0,    0,    0,    0,    0,    0,    0,    0,

        0,    0,    0,    0,    0,    0,    0,   22,    0,   22,
        0,   22,    0,    4,    0,    0,   78,   79,   34,    0,
       78,   79,    0,   78,   79,    0,    0
    ) ;

yy_ec : constant array(CHARACTER'FIRST..CHARACTER'LAST) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
        1,    4,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    5,    1,    6,    7,    8,    9,    1,   10,   11,
       11,   11,   11,   12,   13,   11,   14,   15,   15,   15,
       15,   15,   15,   15,   15,   15,   15,    1,    1,   16,
        1,   17,   11,    1,   23,   24,   24,   24,   25,   26,
       22,   22,   22,   22,   22,   22,   22,   22,   27,   22,
       22,   28,   29,   30,   31,   22,   22,   32,   22,   22,
       18,   19,   20,   21,   22,    1,   23,   24,   24,   24,

       25,   26,   22,   22,   22,   22,   22,   22,   22,   22,
       27,   22,   22,   28,   29,   30,   31,   22,   22,   32,
       22,   22,   33,   34,   35,    1,    1,    1,    1,    1,
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
        1,    1,    1,    1,    1
    ) ;

yy_meta : constant array(0..35) of short :=
    (   0,
        1,    2,    3,    2,    2,    4,    1,    1,    1,    5,
        1,    1,    6,    5,    6,    1,    1,    1,    7,    8,
        1,    9,    9,    9,    9,    9,    9,    9,    9,    9,
        9,    9,    5,    1,   10
    ) ;

yy_base : constant array(0..272) of short :=
    (   0,
        0,   35,   69,  102,  748,  743,  733,  723,   87,   91,
      134,  164,  701,  700,   97,  114,   78,   95,  121,  194,
      125,  128,  215,    0,  709,  689,  119,  136,  124,  149,
      691,  915,  170,  915,    0,  196,  915,  659,  173,  639,
        0,  915,  249,  915,  915,  175,  915,  631,  623,  138,
      269,  300,  915,  629,  624,  915,  611,    0,  610,  915,
        0,   74,  915,  915,  915,  915,  466,    0,  915,  915,
      915,  915,  471,  915,  915,  915,  915,  240,  915,  915,
      241,  468,  915,    0,  242,  915,    0,  915,  915,  160,
      462,  915,    0,  915,  915,  466,  915,  915,  915,    0,

      915,  915,    0,  256,  915,    0,  261,  915,  450,  454,
      915,  446,    0,  415,  915,  436,    0,  273,  915,  430,
      915,  404,  164,  291,  915,  413,  264,    0,  915,  322,
      414,  356,  915,  376,  201,    0,  385,  384,    0,  915,
      383,  915,    0,  206,  915,    0,  366,  915,  365,  293,
      915,  915,  915,    0,  193,  915,    0,  390,    0,  376,
      915,    0,  915,  365,    0,  333,  340,  915,  339,  915,
      312,  915,  266,  411,  323,  300,    0,    0,  915,  320,
      267,  307,    0,  311,  915,  297,  306,    0,  915,  306,
      279,  915,  241,  236,  321,  340,  347,  203,  182,  147,

      352,  103,  108,  248,  359,  417,  116,  915,   96,  915,
       83,  915,  423,  915,   65,  429,  435,  441,  915,  447,
      453,  459,  465,  915,  915,  308,  915,  491,  501,  511,
      521,  531,  541,  551,  561,  571,  581,  591,  601,  606,
      615,  625,  630,  639,  649,  659,  669,  679,  689,  699,
      709,  714,  723,  733,  743,  753,  761,  766,  775,  785,
      795,  805,  815,  825,  835,  844,  854,  864,  874,  884,
      894,  904
    ) ;

yy_def : constant array(0..272) of short :=
    (   0,
      227,  227,  228,  228,  229,  229,  230,  230,  231,  231,
      232,  232,  233,  233,  234,  234,  235,  235,  236,  236,
      237,  237,  227,   23,  238,  238,  233,  233,  239,  239,
      227,  227,  227,  227,  240,  227,  227,  241,  242,  227,
      243,  227,  227,  227,  227,  227,  227,  227,  244,  245,
      246,  247,  227,  227,  227,  227,  248,  249,  250,  227,
      251,  227,  227,  227,  227,  227,  227,  252,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  245,  227,  227,
      253,  254,  227,  255,  245,  227,  256,  227,  227,  257,
      256,  227,  258,  227,  227,  259,  227,  227,  227,  260,

      227,  227,  261,  227,  227,  240,  227,  227,  227,  241,
      227,  227,  262,  227,  227,  263,  243,  227,  227,  264,
      227,  227,  244,  244,  227,  227,  227,  265,  227,  265,
      227,  247,  227,  227,  264,  266,  267,  248,  249,  227,
      250,  227,  251,  227,  227,  252,  227,  227,  227,  227,
      227,  227,  227,  256,  257,  227,  257,  227,  258,  259,
      227,  260,  227,  268,  262,  227,  263,  227,  264,  227,
      227,  227,  244,  244,  227,  227,  265,  130,  227,  227,
      267,  264,  266,  267,  227,  227,  227,  158,  227,  269,
      268,  227,  227,  227,  244,  174,  227,  270,  271,  272,

      227,  227,  227,  244,  174,  227,  270,  227,  271,  227,
      272,  227,  227,  227,  227,  174,  227,  227,  227,  174,
      227,  227,  174,  227,  227,  244,    0,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227
    ) ;

yy_nxt : constant array(0..950) of short :=
    (   0,
       32,   33,   34,   33,   33,   32,   32,   32,   32,   32,
       32,   32,   32,   32,   32,   32,   32,   32,   32,   32,
       32,   35,   35,   35,   35,   35,   35,   35,   35,   35,
       35,   35,   32,   32,   32,   32,   36,   37,   36,   36,
       32,   38,   32,   39,   32,   32,   32,   40,   32,   32,
       32,   32,   32,   32,   32,   32,   41,   41,   41,   41,
       41,   41,   41,   41,   41,   41,   41,   32,   32,   32,
       43,   44,   43,   43,   45,  144,   46,  144,  144,   47,
       76,  219,   47,   77,   48,  212,   49,   50,   62,   63,
       62,   62,   62,   63,   62,   62,   78,   76,  210,   71,

       77,   51,   47,   52,   53,   52,   52,   45,   72,   46,
       54,   73,   47,   78,   55,   47,   71,   48,  208,   49,
       50,   98,   56,   65,  215,   72,  101,   65,   73,  102,
       65,   74,  214,   80,   51,   47,   65,   84,   98,   81,
       84,   82,  103,   85,   86,   66,   85,   86,   74,  212,
       67,  101,  126,   99,  102,   68,   68,   68,   68,   68,
       68,   68,   68,   68,   68,   68,   65,  103,  127,  156,
       99,  104,  105,  104,  104,   66,  121,  121,  157,  121,
       67,  113,  124,  172,  210,   68,   68,   68,   68,   68,
       68,   68,   68,   68,   68,   68,   65,  107,  108,  107,

      107,  114,  156,  170,  115,  208,   80,  144,  109,  144,
      144,  157,   81,  182,   82,   87,   87,   88,   87,   87,
       89,   87,   87,   87,   90,   87,   87,   91,   92,   87,
       87,   87,   87,   87,   87,   87,   93,   93,   93,   93,
       93,   93,   93,   93,   93,   93,   93,   94,   87,   95,
      118,  119,  118,  118,  126,  149,  126,  104,  105,  104,
      104,  203,  107,  108,  107,  107,  124,  172,  202,  185,
      127,  150,  127,  109,  118,  119,  118,  118,  176,  199,
      195,  192,  120,  129,  124,  172,  176,  176,  176,  176,
      130,  130,  130,  130,  130,  130,  130,  130,  130,  130,

      130,  132,  133,  132,  132,  173,  120,  187,  189,  170,
      123,  148,  134,  185,  197,  187,  187,  187,  187,  200,
      201,  174,  197,  197,  197,  197,  124,  172,  201,  201,
      201,  201,  198,  135,  178,  204,  178,  125,  194,  124,
      172,  170,  168,  178,  178,  178,  178,  178,  178,  178,
      178,  178,  178,  178,  205,  193,  179,  132,  133,  132,
      132,  206,  205,  205,  205,  205,  213,  192,  134,  206,
      206,  206,  206,  216,  213,  213,  213,  213,  161,  186,
      147,  216,  216,  216,  216,  142,  139,  185,  181,  135,
      188,  188,  189,  188,  188,  190,  188,  188,  188,  190,

      188,  188,  188,  190,  188,  188,  188,  188,  188,  188,
      188,  190,  190,  190,  190,  190,  190,  190,  190,  190,
      190,  190,  190,  188,  190,  196,  180,  175,  171,  124,
      172,  217,  170,  196,  196,  196,  196,  218,  168,  217,
      217,  217,  217,  220,  166,  218,  218,  218,  218,  221,
      164,  220,  220,  220,  220,  222,  111,  221,  221,  221,
      221,  223,  116,  222,  222,  222,  222,  224,  161,  223,
      223,  223,  223,  225,  158,  224,  224,  224,  224,  226,
      152,  225,  225,  225,  225,  147,  145,  226,  226,  226,
      226,   42,   42,   42,   42,   42,   42,   42,   42,   42,

       42,   57,   57,   57,   57,   57,   57,   57,   57,   57,
       57,   59,   59,   59,   59,   59,   59,   59,   59,   59,
       59,   61,   61,   61,   61,   61,   61,   61,   61,   61,
       61,   64,   64,   64,   64,   64,   64,   64,   64,   64,
       64,   65,   65,   65,   65,   65,   65,   65,   65,   65,
       65,   70,   70,   70,   70,   70,   70,   70,   70,   70,
       70,   75,   75,   75,   75,   75,   75,   75,   75,   75,
       75,   79,   79,   79,   79,   79,   79,   79,   79,   79,
       79,   83,   83,   83,   83,   83,   83,   83,   83,   83,
       83,   96,   96,   96,   96,   96,   96,   96,   96,   96,

       96,  100,  100,  100,  100,  100,  100,  100,  100,  100,
      100,  106,  142,  139,  106,  110,  110,  110,  110,  110,
      110,  110,  110,  110,  110,  112,  112,  112,  112,  112,
      112,  112,  112,  112,  112,  117,  137,  136,  117,  123,
      123,  124,  123,  123,  123,  123,  122,  123,  123,  125,
      125,  116,  125,  125,  125,  125,  125,  125,  125,  128,
      128,  111,  128,  128,  128,  128,  128,  128,  128,  131,
      131,  131,  131,  131,  131,  131,  131,  131,  131,  138,
      138,  138,  138,  138,  138,  138,  138,  138,  138,  140,
      227,   97,  140,  140,  140,  140,  140,  140,  140,  141,

      141,  141,  141,  141,  141,  141,  141,  141,  141,  143,
      143,   97,  143,  143,  143,  143,  143,  143,  143,  146,
       69,   69,  146,  148,  148,   60,  148,  148,  148,  148,
      148,  148,  148,  151,  151,   60,  151,  151,  151,  151,
      151,  151,  151,  153,  153,   58,  153,  153,  153,  153,
       58,  153,  153,  154,  154,  227,  227,  227,  154,  154,
      154,  155,  155,  227,  155,  155,  155,  155,  155,  155,
      155,  159,  227,  227,  159,  160,  160,  160,  160,  160,
      160,  160,  160,  160,  160,  162,  162,  227,  227,  162,
      162,  227,  162,  162,  162,  163,  163,  227,  163,  163,

      163,  163,  163,  163,  163,  165,  165,  227,  165,  165,
      165,  165,  165,  165,  165,  167,  167,  167,  167,  167,
      167,  167,  167,  167,  167,  169,  169,  169,  169,  169,
      169,  169,  169,  169,  169,  177,  177,  227,  177,  177,
      177,  177,  177,  177,  183,  183,  227,  183,  183,  183,
      183,  183,  183,  183,  184,  184,  184,  184,  184,  184,
      184,  184,  184,  184,  191,  191,  191,  191,  191,  191,
      191,  191,  191,  191,  190,  190,  190,  190,  190,  190,
      190,  190,  190,  190,  207,  207,  207,  207,  207,  207,
      207,  207,  207,  207,  209,  209,  209,  209,  209,  209,

      209,  209,  209,  209,  211,  211,  211,  211,  211,  211,
      211,  211,  211,  211,   31,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227
    ) ;

yy_chk : constant array(0..950) of short :=
    (   0,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
        1,    1,    1,    1,    1,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
        3,    3,    3,    3,    3,   62,    3,   62,   62,    3,
       17,  215,    3,   17,    3,  211,    3,    3,    9,    9,
        9,    9,   10,   10,   10,   10,   17,   18,  209,   15,

       18,    3,    3,    4,    4,    4,    4,    4,   15,    4,
        4,   15,    4,   18,    4,    4,   16,    4,  207,    4,
        4,   27,    4,   19,  203,   16,   29,   21,   16,   29,
       22,   15,  202,   19,    4,    4,   11,   21,   28,   19,
       22,   19,   29,   21,   21,   11,   22,   22,   16,  200,
       11,   30,   50,   27,   30,   11,   11,   11,   11,   11,
       11,   11,   11,   11,   11,   11,   12,   30,   50,   90,
       28,   33,   33,   33,   33,   12,   46,   46,   90,   46,
       12,   39,  123,  123,  199,   12,   12,   12,   12,   12,
       12,   12,   12,   12,   12,   12,   20,   36,   36,   36,

       36,   39,  155,  135,   39,  198,   20,  144,   36,  144,
      144,  155,   20,  135,   20,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
       43,   43,   43,   43,   78,   81,   85,  104,  104,  104,
      104,  194,  107,  107,  107,  107,  204,  204,  193,  181,
       78,   81,   85,  107,  118,  118,  118,  118,  127,  181,
      173,  191,   43,   51,  173,  173,  127,  127,  127,  127,
       51,   51,   51,   51,   51,   51,   51,   51,   51,   51,

       51,   52,   52,   52,   52,  124,  118,  150,  190,  182,
      124,  186,   52,  184,  176,  150,  150,  150,  150,  182,
      187,  124,  176,  176,  176,  176,  226,  226,  187,  187,
      187,  187,  180,   52,  130,  195,  130,  175,  171,  195,
      195,  169,  167,  130,  130,  130,  130,  130,  130,  130,
      130,  130,  130,  130,  196,  166,  130,  132,  132,  132,
      132,  197,  196,  196,  196,  196,  201,  164,  132,  197,
      197,  197,  197,  205,  201,  201,  201,  201,  160,  149,
      147,  205,  205,  205,  205,  141,  138,  137,  134,  132,
      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,

      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
      158,  158,  158,  158,  158,  174,  131,  126,  122,  174,
      174,  206,  120,  174,  174,  174,  174,  213,  116,  206,
      206,  206,  206,  216,  114,  213,  213,  213,  213,  217,
      112,  216,  216,  216,  216,  218,  110,  217,  217,  217,
      217,  220,  109,  218,  218,  218,  218,  221,   96,  220,
      220,  220,  220,  222,   91,  221,  221,  221,  221,  223,
       82,  222,  222,  222,  222,   73,   67,  223,  223,  223,
      223,  228,  228,  228,  228,  228,  228,  228,  228,  228,

      228,  229,  229,  229,  229,  229,  229,  229,  229,  229,
      229,  230,  230,  230,  230,  230,  230,  230,  230,  230,
      230,  231,  231,  231,  231,  231,  231,  231,  231,  231,
      231,  232,  232,  232,  232,  232,  232,  232,  232,  232,
      232,  233,  233,  233,  233,  233,  233,  233,  233,  233,
      233,  234,  234,  234,  234,  234,  234,  234,  234,  234,
      234,  235,  235,  235,  235,  235,  235,  235,  235,  235,
      235,  236,  236,  236,  236,  236,  236,  236,  236,  236,
      236,  237,  237,  237,  237,  237,  237,  237,  237,  237,
      237,  238,  238,  238,  238,  238,  238,  238,  238,  238,

      238,  239,  239,  239,  239,  239,  239,  239,  239,  239,
      239,  240,   59,   57,  240,  241,  241,  241,  241,  241,
      241,  241,  241,  241,  241,  242,  242,  242,  242,  242,
      242,  242,  242,  242,  242,  243,   55,   54,  243,  244,
      244,   49,  244,  244,  244,  244,   48,  244,  244,  245,
      245,   40,  245,  245,  245,  245,  245,  245,  245,  246,
      246,   38,  246,  246,  246,  246,  246,  246,  246,  247,
      247,  247,  247,  247,  247,  247,  247,  247,  247,  248,
      248,  248,  248,  248,  248,  248,  248,  248,  248,  249,
       31,   26,  249,  249,  249,  249,  249,  249,  249,  250,

      250,  250,  250,  250,  250,  250,  250,  250,  250,  251,
      251,   25,  251,  251,  251,  251,  251,  251,  251,  252,
       14,   13,  252,  253,  253,    8,  253,  253,  253,  253,
      253,  253,  253,  254,  254,    7,  254,  254,  254,  254,
      254,  254,  254,  255,  255,    6,  255,  255,  255,  255,
        5,  255,  255,  256,  256,    0,    0,    0,  256,  256,
      256,  257,  257,    0,  257,  257,  257,  257,  257,  257,
      257,  258,    0,    0,  258,  259,  259,  259,  259,  259,
      259,  259,  259,  259,  259,  260,  260,    0,    0,  260,
      260,    0,  260,  260,  260,  261,  261,    0,  261,  261,

      261,  261,  261,  261,  261,  262,  262,    0,  262,  262,
      262,  262,  262,  262,  262,  263,  263,  263,  263,  263,
      263,  263,  263,  263,  263,  264,  264,  264,  264,  264,
      264,  264,  264,  264,  264,  265,  265,    0,  265,  265,
      265,  265,  265,  265,  266,  266,    0,  266,  266,  266,
      266,  266,  266,  266,  267,  267,  267,  267,  267,  267,
      267,  267,  267,  267,  268,  268,  268,  268,  268,  268,
      268,  268,  268,  268,  269,  269,  269,  269,  269,  269,
      269,  269,  269,  269,  270,  270,  270,  270,  270,  270,
      270,  270,  270,  270,  271,  271,  271,  271,  271,  271,

      271,  271,  271,  271,  272,  272,  272,  272,  272,  272,
      272,  272,  272,  272,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227,
      227,  227,  227,  227,  227,  227,  227,  227,  227,  227
    ) ;


-- copy whatever the last rule matched to the standard output

procedure ECHO is
begin
   if (Text_IO.is_open(user_output_file)) then
     Text_IO.Put( user_output_file, yytext );
   else
     Text_IO.Put( yytext );
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
        yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
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

function yy_get_previous_state return yy_state_type is
    yy_current_state : yy_state_type;
    yy_c : short;
    yy_bp : integer := yytext_ptr;
begin
    yy_current_state := yy_start;
    if ( yy_ch_buf(yy_bp-1) = ASCII.LF ) then
	yy_current_state := yy_current_state + 1;
    end if;

    for yy_cp in yytext_ptr..yy_c_buf_p - 1 loop
	yy_c := yy_ec(yy_ch_buf(yy_cp));
	if (yy_accept(yy_current_state) /= 0 ) then
	    yy_last_accepting_state := yy_current_state;
	    yy_last_accepting_cpos := yy_cp;
	end if;
	while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
	    yy_current_state := yy_def(yy_current_state);
	    if ( yy_current_state >= 228 ) then
		yy_c := yy_meta(yy_c);
	    end if;
	end loop;
	yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
    end loop;

    return yy_current_state;
end yy_get_previous_state;

procedure yyrestart( input_file : file_type ) is
begin
   open_input(Text_IO.name(input_file));
end yyrestart;
pragma Inline (yyrestart);

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

        yy_ch_buf(0) := ASCII.LF;
        yy_n_chars := 1;

        -- we always need two end-of-buffer characters.  The first causes
        -- a transition to the end-of-buffer state.  The second causes
        -- a jam in that state.

        yy_ch_buf(yy_n_chars) := YY_END_OF_BUFFER_CHAR;
        yy_ch_buf(yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;

        yy_eof_has_been_seen := false;

        yytext_ptr := 1;
        yy_c_buf_p := yytext_ptr;
        yy_hold_char := yy_ch_buf(yy_c_buf_p);
        yy_init := false;
    end if; -- yy_init

    loop                -- loops until end-of-file is reached


        yy_cp := yy_c_buf_p;

        -- support of yytext
        yy_ch_buf(yy_cp) := yy_hold_char;

        -- yy_bp points to the position in yy_ch_buf of the start of the
        -- current run.
	yy_bp := yy_cp;
	yy_current_state := yy_start;
	if ( yy_ch_buf(yy_bp-1) = ASCII.LF ) then
	    yy_current_state := yy_current_state + 1;
	end if;
	loop
		yy_c := yy_ec(yy_ch_buf(yy_cp));
		if (yy_accept(yy_current_state) /= 0 ) then
		    yy_last_accepting_state := yy_current_state;
		    yy_last_accepting_cpos := yy_cp;
		end if;
		while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
		    yy_current_state := yy_def(yy_current_state);
		    if ( yy_current_state >= 228 ) then
			yy_c := yy_meta(yy_c);
		    end if;
		end loop;
		yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
	    yy_cp := yy_cp + 1;
if ( yy_current_state = 227 ) then
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
            text_io.put( Standard_Error, "--accepting rule #" );
            text_io.put( Standard_Error, INTEGER'IMAGE(yy_act) );
            text_io.put_line( Standard_Error, "(""" & yytext & """)");
        end if;


<<do_action>>   -- this label is used only to access EOF actions
            case yy_act is
		when 0 => -- must backtrack
		-- undo the effects of YY_DO_BEFORE_ACTION
		yy_ch_buf(yy_cp) := yy_hold_char;
		yy_cp := yy_last_accepting_cpos;
		yy_current_state := yy_last_accepting_state;
		goto next_action;



when 1 => 
--# line 46 "ascan.l"
 indented_code := true; 

when 2 => 
--# line 47 "ascan.l"
 linenum := linenum + 1; ECHO;
				-- treat as a comment;
			

when 3 => 
--# line 50 "ascan.l"
 linenum := linenum + 1; ECHO; 

when 4 => 
--# line 51 "ascan.l"
 return ( SCDECL ); 

when 5 => 
--# line 52 "ascan.l"
 return ( XSCDECL ); 

when 6 => 
--# line 54 "ascan.l"
 return ( WHITESPACE ); 

when 7 => 
--# line 56 "ascan.l"

			sectnum := 2;
			misc.line_directive_out;
			ENTER(SECT2PROLOG);
			return ( SECTEND );
			

when 8 => 
--# line 63 "ascan.l"

			text_io.put( Standard_Error, "old-style lex command at line " );
			int_io.put( Standard_Error, linenum );
			text_io.put( Standard_Error, "ignored:" );
			text_io.new_line( Standard_Error );
			text_io.put( Standard_Error, ASCII.HT );
			text_io.put( Standard_Error, yytext(1..YYLength) );
			linenum := linenum + 1;
			

when 9 => 
--# line 73 "ascan.l"

			nmstr := vstr(yytext(1..YYLength));
			didadef := false;
			ENTER(PICKUPDEF);
			

when 10 => 
--# line 79 "ascan.l"
 nmstr := vstr(yytext(1..YYLength));
			  return NAME;
			

when 11 => 
--# line 82 "ascan.l"
 linenum := linenum + 1;
			  -- allows blank lines in section 1;
			

when 12 => 
--# line 85 "ascan.l"
 linenum := linenum + 1; return Newline; 

when 13 => 
--# line 86 "ascan.l"
 misc.synerr( "illegal character" );ENTER(RECOVER);

when 14 => 
--# line 88 "ascan.l"
 null;
			  -- separates name and definition;
			

when 15 => 
--# line 92 "ascan.l"

			nmdef := vstr(yytext(1..YYLength));

			i := tstring.len( nmdef );
			while ( i >= tstring.first ) loop
			    if ( (CHAR(nmdef,i) /= ' ') and
				 (CHAR(nmdef,i) /= ASCII.HT) ) then
				exit;
			    end if;
			    i := i - 1;
			end loop;

                        sym.ndinstal( nmstr,
				tstring.slice(nmdef, tstring.first, i) );
			didadef := true;
			

when 16 => 
--# line 109 "ascan.l"

			if ( not didadef ) then
			    misc.synerr( "incomplete name definition" );
			end if;
			ENTER(0);
			linenum := linenum + 1;
			

when 17 => 
--# line 117 "ascan.l"
 linenum := linenum + 1;
			  ENTER(0);
			  nmstr := vstr(yytext(1..YYLength));
			  return NAME;
			

when 18 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
yy_cp := yy_cp - 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 123 "ascan.l"

			linenum := linenum + 1;
			ACTION_ECHO;
			MARK_END_OF_PROLOG;
			ENTER(SECT2);
			

when 19 => 
--# line 130 "ascan.l"
 linenum := linenum + 1; ACTION_ECHO; 

when YY_END_OF_BUFFER +SECT2PROLOG + 1 
 =>
--# line 132 "ascan.l"
 MARK_END_OF_PROLOG;
			  return End_Of_Input;
			

when 21 => 
--# line 136 "ascan.l"
 linenum := linenum + 1;
			  -- allow blank lines in sect2;

			-- this rule matches indented lines which
			-- are not comments.
when 22 => 
--# line 141 "ascan.l"

			misc.synerr("indented code found outside of action");
			linenum := linenum + 1;
			

when 23 => 
--# line 146 "ascan.l"
 ENTER(SC); return ( '<' ); 

when 24 => 
--# line 147 "ascan.l"
 return ( '^' ); 

when 25 => 
--# line 148 "ascan.l"
 ENTER(QUOTE); return ( '"' ); 

when 26 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
 yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 149 "ascan.l"
 ENTER(NUM); return ( '{' ); 

when 27 => 
--# line 150 "ascan.l"
 ENTER(BRACEERROR); 

when 28 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
 yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 151 "ascan.l"
 return ( '$' ); 

when 29 => 
--# line 153 "ascan.l"
 continued_action := true;
			  linenum := linenum + 1;
			  return Newline;
			

when 30 => 
--# line 158 "ascan.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 31 => 
--# line 160 "ascan.l"

			-- this rule is separate from the one below because
			-- otherwise we get variable trailing context, so
			-- we can't build the scanner using -f,F

			bracelevel := 0;
			continued_action := false;
			ENTER(ACTION);
			return Newline;
			

when 32 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
yy_cp := yy_cp - 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 171 "ascan.l"

			bracelevel := 0;
			continued_action := false;
			ENTER(ACTION);
			return Newline;
			

when 33 => 
--# line 178 "ascan.l"
 linenum := linenum + 1; return Newline; 

when 34 => 
--# line 180 "ascan.l"
 return ( EOF_OP ); 

when 35 => 
--# line 182 "ascan.l"

			sectnum := 3;
			ENTER(SECT3);
			return ( End_Of_Input );
			-- to stop the parser
			

when 36 => 
--# line 189 "ascan.l"


			nmstr := vstr(yytext(1..YYLength));

			-- check to see if we've already encountered this ccl
                        cclval := sym.ccllookup( nmstr );
			if ( cclval /= 0 ) then
			    yylval := cclval;
			    cclreuse := cclreuse + 1;
			    return ( PREVCCL );
			else
			    -- we fudge a bit.  We know that this ccl will
			    -- soon be numbered as lastccl + 1 by cclinit
			    sym.cclinstal( nmstr, lastccl + 1 );

			    -- push back everything but the leading bracket
			    -- so the ccl can be rescanned

			    PUT_BACK_STRING(nmstr, 1);

			    ENTER(FIRSTCCL);
			    return ( '[' );
			end if;
			

when 37 => 
--# line 214 "ascan.l"

			nmstr := vstr(yytext(1..YYLength));
			-- chop leading and trailing brace
			tmpbuf := slice(vstr(yytext(1..YYLength)),
								2, YYLength-1);

			nmdefptr := sym.ndlookup( tmpbuf );
			if nmdefptr = TString.NUL then
			    misc.synerr( "undefined {name}" );
			else
			    -- push back name surrounded by ()'s
			    unput(')');
			    PUT_BACK_STRING(nmdefptr, 0);
			    unput('(');
			end if;
			

when 38 => 
--# line 231 "ascan.l"
 tmpbuf := vstr(yytext(1..YYLength));
			  case tstring.CHAR(tmpbuf,1) is
				when '/' => return '/';
				when '|' => return '|';
				when '*' => return '*';
				when '+' => return '+';
				when '?' => return '?';
				when '.' => return '.';
				when '(' => return '(';
				when ')' => return ')';
				when others =>
					misc.aflexerror("error in aflex case");
			  end case;
			

when 39 => 
--# line 245 "ascan.l"
 tmpbuf := vstr(yytext(1..YYLength));
			  yylval := CHARACTER'POS(CHAR(tmpbuf,1));
			  return CHAR;
			

when 40 => 
--# line 249 "ascan.l"
 linenum := linenum + 1; return Newline; 

when 41 => 
--# line 252 "ascan.l"
 return ( ',' ); 

when 42 => 
--# line 253 "ascan.l"
 ENTER(SECT2); return ( '>' ); 

when 43 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
 yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 254 "ascan.l"
 ENTER(CARETISBOL); return ( '>' ); 

when 44 => 
--# line 255 "ascan.l"
 nmstr := vstr(yytext(1..YYLength));
			  return NAME;
			

when 45 => 
--# line 258 "ascan.l"
 misc.synerr( "bad start condition name" ); 

when 46 => 
--# line 260 "ascan.l"
 ENTER(SECT2); return ( '^' ); 

when 47 => 
--# line 263 "ascan.l"
 tmpbuf := vstr(yytext(1..YYLength));
			  yylval := CHARACTER'POS(CHAR(tmpbuf,1));
			  return CHAR;
			

when 48 => 
--# line 267 "ascan.l"
 ENTER(SECT2); return ( '"' ); 

when 49 => 
--# line 269 "ascan.l"

			misc.synerr( "missing quote" );
			ENTER(SECT2);
			linenum := linenum + 1;
			return ( '"' );
			

when 50 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
 yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 277 "ascan.l"
 ENTER(CCL); return ( '^' ); 

when 51 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
 yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 278 "ascan.l"
 return ( '^' ); 

when 52 => 
--# line 279 "ascan.l"
 ENTER(CCL); yylval := CHARACTER'POS('-'); return ( CHAR ); 

when 53 => 
--# line 280 "ascan.l"
 ENTER(CCL);
			  tmpbuf := vstr(yytext(1..YYLength));
			  yylval := CHARACTER'POS(CHAR(tmpbuf,1));
			  return CHAR;
			

when 54 => 
yy_ch_buf(yy_cp) := yy_hold_char; -- undo effects of setting up yytext
 yy_cp := yy_bp + 1;
yy_c_buf_p := yy_cp;
YY_DO_BEFORE_ACTION; -- set up yytext again
--# line 286 "ascan.l"
 return ( '-' ); 

when 55 => 
--# line 287 "ascan.l"
 tmpbuf := vstr(yytext(1..YYLength));
			  yylval := CHARACTER'POS(CHAR(tmpbuf,1));
			  return CHAR;
			

when 56 => 
--# line 291 "ascan.l"
 ENTER(SECT2); return ( ']' ); 

when 57 => 
--# line 294 "ascan.l"

			yylval := misc.myctoi( vstr(yytext(1..YYLength)) );
			return ( NUMBER );
			

when 58 => 
--# line 299 "ascan.l"
 return ( ',' ); 

when 59 => 
--# line 300 "ascan.l"
 ENTER(SECT2); return ( '}' ); 

when 60 => 
--# line 302 "ascan.l"

			misc.synerr( "bad character inside {}'s" );
			ENTER(SECT2);
			return ( '}' );
			

when 61 => 
--# line 308 "ascan.l"

			misc.synerr( "missing }" );
			ENTER(SECT2);
			linenum := linenum + 1;
			return ( '}' );
			

when 62 => 
--# line 316 "ascan.l"
 misc.synerr( "bad name in {}'s" ); ENTER(SECT2); 

when 63 => 
--# line 317 "ascan.l"
 misc.synerr( "missing }" );
			  linenum := linenum + 1;
			  ENTER(SECT2);
			

when 64 => 
--# line 322 "ascan.l"
 bracelevel := bracelevel + 1; 

when 65 => 
--# line 323 "ascan.l"
 bracelevel := bracelevel - 1; 

when 66 => 
--# line 324 "ascan.l"
 ACTION_ECHO; 

when 67 => 
--# line 325 "ascan.l"
 ACTION_ECHO; 

when 68 => 
--# line 326 "ascan.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 69 => 
--# line 327 "ascan.l"
 ACTION_ECHO;
				  -- character constant;
			

when 70 => 
--# line 331 "ascan.l"
 ACTION_ECHO; ENTER(ACTION_STRING); 

when 71 => 
--# line 333 "ascan.l"

			linenum := linenum + 1;
			ACTION_ECHO;
			if ( bracelevel = 0 ) then
			    text_io.new_line ( temp_action_file );
			    ENTER(SECT2);
	                end if;
			

when 72 => 
--# line 341 "ascan.l"
 ACTION_ECHO; 

when 73 => 
--# line 343 "ascan.l"
 ACTION_ECHO; 

when 74 => 
--# line 344 "ascan.l"
 ACTION_ECHO; 

when 75 => 
--# line 345 "ascan.l"
 linenum := linenum + 1; ACTION_ECHO; 

when 76 => 
--# line 346 "ascan.l"
 ACTION_ECHO; ENTER(ACTION); 

when 77 => 
--# line 347 "ascan.l"
 ACTION_ECHO; 

when 78 => 
--# line 350 "ascan.l"

			yylval :=
                          Unicode_Character'Pos
                           (Misc.MYESC (vstr (yytext (1 .. YYLength))));

			return CHAR;
			

when 79 => 
--# line 358 "ascan.l"

			yylval :=
                          Unicode_Character'Pos
                           (misc.myesc (vstr (yytext (1 .. YYLength))));
			ENTER(CCL);
			return ( CHAR );
			

when 80 => 
--# line 367 "ascan.l"
 if ( check_yylex_here ) then
				return End_Of_Input;
			  else
				ECHO;
			  end if;
			

when 81 => 
--# line 373 "ascan.l"
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
                    -- undo the effects of YY_DO_BEFORE_ACTION
                    yy_ch_buf(yy_cp) := yy_hold_char;

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
                            yy_hold_char := yy_ch_buf(yy_c_buf_p);
                        when EOB_ACT_LAST_MATCH =>
                            yy_c_buf_p := yy_n_chars;
                            yy_current_state := yy_get_previous_state;

                            yy_cp := yy_c_buf_p;
                            yy_bp := yytext_ptr;
                            goto next_action;
                        when others => null;
                        end case; -- case yy_get_next_buffer()
                when others =>
                    text_io.put( "action # " );
                    text_io.put( INTEGER'IMAGE(yy_act) );
                    text_io.new_line;
                    raise AFLEX_INTERNAL_ERROR;
            end case; -- case (yy_act)
        end loop; -- end of loop waiting for end of file
end YYLex;
--# line 373 "ascan.l"
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
text_io.new_line(Standard_Error);
text_io.put(Standard_Error, "toktype = :" );
text_io.put(Standard_Error, Token'image(toktype));
text_io.put_line(Standard_Error, ":" );
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
	    int_io.put( Standard_Error, num_rules + 1 );
	    text_io.put( Standard_Error, ASCII.HT );
	    beglin := false;
    	end if;

	case toktype is
	    when '<' | '>'|'^'|'$'|'"'|'['|']'|'{'|'}'|'|'|'('|
    	    	 ')'|'-'|'/'|'?'|'.'|'*'|'+'|',' =>
		text_io.put( Standard_Error, Token'image(toktype) );

	    when NEWLINE =>
		text_io.new_line(Standard_Error);
		if ( sectnum = 2 ) then
		    beglin := true;
    	    	end if;

	    when SCDECL =>
		text_io.put( Standard_Error, "%s" );

	    when XSCDECL =>
   		text_io.put( Standard_Error, "%x" );

	    when WHITESPACE =>
       		text_io.put( Standard_Error, " " );

	    when SECTEND =>
       		text_io.put_line( Standard_Error, "%%" );

		-- we set beglin to be true so we'll start
		-- writing out numbers as we echo rules.  aflexscan() has
		-- already assigned sectnum

		if ( sectnum = 2 ) then
		    beglin := true;
    	    	end if;

	    when NAME =>
		text_io.put( Standard_Error, ''' );
		text_io.put( Standard_Error, YYText);
		text_io.put( Standard_Error, ''' );

	    when CHAR =>
	    	if ( (yylval < CHARACTER'POS(' ')) or
		     (yylval = CHARACTER'POS(ASCII.DEL)) ) then
		    text_io.put( Standard_Error, '\' );
		    int_io.put( Standard_Error, yylval );
    		    text_io.put( Standard_Error, '\' );
		else
		    text_io.put( Standard_Error, Token'image(toktype) );
    	    	end if;

	    when NUMBER =>
    	    	int_io.put( Standard_Error, yylval );

	    when PREVCCL =>
		text_io.put( Standard_Error, '[' );
   	    	int_io.put( Standard_Error, yylval );
		text_io.put( Standard_Error, ']' );

    	    when End_Of_Input =>
    	    	text_io.put( Standard_Error, "End Marker" );

	    when others =>
	    	text_io.put( Standard_Error, "Something weird:" );
		text_io.put_line( Standard_Error, Token'image(toktype));
    	end case;
    end if;

    return toktype;

end get_token;
end ascan;
