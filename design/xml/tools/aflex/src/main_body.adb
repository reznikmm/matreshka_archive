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

-- TITLE main body
-- AUTHOR: John Self (UCI)
-- DESCRIPTION driver routines for aflex.  Calls drivers for all
-- high level routines from other packages.
-- $Header: /dc/uc/self/arcadia/aflex/ada/src/RCS/mainB.a,v 1.26 1992/12/29 22:46:15 self Exp self $

with Ada.Characters.Conversions;
with Ada.Command_Line;
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Unbounded;
with Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with MISC_DEFS, MISC, ECS, PARSER;
with MAIN_BODY, SKELETON_MANAGER, EXTERNAL_FILE_MANAGER;
use MISC_DEFS;
with Parser_Tokens;

package body Main_Body is

   use Ada.Characters.Conversions;
   use Ada.Command_Line;
   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Strings.Unbounded;
   use Ada.Strings.Wide_Wide_Unbounded;
   use Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;

   function "+" (Item : Unbounded_String) return String renames To_String;
   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   Aflex_Version : constant Wide_Wide_String := "1.4a";
   Start_Time    : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
   End_Time      : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;

   ---------------
   -- Aflex_End --
   ---------------

   procedure Aflex_End (Status : Integer) is
      TBLSIZ : Integer;

   begin
      Termination_Status := Status;

      Put_Line ("end " & Misc.Basename & ";");

      -- we'll return this value of the OS.

      if Is_Open (SkelFile) then
         Close (SkelFile);
      end if;

      if Is_Open (Temp_Action_File) then
         Delete (Temp_Action_File);
      end if;

      if Is_Open (Def_File) then
         Delete (Def_File);
      end if;

      if Backtrack_Report then
         if Num_Backtracking = 0 then
            Put_Line (Backtrack_File, "No backtracking.");

         else
            if FullTbl then
               Put (Backtrack_File, Num_Backtracking, 0);
               Put_Line
                (Backtrack_File, " backtracking (non-accepting) states.");

            else
               Put_Line
                (Backtrack_File, "Compressed tables always backtrack.");
            end if;
         end if;

         Close (Backtrack_File);
      end if;

      if PrintStats then
         End_Time := Misc.Aflex_Get_Time;

         Put_Line
          (Standard_Error,
           "aflex version " & Aflex_Version & " usage statistics:");

         Put_Line
          (Standard_Error,
           "  started at " & Start_Time & ", finished at " & End_Time);
         Put (Standard_Error, "  ");
         Put (Standard_Error, LastNFA, 0);
         Put (Standard_Error, '/');
         Put (Standard_Error, Current_MNS, 0);
         Put_Line (Standard_Error, "  NFA states");

         Put (Standard_Error, "  ");
         Put (Standard_Error, LastDFA, 0);
         Put (Standard_Error, '/');
         Put (Standard_Error, Current_Max_DFAS, 0);
         Put (Standard_Error, " DFA states (");
         Put (Standard_Error, TotNST, 0);
         Put (Standard_Error, "  words)");

         PUT (Standard_Error, "  ");
         PUT (Standard_Error, Num_Rules - 1, 0);

         -- - 1 for def. rule
         Put_Line (Standard_Error, "  rules");

         if Num_Backtracking = 0 then
            Put_Line (Standard_Error, "  No backtracking");

         else
            if FullTbl then
               Put (Standard_Error, "  ");
               Put (Standard_Error, Num_Backtracking, 0);
               Put_Line
                (Standard_Error, "  backtracking (non-accepting) states");

            else
               Put_Line
                (Standard_Error, " compressed tables always backtrack");
            end if;
         end if;

         if Bol_Needed then
            Put_Line (Standard_Error, "  Beginning-of-line patterns used");
         end if;

         Put (Standard_Error, "  ");
         Put (Standard_Error, LASTSC, 0);
         Put (Standard_Error, '/');
         Put (Standard_Error, CURRENT_MAX_SCS, 0);
         Put_Line (Standard_Error, " start conditions");

         Put (Standard_Error, "  ");
         Put (Standard_Error, NUMEPS, 0);
         Put (Standard_Error, " epsilon states, ");
         Put (Standard_Error, EPS2, 0);
         Put_Line (Standard_Error, "  double epsilon states");

         if LASTCCL = 0 then
            Put_Line (Standard_Error, "  no character classes");

         else
            Put (Standard_Error, "  ");
            Put (Standard_Error, LASTCCL, 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, CURRENT_MAXCCLS, 0);
            Put (Standard_Error, " character classes needed ");
            Put (Standard_Error, CCLMAP(LASTCCL) + CCLLEN(LASTCCL), 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, Current_Max_CCL_Table_Size, 0);
            Put (Standard_Error, " words of storage, ");
            Put (Standard_Error, CCLREUSE, 0);
            Put_Line (Standard_Error, "reused");
         end if;

         Put (Standard_Error, "  ");
         Put (Standard_Error, NUMSNPAIRS, 0);
         Put_Line (Standard_Error, " state/nextstate pairs created");

         Put (Standard_Error, "  ");
         Put (Standard_Error, NUMUNIQ, 0);
         Put (Standard_Error, '/');
         Put (Standard_Error, NUMDUP, 0);
         Put_Line (Standard_Error, " unique/duplicate transitions");

         if FULLTBL then
            TBLSIZ := LASTDFA*NUMECS;
            Put (Standard_Error, "  ");
            Put (Standard_Error, TBLSIZ, 0);
            Put_Line (Standard_Error, " table entries");

         else
            TBLSIZ := 2*(LASTDFA + NUMTEMPS) + 2*TBLEND;

            Put (Standard_Error, "  ");
            Put (Standard_Error, LASTDFA + NUMTEMPS, 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, CURRENT_MAX_DFAS, 0);
            Put_Line (Standard_Error, " base-def entries created");

            Put (Standard_Error, "  ");
            Put (Standard_Error, TBLEND, 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, CURRENT_MAX_XPAIRS, 0);
            Put (Standard_Error, " (peak ");
            Put (Standard_Error, PEAKPAIRS, 0);
            Put_Line (Standard_Error, ") nxt-chk entries created");

            Put (Standard_Error, "  ");
            Put (Standard_Error, NUMTEMPS*NUMMECS, 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, CURRENT_MAX_TEMPLATE_XPAIRS, 0);
            Put (Standard_Error, " (peak ");
            Put (Standard_Error, NUMTEMPS*NUMECS, 0);
            Put_Line (Standard_Error, ") template nxt-chk entries created");

            Put (Standard_Error, "  ");
            Put (Standard_Error, NUMMT, 0);
            Put_Line (Standard_Error, " empty table entries");
            Put (Standard_Error, "  ");
            Put (Standard_Error, NUMPROTS, 0);
            Put_Line (Standard_Error, " protos created");
            Put (Standard_Error, "  ");
            Put (Standard_Error, NUMTEMPS, 0);
            Put (Standard_Error, " templates created, ");
            Put (Standard_Error, TMPUSES, 0);
            Put_Line (Standard_Error, "uses");
         end if;

         if USEECS then
            TBLSIZ := TBLSIZ + CSIZE;
            Put_Line (Standard_Error, "  ");
            Put (Standard_Error, NUMECS, 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, CSIZE, 0);
            Put_Line (Standard_Error, " equivalence classes created");
         end if;

         if USEMECS then
            TBLSIZ := TBLSIZ + NUMECS;
            Put (Standard_Error, "  ");
            Put (Standard_Error, NUMMECS, 0);
            Put (Standard_Error, '/');
            Put (Standard_Error, CSIZE, 0);
            Put_Line (Standard_Error, " meta-equivalence classes created");
         end if;

         Put (Standard_Error, "  ");
         Put (Standard_Error, HSHCOL, 0);
         Put (Standard_Error, " (");
         Put (Standard_Error, HSHSAVE, 0);
         Put_Line (Standard_Error, " saved) hash collisions, ");
         Put (Standard_Error, DFAEQL, 0);
         Put_Line (Standard_Error, " DFAs equal");

         Put (Standard_Error, "  ");
         Put (Standard_Error, NUM_REALLOCS, 0);
         Put_Line (Standard_Error, " sets of reallocations needed");
         Put (Standard_Error, "  ");
         Put (Standard_Error, TBLSIZ, 0);
         Put_Line (Standard_Error, " total table entries needed");
      end if;

      if Status /= 0 then
         raise Aflex_Terminate;
      end if;
   end Aflex_End;

   ----------------
   -- Aflex_Init --
   ----------------

   procedure Aflex_Init is
      USE_STDOUT       : BOOLEAN;
      OUTPUT_SPEC_FILE : Ada.Wide_Wide_Text_IO.FILE_TYPE;
      INPUT_FILE       : Ada.Wide_Wide_Text_IO.FILE_TYPE;
      Arg_Num          : INTEGER;
      FLAG_POS         : INTEGER;
      Arg              : Unbounded_String;
      SKELNAME         : Unbounded_String;
      SKELNAME_USED    : BOOLEAN := FALSE;

   begin
      PRINTSTATS := FALSE;
      SYNTAXERROR := FALSE;
      TRACE := FALSE;
      SPPRDFLT := FALSE;
      INTERACTIVE := FALSE;
      CASEINS := FALSE;
      BACKTRACK_REPORT := FALSE;
      PERFORMANCE_REPORT := FALSE;
      DDEBUG := FALSE;
      FULLTBL := FALSE;
      CONTINUED_ACTION := FALSE;
      GEN_LINE_DIRS := TRUE;
      USEMECS := TRUE;
      USEECS := TRUE;

      USE_STDOUT := FALSE;

      -- do external files setup

      EXTERNAL_FILE_MANAGER.INITIALIZE_FILES;

      --  loop through the list of arguments

      Arg_Num := 1;

      while Arg_Num <= Argument_Count loop
         if Argument (Arg_Num)'Length < 2
           or else Argument (Arg_Num) (1) /= '-'
         then
            exit;
         end if;

         --  loop through the flags in this argument.

         Arg := +Argument (Arg_Num);
         FLAG_POS := 2;

         while FLAG_POS <= Length (Arg) loop
            case Element (Arg, FLAG_POS) is
               when 'b' =>
                  BACKTRACK_REPORT := TRUE;

               when 'd' =>
                  DDEBUG := TRUE;

               when 'f' =>
                  USEECS := FALSE;
                  USEMECS := FALSE;
                  FULLTBL := TRUE;

               when 'I' =>
                  INTERACTIVE := TRUE;

               when 'i' =>
                  CASEINS := TRUE;

               when 'L' =>
                  GEN_LINE_DIRS := FALSE;

               when 'p' =>
                  PERFORMANCE_REPORT := TRUE;

               when 'S' =>
                  if FLAG_POS /= 2 then
                     Misc.Aflex_Error ("-S flag must be given separately");
                  end if;

                  SKELNAME :=
                    Unbounded_Slice (Arg, FLAG_POS + 1, Length (Arg));
                  SKELNAME_USED := TRUE;

                  goto GET_NEXT_ARG;

               when 's' =>
                  SPPRDFLT := TRUE;

               when 't' =>
                  USE_STDOUT := TRUE;

               when 'T' =>
                  TRACE := TRUE;

               when 'v' =>
                  PRINTSTATS := TRUE;

-- UMASS CODES :
--    Added an flag to indicate whether or not the aflex generated
--    codes will be used by Ayacc extension. Ayacc extension has
--    more power in error recovery.
               when 'E' =>
                  Ayacc_Extension_Flag := TRUE;
-- END OF UMASS CODES.

               when others =>
                  Misc.Aflex_Error
                    ("unknown flag "
                     & To_Wide_Wide_Character (Element (Arg, FLAG_POS)));
            end case;
            FLAG_POS := FLAG_POS + 1;
         end loop;

         <<GET_NEXT_ARG>> Arg_Num := Arg_Num + 1;

         -- go on to next argument from list.
      end loop;

      if FULLTBL and USEMECS then
         Misc.Aflex_Error ("full table and -cm don't make sense together");
      end if;

      if FULLTBL and INTERACTIVE then
         Misc.Aflex_Error ("full table and -I are (currently) incompatible");
      end if;

      if Arg_Num <= Argument_Count then
         begin
            if (Arg_Num - Argument_Count + 1 > 1) then
               Misc.Aflex_Error ("extraneous argument(s) given");
            end if;

            --  Tell aflex where to read input from.
            In_File_Name := +Argument (Arg_Num);
            OPEN (INPUT_FILE, IN_FILE, Argument (Arg_Num), "wcem=8");
            SET_INPUT (INPUT_FILE);

         exception
            when NAME_ERROR =>
               Misc.Aflex_Fatal
                 ("can't open "
                  & To_Wide_Wide_String (To_String (In_File_Name)));
         end;
      end if;

      if not USE_STDOUT then
         EXTERNAL_FILE_MANAGER.GET_SCANNER_SPEC_FILE (OUTPUT_SPEC_FILE);
      end if;

      if BACKTRACK_REPORT then
         EXTERNAL_FILE_MANAGER.GET_BACKTRACK_FILE (BACKTRACK_FILE);
      end if;

      LASTCCL := 0;
      LASTSC := 0;

      --  initialize the statistics

      Start_Time := Misc.Aflex_Get_Time;

      begin
         --  open the skeleton file

         if SKELNAME_USED then
            OPEN(SKELFILE, IN_FILE, +SKELNAME, "wcem=8");
            SKELETON_MANAGER.SET_EXTERNAL_SKELETON;
         end if;

      exception
         when USE_ERROR | NAME_ERROR =>
            Misc.Aflex_Fatal
              ("couldn't open skeleton file "
               & To_Wide_Wide_String (To_String (SKELNAME)));
      end;

      -- without a third argument create make an anonymous temp file.

      begin
         CREATE(TEMP_ACTION_FILE, OUT_FILE, "", "wcem=8");
         CREATE(DEF_FILE, OUT_FILE, "", "wcem=8");

      exception
         when USE_ERROR | NAME_ERROR =>
            Misc.Aflex_Fatal ("can't create temporary file");
      end;

      LASTDFA := 0;
      LASTNFA := 0;
      NUM_RULES := 0;
      NUMAS := 0;
      NUMSNPAIRS := 0;
      TMPUSES := 0;
      NUMECS := 0;
      NUMEPS := 0;
      EPS2 := 0;
      NUM_REALLOCS := 0;
      HSHCOL := 0;
      DFAEQL := 0;
      TOTNST := 0;
      NUMUNIQ := 0;
      NUMDUP := 0;
      HSHSAVE := 0;
      EOFSEEN := FALSE;
      DATAPOS := 0;
      DATALINE := 0;
      NUM_BACKTRACKING := 0;
      ONESP := 0;
      NUMPROTS := 0;
      VARIABLE_TRAILING_CONTEXT_RULES := FALSE;
      BOL_NEEDED := FALSE;

      LINENUM := 1;
      SECTNUM := 1;
      FIRSTPROT := NIL;

      --  used in mkprot() so that the first proto goes in slot 1
      --  of the proto queue

      LASTPROT := 1;

      if USEECS then
         --  set up doubly-linked equivalence classes
         ECGROUP(1) := NIL;

         for CNT in 2 .. CSIZE loop
            ECGROUP(CNT) := CNT - 1;
            NEXTECM(CNT - 1) := CNT;
         end loop;

         NEXTECM(CSIZE) := NIL;

      else
         --  put everything in its own equivalence class

         for CNT in 1 .. CSIZE loop
            ECGROUP(CNT) := CNT;
            NEXTECM(CNT) := BAD_SUBSCRIPT;  -- to catch errors
         end loop;
      end if;

      SET_UP_INITIAL_ALLOCATIONS;
  end Aflex_Init;

  -- readin - read in the rules section of the input file(s)
  procedure READIN is
  begin
    SKELETON_MANAGER.SKEL_OUT;

    MISC.LINE_DIRECTIVE_OUT;

    PARSER.YYPARSE;

    if (USEECS) then
      ECS.CRE8ECS(NEXTECM, ECGROUP, CSIZE, NUMECS);
      ECS.CCL2ECL;
    else
      NUMECS := CSIZE;
    end if;

  exception
    when Parser_Tokens.Syntax_Error =>
      Misc.Aflex_Error
       ("fatal parse error at line " & Integer'Wide_Wide_Image (LINENUM));
      Main_Body.Aflex_End (1);
  end READIN;

  -- set_up_initial_allocations - allocate memory for internal tables
  procedure SET_UP_INITIAL_ALLOCATIONS is
  begin
    CURRENT_MNS := INITIAL_MNS;
    FIRSTST := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    LASTST := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    FINALST := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    TRANSCHAR := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    TRANS1 := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    TRANS2 := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    ACCPTNUM := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    ASSOC_RULE := ALLOCATE_INTEGER_ARRAY(CURRENT_MNS);
    STATE_TYPE := ALLOCATE_STATE_ENUM_ARRAY(CURRENT_MNS);

    CURRENT_MAX_RULES := INITIAL_MAX_RULES;
    RULE_TYPE := ALLOCATE_RULE_ENUM_ARRAY(CURRENT_MAX_RULES);
    RULE_LINENUM := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_RULES);

    CURRENT_MAX_SCS := INITIAL_MAX_SCS;
    SCSET := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_SCS);
    SCBOL := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_SCS);
    SCXCLU := ALLOCATE_BOOLEAN_ARRAY(CURRENT_MAX_SCS);
    SCEOF := ALLOCATE_BOOLEAN_ARRAY(CURRENT_MAX_SCS);
    SCNAME := ALLOCATE_VSTRING_ARRAY(CURRENT_MAX_SCS);
    ACTVSC := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_SCS);

    CURRENT_MAXCCLS := INITIAL_MAX_CCLS;
    CCLMAP := ALLOCATE_INTEGER_ARRAY(CURRENT_MAXCCLS);
    CCLLEN := ALLOCATE_INTEGER_ARRAY(CURRENT_MAXCCLS);
    CCLNG := ALLOCATE_INTEGER_ARRAY(CURRENT_MAXCCLS);

    Current_Max_CCL_Table_Size := Initial_Max_CCL_Table_Size;
    CCLTBL := Allocate_Unicode_Character_Array (Current_Max_CCL_Table_Size);

    CURRENT_MAX_DFA_SIZE := INITIAL_MAX_DFA_SIZE;

    CURRENT_MAX_XPAIRS := INITIAL_MAX_XPAIRS;
    NXT := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_XPAIRS);
    CHK := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_XPAIRS);

    CURRENT_MAX_TEMPLATE_XPAIRS := INITIAL_MAX_TEMPLATE_XPAIRS;
    TNXT := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_TEMPLATE_XPAIRS);

    CURRENT_MAX_DFAS := INITIAL_MAX_DFAS;
    BASE := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_DFAS);
    DEF := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_DFAS);
    DFASIZ := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_DFAS);
    ACCSIZ := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_DFAS);
    DHASH := ALLOCATE_INTEGER_ARRAY(CURRENT_MAX_DFAS);
    DSS := ALLOCATE_INT_PTR_ARRAY(CURRENT_MAX_DFAS);
    DFAACC := ALLOCATE_DFAACC_UNION(CURRENT_MAX_DFAS);
  end SET_UP_INITIAL_ALLOCATIONS;

end Main_Body;
