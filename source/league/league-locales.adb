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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Locales.Defaults;

package body League.Locales is

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Locale) is
   begin
      Matreshka.Internals.Locales.Reference (Self.Data);
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Locale) is
      use type Matreshka.Internals.Locales.Locale_Data_Access;

   begin
      if Self.Data /= null then
         Matreshka.Internals.Locales.Dereference (Self.Data);
      end if;
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out Locale) is
   begin
      --  Set locale data. It is not initialized by default to avoid dependency
      --  from large generated data packages.

      Self.Data := Matreshka.Internals.Locales.Defaults.Default_Locale'Access;
      Matreshka.Internals.Locales.Reference (Self.Data);
   end Initialize;

   -----------------------
   -- Set_Thread_Locale --
   -----------------------

   procedure Set_Thread_Locale (Self : Locale'Class) is
   begin
      null;
   end Set_Thread_Locale;

end League.Locales;
