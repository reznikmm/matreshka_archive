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
--  This package provides abstract root type to implement SAX Locator for the
--  specific reader. XML.SAX.Locators.SAX_Locator provides capability to wrap
--  reader specific locator and to access its attributes.
--
--  For perforamnce reasons, internal locator provides trampoline to access
--  reader's internal data structures, thus locator should not be updated
--  each time when user callback is called.
------------------------------------------------------------------------------
with League.Strings;
with Matreshka.Internals.Atomics.Counters;

package Matreshka.Internals.SAX_Locators is

   pragma Preelaborate;

   type Shared_Abstract_Locator is abstract tagged limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
   end record;

   not overriding function Line
    (Self : not null access constant Shared_Abstract_Locator)
       return Natural is abstract;

   not overriding function Column
    (Self : not null access constant Shared_Abstract_Locator)
       return Natural is abstract;

   not overriding function Encoding
    (Self : not null access constant Shared_Abstract_Locator)
       return League.Strings.Universal_String is abstract;

   not overriding function Version
    (Self : not null access constant Shared_Abstract_Locator)
       return League.Strings.Universal_String is abstract;

   not overriding function Public_Id
    (Self : not null access constant Shared_Abstract_Locator)
       return League.Strings.Universal_String is abstract;

   not overriding function System_Id
    (Self : not null access constant Shared_Abstract_Locator)
       return League.Strings.Universal_String is abstract;

   not overriding function Base_URI
    (Self : not null access constant Shared_Abstract_Locator)
       return League.Strings.Universal_String is abstract;

   type Shared_Locator_Access is access all Shared_Abstract_Locator'Class;

   procedure Reference (Self : not null Shared_Locator_Access);
   pragma Inline (Reference);

   procedure Dereference (Self : in out Shared_Locator_Access);

end Matreshka.Internals.SAX_Locators;
