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
with Matreshka.Internals.Settings.Configuration_Files;
with Matreshka.Internals.Settings.Fallbacks;

package body League.Settings is

--   --------------
--   -- All_Keys --
--   --------------
--
--   function All_Keys
--    (Self : Settings) return League.String_Vectors.Universal_String_Vector
--   is
--      pragma Unreferenced (Self);
--
--   begin
--      return X : League.String_Vectors.Universal_String_Vector;
--   end All_Keys;
--
--   ----------------------
--   -- Application_Name --
--   ----------------------
--
--   function Application_Name
--    (Self : Settings) return League.Strings.Universal_String
--   is
--      pragma Unreferenced (Self);
--
--   begin
--      return League.Strings.Empty_Universal_String;
--   end Application_Name;
--
--   -----------------
--   -- Begin_Group --
--   -----------------
--
--   procedure Begin_Group
--    (Self   : in out Settings;
--     Prefix : League.Strings.Universal_String) is
--   begin
--      null;
--   end Begin_Group;
--
--   ------------------
--   -- Child_Groups --
--   ------------------
--
--   function Child_Groups
--    (Self : Settings) return League.String_Vectors.Universal_String_Vector
--   is
--      pragma Unreferenced (Self);
--
--   begin
--      return X : League.String_Vectors.Universal_String_Vector;
--   end Child_Groups;
--
--   ----------------
--   -- Child_Keys --
--   ----------------
--
--   function Child_Keys
--    (Self : Settings) return League.String_Vectors.Universal_String_Vector
--   is
--      pragma Unreferenced (Self);
--
--   begin
--      return X : League.String_Vectors.Universal_String_Vector;
--   end Child_Keys;
--
--   -----------
--   -- Clear --
--   -----------
--
--   procedure Clear (Self : in out Settings) is
--   begin
--      null;
--   end Clear;

   --------------
   -- Contains --
   --------------

   function Contains
    (Self : Settings;
     Key  : League.Strings.Universal_String) return Boolean is
   begin
      return Self.Data.Contains (Key);
   end Contains;

--   ---------------
--   -- End_Group --
--   ---------------
--
--   procedure End_Group (Self : in out Settings) is
--   begin
--      null;
--   end End_Group;
--
--   -----------------------
--   -- Fallbacks_Enabled --
--   -----------------------
--
--   function Fallbacks_Enabled (Self : Settings) return Boolean is
--      pragma Unreferenced (Self);
--
--   begin
--      return False;
--   end Fallbacks_Enabled;
--
--   ---------------
--   -- File_Name --
--   ---------------
--
--   function File_Name
--    (Self : Settings) return League.Strings.Universal_String
--   is
--      pragma Unreferenced (Self);
--
--   begin
--      return League.Strings.Empty_Universal_String;
--   end File_Name;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Settings) is
      use type Matreshka.Internals.Settings.Settings_Access;

   begin
      if Self.Data /= null then
         Matreshka.Internals.Settings.Dereference (Self.Data);
      end if;
   end Finalize;

--   ------------
--   -- Format --
--   ------------
--
--   function Format (Self : Settings) return Formats is
--      pragma Unreferenced (Self);
--
--   begin
--      return Native;
--   end Format;
--
--   -----------
--   -- Group --
--   -----------
--
--   function Group (Self : Settings) return League.Strings.Universal_String is
--      pragma Unreferenced (Self);
--
--   begin
--      return League.Strings.Empty_Universal_String;
--   end Group;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out Settings) is
   begin
      Self.Data := Matreshka.Internals.Settings.Fallbacks.Create;
   end Initialize;

--   ------------------
--   -- Is_Writeable --
--   ------------------
--
--   function Is_Writeable (Self : Settings) return Boolean is
--      pragma Unreferenced (Self);
--
--   begin
--      return False;
--   end Is_Writeable;

   ----------
   -- Load --
   ----------

   procedure Load
    (Self      : in out Settings;
     File_Name : League.Strings.Universal_String)
   is
      use Matreshka.Internals.Settings.Configuration_Files;
      use type Matreshka.Internals.Settings.Settings_Access;

   begin
      if Self.Data /= null then
         Matreshka.Internals.Settings.Dereference (Self.Data);
      end if;

      Self.Data := new Configuration_File_Settings;
      Load (Configuration_File_Settings'Class (Self.Data.all), File_Name);
   end Load;

--   -----------------------
--   -- Organization_Name --
--   -----------------------
--
--   function Organization_Name
--    (Self : Settings) return League.Strings.Universal_String
--   is
--      pragma Unreferenced (Self);
--
--   begin
--      return League.Strings.Empty_Universal_String;
--   end Organization_Name;
--
--   ------------
--   -- Remove --
--   ------------
--
--   procedure Remove
--    (Self : in out Settings;
--     Key  : League.Strings.Universal_String) is
--   begin
--      null;
--   end Remove;

--   -----------
--   -- Scope --
--   -----------
--
--   function Scope (Self : Settings) return Scopes is
--      pragma Unreferenced (Self);
--
--   begin
--      return System;
--   end Scope;
--
--   ---------------------------
--   -- Set_Fallbacks_Enables --
--   ---------------------------
--
--   procedure Set_Fallbacks_Enables
--    (Self    : in out Settings;
--     Enabled : Boolean) is
--   begin
--      null;
--   end Set_Fallbacks_Enables;

   ---------------
   -- Set_Value --
   ---------------

   procedure Set_Value
    (Self  : in out Settings'Class;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value) is
   begin
      Self.Data.Set_Value (Key, Value);
   end Set_Value;

--   ------------
--   -- Status --
--   ------------
--
--   function Status (Self : Settings) return Statuses is
--      pragma Unreferenced (Self);
--
--   begin
--      return No_Error;
--   end Status;

   ----------
   -- Sync --
   ----------

   procedure Sync (Self : in out Settings) is
   begin
      Self.Data.Sync;
   end Sync;

   -----------
   -- Value --
   -----------

   function Value
    (Self : Settings'Class;
     Key  : League.Strings.Universal_String) return League.Values.Value is
   begin
      return Self.Data.Value (Key);
   end Value;

end League.Settings;
