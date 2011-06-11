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
--  This package contains implementation of INI files storage for settings
--  manager.
------------------------------------------------------------------------------
with Ada.Containers.Hashed_Maps;

with League.Stream_Element_Vectors;
with League.Strings.Hash;

package Matreshka.Internals.Settings.Ini_Files is

   type Ini_File_Settings is new Abstract_Settings with private;

   function Create
    (Manager   : not null access Abstract_Manager'Class;
     File_Name : League.Strings.Universal_String)
       return not null Settings_Access;
   --  Creates settings storage object and loads data from the file when it is
   --  available.

private

   package Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           League.Stream_Element_Vectors.Stream_Element_Vector,
           League.Strings.Hash,
           League.Strings."=",
           League.Stream_Element_Vectors."=");

   type Ini_File_Settings is new Abstract_Settings with record
      File_Name : League.Strings.Universal_String;
      Modified  : Boolean;
      Values    : Maps.Map;
   end record;

   overriding function Contains
    (Self : Ini_File_Settings;
     Key  : League.Strings.Universal_String) return Boolean;

   overriding procedure Finalize
    (Self : not null access Ini_File_Settings);

   overriding function Name
    (Self : not null access Ini_File_Settings)
       return League.Strings.Universal_String;
   --  Returns name of the storage's file.

   overriding procedure Remove
    (Self : in out Ini_File_Settings;
     Key  : League.Strings.Universal_String);

   overriding procedure Set_Value
    (Self  : in out Ini_File_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Holders.Holder);

   overriding procedure Sync (Self : in out Ini_File_Settings);

   overriding function Value
    (Self : Ini_File_Settings;
     Key  : League.Strings.Universal_String)
       return League.Holders.Holder;

end Matreshka.Internals.Settings.Ini_Files;
