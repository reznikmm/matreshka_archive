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
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.XML.Base_Scopes is

   --------------
   -- Base_URI --
   --------------

   function Base_URI
    (Self : in out Base_Scope) return League.IRIs.IRI is
   begin
      return Self.Scopes (Self.Last).Base_URI;
   end Base_URI;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Base_Scope) is
      procedure Free is
        new Ada.Unchecked_Deallocation (Scope_Array, Scope_Array_Access);

   begin
      Free (Self.Scopes);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Base_Scope) is
   begin
      Self.Scopes := new Scope_Array (1 .. 16);
      Self.Last := 0;
   end Initialize;

   ---------------
   -- Pop_Scope --
   ---------------

   procedure Pop_Scope (Self : in out Base_Scope) is
   begin
      if Self.Scopes (Self.Last).Counter = 1 then
         Self.Last := Self.Last - 1;

      else
         Self.Scopes (Self.LasT).Counter :=
           Self.Scopes (Self.LasT).Counter - 1;
      end if;
   end Pop_Scope;

   ----------------
   -- Push_Scope --
   ----------------

   procedure Push_Scope (Self : in out Base_Scope) is
   begin
      Self.Scopes (Self.Last).Counter :=
        Self.Scopes (Self.Last).Counter + 1;
   end Push_Scope;

   ----------------
   -- Push_Scope --
   ----------------

   procedure Push_Scope
    (Self : in out Base_Scope; Base_URI : League.IRIs.IRI) is
   begin
      Self.Last := Self.Last + 1;
      Self.Scopes (Self.last) := (Base_URI, 1);
   end Push_Scope;

   -----------
   -- Reset --
   -----------

   procedure Reset (Self : in out Base_Scope) is
   begin
      Self.Last := 0;
   end Reset;

end Matreshka.Internals.XML.Base_Scopes;
