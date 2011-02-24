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
-- Copyright © 2009-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Values is generic mechanism to pass value of arbitrary type. This package
--  provides generic interface for Value objects, and subprograms to manipulate
--  most common data types.
------------------------------------------------------------------------------
private with Ada.Finalization;
private with Ada.Tags;
with Interfaces;

with League.Strings;
private with Matreshka.Internals.Atomics.Counters;
private with Matreshka.Internals.Strings;

package League.Values is

   pragma Preelaborate;

   type Value is private;

   type Tag (<>) is private;

   Universal_Integer_Tag : constant Tag;
   Universal_String_Tag  : constant Tag;

   ---------------------------------
   -- Generic operations on Value --
   ---------------------------------

   function Get_Tag (Self : Value) return Tag;
   --  Returns current tag of the value.

   procedure Set_Tag (Self : in out Value; To : Tag);
   --  Sets type of the value. Free previous value and set current value to
   --  null.

   function Is_Empty (Self : Value) return Boolean;
   --  Returns True if object contains no value.

   procedure Clear (Self : in out Value);
   --  Reset Value to contain no value.

   ---------------------------------
   -- Universal String Operations --
   ---------------------------------

   function Is_Universal_String (Self : Value) return Boolean;
   --  Returns True if contained value is string.

   function Get (Self : Value) return League.Strings.Universal_String;
   --  Returns contained value.

   procedure Set
    (Self : in out Value;
     To   : League.Strings.Universal_String);
   --  Set contained value to specified value.

   function To_Value (Item : League.Strings.Universal_String) return Value;
   --  Creates value which contains specified string.

   ----------------------------------
   -- Universal Integer Operations --
   ----------------------------------

   subtype Universal_Integer is Interfaces.Integer_64;
   --  Largest supported integer type.

   function Is_Abstract_Integer (Self : Value) return Boolean;
   --  Returns True if contained value has any integer type.

   function Get (Self : Value) return Universal_Integer;
   --  Returns internal value as a longest supported integer.

   procedure Set (Self : in out Value; To : Universal_Integer);
   --  Set value from a longest supported integer. Raises Contraint_Error if
   --  value is outside of the range of valid values for actual integer type.

   function First (Self : Value) return Universal_Integer;
   --  Returns minimal value of the range of valid values.

   function Last (Self : Value) return Universal_Integer;
   --  Returns maximum value of the range of valid values.

private

   ------------------------
   -- Abstract_Container --
   ------------------------

   --  Abstract_Container is a root type to hold typed value. It contains
   --  reference counter and boolean field to mark null value.

   type Abstract_Container is abstract tagged limited record
      Counter  : aliased Matreshka.Internals.Atomics.Counters.Counter;
      Is_Empty : Boolean := True;
   end record;

   type Container_Access is access all Abstract_Container'Class;

   not overriding function Constructor
    (Is_Empty : not null access Boolean) return Abstract_Container is abstract;
   --  Dispatched constructor to construct empty new object. Is_Empty will be
   --  True always, and here to satisfy requirements of generic function
   --  Ada.Tags.Generic_Dispatching_Constructor.

   not overriding procedure Finalize
    (Self : not null access Abstract_Container) is null;

   ----------------------
   -- Container_Access --
   ----------------------

   procedure Reference (Self : not null Container_Access);
   pragma Inline (Reference);
   --  Increments reference counter.

   procedure Dereference (Self : in out Container_Access);
   --  Decrements reference counter, and deallocate object when it rich zero.
   --  Sets Self to null for safety.

   ---------------------
   -- Empty_Container --
   ---------------------

   type Empty_Container is new Abstract_Container with null record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Empty_Container;

   Shared_Empty : aliased Empty_Container;

   -------------------
   -- Value and Tag --
   -------------------

   type Tag is new Ada.Tags.Tag;

   type Value is new Ada.Finalization.Controlled with record
      Data : Container_Access := Shared_Empty'Access;
   end record;

   overriding procedure Adjust (Self : in out Value);

   overriding procedure Finalize (Self : in out Value);

   --------------------------------
   -- Universal_String_Container --
   --------------------------------

   type Universal_String_Container is new Abstract_Container with record
      Value : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
   end record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Universal_String_Container;

   overriding procedure Finalize
    (Self : not null access Universal_String_Container);

   Universal_String_Tag : constant Tag := Tag (Universal_String_Container'Tag);

   --------------------------------
   -- Abstract_Integer_Container --
   --------------------------------

   --  Abstract_Integer_Container is root container type to store integer
   --  values. There are two types which is derived from it: one to store
   --  "universal" integer, and other one to store value of named integer type.

   type Abstract_Integer_Container is
     abstract new Abstract_Container with null record;

   not overriding function Get
    (Self : not null access constant Abstract_Integer_Container)
       return Universal_Integer is abstract;

   not overriding procedure Set
    (Self : not null access Abstract_Integer_Container;
     To   : Universal_Integer) is abstract;

   not overriding function First
    (Self : not null access constant Abstract_Integer_Container)
       return Universal_Integer is abstract;
   --  Returns value of 'First attribute of type of stored value.

   not overriding function Last
    (Self : not null access constant Abstract_Integer_Container)
       return Universal_Integer is abstract;
   --  Returns value of 'Last attribute of type of stored value.

   ---------------------------------
   -- Universal_Integer_Container --
   ---------------------------------

   --  Universal_Integer_Container is container for value of "universal"
   --  integer type. This type is compatible with any integer types and used
   --  when there are no additional information is available.

   type Universal_Integer_Container is
     new Abstract_Integer_Container with
   record
      Value : Universal_Integer;
   end record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Universal_Integer_Container;

   overriding function Get
    (Self : not null access constant Universal_Integer_Container)
       return Universal_Integer;

   overriding procedure Set
    (Self : not null access Universal_Integer_Container;
     To   : Universal_Integer);

   overriding function First
    (Self : not null access constant Universal_Integer_Container)
       return Universal_Integer;

   overriding function Last
    (Self : not null access constant Universal_Integer_Container)
       return Universal_Integer;

   Universal_Integer_Tag : constant Tag
     := Tag (Universal_Integer_Container'Tag);

end League.Values;
