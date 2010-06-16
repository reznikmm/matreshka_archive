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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Containers.Doubly_Linked_Lists;
with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;
--with Ada.Text_IO;

with SQLite;

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
--         Ada.Text_IO.Put_Line ("Save");
         Descriptor.Save;

         Descriptor.Is_Modified := False;

         if Matreshka.Internals.Atomics.Counters.Is_Zero
             (Descriptor.Counter'Access)
         then
            --  XXX Object can be destroyed.
            null;

--            Ada.Text_IO.Put_Line ("Destroy object");
         end if;
      end Process;

      Statement : SQLite.SQLite_Statement_Access;

   begin
      Modified.Iterate (Process'Access);
      Modified.Clear;

      SQLite.Prepare (Database, "COMMIT", Statement);
      SQLite.Step (Statement);
      SQLite.Finalize (Statement);
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
--            Ada.Text_IO.Put_Line ("Destroy object");

         else
            null;
--            Ada.Text_IO.Put_Line
--             ("Object's destruction postponed until end of transaction");
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
      Statement : SQLite.SQLite_Statement_Access;

   begin
      if Self.Identifier = 0 then
--         Ada.Text_IO.Put_Line ("Assign object identifier");

	 --  XXX SQLite3: INSERT operation must be executed in critical
         --  section.

         SQLite.Prepare
          (Database,
           "INSERT INTO matreshka_object (class_identifier)"
             & " VALUES ((SELECT class_identifier FROM matreshka_class"
             & " WHERE class_name = ?1))",
           Statement);
         SQLite.Bind (Statement, 1, "Person");

         SQLite.Step (Statement);

         Self.Identifier := Positive (SQLite.Last_Insert_Row_Id (Database));
         Self.Is_New := True;
         Self.Is_Modified := True;

         SQLite.Finalize (Statement);
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
      Statement  : SQLite.SQLite_Statement_Access;

   begin
      --  Resolve class name

      SQLite.Prepare
       (Database,
        "SELECT class_name FROM matreshka_object NATURAL JOIN matreshka_class"
          & " WHERE object_identifier = ?1",
        Statement);
      SQLite.Bind (Statement, 1, Identifier);

      if not SQLite.Step (Statement) then
         raise Program_Error;
      end if;

      Descriptor := Constructors.Create (SQLite.Column (Statement, 0));
      Descriptor.Identifier := Identifier;
      Descriptor.Load;

      SQLite.Finalize (Statement);

      return Descriptor;
   end Load;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null access Abstract_Descriptor'Class) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

   --------------
   -- Rollback --
   --------------

   procedure Rollback is
      Statement : SQLite.SQLite_Statement_Access;

   begin
      SQLite.Prepare (Database, "ROLLBACK", Statement);
      SQLite.Step (Statement);
      SQLite.Finalize (Statement);
   end Rollback;

   ------------------
   -- Set_Modified --
   ------------------

   procedure Set_Modified (Self : not null access Abstract_Descriptor'Class) is
   begin
      if not Self.Is_Modified then
         Self.Is_Modified := True;
         Modified.Append (Descriptor_Access (Self));
--         Ada.Text_IO.Put_Line ("Modified");
      end if;
   end Set_Modified;

   -----------
   -- Start --
   -----------

   procedure Start is
      Statement : SQLite.SQLite_Statement_Access;

   begin
      SQLite.Prepare (Database, "BEGIN", Statement);
      SQLite.Step (Statement);
      SQLite.Finalize (Statement);
   end Start;

begin
   SQLite.Initialize;
   SQLite.Open ("person.db", Database);
end Matreshka.Internals.Persistence_Manager;
