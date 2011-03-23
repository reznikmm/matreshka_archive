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
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/symS.a,v 1.4 90/01/12 15:20:42 self Exp Locker: self $
with Ada.Strings.Wide_Wide_Unbounded;

with MISC_DEFS;

package SYM is

  use MISC_DEFS;

   procedure ADDSYM
     (SYM, STR_DEF : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      INT_DEF      : in INTEGER;
      TABLE        : in out HASH_TABLE;
      TABLE_SIZE   : in INTEGER;
      RESULT       : out BOOLEAN);
   -- result indicates success

   procedure CCLINSTAL
     (CCLTXT : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      CCLNUM : INTEGER);

   function CCLLOOKUP
     (CCLTXT : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return INTEGER;

   function FINDSYM
     (SYMBOL     : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      TABLE      : HASH_TABLE;
      TABLE_SIZE : INTEGER) return HASH_LINK;

   function HASHFUNCT
     (STR       : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      HASH_SIZE : INTEGER) return INTEGER;

   procedure NDINSTAL
     (ND, DEF : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String);

   function NDLOOKUP
     (ND : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;

   procedure SCINSTAL
     (STR     : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
      XCLUFLG : Boolean);

   function SCLOOKUP
     (STR : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Integer;

end SYM;
