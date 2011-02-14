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
with League.Application;
with Matreshka.Internals.Settings.Configuration_Files;

package body Matreshka.Internals.Settings.Fallbacks is

   use type League.Strings.Universal_String;

   function User_Path return League.Strings.Universal_String;
   --  Returns path where user's settings are stored. Returned path has
   --  trailing path separator.

   function System_Path return League.Strings.Universal_String;
   --  Returns path where system settings are stored. Returned path has
   --  trailing path separator.

   function Extension return League.Strings.Universal_String;
   --  Returns configuration file extention.
   --  XXX .conf and .ini are used depending of platform and format, but not
   --  yet implemented.

   function User_Application_File return League.Strings.Universal_String;
   --  Constructs file name of user's application settings file.

   function User_Organization_File return League.Strings.Universal_String;
   --  Constructs file name of user's organization settings file.

   function System_Application_File return League.Strings.Universal_String;
   --  Constructs file name of system's application settings file.

   function System_Organization_File return League.Strings.Universal_String;
   --  Constructs file name of system's organization settings file.

   Unknown_Organization : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Unknown Organization");

   --------------
   -- Contains --
   --------------

   overriding function Contains
    (Self : Fallback_Settings;
     Key  : League.Strings.Universal_String) return Boolean is
   begin
      return
        Self.User_Application.Contains (Key)
          or else Self.User_Organization.Contains (Key)
          or else Self.System_Application.Contains (Key)
          or else Self.System_Organization.Contains (Key);
   end Contains;

   ------------
   -- Create --
   ------------

   function Create return not null Settings_Access is
   begin
      return Aux : constant not null Settings_Access
        := new Fallback_Settings'
                (Abstract_Settings with
                   Matreshka.Internals.Settings.Configuration_Files.Create
                    (User_Application_File),
                   Matreshka.Internals.Settings.Configuration_Files.Create
                    (User_Organization_File),
                   Matreshka.Internals.Settings.Configuration_Files.Create
                    (System_Application_File),
                   Matreshka.Internals.Settings.Configuration_Files.Create
                    (System_Organization_File));
   end Create;

   ---------------
   -- Extension --
   ---------------

   function Extension return League.Strings.Universal_String is
   begin
      return League.Strings.To_Universal_String (".conf");
   end Extension;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize
    (Self : not null access Fallback_Settings) is
   begin
      if Self.User_Application /= null then
         Dereference (Self.User_Application);
      end if;

      if Self.User_Organization /= null then
         Dereference (Self.User_Organization);
      end if;

      if Self.System_Application /= null then
         Dereference (Self.System_Application);
      end if;

      if Self.System_Organization /= null then
         Dereference (Self.System_Organization);
      end if;
   end Finalize;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self  : in out Fallback_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value) is
   begin
      Self.User_Application.Set_Value (Key, Value);
   end Set_Value;

   ----------
   -- Sync --
   ----------

   overriding procedure Sync (Self : in out Fallback_Settings) is
   begin
      Self.User_Application.Sync;
   end Sync;

   -----------------------------
   -- System_Application_File --
   -----------------------------

   function System_Application_File return League.Strings.Universal_String is
   begin
      if League.Application.Application_Name.Is_Empty then
         return System_Organization_File;

      else
         if League.Application.Organization_Name.Is_Empty then
            return
              System_Path
                & Unknown_Organization
                & '/'
                & League.Application.Application_Name
                & Extension;

         else
            return
              System_Path
                & League.Application.Organization_Name
                & '/'
                & League.Application.Application_Name
                & Extension;
         end if;
      end if;
   end System_Application_File;

   ------------------------------
   -- System_Organization_File --
   ------------------------------

   function System_Organization_File return League.Strings.Universal_String is
   begin
      if League.Application.Organization_Name.Is_Empty then
         return System_Path & Unknown_Organization & Extension;

      else
         return System_Path & League.Application.Organization_Name & Extension;
      end if;
   end System_Organization_File;

   -----------------
   -- System_Path --
   -----------------

   function System_Path return League.Strings.Universal_String is
   begin
      return League.Strings.To_Universal_String ("/etc/xdg/");
   end System_Path;

   ---------------------------
   -- User_Application_File --
   ---------------------------

   function User_Application_File return League.Strings.Universal_String is
   begin
      if League.Application.Application_Name.Is_Empty then
         return User_Organization_File;

      else
         if League.Application.Organization_Name.Is_Empty then
            return
              User_Path
                & Unknown_Organization
                & '/'
                & League.Application.Application_Name
                & Extension;

         else
            return
              User_Path
                & League.Application.Organization_Name
                & '/'
                & League.Application.Application_Name
                & Extension;
         end if;
      end if;
   end User_Application_File;

   ----------------------------
   -- User_Organization_File --
   ----------------------------

   function User_Organization_File return League.Strings.Universal_String is
   begin
      if League.Application.Organization_Name.Is_Empty then
         return User_Path & Unknown_Organization & Extension;

      else
         return User_Path & League.Application.Organization_Name & Extension;
      end if;
   end User_Organization_File;

   ---------------
   -- User_Path --
   ---------------

   function User_Path return League.Strings.Universal_String is
      HOME            : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("HOME");
      XDG_CONFIG_HOME : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String ("XDG_CONFIG_HOME");
      Path            : League.Strings.Universal_String;

   begin
      --  First, looking for XDG_CONFIG_HOME environment variable, it overrides
      --  default path.

      if League.Application.Environment.Contains (XDG_CONFIG_HOME) then
         Path := League.Application.Environment.Value (XDG_CONFIG_HOME);
      end if;

      --  When XDG_CONFIG_HOME environment variable is not defined, use
      --  $HOME/.config directory.

      if Path.Is_Empty then
         Path := League.Application.Environment.Value (HOME) & '/' & ".config";

      --  Otherwise, when XDG_CONFIG_HOME is relative path, construct full
      --  path as $HOME/$XDG_CONFIG_HOME.

      elsif Path.Element (1).To_Wide_Wide_Character /= '/' then
         Path := League.Application.Environment.Value (HOME) & '/' & Path;
      end if;

      --  Check for trailing path separator and add it when necessary.

      if Path.Element (Path.Length) /= '/' then
         Path.Append ('/');
      end if;

      return Path;
   end User_Path;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self : Fallback_Settings;
     Key  : League.Strings.Universal_String)
       return League.Values.Value is
   begin
      if Self.User_Application.Contains (Key) then
         return Self.User_Application.Value (Key);

      elsif Self.User_Organization.Contains (Key) then
         return Self.User_Organization.Value (Key);

      elsif Self.System_Application.Contains (Key) then
         return Self.System_Application.Value (Key);

      else
         return Self.System_Organization.Value (Key);
      end if;
   end Value;

end Matreshka.Internals.Settings.Fallbacks;
