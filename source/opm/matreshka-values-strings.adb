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

package body Matreshka.Values.Strings is

   procedure Check (Self : Value; Can_Be_Empty : Boolean);
   --  Check whether Self is not null and contains string value, otherwise
   --  raises Constraint_Error.

   -----------
   -- Check --
   -----------

   procedure Check (Self : Value; Can_Be_Empty : Boolean) is
   begin
      if not Can_Be_Empty and then Self.Data = null then
         raise Constraint_Error with "Non-empty value expected";
      end if;

      if Self.Data /= null
        and then Self.Data.all not in String_Container'Class
      then
         raise Constraint_Error with "String value expected";
      end if;
   end Check;

   --------------
   -- Allocate --
   --------------

   overriding function Allocate (Self : not null access String_Container)
--     return not null Container_Access
--  XXX GNAT 20090503 bug
     return Container_Access
   is
   begin
      return new String_Container;
   end Allocate;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return Matreshka.Strings.Universal_String is
   begin
      Check (Self, False);

      return String_Container'Class (Self.Data.all).Value;
   end Get;

   ---------------
   -- Is_String --
   ---------------

   function Is_String (Self : Value) return Boolean is
   begin
      return
        Self.Data /= null
          and then Self.Data.all in String_Container'Class;
   end Is_String;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out Value;
     To   : Matreshka.Strings.Universal_String)
   is
   begin
      Check (Self, True);
      Mutate (Self.Data);

      if Self.Data = null then
         Self.Data :=
           new String_Container'(Abstract_Container with Value => To);

      else
         String_Container'Class (Self.Data.all).Value := To;
      end if;
   end Set;

end Matreshka.Values.Strings;
