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
with Ada.Tags.Generic_Dispatching_Constructor;
with Ada.Unchecked_Deallocation;

with League.Strings.Internals;

package body League.Values is

   function Create is
     new Ada.Tags.Generic_Dispatching_Constructor
          (Abstract_Container, Boolean, Constructor);

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Value) is
   begin
      Reference (Self.Data);
   end Adjust;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Value) is
      Tag      : constant Ada.Tags.Tag := Self.Data'Tag;
      Is_Empty : aliased Boolean := True;

   begin
      --  XXX This subprogram can be improved to reuse shared segment when
      --  possible.

      Dereference (Self.Data);
      Self.Data :=
        new Abstract_Container'Class'(Create (Tag, Is_Empty'Access));
   end Clear;

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Empty_Container
   is
      pragma Assert (Is_Empty.all);

   begin
      --  This function must never be called.

      raise Program_Error;
      return (Counter => <>, Is_Empty => Is_Empty.all);
   end Constructor;

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Universal_Integer_Container
   is
      pragma Assert (Is_Empty.all);

   begin
      return
       (Counter  => <>,
        Is_Empty => Is_Empty.all,
        Value    => <>);
   end Constructor;

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Universal_String_Container
   is
      pragma Assert (Is_Empty.all);

   begin
      return
       (Counter  => <>,
        Is_Empty => Is_Empty.all,
        Value    => Matreshka.Internals.Strings.Shared_Empty'Access);
   end Constructor;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Container_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Abstract_Container'Class, Container_Access);

   begin
      if Self /= Shared_Empty'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
                  (Self.Counter'Access)
      then
         Self.Finalize;
         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize
    (Self : not null access Universal_String_Container) is
   begin
      Matreshka.Internals.Strings.Dereference (Self.Value);
   end Finalize;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Value) is
   begin
      --  Finalize must be idempotent.

      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   -----------
   -- First --
   -----------

   overriding function First
    (Self : not null access constant Universal_Integer_Container)
       return Universal_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Universal_Integer'First;
   end First;

   -----------
   -- First --
   -----------

   function First (Self : Value) return Universal_Integer is
   begin
      if Self.Data.all not in Abstract_Integer_Container'Class then
         raise Constraint_Error with "invalid type of value";
      end if;

      return Abstract_Integer_Container'Class (Self.Data.all).First;
   end First;

   ---------
   -- Get --
   ---------

   overriding function Get
    (Self : not null access constant Universal_Integer_Container)
       return Universal_Integer is
   begin
      return Self.Value;
   end Get;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return League.Strings.Universal_String is
   begin
      if Self.Data.all not in Universal_String_Container then
         raise Constraint_Error with "invalid type of value";
      end if;

      if Self.Data.Is_Empty then
         raise Constraint_Error with "value is empty";
      end if;

      return
        League.Strings.Internals.Create
         (Universal_String_Container (Self.Data.all).Value);
   end Get;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return Universal_Integer is
   begin
      if Self.Data.all not in Abstract_Integer_Container'Class then
         raise Constraint_Error with "invalid type of value";
      end if;

      if Self.Data.Is_Empty then
         raise Constraint_Error with "value is empty";
      end if;

      return Abstract_Integer_Container'Class (Self.Data.all).Get;
   end Get;

   -------------
   -- Get_Tag --
   -------------

   function Get_Tag (Self : Value) return Tag is
   begin
      return Tag (Self.Data'Tag);
   end Get_Tag;

   --------------------------
   -- Is_Abstract_Integer --
   --------------------------

   function Is_Abstract_Integer (Self : Value) return Boolean is
   begin
      return Self.Data.all in Abstract_Integer_Container'Class;
   end Is_Abstract_Integer;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : Value) return Boolean is
   begin
      return Self.Data.Is_Empty;
   end Is_Empty;

   -------------------------
   -- Is_Universal_String --
   -------------------------

   function Is_Universal_String (Self : Value) return Boolean is
   begin
      return Self.Data.all in Universal_String_Container;
   end Is_Universal_String;

   ----------
   -- Last --
   ----------

   overriding function Last
    (Self : not null access constant Universal_Integer_Container)
       return Universal_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Universal_Integer'Last;
   end Last;

   ----------
   -- Last --
   ----------

   function Last (Self : Value) return Interfaces.Integer_64 is
   begin
      if Self.Data.all not in Abstract_Integer_Container'Class then
         raise Constraint_Error with "invalid type of value";
      end if;

      return Abstract_Integer_Container'Class (Self.Data.all).Last;
   end Last;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Container_Access) is
   begin
      if Self /= Shared_Empty'Access then
         Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
      end if;
   end Reference;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self : not null access Universal_Integer_Container;
     To   : Universal_Integer) is
   begin
      Self.Is_Empty := False;
      Self.Value    := To;
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set (Self : in out Value; To : Universal_Integer) is
      Tag      : constant Ada.Tags.Tag := Self.Data'Tag;
      Aux      : aliased Interfaces.Integer_64 := To;
      Is_Empty : aliased Boolean := True;

   begin
      if Self.Data.all not in Abstract_Integer_Container'Class then
         raise Constraint_Error with "invalid type of value";
      end if;

      --  XXX This subprogram can be improved to reuse shared segment when
      --  possible.

      Dereference (Self.Data);
      Self.Data :=
        new Abstract_Container'Class'(Create (Tag, Is_Empty'Access));
      Abstract_Integer_Container'Class (Self.Data.all).Set (To);
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set (Self : in out Value; To : League.Strings.Universal_String) is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (To);

   begin
      if Self.Data.all not in Universal_String_Container then
         raise Constraint_Error with "invalid type of value";
      end if;

      --  XXX This subprogram can be improved to reuse shared segment when
      --  possible.

      Dereference (Self.Data);
      Matreshka.Internals.Strings.Reference (Aux);
      Self.Data :=
        new Universal_String_Container'
             (Counter => <>, Is_Empty => False, Value => Aux);
   end Set;

   -------------
   -- Set_Tag --
   -------------

   procedure Set_Tag (Self : in out Value; To : Tag) is
      Is_Empty : aliased Boolean := True;

   begin
      --  XXX This subprogram can be improved to reuse shared segment when
      --  possible.

      Dereference (Self.Data);
      Self.Data :=
        new Abstract_Container'Class'
             (Create (Ada.Tags.Tag (To), Is_Empty'Access));
   end Set_Tag;

   --------------
   -- To_Value --
   --------------

   function To_Value (Item : League.Strings.Universal_String) return Value is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (Item);

   begin
      Matreshka.Internals.Strings.Reference (Aux);

      return
       (Ada.Finalization.Controlled with
          new Universal_String_Container'
               (Counter => <>, Is_Empty => False, Value => Aux));
   end To_Value;

end League.Values;
