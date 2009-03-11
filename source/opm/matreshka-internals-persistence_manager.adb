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
with Ada.Containers.Doubly_Linked_Lists;
with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;
with Ada.Text_IO;

package body Matreshka.Internals.Persistence_Manager is

   package Descriptor_Lists is
     new Ada.Containers.Doubly_Linked_Lists (Descriptor_Access);

   Modified : Descriptor_Lists.List;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Abstract_Proxy) is
   begin
      Self.Descriptor.Reference;
   end Adjust;

   ------------
   -- Commit --
   ------------

   procedure Commit is

      procedure Process (Position : Descriptor_Lists.Cursor);

      -------------
      -- Process --
      -------------

      procedure Process (Position : Descriptor_Lists.Cursor) is
         Descriptor : Descriptor_Access := Descriptor_Lists.Element (Position);

      begin
         Ada.Text_IO.Put_Line ("Save");
         Descriptor.Save;

         Descriptor.Is_Modified := False;

         if Matreshka.Internals.Atomics.Counters.Is_Zero
             (Descriptor.Counter'Access)
         then
            --  XXX Object can be destroyed.
            null;

            Ada.Text_IO.Put_Line ("Destroy object");
         end if;
      end Process;

   begin
      Modified.Iterate (Process'Access);
      Modified.Clear;
   end Commit;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      package Object_Constructor_Maps is
        new Ada.Containers.Indefinite_Hashed_Maps
             (String, Object_Constructor, Ada.Strings.Hash, "=");

      Object_Constructors : Object_Constructor_Maps.Map;

      ------------
      -- Create --
      ------------

      function Create (Class_Name : String)
        return not null Descriptor_Access
      is
      begin
         return Object_Constructors.Element (Class_Name).all;
      end Create;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self       : in out Abstract_Proxy'Class;
        Descriptor : not null access Abstract_Descriptor'Class)
      is
      begin
         Descriptor.Reference;
         Self.Descriptor := Descriptor_Access (Descriptor);
      end Initialize;

      --------------
      -- Register --
      --------------

      procedure Register
       (Class_Name  : String;
        Constructor : Object_Constructor)
      is
      begin
         Object_Constructors.Insert (Class_Name, Constructor);
      end Register;

   end Constructors;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : not null access Abstract_Descriptor'Class) is
   begin
      if Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         if not Self.Is_Modified then
            --  XXX Object can be destroyed.
            null;
            Ada.Text_IO.Put_Line ("Destroy object");

         else
            Ada.Text_IO.Put_Line
             ("Object's destruction postponed until end of transaction");
         end if;
      end if;
   end Dereference;

   ----------------
   -- Descriptor --
   ----------------

   function Descriptor (Self : Abstract_Proxy'Class)
     return not null access Abstract_Descriptor'Class
   is
   begin
      return Self.Descriptor;
   end Descriptor;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Abstract_Proxy) is
   begin
      Self.Descriptor.Dereference;
   end Finalize;

   ----------------
   -- Identifier --
   ----------------

   function Identifier (Self : not null access Abstract_Descriptor'Class)
     return Positive
   is
   begin
      if Self.Identifier = 0 then
         Ada.Text_IO.Put_Line ("Assign object identifier");
         Ada.Text_IO.Put_Line
          ("INSERT INTO opm_object (class_identifier)"
             & " VALUES ((SELECT class_identifier FROM opm_class"
             & " WHERE class_name = '"
             & "Person"
             & "'))");
         Self.Identifier := 1;
         Self.Is_New := True;
         Self.Is_Modified := True;
      end if;

      return Self.Identifier;
   end Identifier;

   ------------
   -- Is_New --
   ------------

   function Is_New (Self  : not null access Abstract_Descriptor'Class)
     return Boolean
   is
   begin
      return Self.Is_New;
   end Is_New;

   ----------
   -- Load --
   ----------

   function Load (Identifier : Positive) return not null Descriptor_Access is
      Descriptor : Descriptor_Access;

   begin
      --  Resolve class name

      Ada.Text_IO.Put_Line
       ("SELECT name FROM opm_object JOIN opm_class WHERE object_identifier ="
          & Positive'Image (Identifier));

      Descriptor := Constructors.Create ("Person");
      Descriptor.Identifier := Identifier;
      Descriptor.Load;

      return Descriptor;
   end Load;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null access Abstract_Descriptor'Class) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

   ------------------
   -- Set_Modified --
   ------------------

   procedure Set_Modified (Self : not null access Abstract_Descriptor'Class) is
   begin
      if not Self.Is_Modified then
         Self.Is_Modified := True;
         Modified.Append (Descriptor_Access (Self));
         Ada.Text_IO.Put_Line ("Modified");
      end if;
   end Set_Modified;

end Matreshka.Internals.Persistence_Manager;
