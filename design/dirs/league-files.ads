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
pragma Ada_2012;

private with Ada.Finalization;

--with League.Calendars;
--with League.Directories;
with League.Strings;
private with Matreshka.Internals.Files;

package League.Files is

   pragma Preelaborate;
--   pragma Remote_Types;

   type File_Information is tagged private;
   pragma Preelaborable_Initialization (File_Information);

   function Create
    (File_Path : League.Strings.Universal_String) return File_Information;
   --  Creates new object that gives information about the given file. The
   --  File_Path can also include absolute of relative path.

--   function Absolute_Directory
--    (Self : File_Information'Class)
--       return League.Directories.Directory_Information;
--
--   function Absolute_Directory
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Absolute_Path
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Base_Name
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Bundle_Name
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Canonical_Directory
--    (Self : File_Information'Class)
--       return League.Directories.Directory_Information;
--
--   function Canonical_Directory
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Canonical_Path
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Complete_Base_Name
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Complete_Suffix
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Created
--    (Self : File_Information'Class) return League.Calendars.Date_Time;
--
--   function Directory
--    (Self : File_Information'Class)
--       return League.Directories.Directory_Information;
--
--   function Directory
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Exists (Self : File_Information'Class) return Boolean;
--
----   function Group
----    (Self : File_Information'Class) return League.Strings.Universal_String;
----
----   function Group_Id (Self : File_Information'Class) return Integer;
--
--   function Is_Absolute (Self : File_Information'Class) return Boolean;
--
--   function Is_Bundle (Self : File_Information'Class) return Boolean;
--
--   function Is_Dir (Self : File_Information'Class) return Boolean;
--
--   function Is_Executable (Self : File_Information'Class) return Boolean;
--
--   function Is_File (Self : File_Information'Class) return Boolean;
--
--   function Is_Hidden (Self : File_Information'Class) return Boolean;
--
--   function Is_Readable (Self : File_Information'Class) return Boolean;
--
--   function Is_Relative (Self : File_Information'Class) return Boolean;
--
--   function Is_Root (Self : File_Information'Class) return Boolean;
--
--   function Is_Symbolic_Link (Self : File_Information'Class) return Boolean;
--
--   function Is_Writable (Self : File_Information'Class) return Boolean;
--
--   function Last_Modified
--    (Self : File_Information'Class) return League.Calendars.Date_Time;
--
--   function Last_Read
--    (Self : File_Information'Class) return League.Calendars.Date_Time;
--
--   function Make_Absolute
--    (Self : in out File_Information'Class) return Boolean;
--
--   procedure Make_Absolute (Self : in out File_Information'Class);
--
--   function Name
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
----   function Owner
----    (Self : File_Information'Class) return League.Strings.Universal_String;
----
----   function Owner_Id (Self : File_Information'Class) return Integer;
--
--   function Path
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
----   function Permission .... Has_Permission???
----
----   function Permissions ....
--
--   procedure Refresh (Self : in out File_Information'Class);
--
--   procedure Set
--    (Self : in out File_Information'Class;
--     File : League.Strings.Universal_String);
--
--   procedure Set
--    (Self      : in out File_Information'Class;
--     Directory : League.Directories.Directory_Information;
--     File      : League.Strings.Universal_String);
--
--   function Size (Self : File_Information'Class) return Integer;
--
--   function Suffix
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Symbolic_Link_Target
--    (Self : File_Information'Class) return League.Strings.Universal_String;
--
--   function Symbolic_Link_Target
--    (Self : File_Information'Class) return File_Information;

private

   type File_Information is new Ada.Finalization.Controlled with record
      Data : Matreshka.Internals.Files.Shared_File_Information_Access;
   end record;

   procedure Adjust (Self : in out File_Information);

   procedure Finalize (Self : in out File_Information);

end League.Files;
