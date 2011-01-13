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
--  This version is for Windows operating systems.
------------------------------------------------------------------------------
with Interfaces.C.Pointers;

with League.Strings.Internals;
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Unicode;
with Matreshka.Internals.Utf16;

separate (League.Application)
procedure Initialize_Arguments_Environment is

   use type Interfaces.C.size_t;

   type LPWSTR is access all Matreshka.Internals.Unicode.Code_Unit_16;
   pragma Convention (C, LPWSTR);

   type LPCWSTR is access constant Matreshka.Internals.Unicode.Code_Unit_16;
   pragma Convention (C, LPCWSTR);

   type LPWSTR_Array is
     array (Interfaces.C.size_t range <>) of aliased LPWSTR;

   package LPWSTR_Pointers is
     new Interfaces.C.Pointers
          (Interfaces.C.size_t, LPWSTR, LPWSTR_Array, null);
   use type LPWSTR_Pointers.Pointer;

   function GetCommandLine return LPWSTR;
   pragma Import (Stdcall, GetCommandLine, "GetCommandLineW");

   function CommandLineToArgv
    (lpCmdLine : LPCWSTR;
     pNumArgs  : not null access Interfaces.C.int)
       return LPWSTR_Pointers.Pointer;
   pragma Import (Stdcall, CommandLineToArgv, "CommandLineToArgvW");

   procedure LocalFree (X : LPWSTR_Pointers.Pointer);
   pragma Import (Stdcall, LocalFree, "LocalFree");

   function wcslen (str : LPWSTR) return Interfaces.C.size_t;
   pragma Import (C, wcslen);

   function To_Universal_String
     (Item : LPWSTR) return League.Strings.Universal_String;
   --  Converts Windows Unicode string from into Universal_String.

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String
     (Item : LPWSTR) return League.Strings.Universal_String
   is
      use Matreshka.Internals.Strings.Configuration;
      use Matreshka.Internals.Unicode;
      use Matreshka.Internals.Utf16;

      Source      : constant Unaligned_Utf16_String (Utf16_String_Index);
      for Source'Address use Item.all'Address;
      pragma Import (Ada, Source);

      Destination : constant Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Allocate
            (Matreshka.Internals.Utf16.Utf16_String_Index (wcslen (Item)));

      Position : Utf16_String_Index := 0;
      Code     : Code_Point;

   begin
      loop
         Unchecked_Next (Source, Position, Code);

         exit when Code = 0;

         Unchecked_Store (Destination.Value, Destination.Unused, Code);
         Destination.Length := Destination.Length + 1;
      end loop;

      String_Handler.Fill_Null_Terminator (Destination);

      return League.Strings.Internals.Wrap (Destination);
   end To_Universal_String;

   Win_Argc : aliased Interfaces.C.int;
   Win_Argv : LPWSTR_Pointers.Pointer
     := CommandLineToArgv (LPCWSTR (GetCommandLine), Win_Argc'Access);

begin
   --  Initialize command line arguments.

   if Win_Argv /= null then
      declare
         Argv : constant LPWSTR_Array
           := LPWSTR_Pointers.Value
               (Win_Argv, Interfaces.C.ptrdiff_t (Win_Argc));

      begin
         for J in Argv'First + 1 .. Argv'Last loop
            Args.Append (To_Universal_String (Argv (J)));
         end loop;

         LocalFree (Win_Argv);
      end;
   end if;
end Initialize_Arguments_Environment;
