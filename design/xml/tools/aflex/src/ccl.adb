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
-- $Header: /dc/uc/self/arcadia/aflex/ada/src/RCS/cclB.a,v 1.7 1993/04/27 23:17:15 self Exp $
with Ada.Characters.Conversions;
with Ada.Strings.Unbounded;

with Misc;

package body CCL is

   use Ada.Characters.Conversions;
   use Ada.Strings.Unbounded;
   use Ada.Wide_Wide_Text_IO;
   use Unicode;

   -- ccladd - add a single character to a ccl

   ------------
   -- CCLADD --
   ------------

   procedure CCL_Add
    (CCLP : Integer;
     Ch   : Unicode.Unicode_Character)
   is
      IND, LEN, NEWPOS : INTEGER;

   begin
      LEN := CCLLEN(CCLP);
      IND := CCLMAP(CCLP);

      -- check to see if the character is already in the ccl

      for I in 0 .. LEN - 1 loop
         if (CCLTBL(IND + I) = CH) then
            return;
         end if;
      end loop;

      NEWPOS := IND + LEN;

      if (NEWPOS >= Current_Max_CCL_Table_Size) then
         Current_Max_CCL_Table_Size := Current_Max_CCL_Table_Size +
           MAX_CCL_TBL_SIZE_INCREMENT;

         NUM_REALLOCS := NUM_REALLOCS + 1;

         Reallocate_Unicode_Character_Array
           (CCLTBL, Current_Max_CCL_Table_Size);
      end if;

      CCLLEN(CCLP) := LEN + 1;
      CCLTBL(NEWPOS) := CH;

   end CCL_Add;

  -- cclinit - make an empty ccl

  function CCLINIT return INTEGER is
  begin
    LASTCCL := LASTCCL + 1;
    if (LASTCCL >= CURRENT_MAXCCLS) then
      CURRENT_MAXCCLS := CURRENT_MAXCCLS + MAX_CCLS_INCREMENT;

      NUM_REALLOCS := NUM_REALLOCS + 1;

      REALLOCATE_INTEGER_ARRAY(CCLMAP, CURRENT_MAXCCLS);
      REALLOCATE_INTEGER_ARRAY(CCLLEN, CURRENT_MAXCCLS);
      REALLOCATE_INTEGER_ARRAY(CCLNG, CURRENT_MAXCCLS);
    end if;

    if (LASTCCL = 1) then

      -- we're making the first ccl
      CCLMAP(LASTCCL) := 0;

    else

      -- the new pointer is just past the end of the last ccl.  Since
      -- the cclmap points to the \first/ character of a ccl, adding the
      -- length of the ccl to the cclmap pointer will produce a cursor
      -- to the first free space
      CCLMAP(LASTCCL) := CCLMAP(LASTCCL - 1) + CCLLEN(LASTCCL - 1);
    end if;

    CCLLEN(LASTCCL) := 0;
    CCLNG(LASTCCL) := 0;

    -- ccl's start out life un-negated
    return LASTCCL;
  end CCLINIT;

  -- cclnegate - negate a ccl

  procedure CCLNEGATE(CCLP : in INTEGER) is
  begin
    CCLNG(CCLP) := 1;
  end CCLNEGATE;

   ------------------------
   -- List_Character_Set --
   ------------------------

   -- list_character_set - list the members of a set of characters in CCL form
   --
   -- writes to the given file a character-class representation of those
   -- characters present in the given set.  A character is present if it
   -- has a non-zero value in the set array.

   procedure List_Character_Set
     (File : Ada.Wide_Wide_Text_IO.File_Type;
      CSET : C_SIZE_BOOL_ARRAY)
   is
      I, START_CHAR : INTEGER;

   begin
      PUT (File, '[');

      I := 1;

      while I <= CSIZE loop
         if CSET (I) then
            START_CHAR := I;

            PUT (File, ' ');

            PUT
              (File,
               To_Wide_Wide_String
                 (To_String
                    (MISC.Readable_Form (Wide_Wide_Character'Val (I)))));

            I := I + 1;

            while I <= CSIZE and then CSET(I) loop
               I := I + 1;
            end loop;

            if (I - 1 > START_CHAR) then
               -- this was a run

               PUT (File, "-");
               PUT
                 (File,
                  To_Wide_Wide_String
                    (To_String
                       (MISC.Readable_Form (Wide_Wide_Character'Val (I - 1)))));
            end if;

            PUT (File, ' ');
         end if;

         I := I + 1;
      end loop;

      PUT (File, ']');
   end List_Character_Set;

end CCL;
