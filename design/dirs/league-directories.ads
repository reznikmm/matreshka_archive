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
--  XXX It would be interesting to add support for syntax sugar of indexing
--  operation.
------------------------------------------------------------------------------
pragma Ada_2012;

private with Ada.Finalization;

with League.Characters;
with League.Strings;
with League.String_Vectors;

package League.Directories is

   pragma Preelaborate;
   pragma Remote_Types;

   type Directory_Information is tagged private;
   pragma Preelaborable_Initialization (Directory_Information);

   function Create
    (Path : League.Strings.Universal_String) return Directory_Information;

   function Absolute_File_Path
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   function Absolute_Path
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String;

   function Canonical_Path
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String;

   function Change_Directory
    (Self : Directory_Information'Class) return Boolean;

   function Change_Directory
    (Self      : Directory_Information'Class;
     Directory : League.Strings.Universal_String) return Boolean;

   procedure Change_Directory (Self : Directory_Information'Class);

--   function Change_Directory_Up (Self : in out Directory_Information'Class)

   function Count (Directory : League.Strings.Universal_String) return Natural;

   function Create_Directory
    (Self : Directory_Information'Class) return Boolean;

   procedure Create_Directory (Self : Directory_Information'Class);

   function Create_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String) return Boolean;

   procedure Create_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String);

   function Create_Path
    (Self : Directory_Information'Class) return Boolean;

   procedure Create_Path (Self : Directory_Information'Class);

   function Create_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String) return Boolean;

   procedure Create_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String);

--   function Entry_Information_List
--    (Self : Directory_Information'Class)
--       return File_Information_Vector;

   function Entry_List
    (Self : Directory_Information'Class)
       return League.String_Vectors.Universal_String_Vector;

   function Exists (Self : Directory_Information'Class) return Boolean;

   function Exists
    (Self      : Directory_Information'Class;
     Directory : League.Strings.Universal_String) return Boolean;

   function Is_Absolute (Self : Directory_Information'Class) return Boolean;

   function Is_Readable (Self : Directory_Information'Class) return Boolean;

   function Is_Relative (Self : Directory_Information'Class) return Boolean;

   function Is_Root (Self : Directory_Information'Class) return Boolean;

   function Make_Absolute
    (Self : in out Directory_Information'Class) return Boolean;

   procedure Make_Absolute (Self : in out Directory_Information'Class);

   function Name
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String;

   function Path
    (Self : Directory_Information'Class)
       return League.Strings.Universal_String;

   procedure Refresh (Self : in out Directory_Information'Class);

   function Relative_File_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   function Remove
    (Self : Directory_Information'Class;
     File : League.Strings.Universal_String) return Boolean;

   procedure Remove
    (Self : Directory_Information'Class;
     File : League.Strings.Universal_String);

   function Remove_Directory
    (Self : Directory_Information'Class) return Boolean;

   procedure Remove_Directory (Self : Directory_Information'Class);

   function Remove_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String) return Boolean;

   procedure Remove_Directory
    (Self : Directory_Information'Class;
     Name : League.Strings.Universal_String);

   function Remove_Path (Self : Directory_Information'Class) return Boolean;

   procedure Remove_Path (Self : Directory_Information'Class);

   function Remove_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String) return Boolean;

   procedure Remove_Path
    (Self : Directory_Information'Class;
     Path : League.Strings.Universal_String);

   procedure Set_Path
    (Self : in out Directory_Information'Class;
     Path : League.Strings.Universal_String);

   --

   function Change_Directory
    (Directory : League.Strings.Universal_String) return Boolean;

   procedure Change_Directory
    (Directory : League.Strings.Universal_String);

   function Clean_Path
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   function Current_Directory return League.Strings.Universal_String;

   function Current_Directory return Directory_Information;

--   function Drives return File_Information_Vector;

   function Drives return League.String_Vectors.Universal_String_Vector;

   function From_Native_Separators
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   function Home return League.Strings.Universal_String;

   function Home return Directory_Information;

   function Is_Absolute_Path
    (Path : League.Strings.Universal_String) return Boolean;

   function Is_Relative_Path
    (Path : League.Strings.Universal_String) return Boolean;

   function Root return League.Strings.Universal_String;

   function Root return Directory_Information;

   function Separator return League.Characters.Universal_Character;

   function Temp return League.Strings.Universal_String;
   --  XXX Rename to be close to Ada conventions.

   function Temp return Directory_Information;

   function To_Native_Separators
    (Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;

private

   type Directory_Information is
     new Ada.Finalization.Controlled with null record;

end League.Directories;
