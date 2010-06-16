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
private with Ada.Finalization;

private with Matreshka.Internals.Atomics.Counters;

with SQLite;

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

   procedure Start;

   procedure Commit;

   procedure Rollback;

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

   Database : SQLite.SQLite_Database_Access;

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
