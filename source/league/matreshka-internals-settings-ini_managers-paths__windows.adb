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
--  This version of package intended to be used on Windows systems.
------------------------------------------------------------------------------
with Interfaces.C;
with System;

with Matreshka.Internals.Strings.C;
with Matreshka.Internals.Utf16;
with Matreshka.Internals.Windows;

separate (Matreshka.Internals.Settings.Ini_Managers)
package body Paths is

   use Matreshka.Internals.Windows;
   use type League.Strings.Universal_String;

   type HWND is new System.Address;

   type BOOL is new Interfaces.C.int;

   MAX_PATH : constant := 260;

   CSIDL_APPDATA        : constant := 26;
   CSIDL_COMMON_APPDATA : constant := 35;

   function SHGetSpecialFolderPath
    (hwndOwner : HWND;
     lpszPath  : LPWSTR;
     csidl     : Interfaces.C.int;
     fCreate   : BOOL) return BOOL;
   pragma Import (Stdcall, SHGetSpecialFolderPath, "SHGetSpecialFolderPathW");

   function Get_Special_Folder
    (CSIDL : Interfaces.C.int) return League.Strings.Universal_String;
   --  Returns path of the specified special folder.

   ------------------------
   -- Get_Special_Folder --
   ------------------------

   function Get_Special_Folder
    (CSIDL : Interfaces.C.int) return League.Strings.Universal_String
   is
      Buffer : array (1 .. MAX_PATH)
        of aliased Matreshka.Internals.Utf16.Utf16_Code_Unit;

   begin
      if SHGetSpecialFolderPath
          (HWND (System.Null_Address), Buffer (1)'Unchecked_Access, CSIDL, 0)
             = 0
      then
         raise Program_Error;
      end if;

      return
        Matreshka.Internals.Strings.C.To_Valid_Universal_String
         (Buffer (1)'Unchecked_Access);
   end Get_Special_Folder;

   ------------------
   -- System_Paths --
   ------------------

   function System_Paths
     return League.String_Vectors.Universal_String_Vector
   is
      Paths : League.String_Vectors.Universal_String_Vector;

   begin
      Paths.Append (Get_Special_Folder (CSIDL_COMMON_APPDATA) & '/');

      return Paths;
   end System_Paths;

   ---------------
   -- User_Path --
   ---------------

   function User_Path return League.Strings.Universal_String is
   begin
      return Get_Special_Folder (CSIDL_APPDATA) & '/';
   end User_Path;

end Paths;
