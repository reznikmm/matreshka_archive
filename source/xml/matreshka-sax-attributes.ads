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
--  This package provides the SAX_Attributes type provides XML attributes.
------------------------------------------------------------------------------
private with Ada.Finalization;

with League.Strings;
private with Matreshka.Internals.Atomics.Counters;
private with Matreshka.Internals.Strings;

package Matreshka.SAX.Attributes is

   pragma Preelaborate;

   type SAX_Attributes is tagged private;

   function Index
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Natural;

   function Index
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return Natural;

   function Length (Self : SAX_Attributes'Class) return Natural;

   function Local_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;

   function Namespace_URI
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;

   function Qualified_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;

   function Value
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;

private

   --  Representation of one attribute and its value.

   type Attribute is record
      Namespace_URI  : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
      Local_Name     : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
      Qualified_Name : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
      Value          : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
   end record;

   --  Set attributes and its values shared between SAX_Attributes instances.

   type Attribute_Array is array (Positive range <>) of Attribute;

   type Shared_Attributes (Last : Natural) is record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
      Values  : Attribute_Array (1 .. Last);
      Length  : Natural := 0;
   end record;

   type Shared_Attributes_Access is access all Shared_Attributes;

   procedure Reference (Self : Shared_Attributes_Access);
   pragma Inline (Reference);
   --  Increments reference counter.

   procedure Dereference (Self : in out Shared_Attributes_Access);
   --  Decrements reference counter and release resources when it reach zero.

   function Can_Be_Reused (Self : Shared_Attributes_Access) return Boolean;
   --  Returns True when the counter is equal to one, thus there are no other
   --  reference to this shared object and it can be mutated instead of
   --  allocation of new shared object.

   Shared_Empty : aliased Shared_Attributes (0);
   --  Globals shared object. It is used to represent empty set of attributes
   --  to avoid unnecessary memory allocation/deallocation and number of
   --  atomic increment/decrement operations.

   --------------------
   -- SAX_Attributes --
   --------------------

   type SAX_Attributes is new Ada.Finalization.Controlled with record
      Data : Shared_Attributes_Access := Shared_Empty'Access;
   end record;

   overriding procedure Adjust (Self : in out SAX_Attributes);

   overriding procedure Finalize (Self : in out SAX_Attributes);

   pragma Inline (Length);

end Matreshka.SAX.Attributes;
