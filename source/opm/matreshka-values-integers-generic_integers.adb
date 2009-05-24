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

package body Matreshka.Values.Integers.Generic_Integers is

   procedure Check (Self : Value; Can_Be_Empty : Boolean);
   --  Check whether Self is not null and contains integer value, otherwise
   --  raises Constraint_Error.

   --------------
   -- Allocate --
   --------------

   overriding function Allocate (Self : not null access Integer_Container)
--     return not null Container_Access;
--  XXX GNAT 20090503 bug
     return Container_Access
   is
   begin
      return new Integer_Container;
   end Allocate;

   -----------
   -- Check --
   -----------

   procedure Check (Self : Value; Can_Be_Empty : Boolean) is
   begin
      if not Can_Be_Empty and then Self.Data = null then
         raise Constraint_Error with "Non-empty value expected";
      end if;

      if Self.Data /= null
        and then Self.Data.all not in Integer_Container'Class
      then
         if Self.Data.all not in Abstract_Integer_Container'Class then
            raise Constraint_Error with "Wrong type of integer value";

         else
            raise Constraint_Error with "Integer value expected";
         end if;
      end if;
   end Check;

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Value : not null access Matreshka.Internals.Host_Types.Longest_Integer)
       return Integer_Container
   is
   begin
      return
        Integer_Container'(Abstract_Container with Value => Num (Value.all));
   end Constructor;

   -----------
   -- First --
   -----------

   overriding function First (Self : not null access Integer_Container)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Matreshka.Internals.Host_Types.Longest_Integer (Num'First);
   end First;

   ---------
   -- Get --
   ---------

   overriding function Get (Self : not null access Integer_Container)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      return Matreshka.Internals.Host_Types.Longest_Integer (Self.Value);
   end Get;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return Num is
   begin
      Check (Self, False);

      return Integer_Container'Class (Self.Data.all).Value;
   end Get;

   ----------------
   -- Is_Integer --
   ----------------

   function Is_Integer (Self : Value) return Boolean is
   begin
      return
        Self.Data /= null
          and then Self.Data.all in Integer_Container'Class;
   end Is_Integer;

   ----------
   -- Last --
   ----------

   overriding function Last (Self : not null access Integer_Container)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Matreshka.Internals.Host_Types.Longest_Integer (Num'Last);
   end Last;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self : not null access Integer_Container;
     To   : Matreshka.Internals.Host_Types.Longest_Integer)
   is
   begin
      Self.Value := Num (To);
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out Value;
     To   : Num)
   is
   begin
      Check (Self, True);

      if Self.Data = null then
         Self.Data :=
           new Integer_Container'(Abstract_Container with Value => To);

      else
         Mutate (Self.Data);
         Integer_Container'Class (Self.Data.all).Value := To;
      end if;
   end Set;

end Matreshka.Values.Integers.Generic_Integers;
