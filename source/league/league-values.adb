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
-- Copyright © 2009-2010, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Unchecked_Deallocation;

package body League.Values is

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

end League.Values;
