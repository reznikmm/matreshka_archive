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

private with Matreshka.Internals.Atomics.Counters;

package Matreshka.Internals.Persistence_Manager is

   --  Object's descriptor base

   type Abstract_Descriptor is abstract tagged limited private;
   --  Abstract persistant object descriptor.

   type Descriptor_Access is access all Abstract_Descriptor'Class;

   procedure Reference (Self : not null access Abstract_Descriptor'Class);
   --  New reference to the object is creaded.

   procedure Dereference (Self : not null access Abstract_Descriptor'Class);
   --  Reference to the object is destroyed.

   procedure Set_Modified (Self : not null access Abstract_Descriptor'Class);
   --  Object is modified.

   function Identifier (Self : not null access Abstract_Descriptor'Class)
     return Positive;
   --  Returns object's identifier. Assign new object identifier if object
   --  doesn't have one.

   function Is_New (Self  : not null access Abstract_Descriptor'Class)
     return Boolean;
   --  XXX It must not be visible outside this package, but it requres to
   --  use some data set abstraction for the Save operation.

   procedure Load (Self : not null access Abstract_Descriptor) is abstract;

   procedure Save (Self : not null access Abstract_Descriptor) is abstract;

   --  Object's proxy base

   type Abstract_Proxy is abstract tagged private;

   function Descriptor (Self : Abstract_Proxy'Class)
     return not null access Abstract_Descriptor'Class;

   function Proxy (Self : not null access Abstract_Descriptor)
     return Abstract_Proxy'Class
       is abstract;

   --  Load operation

   function Load (Identifier : Positive) return not null Descriptor_Access;

   --  Transactions support

   procedure Commit;

   --  Constructors

   package Constructors is

      procedure Initialize
       (Self       : in out Abstract_Proxy'Class;
        Descriptor : not null access Abstract_Descriptor'Class);

      --  Object's/descriptor's constructors

      type Object_Constructor is
        not null access function return not null Descriptor_Access;

      procedure Register
       (Class_Name  : String;
        Constructor : Object_Constructor);

      function Create (Class_Name : String) return not null Descriptor_Access;

   end Constructors;

private

   type Abstract_Descriptor is abstract tagged limited record
      Counter     : aliased Matreshka.Internals.Atomics.Counters.Counter
        := Matreshka.Internals.Atomics.Counters.Zero;
      --  Atomic reference counter;

      Identifier  : Natural := 0;
      --  Internal object identifier. Zero means object not in database and
      --  new object identifier must be assigned when object is stored into
      --  database.

      Is_New      : Boolean := False;
      --  True if a object not present in database.

      Is_Modified : Boolean := False;
      --  Modification flag, used for optimization.
   end record;

   type Abstract_Proxy is abstract new Ada.Finalization.Controlled with record
      Descriptor : Descriptor_Access;
   end record;

   overriding procedure Adjust (Self : in out Abstract_Proxy);

   overriding procedure Finalize (Self : in out Abstract_Proxy);

end Matreshka.Internals.Persistence_Manager;
