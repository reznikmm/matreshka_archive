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
--  This package provides data structures to track base URI of the current
--  scope. Note, scope of base URI includes not only elements, but entities
--  substitution also.
------------------------------------------------------------------------------
with League.Strings;

package Matreshka.Internals.XML.Base_Scopes is

   pragma Preelaborate;

   type Base_Scope is limited private;

   procedure Push_Scope (Self : in out Base_Scope);
   --  Push scope into the stack. Base URI of the new scope is the same as
   --  enclosing scope.

   procedure Push_Scope
    (Self : in out Base_Scope; Base_URI : League.Strings.Universal_String);
   --  Push scope into the stack. Base URI of the new scope is set to the
   --  specified value.

   procedure Pop_Scope (Self : in out Base_Scope);
   --  Pop scope from the stack.

   function Base_URI
    (Self : in out Base_Scope) return League.Strings.Universal_String;
   --  Returns base URI of the current scope.

   procedure Initialize (Self : in out Base_Scope);
   --  Initialize internal state.

   procedure Finalize (Self : in out Base_Scope);
   --  Release all resources.

   procedure Reset (Self : in out Base_Scope);
   --  Resets internal structures to initial state.

private

   type Scope_Record is record
      Base_URI : League.Strings.Universal_String;
      Counter  : Natural;
   end record;

   type Scope_Array is array (Positive range <>) of Scope_Record;

   type Scope_Array_Access is access all Scope_Array;

   type Base_Scope is limited record
      Scopes : Scope_Array_Access;
      Last   : Natural;
   end record;

end Matreshka.Internals.XML.Base_Scopes;
