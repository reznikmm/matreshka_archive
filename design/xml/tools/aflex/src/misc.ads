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
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/miscS.a,v 1.9 90/01/12 15:20:19 self Exp Locker: self $
with Ada.Strings.Unbounded;
with Ada.Text_IO;

with MISC_DEFS, TSTRING;
with Unicode;

package Misc is

   use Ada.Strings.Unbounded;
   use Ada.Text_IO;

   use MISC_DEFS;
  use TSTRING;
  procedure ACTION_OUT;
  procedure BUBBLE(V : in INT_PTR;
                   N : in INTEGER);
  function CLOWER(C : in INTEGER) return INTEGER;

   procedure CSHELL
    (V : in out Unicode_Character_Array;
     N : Integer);
   --  cshell - shell sort a character array in increasing order
   --
   --  description
   --    does a shell sort of the first n elements of array v.
   --
   --  passed
   --    v - array to be sorted
   --    n - number of elements of v to be sorted

   procedure DATAEND;
  procedure DATAFLUSH;
  procedure DATAFLUSH(FILE : in FILE_TYPE);

   function Aflex_Get_Time return Unbounded_String;
   --  aflex_gettime - return current time

   procedure Aflex_Error (Msg : in VSTRING);
   procedure Aflex_Error (Msg : Unbounded_String);
   procedure Aflex_Error (Msg : String);
   --  aflexerror - report an error message and terminate
   --  overloaded function, one for vstring, one for string.

  function ALL_UPPER(STR : in VSTRING) return BOOLEAN;
  function ALL_LOWER(STR : in VSTRING) return BOOLEAN;

   procedure Aflex_Fatal (Msg : VSTRING);
   procedure Aflex_Fatal (Msg : Unbounded_String);
   procedure Aflex_Fatal (Msg : String);
   --  aflexfatal - report a fatal error message and terminate
   --  overloaded function, one for vstring, one for string.

  procedure LINE_DIRECTIVE_OUT;
  procedure LINE_DIRECTIVE_OUT(OUTPUT_FILE_NAME : in FILE_TYPE);
  procedure MK2DATA(VALUE : in INTEGER);
  procedure MK2DATA(FILE  : in FILE_TYPE;
                    VALUE : in INTEGER);
  procedure MKDATA(VALUE : in INTEGER);
  function MYCTOI(NUM_ARRAY : in Unbounded_String) return INTEGER;

   function MYESC (ARR : in VSTRING) return Unicode.Unicode_Character;
   -- myesc - return character corresponding to escape sequence

  function OTOI(STR : in Unbounded_String) return CHARACTER;
  function READABLE_FORM(C : in CHARACTER) return Unbounded_String;
  procedure SYNERR(STR : in STRING);
  procedure TRANSITION_STRUCT_OUT(ELEMENT_V, ELEMENT_N : in INTEGER);
  function SET_YY_TRAILING_HEAD_MASK(SRC : in INTEGER) return INTEGER;
  function CHECK_YY_TRAILING_HEAD_MASK(SRC : in INTEGER) return INTEGER;
  function SET_YY_TRAILING_MASK(SRC : in INTEGER) return INTEGER;
  function CHECK_YY_TRAILING_MASK(SRC : in INTEGER) return INTEGER;
  function ISLOWER(C : in CHARACTER) return BOOLEAN;
  function ISUPPER(C : in CHARACTER) return BOOLEAN;
  function ISDIGIT(C : in CHARACTER) return BOOLEAN;
  function TOLOWER(C : in INTEGER) return INTEGER;

   function Basename return Unbounded_String;
   --  Basename - find the basename of a file

end Misc;
