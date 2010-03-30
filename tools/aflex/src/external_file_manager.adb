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

with Ada.Characters.Conversions;
with Ada.Strings.Unbounded;
with Ada.Strings.Wide_Wide_Unbounded;

with MISC_DEFS, MISC; use MISC_DEFS, MISC;

package body External_File_Manager is

   use Ada.Characters.Conversions;
   use Ada.Strings.Unbounded;
   use Ada.Strings.Wide_Wide_Unbounded;
   use Ada.Wide_Wide_Text_IO;

   function "+" (Item : Unbounded_String) return String renames To_String;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   function "+" (Item : Unbounded_Wide_Wide_String) return Wide_Wide_String
     renames To_Wide_Wide_String;

   --  FIX comment about compiler dependent

   Ada_Spec_Suffix : constant String := "ads";
   Ada_Body_Suffix : constant String := "adb";

   ----------------------
   -- Get_IO_Spec_File --
   ----------------------

   procedure Get_IO_Spec_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type) is
   begin
      if Length (In_File_Name) /= 0 then
         Create
           (File,
            Out_File,
            To_String (+Misc.Basename) & "-io." & Ada_Spec_Suffix);

      else
         Create (File, Out_File, "aflex_yy-io." & Ada_Spec_Suffix);
      end if;

   exception
      when Use_Error | Name_Error =>
         Misc.Aflex_Fatal ("could not create IO package file");
   end Get_IO_Spec_File;

   ----------------------
   -- Get_IO_Body_File --
   ----------------------

   procedure Get_IO_Body_File (File : in out Ada.Wide_Wide_Text_IO.File_Type) is
   begin
      if Length (In_File_Name) /= 0 then
         Create
           (File,
            Out_File,
            To_String (+Misc.Basename) & "-io." & Ada_Body_Suffix);

      else
         Create (File, Out_File, "aflex_yy-io." & Ada_Body_Suffix);
      end if;

   exception
      when Use_Error | Name_Error =>
         Misc.Aflex_Fatal ("could not create IO package file");
   end Get_IO_Body_File;

   -----------------------
   -- Get_DFA_Spec_File --
   -----------------------

   procedure Get_DFA_Spec_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type) is
   begin
      if Length (In_File_Name) /= 0 then
         Create
           (File,
            Out_File,
            To_String (+Misc.Basename) & "-dfa." & Ada_Spec_Suffix);

      else
         Create (File, Out_File, "aflex_yy-dfa." & Ada_Spec_Suffix);
      end if;

   exception
      when Use_Error | Name_Error =>
         Misc.Aflex_Fatal ("could not create DFA package file");
   end Get_DFA_Spec_File;

   -----------------------
   -- Get_DFA_Body_File --
   -----------------------

   procedure Get_DFA_Body_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type) is
   begin
      if Length (In_File_Name) /= 0 then
         Create
           (File,
            Out_File,
            To_String (+Misc.Basename) & "-dfa." & Ada_Body_Suffix);

      else
         Create (File, Out_File, "aflex_yy-dfa." & Ada_Body_Suffix);
      end if;

   exception
      when Use_Error | Name_Error =>
         Misc.Aflex_Fatal ("could not create DFA package file");
   end Get_DFA_Body_File;

   ---------------------------
   -- Get_Scanner_Spec_File --
   ---------------------------

   procedure Get_Scanner_Spec_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type)
   is
      Out_File_Name : Unbounded_String;

   begin
      if Length (In_File_Name) /= 0 then
         -- give out infile + ada_suffix

         Out_File_Name := +To_String (+Misc.Basename) & "." & Ada_Spec_Suffix;

      else
         Out_File_Name := +"aflex_yy." & Ada_Spec_Suffix;
      end if;

      Create (File, Out_File, +Out_File_Name);
      Set_Output (File);

   exception
      when Name_Error | Use_Error =>
         Misc.Aflex_Fatal
           ("can't create scanner file "
            & To_Wide_Wide_String (To_String (Out_File_Name)));
   end Get_Scanner_Spec_File;

   ---------------------------
   -- Get_Scanner_Body_File --
   ---------------------------

   procedure Get_Scanner_Body_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type)
   is
      Out_File_Name : Unbounded_String;

   begin
      if Length (In_File_Name) /= 0 then
         -- give out infile + ada_suffix

         Out_File_Name := +To_String (+Misc.Basename) & "." & Ada_Body_Suffix;

      else
         Out_File_Name := +"aflex_yy." & Ada_Body_Suffix;
      end if;

      Create (File, Out_File, +Out_File_Name);
      Set_Output (File);

   exception
      when Name_Error | Use_Error =>
         Misc.Aflex_Fatal
           ("can't create scanner file "
            & To_Wide_Wide_String (To_String (Out_File_Name)));
   end Get_Scanner_Body_File;

   ------------------------
   -- Get_Backtrack_File --
   ------------------------

   procedure Get_Backtrack_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type) is
   begin
      CREATE (File, OUT_FILE, "aflex.backtrack");

   exception
      when USE_ERROR | NAME_ERROR =>
         Misc.Aflex_Fatal ("could not create backtrack file");
   end GET_Backtrack_File;

  procedure INITIALIZE_FILES is
  begin
    null;

  -- doesn't need to do anything on Verdix
  end INITIALIZE_FILES;

end EXTERNAL_FILE_MANAGER;
