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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;

package body League.Application is

   procedure Initialize_Arguments_Environment;
   --  Initialize arguments list and process environment.

   Args        : League.String_Vectors.Universal_String_Vector;
   Env         : League.Environment_Variables.Environment_Variable_Set;
   App_Name    : League.Strings.Universal_String;
   App_Version : League.Strings.Universal_String;
   Org_Name    : League.Strings.Universal_String;
   Org_Domain  : League.Strings.Universal_String;

   ----------------------
   -- Application_Name --
   ----------------------

   function Application_Name return League.Strings.Universal_String is
   begin
      return App_Name;
   end Application_Name;

   -------------------------
   -- Application_Version --
   -------------------------

   function Application_Version return League.Strings.Universal_String is
   begin
      return App_Version;
   end Application_Version;

   ---------------
   -- Arguments --
   ---------------

   function Arguments return League.String_Vectors.Universal_String_Vector is
   begin
      return Args;
   end Arguments;

   -----------------
   -- Environment --
   -----------------

   function Environment
     return League.Environment_Variables.Environment_Variable_Set is
   begin
      return Env;
   end Environment;

   --------------------------------------
   -- Initialize_Arguments_Environment --
   --------------------------------------

   procedure Initialize_Arguments_Environment is separate;

   -------------------------
   -- Organization_Domain --
   -------------------------

   function Organization_Domain return League.Strings.Universal_String is
   begin
      return Org_Domain;
   end Organization_Domain;

   -----------------------
   -- Organization_Name --
   -----------------------

   function Organization_Name return League.Strings.Universal_String is
   begin
      return Org_Name;
   end Organization_Name;

   --------------------------
   -- Set_Application_Name --
   --------------------------

   procedure Set_Application_Name (Name : League.Strings.Universal_String) is
   begin
      App_Name := Name;
   end Set_Application_Name;

   -----------------------------
   -- Set_Application_Version --
   -----------------------------

   procedure Set_Application_Version
    (Name : League.Strings.Universal_String) is
   begin
      App_Version := Name;
   end Set_Application_Version;

   -----------------------------
   -- Set_Organization_Domain --
   -----------------------------

   procedure Set_Organization_Domain
    (Name : League.Strings.Universal_String) is
   begin
      Org_Domain := Name;
   end Set_Organization_Domain;

   ---------------------------
   -- Set_Organization_Name --
   ---------------------------

   procedure Set_Organization_Name (Name : League.Strings.Universal_String) is
   begin
      Org_Name := Name;
   end Set_Organization_Name;

begin
   --  Setup most optimal string handler.

   Matreshka.Internals.Strings.Configuration.Initialize;

   --  Initialize arguments and environment.

   Initialize_Arguments_Environment;
end League.Application;
