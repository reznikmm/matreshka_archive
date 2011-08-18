------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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

package body XML.SAX.Locators is

   use type Matreshka.Internals.SAX_Locators.Shared_Locator_Access;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out SAX_Locator) is
   begin
      if Self.Data /= null then
         Matreshka.Internals.SAX_Locators.Reference (Self.Data);
      end if;
   end Adjust;

   --------------
   -- Base_URI --
   --------------

   function Base_URI (Self : SAX_Locator'Class) return League.IRIs.IRI is
   begin
      return Self.Data.Base_URI;
   end Base_URI;

   ------------
   -- Column --
   ------------

   function Column (Self : SAX_Locator'Class) return Natural is
   begin
      return Self.Data.Column;
   end Column;

   --------------
   -- Encoding --
   --------------

   function Encoding
    (Self : SAX_Locator'Class) return League.Strings.Universal_String is
   begin
      return Self.Data.Encoding;
   end Encoding;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out SAX_Locator) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Matreshka.Internals.SAX_Locators.Dereference (Self.Data);
      end if;
   end Finalize;

   ----------
   -- Line --
   ----------

   function Line (Self : SAX_Locator'Class) return Natural is
   begin
      return Self.Data.Line;
   end Line;

   ---------------
   -- Public_Id --
   ---------------

   function Public_Id
    (Self : SAX_Locator'Class) return League.Strings.Universal_String is
   begin
      return Self.Data.Public_Id;
   end Public_Id;

   ---------------
   -- System_Id --
   ---------------

   function System_Id
    (Self : SAX_Locator'Class) return League.Strings.Universal_String is
   begin
      return Self.Data.System_Id;
   end System_Id;

   -------------
   -- Version --
   -------------

   function Version
    (Self : SAX_Locator'Class) return League.Strings.Universal_String is
   begin
      return Self.Data.Version;
   end Version;

end XML.SAX.Locators;
