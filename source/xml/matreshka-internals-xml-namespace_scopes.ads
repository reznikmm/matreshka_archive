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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package Matreshka.Internals.XML.Namespace_Scopes is

   pragma Preelaborate;

   type Namespace_Scope is limited private;

   procedure Push_Scope (Self : in out Namespace_Scope);

   procedure Pop_Scope (Self : in out Namespace_Scope);

   procedure Bind
    (Self      : in out Namespace_Scope;
     Prefix    : Symbol_Identifier;
     Namespace : Symbol_Identifier);

   function Resolve
    (Self   : Namespace_Scope;
     Prefix : Symbol_Identifier) return Symbol_Identifier;

   procedure Initialize (Self : in out Namespace_Scope);

   procedure Finalize (Self : in out Namespace_Scope);

private

   type Mapping_Record is record
      Prefix    : Symbol_Identifier;
      Namespace : Symbol_Identifier;
   end record;

   type Mapping_Array is array (Positive range <>) of Mapping_Record;

   type Mapping_Array_Access is access all Mapping_Array;

   type Scope_Record is record
      Count : Natural;
      First : Positive;
      Last  : Natural;
   end record;

   type Scope_Array is array (Positive range <>) of Scope_Record;

   type Scope_Array_Access is access all Scope_Array;

   type Namespace_Scope is limited record
      Mappings : Mapping_Array_Access;
      Scopes   : Scope_Array_Access;
      Last     : Natural;
   end record;

end Matreshka.Internals.XML.Namespace_Scopes;
