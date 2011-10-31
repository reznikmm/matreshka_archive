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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
pragma Ada_2012;

package body League.Files is

   ------------------------
   -- Absolute_Directory --
   ------------------------

   function Absolute_Directory
    (Self : File_Information'Class)
       return League.Directories.Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Absolute_Directory unimplemented");
      raise Program_Error with "Unimplemented function Absolute_Directory";
      return Absolute_Directory (Self);
   end Absolute_Directory;

   ------------------------
   -- Absolute_Directory --
   ------------------------

   function Absolute_Directory
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Absolute_Directory unimplemented");
      raise Program_Error with "Unimplemented function Absolute_Directory";
      return Absolute_Directory (Self);
   end Absolute_Directory;

   -------------------
   -- Absolute_Path --
   -------------------

   function Absolute_Path
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Absolute_Path unimplemented");
      raise Program_Error with "Unimplemented function Absolute_Path";
      return Absolute_Path (Self);
   end Absolute_Path;

   ---------------
   -- Base_Name --
   ---------------

   function Base_Name
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Base_Name unimplemented");
      raise Program_Error with "Unimplemented function Base_Name";
      return Base_Name (Self);
   end Base_Name;

   -----------------
   -- Bundle_Name --
   -----------------

   function Bundle_Name
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Bundle_Name unimplemented");
      raise Program_Error with "Unimplemented function Bundle_Name";
      return Bundle_Name (Self);
   end Bundle_Name;

   -------------------------
   -- Canonical_Directory --
   -------------------------

   function Canonical_Directory
    (Self : File_Information'Class)
       return League.Directories.Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Canonical_Directory unimplemented");
      raise Program_Error with "Unimplemented function Canonical_Directory";
      return Canonical_Directory (Self);
   end Canonical_Directory;

   -------------------------
   -- Canonical_Directory --
   -------------------------

   function Canonical_Directory
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Canonical_Directory unimplemented");
      raise Program_Error with "Unimplemented function Canonical_Directory";
      return Canonical_Directory (Self);
   end Canonical_Directory;

   --------------------
   -- Canonical_Path --
   --------------------

   function Canonical_Path
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Canonical_Path unimplemented");
      raise Program_Error with "Unimplemented function Canonical_Path";
      return Canonical_Path (Self);
   end Canonical_Path;

   ------------------------
   -- Complete_Base_Name --
   ------------------------

   function Complete_Base_Name
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Complete_Base_Name unimplemented");
      raise Program_Error with "Unimplemented function Complete_Base_Name";
      return Complete_Base_Name (Self);
   end Complete_Base_Name;

   ---------------------
   -- Complete_Suffix --
   ---------------------

   function Complete_Suffix
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Complete_Suffix unimplemented");
      raise Program_Error with "Unimplemented function Complete_Suffix";
      return Complete_Suffix (Self);
   end Complete_Suffix;

   ------------
   -- Create --
   ------------

   function Create
    (File_Path : League.Strings.Universal_String) return File_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Create unimplemented");
      raise Program_Error with "Unimplemented function Create";
      return Create (File_Path);
   end Create;

   -------------
   -- Created --
   -------------

   function Created
    (Self : File_Information'Class) return League.Calendars.Date_Time is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Created unimplemented");
      raise Program_Error with "Unimplemented function Created";
      return Created (Self);
   end Created;

   ---------------
   -- Directory --
   ---------------

   function Directory
    (Self : File_Information'Class)
       return League.Directories.Directory_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Directory unimplemented");
      raise Program_Error with "Unimplemented function Directory";
      return Directory (Self);
   end Directory;

   ---------------
   -- Directory --
   ---------------

   function Directory
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Directory unimplemented");
      raise Program_Error with "Unimplemented function Directory";
      return Directory (Self);
   end Directory;

   ------------
   -- Exists --
   ------------

   function Exists (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exists unimplemented");
      raise Program_Error with "Unimplemented function Exists";
      return Exists (Self);
   end Exists;

   -----------------
   -- Is_Absolute --
   -----------------

   function Is_Absolute (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Absolute unimplemented");
      raise Program_Error with "Unimplemented function Is_Absolute";
      return Is_Absolute (Self);
   end Is_Absolute;

   ---------------
   -- Is_Bundle --
   ---------------

   function Is_Bundle (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Bundle unimplemented");
      raise Program_Error with "Unimplemented function Is_Bundle";
      return Is_Bundle (Self);
   end Is_Bundle;

   ------------
   -- Is_Dir --
   ------------

   function Is_Dir (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Dir unimplemented");
      raise Program_Error with "Unimplemented function Is_Dir";
      return Is_Dir (Self);
   end Is_Dir;

   -------------------
   -- Is_Executable --
   -------------------

   function Is_Executable (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Executable unimplemented");
      raise Program_Error with "Unimplemented function Is_Executable";
      return Is_Executable (Self);
   end Is_Executable;

   -------------
   -- Is_File --
   -------------

   function Is_File (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_File unimplemented");
      raise Program_Error with "Unimplemented function Is_File";
      return Is_File (Self);
   end Is_File;

   ---------------
   -- Is_Hidden --
   ---------------

   function Is_Hidden (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Hidden unimplemented");
      raise Program_Error with "Unimplemented function Is_Hidden";
      return Is_Hidden (Self);
   end Is_Hidden;

   -----------------
   -- Is_Readable --
   -----------------

   function Is_Readable (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Readable unimplemented");
      raise Program_Error with "Unimplemented function Is_Readable";
      return Is_Readable (Self);
   end Is_Readable;

   -----------------
   -- Is_Relative --
   -----------------

   function Is_Relative (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Relative unimplemented");
      raise Program_Error with "Unimplemented function Is_Relative";
      return Is_Relative (Self);
   end Is_Relative;

   -------------
   -- Is_Root --
   -------------

   function Is_Root (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Root unimplemented");
      raise Program_Error with "Unimplemented function Is_Root";
      return Is_Root (Self);
   end Is_Root;

   ----------------------
   -- Is_Symbolic_Link --
   ----------------------

   function Is_Symbolic_Link (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Symbolic_Link unimplemented");
      raise Program_Error with "Unimplemented function Is_Symbolic_Link";
      return Is_Symbolic_Link (Self);
   end Is_Symbolic_Link;

   -----------------
   -- Is_Writable --
   -----------------

   function Is_Writable (Self : File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Writable unimplemented");
      raise Program_Error with "Unimplemented function Is_Writable";
      return Is_Writable (Self);
   end Is_Writable;

   -------------------
   -- Last_Modified --
   -------------------

   function Last_Modified
    (Self : File_Information'Class) return League.Calendars.Date_Time is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Last_Modified unimplemented");
      raise Program_Error with "Unimplemented function Last_Modified";
      return Last_Modified (Self);
   end Last_Modified;

   ---------------
   -- Last_Read --
   ---------------

   function Last_Read
    (Self : File_Information'Class) return League.Calendars.Date_Time is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Last_Read unimplemented");
      raise Program_Error with "Unimplemented function Last_Read";
      return Last_Read (Self);
   end Last_Read;

   -------------------
   -- Make_Absolute --
   -------------------

   function Make_Absolute
    (Self : in out File_Information'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Make_Absolute unimplemented");
      raise Program_Error with "Unimplemented procedure Make_Absolute";
      return Make_Absolute (Self);
   end Make_Absolute;

   -------------------
   -- Make_Absolute --
   -------------------

   procedure Make_Absolute (Self : in out File_Information'Class) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Make_Absolute unimplemented");
      raise Program_Error with "Unimplemented procedure Make_Absolute";
   end Make_Absolute;

   ----------
   -- Name --
   ----------

   function Name
    (Self : File_Information'Class) return League.Strings.Universal_String is
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
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Path unimplemented");
      raise Program_Error with "Unimplemented function Path";
      return Path (Self);
   end Path;

   -------------
   -- Refresh --
   -------------

   procedure Refresh (Self : in out File_Information'Class) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Refresh unimplemented");
      raise Program_Error with "Unimplemented procedure Refresh";
   end Refresh;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out File_Information'Class;
     File : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set unimplemented");
      raise Program_Error with "Unimplemented procedure Set";
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self      : in out File_Information'Class;
     Directory : League.Directories.Directory_Information;
     File      : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set unimplemented");
      raise Program_Error with "Unimplemented procedure Set";
   end Set;

   ----------
   -- Size --
   ----------

   function Size (Self : File_Information'Class) return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Size unimplemented");
      raise Program_Error with "Unimplemented function Size";
      return Size (Self);
   end Size;

   ------------
   -- Suffix --
   ------------

   function Suffix
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Suffix unimplemented");
      raise Program_Error with "Unimplemented function Suffix";
      return Suffix (Self);
   end Suffix;

   --------------------------
   -- Symbolic_Link_Target --
   --------------------------

   function Symbolic_Link_Target
    (Self : File_Information'Class) return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Symbolic_Link_Target unimplemented");
      raise Program_Error with "Unimplemented function Symbolic_Link_Target";
      return Symbolic_Link_Target (Self);
   end Symbolic_Link_Target;

   --------------------------
   -- Symbolic_Link_Target --
   --------------------------

   function Symbolic_Link_Target
    (Self : File_Information'Class) return File_Information is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Symbolic_Link_Target unimplemented");
      raise Program_Error with "Unimplemented function Symbolic_Link_Target";
      return Symbolic_Link_Target (Self);
   end Symbolic_Link_Target;

end League.Files;
