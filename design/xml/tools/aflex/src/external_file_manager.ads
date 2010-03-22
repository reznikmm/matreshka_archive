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
-- $Header: /co/ua/self/arcadia/aflex/ada/src/RCS/file_managerS.a,v 1.4 90/01/12 15:20:00 self Exp Locker: self $

with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

package External_File_Manager is

   procedure Get_IO_Spec_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type);

   procedure Get_IO_Body_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type);

   procedure Get_DFA_Spec_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type);

   procedure Get_DFA_Body_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type);

   procedure Get_Scanner_Spec_File (F : in out Ada.Text_IO.File_Type);

   procedure Get_Scanner_Body_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type);

   procedure Get_Backtrack_File
     (File : in out Ada.Wide_Wide_Text_IO.File_Type);

  procedure INITIALIZE_FILES;

end External_File_Manager;
