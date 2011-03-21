------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
--  This procedure detects parameters to link with OCI (Oracle Call interface)
------------------------------------------------------------------------------
with Ada.Strings.Fixed;

with Configure.Builder;
with Ada.Environment_Variables;

procedure Configure.OCI is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;

   OCI_Library_Options : constant Ada.Strings.Unbounded.Unbounded_String
     := Ada.Strings.Unbounded.To_Unbounded_String ("OCI_LIBRARY_OPTIONS");
   Has_OCI             : constant Ada.Strings.Unbounded.Unbounded_String
     := Ada.Strings.Unbounded.To_Unbounded_String ("HAS_OCI");

   function Library_Name return String;

   function Library_Name return String is
   begin
      if Is_Windows then
         return "oci";
      else
         return "clntsh";
      end if;
   end Library_Name;

begin
   --  Command line parameter has preference other automatic detection.

   if Has_Parameter ("--with-oci-libdir") then
      Substitutions.Insert
       (OCI_Library_Options,
        To_Unbounded_String
         ("""-L"
            & Parameter_Value ("--with-oci-libdir")
            & """, ""-l" & Library_Name & '"'));
   elsif Ada.Environment_Variables.Exists ("ORACLE_HOME") then
      Substitutions.Insert
       (OCI_Library_Options,
        To_Unbounded_String
         ("""-L"
            & Ada.Environment_Variables.Value ("ORACLE_HOME")
            & "/lib"", ""-l" & Library_Name & '"'));
   end if;

   --  Check that oci application can be linked with specified/detected
   --  set of options.

   if Substitutions.Contains (OCI_Library_Options) then
      if not Configure.Builder.Build ("config.tests/oci/") then
         --  Switches don't allow to build application, remove them.

         Substitutions.Delete (OCI_Library_Options);
      end if;
   end if;

   --  Insert empty value for substitution variable when SQLite3 driver module
   --  is disabled.

   if not Substitutions.Contains (OCI_Library_Options) then
      Information ("OCI driver module is disabled");
      Substitutions.Insert (OCI_Library_Options, Null_Unbounded_String);
      Substitutions.Insert (Has_OCI, Null_Unbounded_String);

   else
      Substitutions.Insert (Has_OCI, To_Unbounded_String ("true"));
   end if;
end Configure.OCI;
