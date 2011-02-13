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
private with Ada.Finalization;

with League.String_Vectors;
with League.Strings;
with League.Values;
private with Matreshka.Internals.Settings;

package League.Settings is

--   type Formats is (Native, Ini);
--
--   type Scopes is (User, System);
--
--   type Statuses is (No_Error, Access_Error, Format_Error);

   type Settings is tagged limited private;

--   function All_Keys
--    (Self : Settings) return League.String_Vectors.Universal_String_Vector;
--
--   function Application_Name
--    (Self : Settings) return League.Strings.Universal_String;
--
--   procedure Begin_Group
--    (Self   : in out Settings;
--     Prefix : League.Strings.Universal_String);
--
--   function Child_Groups
--    (Self : Settings) return League.String_Vectors.Universal_String_Vector;
--
--   function Child_Keys
--    (Self : Settings) return League.String_Vectors.Universal_String_Vector;
--
--   procedure Clear (Self : in out Settings);
--
--   function Contains
--    (Self : Settings;
--     Key  : League.Strings.Universal_String) return Boolean;
--
--   procedure End_Group (Self : in out Settings);
--
--   function Fallbacks_Enabled (Self : Settings) return Boolean;
--
--   function File_Name (Self : Settings) return League.Strings.Universal_String;
--
--   function Format (Self : Settings) return Formats;
--
--   function Group (Self : Settings) return League.Strings.Universal_String;
--
--   function Is_Writeable (Self : Settings) return Boolean;
--
--   function Organization_Name
--    (Self : Settings) return League.Strings.Universal_String;
--
--   procedure Remove
--    (Self : in out Settings;
--     Key  : League.Strings.Universal_String);
--
--   function Scope (Self : Settings) return Scopes;
--
--   procedure Set_Fallbacks_Enables (Self : in out Settings; Enabled : Boolean);

   procedure Set_Value
    (Self  : in out Settings'Class;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value);

--   function Status (Self : Settings) return Statuses;
--
--   procedure Sync (Self : in out Settings);

   function Value
    (Self : Settings'Class;
     Key  : League.Strings.Universal_String) return League.Values.Value;

   --  This subprogram is added temporary.

   procedure Load (Self : in out Settings; File_Name : String);

   procedure Save (Self : Settings; File_Name : String);

private

   type Settings is new Ada.Finalization.Limited_Controlled with record
      Data : Matreshka.Internals.Settings.Settings_Access;
   end record;

   overriding procedure Finalize (Self : in out Settings);

end League.Settings;
