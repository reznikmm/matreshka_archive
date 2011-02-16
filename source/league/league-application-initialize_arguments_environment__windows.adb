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

with Matreshka.Internals.Utf16;
with Matreshka.Internals.Windows;

separate (League.Application)
procedure Initialize_Arguments_Environment is

   use Matreshka.Internals.Windows;
   use type Interfaces.C.size_t;
   use type Matreshka.Internals.Utf16.Utf16_Code_Unit;

   type LPWSTR_Array is
     array (Interfaces.C.size_t range <>) of aliased LPWSTR;

   package LPWSTR_Pointers is
     new Interfaces.C.Pointers
          (Interfaces.C.size_t, LPWSTR, LPWSTR_Array, null);
   use type LPWSTR_Pointers.Pointer;

   use type WCHAR_Pointers.Pointer;

   function GetCommandLine return LPWSTR;
   pragma Import (Stdcall, GetCommandLine, "GetCommandLineW");

   function CommandLineToArgv
    (lpCmdLine : LPCWSTR;
     pNumArgs  : not null access Interfaces.C.int)
       return LPWSTR_Pointers.Pointer;
   pragma Import (Stdcall, CommandLineToArgv, "CommandLineToArgvW");

   procedure LocalFree (X : LPWSTR_Pointers.Pointer);
   pragma Import (Stdcall, LocalFree, "LocalFree");

   function GetEnvironmentStrings return LPWCH;
   pragma Import (Stdcall, GetEnvironmentStrings, "GetEnvironmentStringsW");

   procedure FreeEnvironmentStrings (lpszEnvironmentBlock : LPWCH);
   pragma Import (Stdcall, FreeEnvironmentStrings, "FreeEnvironmentStringsW");

   Win_Argc : aliased Interfaces.C.int;
   Win_Argv : LPWSTR_Pointers.Pointer
     := CommandLineToArgv (LPCWSTR (GetCommandLine), Win_Argc'Access);
   Win_Envp : LPWCH := GetEnvironmentStrings;
   Envp     : LPWCH := Win_Envp;

begin
   --  Convert command line arguments.

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

   --  Convert environment variables.

   if Win_Envp /= null then
      while Envp.all /= 0 loop
         declare
            Pair  : constant League.Strings.Universal_String
              := To_Universal_String (Envp);
            Index : constant Natural
              := Pair.Index (League.Strings.To_Universal_Character ('='));

         begin
            Env.Insert
              (Pair.Slice (1, Index - 1),
               Pair.Slice (Index + 1, Pair.Length));
            Envp :=
              LPWCH
               (WCHAR_Pointers.Pointer (Envp)
                  + Interfaces.C.ptrdiff_t (wcslen (Envp) + 1));
         end;
      end loop;

      FreeEnvironmentStrings (Win_Envp);
   end if;
end Initialize_Arguments_Environment;
