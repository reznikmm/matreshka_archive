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
with Matreshka.Internals.Persistence_Manager;

package body Matreshka.Generic_Persistence_Manager is

   ------------
   -- Create --
   ------------

   function Create (Class_Name : String) return Entity'Class is
      Descriptor : Matreshka.Internals.Persistence_Manager.Descriptor_Access
        := Matreshka.Internals.Persistence_Manager.Constructors.Create
            (Class_Name);

   begin
      return Entity'Class (Descriptor.Proxy);
   end Create;

   ------------
   -- Delete --
   ------------

   procedure Delete (Object : Entity'Class) is
   begin
      null;
   end Delete;

   ----------------
   -- Identifier --
   ----------------

   function Identifier (Object : Entity'Class) return Positive is
   begin
      return
        Matreshka.Internals.Persistence_Manager.Abstract_Proxy'Class
         (Object).Descriptor.Identifier;
   end Identifier;

   ----------
   -- Load --
   ----------

   function Load (Identifier : Positive) return Entity'Class is
      Descriptor : Matreshka.Internals.Persistence_Manager.Descriptor_Access
        := Matreshka.Internals.Persistence_Manager.Load (Identifier);

   begin
      return Entity'Class (Descriptor.Proxy);
   end Load;

end Matreshka.Generic_Persistence_Manager;
