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

-- TITLE symbol table routines
-- AUTHOR: John Self (UCI)
-- DESCRIPTION implements only a simple symbol table using open hashing
-- NOTES could be faster, but it isn't used much
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/symB.a,v 1.6 90/01/12 15:20:39 self Exp Locker: self $
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with MISC, NFA;

package body SYM is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Strings.Wide_Wide_Unbounded;
   use Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;

   ------------
   -- ADDSYM --
   ------------

   -- addsym - add symbol and definitions to symbol table
   --
   -- true is returned if the symbol already exists, and the change not made.

   procedure ADDSYM
     (SYM        : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      STR_DEF    : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      INT_DEF    : INTEGER;
      TABLE      : in out HASH_TABLE;
      TABLE_SIZE : INTEGER;
      RESULT     : out BOOLEAN)
   is
      HASH_VAL             : constant INTEGER := HASHFUNCT (SYM, TABLE_SIZE);
      SYM_ENTRY            : HASH_LINK := TABLE(HASH_VAL);
      NEW_ENTRY, SUCCESSOR : HASH_LINK;
   begin
      while (SYM_ENTRY /= null) loop
         if (SYM = SYM_ENTRY.NAME) then

            -- entry already exists
            RESULT := TRUE;

            return;
         end if;

         SYM_ENTRY := SYM_ENTRY.NEXT;
      end loop;

      -- create new entry
      NEW_ENTRY := new HASH_ENTRY;

      SUCCESSOR := TABLE(HASH_VAL);
      if ((SUCCESSOR /= null)) then
         NEW_ENTRY.NEXT := SUCCESSOR;
         SUCCESSOR.PREV := NEW_ENTRY;
      else
         NEW_ENTRY.NEXT := null;
      end if;

      NEW_ENTRY.PREV := null;
      NEW_ENTRY.NAME := SYM;
      NEW_ENTRY.STR_VAL := STR_DEF;
      NEW_ENTRY.INT_VAL := INT_DEF;

      TABLE(HASH_VAL) := NEW_ENTRY;

      RESULT := FALSE;

      return;

   exception
      when STORAGE_ERROR =>
         Misc.Aflex_Fatal ("symbol table memory allocation failed");
   end ADDSYM;


   ---------------
   -- CCLINSTAL --
   ---------------

   -- cclinstal - save the text of a character class

   procedure CCLINSTAL
     (CCLTXT : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      CCLNUM : in INTEGER)
   is
      -- we don't bother checking the return status because we are not called
      -- unless the symbol is new
      DUMMY : BOOLEAN;

   begin
      ADDSYM
        (CCLTXT,
         Null_Unbounded_Wide_Wide_String,
         CCLNUM,
         CCLTAB,
         CCL_HASH_SIZE,
         DUMMY);
   end CCLINSTAL;

   ---------------
   -- CCLLOOKUP --
   ---------------

   -- ccllookup - lookup the number associated with character class text

   function CCLLOOKUP
     (CCLTXT : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return INTEGER is
   begin
      return FINDSYM (CCLTXT, CCLTAB, CCL_HASH_SIZE).INT_VAL;
   end CCLLOOKUP;

   -------------
   -- FINDSYM --
   -------------

   -- findsym - find symbol in symbol table

   function FINDSYM
     (SYMBOL     : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      TABLE      : in HASH_TABLE;
      TABLE_SIZE : in INTEGER) return HASH_LINK
   is
      SYM_ENTRY   : HASH_LINK := TABLE (HASHFUNCT (SYMBOL, TABLE_SIZE));
      EMPTY_ENTRY : HASH_LINK;

   begin
      while (SYM_ENTRY /= null) loop
         if (SYMBOL = SYM_ENTRY.NAME) then
            return SYM_ENTRY;
         end if;
         SYM_ENTRY := SYM_ENTRY.NEXT;
      end loop;
      EMPTY_ENTRY := new HASH_ENTRY;
      EMPTY_ENTRY.all :=
        (null,
         null,
         Null_Unbounded_Wide_Wide_String,
         Null_Unbounded_Wide_Wide_String,
         0);

      return EMPTY_ENTRY;

   exception
      when STORAGE_ERROR =>
         Misc.Aflex_Fatal ("dynamic memory failure in findsym()");

         return EMPTY_ENTRY;
   end FINDSYM;

   ---------------
   -- HASHFUNCT --
   ---------------

   -- hashfunct - compute the hash value for "str" and hash size "hash_size"

   function HASHFUNCT
     (STR       : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      HASH_SIZE : INTEGER) return INTEGER
   is
      HASHVAL, LOCSTR : INTEGER;
   begin
      HASHVAL := 0;
      LOCSTR := 1;

      while LOCSTR <= Length (STR) loop
         HASHVAL :=
           ((HASHVAL*2) + Wide_Wide_Character'Pos(Element (STR, LOCSTR)))
              mod HASH_SIZE;
         LOCSTR := LOCSTR + 1;
      end loop;

      return HASHVAL;
   end HASHFUNCT;

   --------------
   -- NDINSTAL --
   --------------

   --  ndinstal - install a name definition

   procedure NDINSTAL
     (ND, DEF : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
   is
      RESULT : BOOLEAN;
   begin
      ADDSYM (ND, DEF, 0, NDTBL, NAME_TABLE_HASH_SIZE, RESULT);

      if RESULT then
         MISC.SYNERR("name defined twice");
      end if;
   end NDINSTAL;

   --------------
   -- NDLOOKUP --
   --------------

   -- ndlookup - lookup a name definition

   function NDLOOKUP
     (ND : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String is
   begin
      return FINDSYM (ND, NDTBL, NAME_TABLE_HASH_SIZE).STR_VAL;
   end NDLOOKUP;

   --------------
   -- SCINSTAL --
   --------------

   -- scinstal - make a start condition
   --
   -- NOTE
   --    the start condition is Exclusive if xcluflg is true

   procedure SCINSTAL
     (STR     : in Unbounded_Wide_Wide_String;
      XCLUFLG : in BOOLEAN)
   is
      -- bit of a hack.  We know how the default start-condition is
      -- declared, and don't put out a define for it, because it
      -- would come out as "#define 0 1"

      -- actually, this is no longer the case.  The default start-condition
      -- is now called "INITIAL".  But we keep the following for the sake
      -- of future robustness.

      RESULT : BOOLEAN;

   begin
      if STR /= "0" then
         PUT (DEF_FILE, "   ");
         PUT (DEF_FILE, STR);
         PUT (DEF_FILE, " : constant YY_State_Type := ");
         PUT (DEF_FILE, LASTSC, 1);
         PUT_LINE (DEF_FILE, ";");
    end if;

    LASTSC := LASTSC + 1;
    if (LASTSC >= CURRENT_MAX_SCS) then
      CURRENT_MAX_SCS := CURRENT_MAX_SCS + MAX_SCS_INCREMENT;

      NUM_REALLOCS := NUM_REALLOCS + 1;

      REALLOCATE_INTEGER_ARRAY(SCSET, CURRENT_MAX_SCS);
      REALLOCATE_INTEGER_ARRAY(SCBOL, CURRENT_MAX_SCS);
      REALLOCATE_BOOLEAN_ARRAY(SCXCLU, CURRENT_MAX_SCS);
      REALLOCATE_BOOLEAN_ARRAY(SCEOF, CURRENT_MAX_SCS);
      REALLOCATE_VSTRING_ARRAY(SCNAME, CURRENT_MAX_SCS);
      REALLOCATE_INTEGER_ARRAY(ACTVSC, CURRENT_MAX_SCS);
    end if;

      SCNAME (LASTSC) := STR;

      ADDSYM
        (SCNAME(LASTSC),
         Null_Unbounded_Wide_Wide_String,
         LASTSC,
         SCTBL,
         START_COND_HASH_SIZE,
         RESULT);
    if (RESULT) then
      Misc.Aflex_Error ("start condition " & STR & " declared twice");
    end if;

    SCSET(LASTSC) := NFA.MKSTATE(SYM_EPSILON);
    SCBOL(LASTSC) := NFA.MKSTATE(SYM_EPSILON);
    SCXCLU(LASTSC) := XCLUFLG;
    SCEOF(LASTSC) := FALSE;
  end SCINSTAL;


  -- sclookup - lookup the number associated with a start condition

   function SCLOOKUP
     (STR : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Integer is
   begin
      return FINDSYM (STR, SCTBL, START_COND_HASH_SIZE).INT_VAL;
   end SCLOOKUP;

end SYM;
