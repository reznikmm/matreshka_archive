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

package XML.SAX.Attributes is

   pragma Preelaborate;

   type SAX_Attributes is tagged private;

   function Index
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Natural;
   --  Looks up the index of an attribute by the qualified name. Returns the
   --  index of the attribute of zero if it wasn't found.

   function Index
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return Natural;
   --  Looks up the index of an attribute by a namespace name. Namespace_URI
   --  specifies the namespace URI, or an empty string if the name has no
   --  namespace URI. Local_Name specifies the attribute's local name.
   --  Returns the index of the attribute, or zero if it wasn't found.

   function Is_Declared
    (Self  : SAX_Attributes'Class;
     Index : Positive) return Boolean;
   --  Returns True if the attribute at the specified position was declared in
   --  the DTD, False otherwise. The index must be valid position, otherwise
   --  Constraint_Error is raised.

   function Is_Declared
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean;
   --  Looks up whether an attribute was declared in the DTD for the qualified
   --  name and returns True.

   function Is_Declared
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return Boolean;
   --  Looks up whether an attribute was declared in the DTD by namespace name.
   --  Namespace_URI specifies the namespace URI, or an empty string if the
   --  name has no namespace URI, Local_Name specifies the attribute's local
   --  name.

   function Is_Specified
    (Self  : SAX_Attributes'Class;
     Index : Positive) return Boolean;
   --  Returns True if the attribute's value at the specified position was
   --  found in the XML text, False if the value was provided by the DTD
   --  defaulting. The index must be valid position, otherwise Constraint_Error
   --  is raised.

   function Is_Specified
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean;
   --  Looks up whether an attribute's value was found in the XML text for the
   --  qualified name, False if the value was provided by the DTD defaulting.

   function Is_Specified
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return Boolean;
   --  Looks up whether an attribute's value was found in the XML text for the
   --  namespace name, False if the value was provided by the DTD defaulting.
   --  Namespace_URI specifies the namespace URI, or an empty string if the
   --  name has no namespace URI, Local_Name specifies the attribute's local
   --  name.

   function Length (Self : SAX_Attributes'Class) return Natural;
   --  Returns the number of attributes in the list.

   function Local_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;
   --  Returns an attribute's local name for the attribute at the specified
   --  position. If no namespace processing is done, the local name is an empty
   --  string. The index must be valid position, otherwise Constraint_Error is
   --  raised.

   function Namespace_URI
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;
   --  Returns an attribute's namespace URI for the attribute at the specified
   --  position. If no namespace processing is done or if the attribute has no
   --  namespace, the namespace URI is an empty string. The index must be valid
   --  position, otherwise Constraint_Error is raised.

   function Qualified_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;
   --  Returns an attribute's qualified name for the attribute at the specified
   --  position. The index must be valid position, otherwise Constraint_Error
   --  is raised.

   function Value
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String;
   --  Returns an attribute's value for the attribute at the specified
   --  position. The index must be valid position, otherwise Constraint_Error
   --  is raised.
   --
   --  If the attribute value is a list of tokens (IDREFS, ENTITIES, or
   --  NMTOKENS), the tokens will be concatenated into a single string with
   --  each token separated by a single space.

   function Value
    (Self           : SAX_Attributes;
     Qualified_Name : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Looks up an attribute's value for the qualified name, or an empty
   --  string if no attribute exists for the name given.
   --
   --  If the attribute value is a list of tokens (IDREFS, ENTITIES, or
   --  NMTOKENS), the tokens will be concatenated into a single string with
   --  each token separated by a single space.

   function Value
    (Self          : SAX_Attributes;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Looks up an attribute's value by namespace name. Namespace_URI specifies
   --  the namespace URI, or an empty string if the name has no namespace URI,
   --  Local_Name specifies the attribute's local name.
   --
   --  If the attribute value is a list of tokens (IDREFS, ENTITIES, or
   --  NMTOKENS), the tokens will be concatenated into a single string with
   --  each token separated by a single space.

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

end XML.SAX.Attributes;
