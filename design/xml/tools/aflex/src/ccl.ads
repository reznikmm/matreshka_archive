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

-- TITLE character classes routines
-- AUTHOR: John Self (UCI)
-- DESCRIPTION routines for character classes like [abc]
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/cclS.a,v 1.3 90/01/12 15:19:43 self Exp Locker: self $

with Ada.Wide_Wide_Text_IO;

with MISC_DEFS; use MISC_DEFS;
with Unicode;

package CCL is

   procedure CCL_Add
    (CCLP : Integer;
     Ch   : Unicode.Unicode_Character);

  function CCLINIT return INTEGER;
  procedure CCLNEGATE(CCLP : in INTEGER);

   procedure List_Character_Set
     (File : Ada.Wide_Wide_Text_IO.File_Type;
      CSET : C_SIZE_BOOL_ARRAY);

end CCL;
