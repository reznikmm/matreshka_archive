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
--  This version of package intended to be used on POSIX systems.
--
--  This package is conformant to "XDG Base Directory Specification".
------------------------------------------------------------------------------

separate (Matreshka.Internals.Settings.Fallbacks)
package body Paths is

   HOME                 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("HOME");
   XDG_CONFIG_HOME      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("XDG_CONFIG_HOME");
   XDG_CONFIG_DIRS      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("XDG_CONFIG_DIRS");

   ------------------
   -- System_Paths --
   ------------------

   function System_Paths return League.Strings.Universal_String_Vector is
      Dirs  : League.Strings.Universal_String_Vector;
      Path  : League.Strings.Universal_String;
      Paths : League.Strings.Universal_String_Vector;

   begin
      --  Looking for XDG_CONFIG_DIRS environment variable and construct list
      --  directories from its value.

      if League.Application.Environment.Contains (XDG_CONFIG_DIRS) then
         Dirs :=
           League.Application.Environment.Value
            (XDG_CONFIG_DIRS).Split (':', League.Strings.Skip_Empty);

         for J in 1 .. Dirs.Length loop
            Path := Dirs.Element (J);

            --  Resolve relative paths relativealy home directory.

            if Path.Element (1) /= '/' then
               Path :=
                 League.Application.Environment.Value (HOME) & '/' & Path;
            end if;

            --  Check for trailing path separator and add it when necessary.

            if Path.Element (Path.Length) /= '/' then
               Path.Append ('/');
            end if;

            Paths.Append (Path);
         end loop;
      end if;

      --  Use default directory when directories list is not constructed.

      if Paths.Is_Empty then
         Paths.Append (League.Strings.To_Universal_String ("/etc/xdg/"));
      end if;

      return Paths;
   end System_Paths;

   ---------------
   -- User_Path --
   ---------------

   function User_Path return League.Strings.Universal_String is
      Path : League.Strings.Universal_String;

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

end Paths;
