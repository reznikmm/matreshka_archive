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
--  Holders is a generic container fo value of arbitrary type. This package
--  provides generic interface for Holder objects, and subprograms to
--  manipulate most common data types.
------------------------------------------------------------------------------
private with Ada.Finalization;
private with Ada.Tags;
with Interfaces;

with League.Calendars;
with League.Strings;
private with Matreshka.Internals.Atomics.Counters;
private with Matreshka.Internals.Strings;

package League.Holders is

   pragma Preelaborate;

   type Holder is private;
   pragma Preelaborable_Initialization (Holder);

   Empty_Holder : constant Holder;

   type Tag (<>) is private;

   Universal_Integer_Tag : constant Tag;
   Universal_Float_Tag   : constant Tag;
   Universal_String_Tag  : constant Tag;
   Time_Tag              : constant Tag;
   Date_Tag              : constant Tag;
   Date_Time_Tag         : constant Tag;

   ---------------------------------
   -- Generic operations on Value --
   ---------------------------------

   function Get_Tag (Self : Holder) return Tag;
   --  Returns current tag of the value.

   procedure Set_Tag (Self : in out Holder; To : Tag);
   --  Sets type of the value. Free previous value and set current value to
   --  null.

   function Has_Tag (Self : Holder; Item : Tag) return Boolean;
   --  Returns True when holder's value has specified tag.

   function Is_Empty (Self : Holder) return Boolean;
   --  Returns True if object contains no value.

   procedure Clear (Self : in out Holder);
   --  Reset holder to contain no value.

   ---------------------------------
   -- Universal String Operations --
   ---------------------------------

   function Is_Universal_String (Self : Holder) return Boolean;
   --  Returns True if contained value is string.

   function Element (Self : Holder) return League.Strings.Universal_String;
   --  Returns contained value.

   procedure Replace_Element
    (Self : in out Holder;
     To   : League.Strings.Universal_String);
   --  Set contained value to specified value.

   function To_Holder (Item : League.Strings.Universal_String) return Holder;
   --  Creates value which contains specified string.

   ----------------------------------
   -- Universal Integer Operations --
   ----------------------------------

   subtype Universal_Integer is Interfaces.Integer_64;
   --  Largest supported integer type.

   function Is_Abstract_Integer (Self : Holder) return Boolean;
   --  Returns True if contained value has any integer type.

   function Element (Self : Holder) return Universal_Integer;
   --  Returns internal value as a longest supported integer.

   procedure Replace_Element (Self : in out Holder; To : Universal_Integer);
   --  Set value from a longest supported integer. Raises Contraint_Error if
   --  value is outside of the range of valid values for actual integer type.

   function First (Self : Holder) return Universal_Integer;
   --  Returns minimal value of the range of valid values.

   function Last (Self : Holder) return Universal_Integer;
   --  Returns maximum value of the range of valid values.

   --------------------------------
   -- Universal Float Operations --
   --------------------------------

   subtype Universal_Float is Interfaces.IEEE_Float_64;
   --  Largest supported float type.

   function Is_Abstract_Float (Self : Holder) return Boolean;
   --  Returns True if contained value has any float type.

   function Element (Self : Holder) return Universal_Float;
   --  Returns internal value as a longest supported float.

   procedure Replace_Element (Self : in out Holder; To : Universal_Float);
   --  Set value from a longest supported float. Raises Contraint_Error if
   --  value is outside of the range of valid values for actual float type.

--   function Get_Digits (Self : Value) return Universal_Float;
--   --  Returns number of digits.

   function First (Self : Holder) return Universal_Float;
   --  Returns minimal value of the range of valid values.

   function Last (Self : Holder) return Universal_Float;
   --  Returns maximum value of the range of valid values.

   --------------------------
   -- Date/Time Operations --
   --------------------------

   function Is_Time (Self : Holder) return Boolean;
   --  Returns True when contained value is Time.

   function Is_Date (Self : Holder) return Boolean;
   --  Returns True when contained value is Date.

   function Is_Date_Time (Self : Holder) return Boolean;
   --  Returns True when contained value is Date_Time.

   function Element (Self : Holder) return League.Calendars.Time;
   --  Returns contained value of type Time.

   function Element (Self : Holder) return League.Calendars.Date;
   --  Returns contained value of type Date.

   function Element (Self : Holder) return League.Calendars.Date_Time;
   --  Returns contained value of type Date_Time.

   procedure Replace_Element
    (Self : in out Holder;
     To   : League.Calendars.Time);
   --  Sets contained value of type Time to specified value.

   procedure Replace_Element
    (Self : in out Holder;
     To   : League.Calendars.Date);
   --  Sets contained value of type Date to specified value.

   procedure Replace_Element
    (Self : in out Holder;
     To   : League.Calendars.Date_Time);
   --  Sets contained value of type Date_Time to specified value.

   function To_Holder (Item : League.Calendars.Time) return Holder;
   --  Constructs value object of type Time with specified value.

   function To_Holder (Item : League.Calendars.Date) return Holder;
   --  Constructs value object of type Date with specified value.

   function To_Holder (Item : League.Calendars.Date_Time) return Holder;
   --  Constructs value object of type Date_Time with specified value.

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

   not overriding procedure Clear (Self : not null access Abstract_Container);
   --  Sets Is_Empty to True, derived types should override it to do cleanup.

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

   --------------------
   -- Holder and Tag --
   --------------------

   type Tag is new Ada.Tags.Tag;

   type Holder is new Ada.Finalization.Controlled with record
      Data : Container_Access := Shared_Empty'Access;
   end record;

   overriding procedure Adjust (Self : in out Holder);

   overriding procedure Finalize (Self : in out Holder);

   Empty_Holder : constant Holder
     := (Ada.Finalization.Controlled with Shared_Empty'Access);

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

   overriding procedure Clear
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

   --------------------------------
   -- Abstract_Float_Container --
   --------------------------------

   --  Abstract_Float_Container is root container type to store float values.
   --  There are two types which is derived from it: one to store "universal"
   --  float, and other one to store value of named float type.

   type Abstract_Float_Container is
     abstract new Abstract_Container with null record;

   not overriding function Get
    (Self : not null access constant Abstract_Float_Container)
       return Universal_Float is abstract;

   not overriding procedure Set
    (Self : not null access Abstract_Float_Container;
     To   : Universal_Float) is abstract;

   not overriding function First
    (Self : not null access constant Abstract_Float_Container)
       return Universal_Float is abstract;
   --  Returns value of 'First attribute of type of stored value.

   not overriding function Last
    (Self : not null access constant Abstract_Float_Container)
       return Universal_Float is abstract;
   --  Returns value of 'Last attribute of type of stored value.

   -------------------------------
   -- Universal_Float_Container --
   -------------------------------

   --  Universal_Float_Container is container for value of "universal"
   --  float type. This type is compatible with any float types and used
   --  when there are no additional information is available.

   type Universal_Float_Container is
     new Abstract_Float_Container with
   record
      Value : Universal_Float;
   end record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Universal_Float_Container;

   overriding function Get
    (Self : not null access constant Universal_Float_Container)
       return Universal_Float;

   overriding procedure Set
    (Self : not null access Universal_Float_Container;
     To   : Universal_Float);

   overriding function First
    (Self : not null access constant Universal_Float_Container)
       return Universal_Float;

   overriding function Last
    (Self : not null access constant Universal_Float_Container)
       return Universal_Float;

   Universal_Float_Tag : constant Tag := Tag (Universal_Float_Container'Tag);

   --------------------
   -- Time_Container --
   --------------------

   --  Time_Container is container for value of type Time.

   type Time_Container is new Abstract_Container with record
      Value : League.Calendars.Time;
   end record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Time_Container;

   Time_Tag : constant Tag := Tag (Time_Container'Tag);

   --------------------
   -- Date_Container --
   --------------------

   --  Date_Container is container for value of type Time.

   type Date_Container is new Abstract_Container with record
      Value : League.Calendars.Date;
   end record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Date_Container;

   Date_Tag : constant Tag := Tag (Date_Container'Tag);

   -------------------------
   -- Date_Time_Container --
   -------------------------

   --  Date_Time_Container is container for value of type Date_Time.

   type Date_Time_Container is new Abstract_Container with record
      Value : League.Calendars.Date_Time;
   end record;

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Date_Time_Container;

   Date_Time_Tag : constant Tag := Tag (Date_Time_Container'Tag);

end League.Holders;
