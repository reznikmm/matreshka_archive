------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Unchecked_Deallocation;

with League.Strings.Internals;
with Matreshka.Internals.Strings.Compare;

package body XML.SAX.Attributes is

   use League.Strings;
   use League.Strings.Internals;
   use Matreshka.Internals.Strings.Compare;

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Shared_Attributes, Shared_Attributes_Access);

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out SAX_Attributes) is
   begin
      Reference (Self.Data);
   end Adjust;

   -------------------
   -- Can_Be_Reused --
   -------------------

   function Can_Be_Reused (Self : Shared_Attributes_Access) return Boolean is
   begin
      return Matreshka.Internals.Atomics.Counters.Is_One (Self.Counter'Access);
   end Can_Be_Reused;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_Attributes_Access) is
   begin
      if Self /= Shared_Empty'Access then
         if Matreshka.Internals.Atomics.Counters.Decrement
             (Self.Counter'Access)
         then
            for J in 1 .. Self.Length loop
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Namespace_URI);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Local_Name);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Qualified_Name);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Value);
            end loop;

            Free (Self);

         else
            Self := null;
         end if;
      end if;
   end Dereference;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out SAX_Attributes) is
   begin
      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   -----------
   -- Index --
   -----------

   function Index
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String) return Natural is
   begin
      for J in 1 .. Self.Data.Length loop
         if Is_Equal
             (Self.Data.Values (J).Qualified_Name, Get_Shared (Qualified_Name))
         then
            return J;
         end if;
      end loop;

      return 0;
   end Index;

   -----------
   -- Index --
   -----------

   function Index
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String) return Natural is
   begin
      for J in 1 .. Self.Data.Length loop
         if Is_Equal
             (Self.Data.Values (J).Namespace_URI, Get_Shared (Namespace_URI))
           and Is_Equal
                (Self.Data.Values (J).Local_Name, Get_Shared (Local_Name))
         then
            return J;
         end if;
      end loop;

      return 0;
   end Index;

   -----------------
   -- Is_Declared --
   -----------------

   function Is_Declared
    (Self  : SAX_Attributes'Class;
     Index : Positive) return Boolean is
   begin
      if Index not in 1 .. Self.Data.Length then
         raise Constraint_Error;
      end if;

      return False;
      --  XXX Not supported.
   end Is_Declared;

   -----------------
   -- Is_Declared --
   -----------------

   function Is_Declared
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      return False;
      --  XXX Not supported.
   end Is_Declared;

   -----------------
   -- Is_Declared --
   -----------------

   function Is_Declared
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return Boolean is
   begin
      return False;
      --  XXX Not supported.
   end Is_Declared;

   ------------------
   -- Is_Specified --
   ------------------

   function Is_Specified
    (Self  : SAX_Attributes'Class;
     Index : Positive) return Boolean is
   begin
      if Index not in 1 .. Self.Data.Length then
         raise Constraint_Error;
      end if;

      return True;
      --  XXX Not supported.
   end Is_Specified;

   ------------------
   -- Is_Specified --
   ------------------

   function Is_Specified
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      for J in 1 .. Self.Data.Length loop
         if Is_Equal
             (Self.Data.Values (J).Qualified_Name, Get_Shared (Qualified_Name))
         then
            return True;
            --  XXX Not supported.
         end if;
      end loop;

      return False;
   end Is_Specified;

   ------------------
   -- Is_Specified --
   ------------------

   function Is_Specified
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return Boolean is
   begin
      for J in 1 .. Self.Data.Length loop
         if Is_Equal
             (Self.Data.Values (J).Namespace_URI, Get_Shared (Namespace_URI))
           and Is_Equal
                (Self.Data.Values (J).Local_Name, Get_Shared (Local_Name))
         then
            return True;
            --  XXX Not supported.
         end if;
      end loop;

      return False;
   end Is_Specified;

   ------------
   -- Length --
   ------------

   function Length (Self : SAX_Attributes'Class) return Natural is
   begin
      return Self.Data.Length;
   end Length;

   ----------------
   -- Local_Name --
   ----------------

   function Local_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index not in 1 .. Self.Data.Length then
         raise Constraint_Error;
      end if;

      return Create (Self.Data.Values (Index).Local_Name);
   end Local_Name;

   -------------------
   -- Namespace_URI --
   -------------------

   function Namespace_URI
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index not in 1 .. Self.Data.Length then
         raise Constraint_Error;
      end if;

      return Create (Self.Data.Values (Index).Namespace_URI);
   end Namespace_URI;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Shared_Attributes_Access) is
   begin
      if Self /= Shared_Empty'Access then
         Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
      end if;
   end Reference;

   --------------------
   -- Qualified_Name --
   --------------------

   function Qualified_Name
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index not in 1 .. Self.Data.Length then
         raise Constraint_Error;
      end if;

      return Create (Self.Data.Values (Index).Qualified_Name);
   end Qualified_Name;

   -----------
   -- Value --
   -----------

   function Value
    (Self  : SAX_Attributes;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index not in 1 .. Self.Data.Length then
         raise Constraint_Error;
      end if;

      return Create (Self.Data.Values (Index).Value);
   end Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self           : SAX_Attributes;
     Qualified_Name : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in 1 .. Self.Data.Length loop
         if Is_Equal
             (Self.Data.Values (J).Qualified_Name, Get_Shared (Qualified_Name))
         then
            return Create (Self.Data.Values (J).Value);
         end if;
      end loop;

      return Empty_Universal_String;
   end Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self          : SAX_Attributes;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in 1 .. Self.Data.Length loop
         if Is_Equal
             (Self.Data.Values (J).Namespace_URI, Get_Shared (Namespace_URI))
           and Is_Equal
                (Self.Data.Values (J).Local_Name, Get_Shared (Local_Name))
         then
            return Create (Self.Data.Values (J).Value);
         end if;
      end loop;

      return Empty_Universal_String;
   end Value;

end XML.SAX.Attributes;
