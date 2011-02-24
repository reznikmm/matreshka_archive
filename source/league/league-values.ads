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
--  most common data types. Non-empty object of Value type always has
--  associated Tag, which desribes type of the value.
------------------------------------------------------------------------------
private with Ada.Finalization;
private with Ada.Tags;

with League.Strings;
private with Matreshka.Internals.Atomics.Counters;

package League.Values is

   pragma Preelaborate;

   type Value is private;

   type Tag (<>) is private;

--   Universal_Integer_Tag : constant Tag;
--   Universal_Modular_Tag : constant Tag;
--   Universal_Float_Tag   : constant Tag;
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

private

   ------------------------
   -- Abstract_Container --
   ------------------------

   type Abstract_Container is abstract tagged limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
   end record;

   type Container_Access is access all Abstract_Container'Class;

   not overriding procedure Finalize
    (Self : not null access Abstract_Container) is null;

   not overriding function Allocate
    (Self : not null access Abstract_Container)
       return not null Container_Access is abstract;
   --  Allocates a new container. Initial value of reference counter must be
   --  initialized to one (it is done automatically).

   procedure Reference (Self : in out Container_Access);

   procedure Mutate (Self : in out Container_Access);

   procedure Dereference (Self : in out Container_Access);

   -------------------
   -- Value and Tag --
   -------------------

   type Tag is new Ada.Tags.Tag;

   type Value is new Ada.Finalization.Controlled with record
      Tag  : Ada.Tags.Tag     := Ada.Tags.No_Tag;
      Data : Container_Access := null;
   end record;

   overriding procedure Adjust (Self : in out Value);

   overriding procedure Finalize (Self : in out Value);

   procedure Check_Is_Not_Null (Self : Value'Class);
   --  Raises Constraint_Error if object contains null value.

   procedure Check_Is_Derived_Type
    (Self      : Value'Class;
     Known_Tag : Ada.Tags.Tag);
   --  Raises Constraint_Error if object is untyped or its type not derived
   --  from specified known type.

   procedure Check_Is_Type
    (Self      : Value'Class;
     Known_Tag : Ada.Tags.Tag);
   --  Raises Constraint_Error if object's type not a specified known type.

   procedure Check_Is_Untyped_Or_Is_Type
    (Self      : Value'Class;
     Known_Tag : Ada.Tags.Tag);
   --  Raises Constraint_Error if object not untyped and doesn't have known
   --  type.

   function Is_Derived_Type (Self : Value'Class; Known_Tag : Ada.Tags.Tag)
     return Boolean;
   --  Returns True if actual type is derived from known type.

   function Is_Type (Self : Value'Class; Known_Tag : Ada.Tags.Tag)
     return Boolean;
   --  Returns True if actual type is specified known type.

   ----------------------
   -- Universal_String --
   ----------------------

   type Universal_String_Container is new Abstract_Container with record
      Value : League.Strings.Universal_String;
   end record;

   overriding function Allocate
    (Self : not null access Universal_String_Container)
       return not null Container_Access;

   Universal_String_Tag : constant Tag := Tag (Universal_String_Container'Tag);

end League.Values;
