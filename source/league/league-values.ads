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
private with Ada.Finalization;
private with Ada.Tags;

private with Matreshka.Internals.Atomics.Counters;

package League.Values is

   pragma Preelaborate;

   type Value is private;

   type Value_Type (<>) is private;

   function Get_Type (Self : Value) return Value_Type;
   --  Returns current type of the value.

   procedure Set_Type
    (Self : in out Value;
     To   : Value_Type);
   --  Sets type of the value. Free previous value and set current value to
   --  null.

   function Is_Empty (Self : Value) return Boolean;
   --  Returns True if object contains no value.

   procedure Clear (Self : in out Value);
   --  Reset Value to contain no value.

private

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

   type Value_Type is new Ada.Tags.Tag;

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

end League.Values;
