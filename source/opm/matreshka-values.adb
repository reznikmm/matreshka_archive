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
with Ada.Unchecked_Deallocation;

package body Matreshka.Values is

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Abstract_Container'Class, Container_Access);

   ------------
   -- Adjust --
   ------------

   overriding
   procedure Adjust (Self : in out Value) is
   begin
      Reference (Self.Data);
   end Adjust;

   ---------------------------
   -- Check_Is_Derived_Type --
   ---------------------------

   procedure Check_Is_Derived_Type
    (Self      : Value'Class;
     Known_Tag : Ada.Tags.Tag)
   is
      use type Ada.Tags.Tag;

      Aux : Ada.Tags.Tag := Self.Tag;

   begin
      if Aux = Ada.Tags.No_Tag then
         raise Constraint_Error with "Untyped value";
      end if;

      while Aux /= Ada.Tags.No_Tag loop
         if Aux = Known_Tag then
            return;
         end if;

         Aux := Ada.Tags.Parent_Tag (Aux);
      end loop;

      raise Constraint_Error with "Wrong type of value";
   end Check_Is_Derived_Type;

   -----------------------
   -- Check_Is_Not_Null --
   -----------------------

   procedure Check_Is_Not_Null (Self : Value'Class) is
   begin
      if Self.Data = null then
         raise Constraint_Error with "Null value";
      end if;
   end Check_Is_Not_Null;

   -------------------
   -- Check_Is_Type --
   -------------------

   procedure Check_Is_Type
    (Self      : Value'Class;
     Known_Tag : Ada.Tags.Tag)
   is
      use type Ada.Tags.Tag;

   begin
      if Self.Tag = Ada.Tags.No_Tag then
         raise Constraint_Error with "Untyped value";
      end if;

      if Self.Tag /= Known_Tag then
         raise Constraint_Error with "Wrong type of value";
      end if;
   end Check_Is_Type;

   ---------------------------------
   -- Check_Is_Untyped_Or_Is_Type --
   ---------------------------------

   procedure Check_Is_Untyped_Or_Is_Type
    (Self      : Value'Class;
     Known_Tag : Ada.Tags.Tag)
   is
      use type Ada.Tags.Tag;

   begin
      if Self.Tag /= Ada.Tags.No_Tag and then Self.Tag /= Known_Tag then
         raise Constraint_Error with "Wrong type";
      end if;
   end Check_Is_Untyped_Or_Is_Type;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Container_Access) is
   begin
      if Self /= null then
         if Matreshka.Internals.Atomics.Counters.Decrement
             (Self.Counter'Access)
         then
            Self.Finalize;
            Free (Self);

         else
            Self := null;
         end if;
      end if;
   end Dereference;

   --------------
   -- Finalize --
   --------------

   overriding
   procedure Finalize (Self : in out Value) is
   begin
      Dereference (Self.Data);
   end Finalize;

   --------------
   -- Get_Type --
   --------------

   function Get_Type (Self : Value) return Value_Type is
   begin
      return Value_Type (Self.Tag);
   end Get_Type;

   ---------------------
   -- Is_Derived_Type --
   ---------------------

   function Is_Derived_Type (Self : Value'Class; Known_Tag : Ada.Tags.Tag)
     return Boolean
   is
      use type Ada.Tags.Tag;

      Aux : Ada.Tags.Tag := Self.Tag;

   begin
      while Aux /= Ada.Tags.No_Tag loop
         if Aux = Known_Tag then
            return True;
         end if;

         Aux := Ada.Tags.Parent_Tag (Aux);
      end loop;

      return False;
   end Is_Derived_Type;

   -------------
   -- Is_Null --
   -------------

   function Is_Null (Self : Value) return Boolean is
   begin
      return Self.Data = null;
   end Is_Null;

   -------------
   -- Is_Type --
   -------------

   function Is_Type (Self : Value'Class; Known_Tag : Ada.Tags.Tag)
     return Boolean
   is
      use type Ada.Tags.Tag;

   begin
      return Self.Tag = Known_Tag;
   end Is_Type;

   ------------
   -- Mutate --
   ------------

   procedure Mutate (Self : in out Container_Access) is
   begin
      if Self /= null then
         if Matreshka.Internals.Atomics.Counters.Is_One
             (Self.Counter'Access)
         then
            null;

         else
            Dereference (Self);
            Self := Self.Allocate;
         end if;
      end if;
   end Mutate;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : in out Container_Access) is
   begin
      if Self /= null then
         Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
      end if;
   end Reference;

   --------------
   -- Set_Null --
   --------------

   procedure Set_Null (Self : in out Value) is
   begin
      Dereference (Self.Data);
   end Set_Null;

   --------------
   -- Set_Type --
   --------------

   procedure Set_Type
    (Self : in out Value;
     To   : Value_Type)
   is
   begin
      Dereference (Self.Data);
      Self.Tag := Ada.Tags.Tag (To);
   end Set_Type;

end Matreshka.Values;
