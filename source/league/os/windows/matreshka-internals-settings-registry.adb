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

package body Matreshka.Internals.Settings.Registry is

   --------------
   -- Contains --
   --------------

   overriding function Contains
    (Self : Registry_Settings;
     Key  : League.Strings.Universal_String) return Boolean is
   begin
      return False;
   end Contains;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize
    (Self : not null access Registry_Settings) is
   begin
      null;
   end Finalize;

   ----------
   -- Name --
   ----------

   overriding function Name
    (Self : not null access Registry_Settings)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
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
     Value : League.Values.Value) is
   begin
      null;
   end Set_Value;

   ----------
   -- Sync --
   ----------

   overriding procedure Sync (Self : in out Registry_Settings) is
   begin
      null;
   end Sync;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self : Registry_Settings;
     Key  : League.Strings.Universal_String)
       return League.Values.Value is
   begin
      return X : League.Values.Value;
   end Value;

end Matreshka.Internals.Settings.Registry;
