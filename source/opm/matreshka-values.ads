------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                      Orthogonal Persistence Manager                      --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
private with Ada.Finalization;
private with Ada.Tags;

private with Matreshka.Internals.Atomics.Counters;

package Matreshka.Values is

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

   function Is_Null (Self : Value) return Boolean;
   --  Returns True if object contains null value.

   procedure Set_Null (Self : in out Value);
   --  Reset Value to be null value.

private

   type Abstract_Container is abstract tagged limited record
      Counter : aliased Matreshka.Internals.Atomics.Counters.Counter;
   end record;

   type Container_Access is access all Abstract_Container'Class;

   not overriding procedure Finalize
    (Self : not null access Abstract_Container) is null;

   not overriding function Allocate (Self : not null access Abstract_Container)
--     return not null Container_Access
--  XXX GNAT 20090503 bug
     return Container_Access
       is abstract;
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

end Matreshka.Values;
