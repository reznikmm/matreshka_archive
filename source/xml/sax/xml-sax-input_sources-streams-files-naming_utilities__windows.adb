------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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
--  This is implementation of package for Microsoft Windows.
------------------------------------------------------------------------------
with League.Strings.Internals;
with League.Text_Codecs;
with Matreshka.Internals.Strings.C;
with Matreshka.Internals.Utf16;
with Matreshka.Internals.Windows;

separate (XML.SAX.Input_Sources.Streams.Files)
package body Naming_Utilities is

   use Matreshka.Internals.Windows;
   use type League.Strings.Universal_String;

   subtype HRESULT is LONG;
   subtype PCWSTR is LPCWSTR;
   subtype PWSTR is LPWSTR;

   MAX_PATH                : constant := 260;
   INTERNET_MAX_URL_LENGTH : constant := 32 + 3 + 2048;

   function GetFullPathName
    (lpFileName    : LPCWSTR;
     nBufferLength : DWORD;
     lpBuffer      : LPWSTR;
     lpFilePart    : out LPWSTR) return DWORD;
   pragma Import (Stdcall, GetFullPathName, "GetFullPathNameW");

   function PathCreateFromUrl
    (pszUrl   : PCWSTR;
     pszPath  : PWSTR;
     pcchPath : in out DWORD;
     dwFlags  : DWORD) return HRESULT;
   pragma Import (Stdcall, PathCreateFromUrl, "PathCreateFromUrlW");

   function UrlCreateFromPath
    (pszPath : PCWSTR;
     pszUrl  : PWSTR;
     pcchUrl : in out DWORD;
     dwFlags : DWORD) return HRESULT;
   pragma Import (Stdcall, UrlCreateFromPath, "UrlCreateFromPathW");

   -------------------
   -- Absolute_Name --
   -------------------

   function Absolute_Name
    (Name : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Result : Matreshka.Internals.Strings.Shared_String_Access;
      Size   : DWORD;
      Valid  : Boolean;
      Dummy  : LPWSTR;
      pragma Warnings (Off, Dummy);

   begin
      Size :=
        GetFullPathName
         (League.Strings.Internals.Internal (Name).Value (0)'Access,
          0,
          null,
          Dummy);

      Result :=
        Matreshka.Internals.Strings.Allocate
         (Matreshka.Internals.Utf16.Utf16_String_Index (Size));

      Size :=
        GetFullPathName
         (League.Strings.Internals.Internal (Name).Value (0)'Access,
          DWORD (Result.Size),
          Result.Value (0)'Access,
          Dummy);

      Matreshka.Internals.Strings.C.Validate_And_Fixup
       (Result, Matreshka.Internals.Utf16.Utf16_String_Index (Size), Valid);

      return League.Strings.Internals.Wrap (Result);
   end Absolute_Name;

   ----------------------
   -- File_Name_To_URI --
   ----------------------

   function File_Name_To_URI
    (File_Name : League.Strings.Universal_String)
     return League.Strings.Universal_String
   is
      Result : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Allocate (INTERNET_MAX_URL_LENGTH);
      Size   : DWORD := INTERNET_MAX_URL_LENGTH;
      Valid  : Boolean;
      Dummy  : HRESULT;
      pragma Warnings (Off, Dummy);

   begin
      Dummy :=
        UrlCreateFromPath
         (League.Strings.Internals.Internal (File_Name).Value (0)'Access,
          Result.Value (0)'Access,
          Size,
          0);

      Matreshka.Internals.Strings.C.Validate_And_Fixup
       (Result, Matreshka.Internals.Utf16.Utf16_String_Index (Size), Valid);

      return League.Strings.Internals.Wrap (Result);
   end File_Name_To_URI;

   --------------------------
   -- To_Ada_RTL_File_Name --
   --------------------------

   function To_Ada_RTL_File_Name
    (Name : League.Strings.Universal_String) return String
   is
      Aux    : constant Ada.Streams.Stream_Element_Array
        := League.Text_Codecs.Codec_For_Application_Locale.Encode
            (Name).To_Stream_Element_Array;
      Result : String (1 .. Aux'Length);
      for Result'Address use Aux'Address;

   begin
      return Result;
   end To_Ada_RTL_File_Name;

   ----------------------
   -- URI_To_File_Name --
   ----------------------

   function URI_To_File_Name
    (URI : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Result : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Allocate (MAX_PATH);
      Size   : DWORD := MAX_PATH;
      Valid  : Boolean;
      Dummy  : HRESULT;
      pragma Warnings (Off, Dummy);

   begin
      Dummy :=
        PathCreateFromUrl
         (League.Strings.Internals.Internal (URI).Value (0)'Access,
          Result.Value (0)'Access,
          Size,
          0);

      Matreshka.Internals.Strings.C.Validate_And_Fixup
       (Result, Matreshka.Internals.Utf16.Utf16_String_Index (Size), Valid);

      return League.Strings.Internals.Wrap (Result);
   end URI_To_File_Name;

end Naming_Utilities;
