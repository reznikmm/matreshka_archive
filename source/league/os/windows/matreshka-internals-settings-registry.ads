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
--  This package provides storage implementation for Windows Registry.
------------------------------------------------------------------------------
private with System;

package Matreshka.Internals.Settings.Registry is

   type Registry_Settings is new Abstract_Settings with private;

   function Create
    (Manager   : not null access Abstract_Manager'Class;
     Key       : League.Strings.Universal_String;
     Read_Only : Boolean) return not null Settings_Access;
   --  Creates registry storage pointing to specified key. When Read_Only is
   --  True no modifications are allowed.

private

   type HANDLER is new System.Address;

   type HKEY is new HANDLER;

   type Registry_Settings is new Abstract_Settings with record
      Name      : League.Strings.Universal_String;
      Handler   : aliased HKEY;
      Read_Only : Boolean;
   end record;

   overriding function Contains
    (Self : Registry_Settings;
     Key  : League.Strings.Universal_String) return Boolean;

   overriding procedure Finalize
    (Self : not null access Registry_Settings);

   overriding function Name
    (Self : not null access Registry_Settings)
       return League.Strings.Universal_String;
   --  Returns name of the storage. For Windows Registry storage it is system
   --  registry path.

   overriding procedure Remove
    (Self : in out Registry_Settings;
     Key  : League.Strings.Universal_String);

   overriding procedure Set_Value
    (Self  : in out Registry_Settings;
     Key   : League.Strings.Universal_String;
     Value : League.Values.Value);

   overriding procedure Sync (Self : in out Registry_Settings);

   overriding function Value
    (Self : Registry_Settings;
     Key  : League.Strings.Universal_String)
       return League.Values.Value;

end Matreshka.Internals.Settings.Registry;
