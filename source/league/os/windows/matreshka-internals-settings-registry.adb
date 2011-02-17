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
with Ada.Unchecked_Conversion;
with Interfaces.C;

with League.Strings.Internals;
with League.Values.Strings;
with Matreshka.Internals.Utf16;
with Matreshka.Internals.Windows;

package body Matreshka.Internals.Settings.Registry is

   use type League.Strings.Universal_Character;

   -----------------
   -- Windows API --
   -----------------

   type ACCESS_MASK is new Interfaces.C.unsigned_long;

   type REGSAM is new ACCESS_MASK;

   type PHKEY is access all HKEY;

   type SECURITY_ATTRIBUTES is null record;
   type LPSECURITY_ATTRIBUTES is access all SECURITY_ATTRIBUTES;
   pragma Convention (C, LPSECURITY_ATTRIBUTES);

   KEY_WRITE : constant REGSAM := 16#20006#;
   KEY_READ  : constant REGSAM := 16#20019#;

   subtype LONG is Interfaces.C.long;
   subtype DWORD is interfaces.C.unsigned_long;

   use type LONG;

   type LPDWORD is access all DWORD;

   REG_OPTION_NON_VOLATILE : constant DWORD := 0;

   REG_SZ : constant DWORD := 1;

   function To_HKEY is
     new Ada.Unchecked_Conversion (Interfaces.C.unsigned, HKEY);

   No_HKEY : constant HKEY := HKEY (System.Null_Address);

   HKEY_CLASSES_ROOT  : constant HKEY := To_HKEY (16#8000_0000#);
   HKEY_CURRENT_USER  : constant HKEY := To_HKEY (16#8000_0001#);
   HKEY_LOCAL_MACHINE : constant HKEY := To_HKEY (16#8000_0002#);
   HKEY_USERS         : constant HKEY := To_HKEY (16#8000_0003#);

   function RegOpenKeyEx
    (hKey       : Registry.HKEY;
     lpSubKey   : Windows.LPCWSTR;
     ulOptions  : Interfaces.C.unsigned_long;
     samDesired : REGSAM;
     phkResult  : PHKEY) return LONG;
   pragma Import (Stdcall, RegOpenKeyEx, "RegOpenKeyExW");

   function RegCreateKeyEx
    (hKey                 : Registry.HKEY;
     lpSubKey             : Windows.LPCWSTR;
     Reserved             : Interfaces.C.unsigned_long;
     lpClass              : Windows.LPWSTR;
     dwOptions            : DWORD;
     samDesired           : REGSAM;
     lpSecurityAttributes : LPSECURITY_ATTRIBUTES;
     phkResult            : PHKEY;
     lpdwDisposition      : LPDWORD) return LONG;
   pragma Import (Stdcall, RegCreateKeyEx, "RegCreateKeyExW");

   --  function RegCloseKey (hKey : Registry.HKEY) return LONG;
   procedure RegCloseKey (hKey : Registry.HKEY);
   pragma Import (Stdcall, RegCloseKey, "RegCloseKey");

   --  function RegFlushKey (hKey : Registry.HKEY) return LONG;
   procedure RegFlushKey (hKey : Registry.HKEY);
   pragma Import (Stdcall, RegFlushKey, "RegFlushKey");

   function RegSetValueEx
    (hKey     : Registry.HKEY;
     lpSubKey : Windows.LPCWSTR;
     Reserved : DWORD;
     dwType   : DWORD;
     lpData   : System.Address;
     cbData   : DWORD) return LONG;
   pragma Import (Stdcall, RegSetValueEx, "RegSetValueExW");

   function RegQueryValueEx
    (hKey     : Registry.HKEY;
     lpSubKey : Windows.LPCWSTR;
     Reserved : LPDWORD;
     lpType   : LPDWORD;
     lpData   : System.Address;
     lpcbData : LPDWORD) return LONG;
   pragma Import (Stdcall, RegQueryValueEx, "RegQueryValueExW");

   function Create
    (Manager   : not null access Abstract_Manager'Class;
     Name      : League.Strings.Universal_String;
     Root      : HKEY;
     Key       : League.Strings.Universal_String;
     Read_Only : Boolean) return not null Settings_Access;
   --  Creates storage pointing to specified root and key. Read_Only means
   --  that subtree is opened for reading only.

   HKEY_CURRENT_USER_Name  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HKEY_CURRENT_USER");
   HKEY_LOCAL_MACHINE_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HKEY_LOCAL_MACHINE");
   HKEY_CLASSES_ROOT_Name  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HKEY_CLASSES_ROOT");
   HKEY_USERS_Name         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HKEY_USERS");

   --------------
   -- Contains --
   --------------

   overriding function Contains
    (Self : Registry_Settings;
     Key  : League.Strings.Universal_String) return Boolean
   is
      Handler : aliased HKEY;
      Path    : League.Strings.Universal_String;
      Name    : League.Strings.Universal_String := Key;
      Found   : Boolean := True;

   begin
      --  Compute path to open

      for J in 1 .. Key.Length loop
         if Key.Element (J) = '\' then
            Path := Key.Slice (1, J - 1);
            Name := Key.Slice (J + 1, Key.Length);

            exit;
         end if;
      end loop;

      --  Try to open path

      if RegOpenKeyEx
          (Self.Handler,
           League.Strings.Internals.Internal (Path).Value (0)'Access,
           0,
           KEY_READ,
           Handler'Unchecked_Access) /= 0
      then
         return False;
      end if;

      --  Try to retrieve value

      if RegQueryValueEx
          (Handler,
           League.Strings.Internals.Internal (Name).Value (0)'Access,
           null,
           null,
           System.Null_Address,
           null) /= 0
      then
         Found := False;
      end if;

      RegCloseKey (Handler);

      return Found;
   end Contains;

   ------------
   -- Create --
   ------------

   function Create
    (Manager   : not null access Abstract_Manager'Class;
     Key       : League.Strings.Universal_String;
     Read_Only : Boolean) return not null Settings_Access
   is
      use type League.Strings.Universal_String;

      Path      : League.Strings.Universal_String := Key;
      Separator : Natural;

   begin
      --  Remove leading backslash if any.

      if Path.Element (1) = '\' then
         Path := Path.Slice (2, Path.Length);
      end if;

      Separator := Path.Index ('\');

      if Separator = 0 then
         Separator := Path.Length + 1;
      end if;

      if Path.Slice (1, Separator - 1) = HKEY_CURRENT_USER_Name then
         return
           Create
            (Manager,
             '\' & Path,
             HKEY_CURRENT_USER,
             Path.Slice (Separator + 1, Path.Length),
             Read_Only);

      elsif Path.Slice (1, Separator - 1) = HKEY_LOCAL_MACHINE_Name then
         return
           Create
            (Manager,
             '\' & Path,
             HKEY_LOCAL_MACHINE,
             Path.Slice (Separator + 1, Path.Length),
             Read_Only);

      elsif Path.Slice (1, Separator - 1) = HKEY_CLASSES_ROOT_Name then
         return
           Create
            (Manager,
             '\' & Path,
             HKEY_CLASSES_ROOT,
             Path.Slice (Separator + 1, Path.Length),
             Read_Only);

      elsif Path.Slice (1, Separator - 1) = HKEY_USERS_Name then
         return
           Create
            (Manager,
             '\' & Path,
             HKEY_USERS,
             Path.Slice (Separator + 1, Path.Length),
             Read_Only);

      else
         return
           Create
            (Manager,
             '\' & HKEY_LOCAL_MACHINE_Name & '\' & Path,
             HKEY_LOCAL_MACHINE,
             Path,
             Read_Only);
      end if;
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Manager   : not null access Abstract_Manager'Class;
     Name      : League.Strings.Universal_String;
     Root      : HKEY;
     Key       : League.Strings.Universal_String;
     Read_Only : Boolean) return not null Settings_Access is
   begin
      return Aux : constant not null Settings_Access
        := new Registry_Settings'
                (Counter   => <>,
                 Manager   => Manager,
                 Name      => Name,
                 Handler   => <>,
                 Read_Only => Read_Only)
      do
         declare
            use type LONG;

            Self : Registry_Settings'Class
              renames Registry_Settings'Class (Aux.all);

         begin
            if Self.Read_Only then
               --  Open registry to read when Read_Only mode is specified.

               if RegOpenKeyEx
                   (Root,
                    League.Strings.Internals.Internal (Key).Value (0)'Access,
                    0,
                    KEY_READ,
                    Self.Handler'Access) /= 0
               then
                  Self.Handler := No_HKEY;
               end if;

            else
               --  In Read_Write mode, try to open first.

               if RegOpenKeyEx
                   (Root,
                    League.Strings.Internals.Internal (Key).Value (0)'Access,
                    0,
                    KEY_READ or KEY_WRITE,
                    Self.Handler'Access) /= 0
               then
                  --  Try to create it.

                  if RegCreateKeyEx
                      (Root,
                       League.Strings.Internals.Internal
                        (Key).Value (0)'Access,
                       0,
                       null,
                       REG_OPTION_NON_VOLATILE,
                       KEY_READ or KEY_WRITE,
                       null,
                       Self.Handler'Access,
                       null) /= 0
                  then
                     --  Fallback to read-only mode and try to open it to read.

                     Self.Read_Only := True;

                     if RegOpenKeyEx
                         (Root,
                          League.Strings.Internals.Internal
                           (Key).Value (0)'Access,
                          0,
                          KEY_READ,
                          Self.Handler'Access) /= 0
                     then
                        Self.Handler := No_HKEY;
                     end if;
                  end if;
               end if;
            end if;
         end;
      end return;
   end Create;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize
    (Self : not null access Registry_Settings) is
   begin
      if Self.Handler /= No_HKEY then
         RegCloseKey (Self.Handler);
         Self.Handler := No_HKEY;
      end if;
   end Finalize;

   ----------
   -- Name --
   ----------

   overriding function Name
    (Self : not null access Registry_Settings)
       return League.Strings.Universal_String is
   begin
      return Self.Name;
   end Name;

   ------------
   -- Remove --
   ------------

   overriding procedure Remove
    (Self : in out Registry_Settings;
     Key  : League.Strings.Universal_String) is
   begin
      null;
   end Remove;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self  : in out Registry_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value)
   is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

      Handler : aliased HKEY;
      Path    : League.Strings.Universal_String;
      Name    : League.Strings.Universal_String := Key;
      V       : League.Strings.Universal_String;

   begin
      if Self.Handler = No_HKEY or Self.Read_Only then
         --  Registry can't be modified in read-only mode.

         return;
      end if;

      --  Compute path to open

      for J in 1 .. Key.Length loop
         if Key.Element (J) = '\' then
            Path := Key.Slice (1, J - 1);
            Name := Key.Slice (J + 1, Key.Length);

            exit;
         end if;
      end loop;

      --  Try to open path

      if RegOpenKeyEx
          (Self.Handler,
           League.Strings.Internals.Internal (Path).Value (0)'Access,
           0,
           KEY_READ or KEY_WRITE,
           Handler'Unchecked_Access) /= 0
      then
         --  Try to create path

         if RegCreateKeyEx
             (Self.Handler,
              League.Strings.Internals.Internal (Path).Value (0)'Access,
              0,
              null,
              REG_OPTION_NON_VOLATILE,
              KEY_READ or KEY_WRITE,
              null,
              Handler'Unchecked_Access,
              null) /= 0
         then
            --  Operation failed, return.

            return;
         end if;
      end if;

      --  Extract value.

      V := League.Values.Strings.Get (Value);

      --  Store string.

      if RegSetValueEx
          (Handler,
           League.Strings.Internals.Internal (Name).Value (0)'Access,
           0,
           REG_SZ,
           League.Strings.Internals.Internal (V).Value (0)'Address,
           DWORD ((League.Strings.Internals.Internal (V).Unused + 1) * 2)) /= 0
      then
         null;
      end if;

      RegCloseKey (Handler);
   end Set_Value;

   ----------
   -- Sync --
   ----------

   overriding procedure Sync (Self : in out Registry_Settings) is
   begin
      if Self.Handler /= No_HKEY and not Self.Read_Only then
         --  RegFlushKey requires KEY_QUERY_VALUE access right, this right is
         --  part of KEY_READ.

         RegFlushKey (Self.Handler);
      end if;
   end Sync;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self : Registry_Settings;
     Key  : League.Strings.Universal_String)
       return League.Values.Value
   is
      use Matreshka.Internals.Utf16;
      use type DWORD;

      Handler : aliased HKEY;
      Path    : League.Strings.Universal_String;
      Name    : League.Strings.Universal_String := Key;
      V_Type  : aliased DWORD;
      V_Size  : aliased DWORD;
      Value   : League.Values.Value;

   begin
      --  Compute path to open

      for J in 1 .. Key.Length loop
         if Key.Element (J) = '\' then
            Path := Key.Slice (1, J - 1);
            Name := Key.Slice (J + 1, Key.Length);

            exit;
         end if;
      end loop;

      --  Try to open path

      if RegOpenKeyEx
          (Self.Handler,
           League.Strings.Internals.Internal (Path).Value (0)'Access,
           0,
           KEY_READ,
           Handler'Unchecked_Access) /= 0
      then
         return X : League.Values.Value;
      end if;

      --  Try to retrieve value

      if RegQueryValueEx
          (Handler,
           League.Strings.Internals.Internal (Name).Value (0)'Access,
           null,
           V_Type'Unchecked_Access,
           System.Null_Address,
           V_Size'Unchecked_Access) = 0
      then
         if V_Type = REG_SZ then
            declare
               V : Matreshka.Internals.Utf16.Utf16_String
                    (0
                       .. Matreshka.Internals.Utf16.Utf16_String_Index
                           (V_Size / 2));

            begin
               if RegQueryValueEx
                   (Handler,
                    League.Strings.Internals.Internal (Name).Value (0)'Access,
                    null,
                    V_Type'Unchecked_Access,
                    V'Address,
                    V_Size'Unchecked_Access) = 0
               then
                  V (V'Last) := 0;
                  League.Values.Strings.Set
                   (Value,
                    Matreshka.Internals.Windows.To_Universal_String
                     (V (0)'Unchecked_Access));
               end if;
            end;
         end if;
      end if;

      RegCloseKey (Handler);

      return Value;
   end Value;

end Matreshka.Internals.Settings.Registry;
