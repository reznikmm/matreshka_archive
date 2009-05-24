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
with Matreshka.Internals.Host_Types;

package Matreshka.Values.Integers is

   pragma Preelaborate;

   function Is_Abstract_Integer (Self : Value) return Boolean;
   --  Returns True if contained value has integer type.

   function Get (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer;
   --  Returns internal value as a longest supported integer.

   procedure Set
    (Self : in out Value;
     To   : Matreshka.Internals.Host_Types.Longest_Integer);
   --  Set value from a longest supported integer. Raises Contraint_Error if
   --  value is outside of the range of valid values for actual integer type.

   function First (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer;
   --  Returns minimal value of the range of valid values.

   function Last (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer;
   --  Returns maximum value of the range of valid values.

   procedure Set
    (Self      : in out Value;
     Type_Hint : Value_Type;
     To        : Matreshka.Internals.Host_Types.Longest_Integer);
   --  Set value from a longest supported integer. Type_Hint represents
   --  expected type of the value. Raises Contraint_Error if value is outside
   --  of the range of valid values for actual integer type, or value has
   --  wrong type.

private

   type Abstract_Integer_Container is
     abstract new Abstract_Container with null record;

   not overriding function Constructor
    (Value : not null access Matreshka.Internals.Host_Types.Longest_Integer)
       return Abstract_Integer_Container
         is abstract;

   not overriding function Get
    (Self : not null access Abstract_Integer_Container)
       return Matreshka.Internals.Host_Types.Longest_Integer
         is abstract;

   not overriding procedure Set
    (Self : not null access Abstract_Integer_Container;
     To   : Matreshka.Internals.Host_Types.Longest_Integer)
       is abstract;

   not overriding function First
    (Self : not null access Abstract_Integer_Container)
       return Matreshka.Internals.Host_Types.Longest_Integer
         is abstract;

   not overriding function Last
    (Self : not null access Abstract_Integer_Container)
       return Matreshka.Internals.Host_Types.Longest_Integer
         is abstract;

end Matreshka.Values.Integers;
