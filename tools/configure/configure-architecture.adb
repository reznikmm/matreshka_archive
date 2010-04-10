------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This procedure detects architecture.

with Ada.Directories;
with Ada.Text_IO;
with System;

with GNAT.Expect;
with GNAT.Regexp;
with GNAT.Regpat;

procedure Configure.Architecture is

   use Ada.Strings.Unbounded;
   use GNAT.Expect;
   use GNAT.Regexp;
   use GNAT.Regpat;
   use System;

   function "+" (Item : String) return Unbounded_String
     renames To_Unbounded_String;

   function "+" (Item : Unbounded_String) return String renames To_String;

   procedure Detect_Portable;
   --  Detects "portable" architecture.

   procedure Detect_GCC;
   --  Detects architecture by analizing output of gcc -v and doing additional
   --  checks for capabilities.

   function Check_x86_64 return Boolean;
   --  Check compiler's capabilities for x86_64 architecture. Compiler must
   --  support import of SSE builtins.

   ------------------
   -- Check_x86_64 --
   ------------------

   function Check_x86_64 return Boolean is

      use Ada.Directories;
      use Ada.Text_IO;

      procedure Create_Check_Source;
      --  Creates source file of check program.

      procedure Create_Check_Project;
      --  Creates project file for build check program.

      function Build_Check return Boolean;
      --  Builds check program.

      -----------------
      -- Build_Check --
      -----------------

      function Build_Check return Boolean is
         Status : aliased Integer;
         Output : constant String :=
           Get_Command_Output
            ("gprbuild",
             (1 => new String'("-Pcheck.gpr")),
             "",
             Status'Access,
             True);

      begin
         return Status = 0;
      end Build_Check;

      --------------------------
      -- Create_Check_Project --
      --------------------------

      procedure Create_Check_Project is
         File : File_Type;

      begin
         Create (File, Out_File, "check.gpr");
         Put_Line (File, "project Check is");
         Put_Line (File, "   for Main use (""check.adb"");");
         Put_Line (File, "end Check;");
         Close (File);
      end Create_Check_Project;

      -------------------------
      -- Create_Check_Source --
      -------------------------

      procedure Create_Check_Source is
         File : File_Type;

      begin
         Create (File, Out_File, "check.adb");
         Put_Line (File, "with Interfaces;");
         Put_Line (File, "procedure Check is");
         Put_Line (File, "   use Interfaces;");
         Put_Line (File, "   type v2di is array (1 .. 2) of Unsigned_64;");
         Put_Line (File, "   pragma Machine_Attribute (v2di, ""vector_type"");");
         Put_Line (File, "   pragma Machine_Attribute (v2di, ""may_alias"");");
         Put_Line (File, "   function mm_and_si128 (A : v2di; B : v2di) return v2di;");
         Put_Line (File, "   pragma Import (Intrinsic, mm_and_si128, ""__builtin_ia32_pand128"");");
         Put_Line (File, "   A : v2di := (0, 0);");
         Put_Line (File, "   B : v2di := (0, 0);");
         Put_Line (File, "   C : v2di;");
         Put_Line (File, "   pragma Volatile (C);");
         Put_Line (File, "begin");
         Put_Line (File, "   C := mm_and_si128 (A, B);");
         Put_Line (File, "end Check;");
         Close (File);
      end Create_Check_Source;

      Current : constant String := Current_Directory;
      Config  : constant String := "_config";
      Result  : Boolean;

   begin
      Create_Directory (Config);
      Set_Directory (Config);

      Create_Check_Source;
      Create_Check_Project;
      Result := Build_Check;

      Set_Directory (Current);
      Delete_Tree (Config);

      return Result;
   end Check_x86_64;

   ----------------
   -- Detect_GCC --
   ----------------

   procedure Detect_Gcc is
      GCC_Process : Process_Descriptor;
      Result      : Expect_Match;
      Matches     : Match_Array (0 .. 1);
      Arch        : Unbounded_String;

   begin
      Non_Blocking_Spawn
       (GCC_Process, "gcc", (1 => new String'("-v")), 4096, True);
      Expect (GCC_Process, Result, "Target: ([a-zA-Z0-9_]*)-", Matches);
      Arch :=
        +Expect_Out (GCC_Process) (Matches (1).First .. Matches (1).Last);
      Close (GCC_Process);

      if Match (+Arch, Compile ("i[3456]86")) then
         Substitutions.Replace (Architecture_Name, +"x86");

      elsif Arch = "x86_64" then
         if Check_x86_64 then
            Substitutions.Replace (Architecture_Name, +"x86_64");
         end if;
      end if;
   end Detect_GCC;

   ---------------------
   -- Detect_Portable --
   ---------------------

   procedure Detect_Portable is
   begin
      if Address'Size = 32 then
         if Default_Bit_Order = High_Order_First then
            Substitutions.Insert (Architecture_Name, +"portable_32_be");

         else
            Substitutions.Insert (Architecture_Name, +"portable_32_le");
         end if;

      elsif Address'Size = 64 then
         if Default_Bit_Order = High_Order_First then
            Substitutions.Insert (Architecture_Name, +"portable_64_be");

         else
            Substitutions.Insert (Architecture_Name, +"portable_64_le");
         end if;

      else
         raise Program_Error;
      end if;
   end Detect_Portable;

begin
   --  Detect "portable" architecture first, it is suitable default value.
   --  This value can be overwritten later by another detection methods.

   Detect_Portable;
   Detect_GCC;
end Configure.Architecture;
