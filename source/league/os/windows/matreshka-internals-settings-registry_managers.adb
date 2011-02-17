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
with Matreshka.Internals.Settings.Fallbacks;
with Matreshka.Internals.Settings.Registry;

package body Matreshka.Internals.Settings.Registry_Managers is

   Unknown_Organization      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("\Unknown Organization");
   Organization_Defaults     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("\OrganizationDefaults");
   HKEY_CURRENT_USER_Prefix  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("\HKEY_CURRENT_USER");
   HKEY_LOCAL_MACHINE_Prefix : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("\HKEY_LOCAL_MACHINE");

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self : not null access Registry_Manager)
       return not null Settings_Access
   is
      use type League.Strings.Universal_String;

      Prefix            : League.Strings.Universal_String
        := League.Strings.To_Universal_String ("\Software");
      Organization_Path : League.Strings.Universal_String;
      Application_Path  : League.Strings.Universal_String;

   begin
      if League.Application.Organization_Name.Is_Empty then
         Prefix.Append (Unknown_Organization);

      else
         Prefix.Append ('\');
         Prefix.Append (League.Application.Organization_Name);
      end if;

      Organization_Path := Prefix;
      Organization_Path.Append (Organization_Defaults);

      Application_Path := Prefix;
      Application_Path.Append ('\');
      Application_Path.Append (League.Application.Application_Name);

      return Aux : constant not null Settings_Access
        := Matreshka.Internals.Settings.Fallbacks.Create (Self)
      do
         declare
            Proxy : Fallbacks.Fallback_Settings'Class
              renames Fallbacks.Fallback_Settings'Class (Aux.all);

         begin
            if not League.Application.Application_Name.Is_Empty then
               Proxy.Add
                (Matreshka.Internals.Settings.Registry.Create
                  (Self, HKEY_CURRENT_USER_Prefix & Application_Path, False));
            end if;

            Proxy.Add
             (Matreshka.Internals.Settings.Registry.Create
               (Self, HKEY_CURRENT_USER_Prefix & Organization_Path, True));

            if not League.Application.Application_Name.Is_Empty then
               Proxy.Add
                (Matreshka.Internals.Settings.Registry.Create
                  (Self,
                   HKEY_LOCAL_MACHINE_Prefix & Application_Path,
                   True));
            end if;

            Proxy.Add
             (Matreshka.Internals.Settings.Registry.Create
               (Self, HKEY_LOCAL_MACHINE_Prefix & Organization_Path, True));
         end;
      end return;
   end Create;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self      : not null access Registry_Manager;
     File_Name : League.Strings.Universal_String)
       return not null Settings_Access is
   begin
      return
        Matreshka.Internals.Settings.Registry.Create (Self, File_Name, True);
   end Create;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Self                : not null access Registry_Manager;
     Organization_Name   : League.Strings.Universal_String;
     Organization_Domain : League.Strings.Universal_String;
     Application_Name    : League.Strings.Universal_String)
       return not null Settings_Access
   is
      pragma Unreferenced (Organization_Domain);

   begin
      return null;
   end Create;

   --------------------
   -- To_Storage_Key --
   --------------------

   overriding function To_Storage_Key
    (Self : not null access Registry_Manager;
     Key  : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      use type League.Strings.Universal_Character;

      Backslash : Boolean := False;

   begin
      return Result : League.Strings.Universal_String do
         for J in 1 .. Key.Length loop
            if Key.Element (J) = '/' or Key.Element (J) = '\' then
               Backslash := True;

            else
               if Backslash then
                  if not Result.Is_Empty then
                     Result.Append ('\');
                  end if;

                  Backslash := False;
               end if;

               Result.Append (Key.Element (J));
            end if;
         end loop;
      end return;
   end To_Storage_Key;

end Matreshka.Internals.Settings.Registry_Managers;
