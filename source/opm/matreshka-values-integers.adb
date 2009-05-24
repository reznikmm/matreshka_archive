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
with Ada.Tags.Generic_Dispatching_Constructor;

package body Matreshka.Values.Integers is

   procedure Check (Self : Value);
   --  Check whether Self is not null and contains integer value, otherwise
   --  raises Constraint_Error.

   procedure Check (Self : Value; Type_Hint : Value_Type);
   --  Check where Self contains the value of the Type_Hint type.

   function Create is
     new Ada.Tags.Generic_Dispatching_Constructor
          (Abstract_Integer_Container,
           Matreshka.Internals.Host_Types.Longest_Integer,
           Constructor);

   -----------
   -- Check --
   -----------

   procedure Check (Self : Value) is
   begin
      if Self.Data = null then
         raise Constraint_Error with "Non-empty value expected";
      end if;

      if Self.Data.all not in Abstract_Integer_Container'Class then
         raise Constraint_Error with "Any integer value expected";
      end if;
   end Check;

   -----------
   -- Check --
   -----------

   procedure Check (Self : Value; Type_Hint : Value_Type) is
   begin
   end Check;

   -----------
   -- First --
   -----------

   function First (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      Check (Self);

      return Abstract_Integer_Container'Class (Self.Data.all).First;
   end First;

   ---------
   -- Get --
   ---------

   function Get (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      Check (Self);

      return Abstract_Integer_Container'Class (Self.Data.all).Get;
   end Get;

   -------------------------
   -- Is_Abstract_Integer --
   -------------------------

   function Is_Abstract_Integer (Self : Value) return Boolean is
   begin
      return
        Self.Data /= null
          and then Self.Data.all in Abstract_Integer_Container'Class;
   end Is_Abstract_Integer;

   ----------
   -- Last --
   ----------

   function Last (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      Check (Self);

      return Abstract_Integer_Container'Class (Self.Data.all).Last;
   end Last;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out Value;
     To   : Matreshka.Internals.Host_Types.Longest_Integer)
   is
   begin
      Check (Self);
      Mutate (Self.Data);
      Abstract_Integer_Container'Class (Self.Data.all).Set (To);
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self      : in out Value;
     Type_Hint : Value_Type;
     To        : Matreshka.Internals.Host_Types.Longest_Integer)
   is
      Aux : aliased Matreshka.Internals.Host_Types.Longest_Integer := To;

   begin
      if Self.Data = null then
         Self.Data :=
           new Abstract_Integer_Container'Class'
                (Create
                  (Ada.Tags.Internal_Tag (String (Type_Hint)), Aux'Access));

      else
         if Value_Type (Ada.Tags.External_Tag (Self.Data'Tag))
              /= Type_Hint
         then
            raise Constraint_Error with "Wrong integer type";
         end if;

         Mutate (Self.Data);
         Abstract_Integer_Container'Class (Self.Data.all).Set (To);
      end if;
   end Set;

end Matreshka.Values.Integers;
