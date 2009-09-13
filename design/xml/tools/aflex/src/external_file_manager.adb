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

-- TITLE external_file_manager
-- AUTHOR: John Self (UCI)
-- DESCRIPTION opens external files for other functions
-- NOTES This package opens external files, and thus may be system dependent
--       because of limitations on file names.
--       This version is for the VADS 5.5 Ada development system.
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/file_managerB.a,v 1.5 90/01/12 15:19:58 self Exp Locker: self $
with Ada.Strings.Unbounded;

with MISC_DEFS, TSTRING, MISC; use MISC_DEFS, TSTRING, MISC;

package body EXTERNAL_FILE_MANAGER is

   use Ada.Strings.Unbounded;

   function "+" (Item : Unbounded_String) return String renames To_String;
   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

-- FIX comment about compiler dependent

  subtype SUFFIX_TYPE is STRING(1 .. 3);

  function ADA_SUFFIX return SUFFIX_TYPE is
  begin
    return "ada";
  end ADA_SUFFIX;
  pragma Inline (ADA_SUFFIX);

  function ADA_SPEC_SUFFIX return SUFFIX_TYPE is
  begin
    return "ads";
  end ADA_SPEC_SUFFIX;
  pragma Inline (ADA_SPEC_SUFFIX);

  function ADA_BODY_SUFFIX return SUFFIX_TYPE is
  begin
    return "adb";
  end ADA_BODY_SUFFIX;
  pragma Inline (ADA_BODY_SUFFIX);

  procedure GET_IO_SPEC_FILE(F : in out FILE_TYPE) is
  begin
    if (LEN(In_File_Name) /= 0) then
      CREATE(F, OUT_FILE, +MISC.BASENAME & "-io." & ADA_SPEC_SUFFIX);
    else
      CREATE(F, OUT_FILE, "aflex_yy-io." & ADA_SPEC_SUFFIX);
    end if;
  exception
    when USE_ERROR | NAME_ERROR =>
      MISC.AFLEX_FATAL("could not create IO package file");
  end GET_IO_SPEC_FILE;

  procedure GET_IO_BODY_FILE(F : in out FILE_TYPE) is
  begin
    if (LEN(In_File_Name) /= 0) then
      CREATE(F, OUT_FILE, +MISC.BASENAME & "-io." & ADA_BODY_SUFFIX);
    else
      CREATE(F, OUT_FILE, "aflex_yy-io." & ADA_BODY_SUFFIX);
    end if;
  exception
    when USE_ERROR | NAME_ERROR =>
      MISC.AFLEX_FATAL("could not create IO package file");
  end GET_IO_BODY_FILE;

  procedure GET_DFA_SPEC_FILE(F : in out FILE_TYPE) is
  begin
    if (LEN(In_File_Name) /= 0) then
      CREATE(F, OUT_FILE, +MISC.BASENAME & "-dfa." & ADA_SPEC_SUFFIX);
    else
      CREATE(F, OUT_FILE, "aflex_yy-dfa." & ADA_SPEC_SUFFIX);
    end if;
  exception
    when USE_ERROR | NAME_ERROR =>
      MISC.AFLEX_FATAL("could not create DFA package file");
  end GET_DFA_SPEC_FILE;

  procedure GET_DFA_BODY_FILE(F : in out FILE_TYPE) is
  begin
    if (LEN(In_File_Name) /= 0) then
      CREATE(F, OUT_FILE, +MISC.BASENAME & "-dfa." & ADA_BODY_SUFFIX);
    else
      CREATE(F, OUT_FILE, "aflex_yy-dfa." & ADA_BODY_SUFFIX);
    end if;
  exception
    when USE_ERROR | NAME_ERROR =>
      MISC.AFLEX_FATAL("could not create DFA package file");
  end GET_DFA_BODY_FILE;

   ---------------------------
   -- Get_Scanner_Spec_File --
   ---------------------------

   procedure Get_Scanner_Spec_File (F : in out File_Type) is
      Out_File_Name : Unbounded_String;

   begin
      if LEN (In_File_Name) /= 0 then
         -- give out infile + ada_suffix

         Out_File_Name := Misc.Basename & "." & Ada_Spec_Suffix;

      else
         Out_File_Name := +"aflex_yy." & Ada_Spec_Suffix;
      end if;

      Create (F, Out_File, +Out_File_Name);
      Set_Output (F);

   exception
      when Name_Error | Use_Error =>
         Misc.Aflex_Fatal ("can't create scanner file " & Out_File_Name);
   end Get_Scanner_Spec_File;

   ---------------------------
   -- Get_Scanner_Body_File --
   ---------------------------

   procedure Get_Scanner_Body_File (F : in out File_Type) is
      Out_File_Name : Unbounded_String;

   begin
      if LEN (In_File_Name) /= 0 then
         -- give out infile + ada_suffix

         Out_File_Name := Misc.Basename & "." & Ada_Body_Suffix;

      else
         Out_File_Name := +"aflex_yy." & Ada_Body_Suffix;
      end if;

      Create (F, Out_File, +Out_File_Name);
      Set_Output (F);

   exception
      when Name_Error | Use_Error =>
         Misc.Aflex_Fatal ("can't create scanner file " & Out_File_Name);
   end Get_Scanner_Body_File;

  procedure GET_BACKTRACK_FILE(F : in out FILE_TYPE) is
  begin
    CREATE(F, OUT_FILE, "aflex.backtrack");
  exception
    when USE_ERROR | NAME_ERROR =>
      Misc.Aflex_Fatal ("could not create backtrack file");
  end GET_BACKTRACK_FILE;

  procedure INITIALIZE_FILES is
  begin
    null;

  -- doesn't need to do anything on Verdix
  end INITIALIZE_FILES;

end EXTERNAL_FILE_MANAGER;
