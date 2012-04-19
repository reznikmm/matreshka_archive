------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

package body League.Directories is

   ------------------------
   -- Absolute_File_Path --
   ------------------------

   function Absolute_File_Path
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Absolute_File_Path unimplemented");
      raise Program_Error with "Unimplemented function Absolute_File_Path";
      return Absolute_File_Path (Self, Name);
   end Absolute_File_Path;

   -------------------
   -- Absolute_Path --
   -------------------

   function Absolute_Path
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Absolute_Path unimplemented");
      raise Program_Error with "Unimplemented function Absolute_Path";
      return Absolute_Path (Self);
   end Absolute_Path;

   ------------
   -- Adjust --
   ------------

   procedure Adjust (Self : in out Directory_Information) is
   begin
      Matreshka.Internals.Files.Reference (Self.Data);
   end Adjust;

   --------------------
   -- Canonical_Path --
   --------------------

   function Canonical_Path
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Canonical_Path unimplemented");
      raise Program_Error with "Unimplemented function Canonical_Path";
      return Canonical_Path (Self);
   end Canonical_Path;

   ----------------------
   -- Change_Directory --
   ----------------------

   function Change_Directory
    (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Change_Directory unimplemented");
      raise Program_Error with "Unimplemented function Change_Directory";
      return Change_Directory (Self);
   end Change_Directory;

   ----------------------
   -- Change_Directory --
   ----------------------

   function Change_Directory
    (Self      : Directory_Information'Class;
     Directory : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Change_Directory unimplemented");
      raise Program_Error with "Unimplemented function Change_Directory";
      return Change_Directory (Self, Directory);
   end Change_Directory;

   ----------------------
   -- Change_Directory --
   ----------------------

   procedure Change_Directory (Self : Directory_Information'Class) is
   begin
      if not Change_Directory (Self) then
         raise Constraint_Error;
      end if;
   end Change_Directory;

   -----------
   -- Count --
   -----------

   function Count
    (Directory : League.Strings.Universal_String) return Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Count unimplemented");
      raise Program_Error with "Unimplemented function Count";
      return Count (Directory);
   end Count;

   ------------
   -- Create --
   ------------

   function Create
    (Path : League.Strings.Universal_String) return Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create unimplemented");
      raise Program_Error with "Unimplemented function Create";
      return Create (Path);
   end Create;

   ----------------------
   -- Create_Directory --
   ----------------------

   function Create_Directory
    (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create_Directory unimplemented");
      raise Program_Error with "Unimplemented function Create_Directory";
      return Create_Directory (Self);
   end Create_Directory;

   ----------------------
   -- Create_Directory --
   ----------------------

   procedure Create_Directory (Self : Directory_Information'Class) is
   begin
      if not Create_Directory (Self) then
         raise Constraint_Error;
      end if;
   end Create_Directory;

   ----------------------
   -- Create_Directory --
   ----------------------

   function Create_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create_Directory unimplemented");
      raise Program_Error with "Unimplemented function Create_Directory";
      return Create_Directory (Self, Name);
   end Create_Directory;

   ----------------------
   -- Create_Directory --
   ----------------------

   procedure Create_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String) is
   begin
      if not Create_Directory (Self, Name) then
         raise Constraint_Error;
      end if;
   end Create_Directory;

   -----------------
   -- Create_Path --
   -----------------

   function Create_Path (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create_Path unimplemented");
      raise Program_Error with "Unimplemented function Create_Path";
      return Create_Path (Self);
   end Create_Path;

   -----------------
   -- Create_Path --
   -----------------

   procedure Create_Path (Self : Directory_Information'Class) is
   begin
      if not Create_Path (Self) then
         raise Constraint_Error;
      end if;
   end Create_Path;

   -----------------
   -- Create_Path --
   -----------------

   function Create_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create_Path unimplemented");
      raise Program_Error with "Unimplemented function Create_Path";
      return Create_Path (Self, Path);
   end Create_Path;

   -----------------
   -- Create_Path --
   -----------------

   procedure Create_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String) is
   begin
      if not Self.Create_Path then
         raise Constraint_Error;
      end if;
   end Create_Path;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Directory_Information) is
   begin
      Matreshka.Internals.Files.Dereference (Self.Data);
   end Finalize;

   ----------------
   -- Entry_List --
   ----------------

   function Entry_List
    (Self : Directory_Information'Class)
       return League.String_Vectors.Universal_String_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Entry_List unimplemented");
      raise Program_Error with "Unimplemented function Entry_List";
      return Entry_List (Self);
   end Entry_List;

   ------------
   -- Exists --
   ------------

   function Exists (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exists unimplemented");
      raise Program_Error with "Unimplemented function Exists";
      return Exists (Self);
   end Exists;

   ------------
   -- Exists --
   ------------

   function Exists
    (Self      : Directory_Information'Class;
     Directory : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exists unimplemented");
      raise Program_Error with "Unimplemented function Exists";
      return Exists (Self, Directory);
   end Exists;

   -----------------
   -- Is_Absolute --
   -----------------

   function Is_Absolute (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Absolute unimplemented");
      raise Program_Error with "Unimplemented function Is_Absolute";
      return Is_Absolute (Self);
   end Is_Absolute;

   -----------------
   -- Is_Readable --
   -----------------

   function Is_Readable (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Readable unimplemented");
      raise Program_Error with "Unimplemented function Is_Readable";
      return Is_Readable (Self);
   end Is_Readable;

   -----------------
   -- Is_Relative --
   -----------------

   function Is_Relative (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Relative unimplemented");
      raise Program_Error with "Unimplemented function Is_Relative";
      return Is_Relative (Self);
   end Is_Relative;

   -------------
   -- Is_Root --
   -------------

   function Is_Root (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Root unimplemented");
      raise Program_Error with "Unimplemented function Is_Root";
      return Is_Root (Self);
   end Is_Root;

   -------------------
   -- Make_Absolute --
   -------------------

   function Make_Absolute
    (Self : in out Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Make_Absolute unimplemented");
      raise Program_Error with "Unimplemented function Make_Absolute";
      return Make_Absolute (Self);
   end Make_Absolute;

   -------------------
   -- Make_Absolute --
   -------------------

   procedure Make_Absolute (Self : in out Directory_Information'Class) is
   begin
      if not Make_Absolute (Self) then
         raise Constraint_Error;
      end if;
   end Make_Absolute;

   ----------
   -- Name --
   ----------

   function Name
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Name unimplemented");
      raise Program_Error with "Unimplemented function Name";
      return Name (Self);
   end Name;

   ----------
   -- Path --
   ----------

   function Path
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Path unimplemented");
      raise Program_Error with "Unimplemented function Path";
      return Path (Self);
   end Path;

   -------------
   -- Refresh --
   -------------

   procedure Refresh (Self : in out Directory_Information'Class) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Refresh unimplemented");
      raise Program_Error with "Unimplemented procedure Refresh";
   end Refresh;

   ------------------------
   -- Relative_File_Path --
   ------------------------

   function Relative_File_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Relative_File_Path unimplemented");
      raise Program_Error with "Unimplemented function Relative_File_Path";
      return Relative_File_Path (Self, Path);
   end Relative_File_Path;

   ------------
   -- Remove --
   ------------

   function Remove
    (Self : Directory_Information'Class;
     File : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove unimplemented");
      raise Program_Error with "Unimplemented function Remove";
      return Remove (Self, File);
   end Remove;

   ------------
   -- Remove --
   ------------

   procedure Remove
    (Self : Directory_Information'Class;
     File : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove unimplemented");
      raise Program_Error with "Unimplemented procedure Remove";
   end Remove;

   ----------------------
   -- Remove_Directory --
   ----------------------

   function Remove_Directory
    (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Directory unimplemented");
      raise Program_Error with "Unimplemented function Remove_Directory";
      return Remove_Directory (Self);
   end Remove_Directory;

   ----------------------
   -- Remove_Directory --
   ----------------------

   procedure Remove_Directory (Self : Directory_Information'Class) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Directory unimplemented");
      raise Program_Error with "Unimplemented procedure Remove_Directory";
   end Remove_Directory;

   ----------------------
   -- Remove_Directory --
   ----------------------

   function Remove_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Directory unimplemented");
      raise Program_Error with "Unimplemented function Remove_Directory";
      return Remove_Directory (Self, Name);
   end Remove_Directory;

   ----------------------
   -- Remove_Directory --
   ----------------------

   procedure Remove_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Directory unimplemented");
      raise Program_Error with "Unimplemented procedure Remove_Directory";
   end Remove_Directory;

   -----------------
   -- Remove_Path --
   -----------------

   function Remove_Path (Self : Directory_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Path unimplemented");
      raise Program_Error with "Unimplemented function Remove_Path";
      return Remove_Path (Self);
   end Remove_Path;

   -----------------
   -- Remove_Path --
   -----------------

   procedure Remove_Path (Self : Directory_Information'Class) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Path unimplemented");
      raise Program_Error with "Unimplemented procedure Remove_Path";
   end Remove_Path;

   -----------------
   -- Remove_Path --
   -----------------

   function Remove_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Path unimplemented");
      raise Program_Error with "Unimplemented function Remove_Path";
      return Remove_Path (Self, Path);
   end Remove_Path;

   -----------------
   -- Remove_Path --
   -----------------

   procedure Remove_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Remove_Path unimplemented");
      raise Program_Error with "Unimplemented procedure Remove_Path";
   end Remove_Path;

   --------------
   -- Set_Path --
   --------------

   procedure Set_Path
    (Self : in out Directory_Information'Class;
     Path : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Path unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Path";
   end Set_Path;

   ----------------------
   -- Change_Directory --
   ----------------------

   function Change_Directory
    (Directory : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Change_Directory unimplemented");
      raise Program_Error with "Unimplemented function Change_Directory";
      return Change_Directory (Directory);
   end Change_Directory;

   ----------------------
   -- Change_Directory --
   ----------------------

   procedure Change_Directory (Directory : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Change_Directory unimplemented");
      raise Program_Error with "Unimplemented procedure Change_Directory";
   end Change_Directory;

   ----------------
   -- Clean_Path --
   ----------------

   function Clean_Path
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Clean_Path unimplemented");
      raise Program_Error with "Unimplemented function Clean_Path";
      return Clean_Path (Path);
   end Clean_Path;

   -----------------------
   -- Current_Directory --
   -----------------------

   function Current_Directory return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Current_Directory unimplemented");
      raise Program_Error with "Unimplemented function Current_Directory";
      return Current_Directory;
   end Current_Directory;

   -----------------------
   -- Current_Directory --
   -----------------------

   function Current_Directory return Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Current_Directory unimplemented");
      raise Program_Error with "Unimplemented function Current_Directory";
      return Current_Directory;
   end Current_Directory;

   ------------
   -- Drives --
   ------------

   function Drives return League.String_Vectors.Universal_String_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Drives unimplemented");
      raise Program_Error with "Unimplemented function Drives";
      return Drives;
   end Drives;

   ----------------------------
   -- From_Native_Separators --
   ----------------------------

   function From_Native_Separators
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "From_Native_Separators unimplemented");
      raise Program_Error with "Unimplemented function From_Native_Separators";
      return From_Native_Separators (Path);
   end From_Native_Separators;

   ----------
   -- Home --
   ----------

   function Home return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Home unimplemented");
      raise Program_Error with "Unimplemented function Home";
      return Home;
   end Home;

   ----------
   -- Home --
   ----------

   function Home return Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Home unimplemented");
      raise Program_Error with "Unimplemented function Home";
      return Home;
   end Home;

   ----------------------
   -- Is_Absolute_Path --
   ----------------------

   function Is_Absolute_Path
    (Path : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Absolute_Path unimplemented");
      raise Program_Error with "Unimplemented function Is_Absolute_Path";
      return Is_Absolute_Path (Path);
   end Is_Absolute_Path;

   ----------------------
   -- Is_Relative_Path --
   ----------------------

   function Is_Relative_Path
    (Path : League.Strings.Universal_String) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Relative_Path unimplemented");
      raise Program_Error with "Unimplemented function Is_Relative_Path";
      return Is_Relative_Path (Path);
   end Is_Relative_Path;

   ----------
   -- Root --
   ----------

   function Root return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Root unimplemented");
      raise Program_Error with "Unimplemented function Root";
      return Root;
   end Root;

   ----------
   -- Root --
   ----------

   function Root return Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Root unimplemented");
      raise Program_Error with "Unimplemented function Root";
      return Root;
   end Root;

   ---------------
   -- Separator --
   ---------------

   function Separator return League.Characters.Universal_Character is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented function Separator";
      return Separator;
   end Separator;

   ----------
   -- Temp --
   ----------

   function Temp return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Temp unimplemented");
      raise Program_Error with "Unimplemented function Temp";
      return Temp;
   end Temp;

   ----------
   -- Temp --
   ----------

   function Temp return Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Temp unimplemented");
      raise Program_Error with "Unimplemented function Temp";
      return Temp;
   end Temp;

   --------------------------
   -- To_Native_Separators --
   --------------------------

   function To_Native_Separators
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "To_Native_Separators unimplemented");
      raise Program_Error with "Unimplemented function To_Native_Separators";
      return To_Native_Separators (Path);
   end To_Native_Separators;

end League.Directories;
