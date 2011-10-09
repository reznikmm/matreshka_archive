------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Containers.Hashed_Maps;
with Ada.Unchecked_Deallocation;

with League.Strings.Hash;
with Matreshka.Internals.SQL_Drivers.Dummy;

package body Matreshka.Internals.SQL_Drivers is

   package Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Factory_Access,
           League.Strings.Hash,
           League.Strings."=");

   Factories : Maps.Map;

   ------------
   -- Create --
   ------------

   function Create
    (Driver : League.Strings.Universal_String)
       return not null Database_Access is
   begin
      if Factories.Contains (Driver) then
         return Factories.Element (Driver).Create;

      else
         return Dummy.Empty_Database'Access;
      end if;
   end Create;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Database_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Abstract_Database'Class, Database_Access);

   begin
      if Self /= Dummy.Empty_Database'Access
        and then Matreshka.Atomics.Counters.Decrement (Self.Counter)
      then
         Self.Finalize;
         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Query_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation (Abstract_Query'Class, Query_Access);

   begin
      if Self /= Dummy.Empty_Query'Access
        and then Matreshka.Atomics.Counters.Decrement (Self.Counter)
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

   not overriding procedure Finalize (Self : not null access Abstract_Query) is
   begin
      Abstract_Query'Class (Self.all).Invalidate;
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self     : not null access Abstract_Query'Class;
     Database : not null Database_Access) is
   begin
      Self.Database := Database;
      Reference (Self.Database);

      if Self.Database.Head = null then
         --  Insert first item into the list.

         Self.Previous      := null;
         Self.Next          := null;
         Self.Database.Head := Query_Access (Self);
         Self.Database.Tail := Query_Access (Self);

      else
         --  Insert into the not empty list.

         Self.Previous               := Self.Database.Tail;
         Self.Next                   := null;
         Self.Database.Tail.Next     := Query_Access (Self);
         Self.Database.Tail          := Query_Access (Self);
      end if;
   end Initialize;

   ----------------
   -- Invalidate --
   ----------------

   not overriding procedure Invalidate
    (Self : not null access Abstract_Query) is
   begin
      if Self.Database /= null then
         if Self.Database.Head = Self then
            --  Correct list's head.

            Self.Database.Head := Self.Next;
         end if;

         if Self.Database.Tail = Self then
            --  Correct list's tail.

            Self.Database.Tail := Self.Previous;
         end if;

         if Self.Previous /= null then
            --  Fix Next member of previous element.

            Self.Previous.Next := Self.Next;
         end if;

         if Self.Next /= null then
            --  Fix Previous member of next element.

            Self.Next.Previous := Self.Previous;
         end if;

         --  Release database object.

         Dereference (Self.Database);
      end if;
   end Invalidate;

   ------------------------
   -- Invalidate_Queries --
   ------------------------

   procedure Invalidate_Queries
    (Self : not null access Abstract_Database'Class) is
   begin
      while Self.Head /= null loop
         Self.Head.Invalidate;
      end loop;
   end Invalidate_Queries;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid
    (Self : not null access Abstract_Query'Class) return Boolean is
   begin
      return Self.Database /= null;
   end Is_Valid;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Database_Access) is
   begin
      if Self /= Dummy.Empty_Database'Access then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Query_Access) is
   begin
      if Self /= Dummy.Empty_Query'Access then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

   --------------
   -- Register --
   --------------

   procedure Register
    (Name    : League.Strings.Universal_String;
     Factory : not null Factory_Access) is
   begin
      Factories.Insert (Name, Factory);
   end Register;

end Matreshka.Internals.SQL_Drivers;
