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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;

package body XML.SAX.Attributes is

   use League.Strings;
   use Matreshka.Internals.Strings.Configuration;

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
      return Matreshka.Atomics.Counters.Is_One (Self.Counter);
   end Can_Be_Reused;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out SAX_Attributes'Class) is
   begin
      if Can_Be_Reused (Self.Data) then
         for J in 1 .. Self.Data.Length loop
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Namespace_URI);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Local_Name);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Qualified_Name);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Value);
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (J).Value_Type);
         end loop;

         Self.Data.Length := 0;

      else
         Dereference (Self.Data);
         Self.Data := new Shared_Attributes (8);
      end if;
   end Clear;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_Attributes_Access) is
   begin
      if Self /= Shared_Empty'Access then
         if Matreshka.Atomics.Counters.Decrement (Self.Counter) then
            for J in 1 .. Self.Length loop
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Namespace_URI);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Local_Name);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Qualified_Name);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Value);
               Matreshka.Internals.Strings.Dereference
                (Self.Values (J).Value_Type);
            end loop;

            Free (Self);

         else
            Self := null;
         end if;
      end if;
   end Dereference;

   ------------
   -- Detach --
   ------------

   procedure Detach (Self : in out Shared_Attributes_Access; Size : Natural) is
   begin
      --  Reallocate shared object when necessary.

      if not Can_Be_Reused (Self)
         --  Object can't be mutated because someone else use it. Allocate
         --  new shared object and copy data.
        or else Self.Last < Size
         --  There are no enought space to store new attribute. Reallocate new
         --  object and copy data.
      then
         declare
            Aux : constant Shared_Attributes_Access
              := new Shared_Attributes ((Size + 8) / 8 * 8);

         begin
            Aux.Values (1 .. Self.Length) := Self.Values (1 .. Self.Length);
            Aux.Length := Self.Length;

            for J in 1 .. Aux.Length loop
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Namespace_URI);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Local_Name);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Qualified_Name);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Value);
               Matreshka.Internals.Strings.Reference
                (Aux.Values (J).Value_Type);
            end loop;

            Dereference (Self);
            Self := Aux;
         end;
      end if;
   end Detach;

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
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Qualified_Name,
              League.Strings.Internals.Internal (Qualified_Name))
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
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Namespace_URI,
              League.Strings.Internals.Internal (Namespace_URI))
           and String_Handler.Is_Equal
                (Self.Data.Values (J).Local_Name,
                 League.Strings.Internals.Internal (Local_Name))
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
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return Self.Data.Values (Index).Is_Declared;
   end Is_Declared;

   -----------------
   -- Is_Declared --
   -----------------

   function Is_Declared
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return Boolean is
   begin
      for J in 1 .. Self.Data.Length loop
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Qualified_Name,
              League.Strings.Internals.Internal (Qualified_Name))
         then
            return Self.Data.Values (J).Is_Declared;
         end if;
      end loop;

      return False;
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
      for J in 1 .. Self.Data.Length loop
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Namespace_URI,
              League.Strings.Internals.Internal (Namespace_URI))
           and String_Handler.Is_Equal
                (Self.Data.Values (J).Local_Name,
                 League.Strings.Internals.Internal (Local_Name))
         then
            return Self.Data.Values (J).Is_Declared;
         end if;
      end loop;

      return False;
   end Is_Declared;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : SAX_Attributes'Class) return Boolean is
   begin
      return Self.Data.Length = 0;
   end Is_Empty;

   ------------------
   -- Is_Specified --
   ------------------

   function Is_Specified
    (Self  : SAX_Attributes'Class;
     Index : Positive) return Boolean is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return Self.Data.Values (Index).Is_Specified;
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
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Qualified_Name,
              League.Strings.Internals.Internal (Qualified_Name))
         then
            return Self.Data.Values (J).Is_Specified;
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
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Namespace_URI,
              League.Strings.Internals.Internal (Namespace_URI))
           and String_Handler.Is_Equal
                (Self.Data.Values (J).Local_Name,
                 League.Strings.Internals.Internal (Local_Name))
         then
            return Self.Data.Values (J).Is_Specified;
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
    (Self  : SAX_Attributes'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return
        League.Strings.Internals.Create (Self.Data.Values (Index).Local_Name);
   end Local_Name;

   -------------------
   -- Namespace_URI --
   -------------------

   function Namespace_URI
    (Self  : SAX_Attributes'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return
        League.Strings.Internals.Create
         (Self.Data.Values (Index).Namespace_URI);
   end Namespace_URI;

   --------------------
   -- Qualified_Name --
   --------------------

   function Qualified_Name
    (Self  : SAX_Attributes'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return
         League.Strings.Internals.Create
          (Self.Data.Values (Index).Qualified_Name);
   end Qualified_Name;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Shared_Attributes_Access) is
   begin
      if Self /= Shared_Empty'Access then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

   ---------------
   -- Set_Value --
   ---------------

   procedure Set_Value
    (Self           : in out SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String;
     Value          : League.Strings.Universal_String)
   is
      use type Matreshka.Internals.Strings.Shared_String_Access;

      Shared_Value : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (Value);
      Index        : constant Natural := Self.Index (Qualified_Name);
      CDATA_Name   : constant Universal_String
        := To_Universal_String ("CDATA");

   begin
      if Index = 0 then
         Detach (Self.Data, Self.Data.Length + 1);

         Self.Data.Length := Self.Data.Length + 1;
         Self.Data.Values (Self.Data.Length) :=
          (Namespace_URI  => Matreshka.Internals.Strings.Shared_Empty'Access,
           Local_Name     => Matreshka.Internals.Strings.Shared_Empty'Access,
           Qualified_Name =>
             League.Strings.Internals.Internal (Qualified_Name),
           Value          => League.Strings.Internals.Internal (Value),
           Value_Type     => League.Strings.Internals.Internal (CDATA_Name),
           Is_Declared    => False,
           Is_Specified   => True);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Qualified_Name);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Value);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Value_Type);

      else
         Detach (Self.Data, Self.Data.Length);

         if Shared_Value /= Self.Data.Values (Index).Value then
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (Index).Value);
            Matreshka.Internals.Strings.Reference (Shared_Value);
            Self.Data.Values (Index).Value := Shared_Value;
         end if;
      end if;
   end Set_Value;

   ---------------
   -- Set_Value --
   ---------------

   procedure Set_Value
    (Self          : in out SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
   is
      use type Matreshka.Internals.Strings.Shared_String_Access;

      Shared_Value : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (Value);
      Index        : constant Natural
        := Self.Index (Namespace_URI, Local_Name);
      CDATA_Name   : constant Universal_String
        := To_Universal_String ("CDATA");

   begin
      if Index = 0 then
         Detach (Self.Data, Self.Data.Length + 1);

         Self.Data.Length := Self.Data.Length + 1;
         Self.Data.Values (Self.Data.Length) :=
          (Namespace_URI  => League.Strings.Internals.Internal (Namespace_URI),
           Local_Name     => League.Strings.Internals.Internal (Local_Name),
           Qualified_Name => Matreshka.Internals.Strings.Shared_Empty'Access,
           Value          => League.Strings.Internals.Internal (Value),
           Value_Type     => League.Strings.Internals.Internal (CDATA_Name),
           Is_Declared    => False,
           Is_Specified   => True);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Namespace_URI);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Local_Name);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Value);
         Matreshka.Internals.Strings.Reference
          (Self.Data.Values (Self.Data.Length).Value_Type);

      else
         Detach (Self.Data, Self.Data.Length);

         if Shared_Value /= Self.Data.Values (Index).Value then
            Matreshka.Internals.Strings.Dereference
             (Self.Data.Values (Index).Value);
            Matreshka.Internals.Strings.Reference (Shared_Value);
            Self.Data.Values (Index).Value := Shared_Value;
         end if;
      end if;
   end Set_Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self  : SAX_Attributes'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return League.Strings.Internals.Create (Self.Data.Values (Index).Value);
   end Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in 1 .. Self.Data.Length loop
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Qualified_Name,
              League.Strings.Internals.Internal (Qualified_Name))
         then
            return
              League.Strings.Internals.Create (Self.Data.Values (J).Value);
         end if;
      end loop;

      return Empty_Universal_String;
   end Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in 1 .. Self.Data.Length loop
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Namespace_URI,
              League.Strings.Internals.Internal (Namespace_URI))
           and String_Handler.Is_Equal
                (Self.Data.Values (J).Local_Name,
                 League.Strings.Internals.Internal (Local_Name))
         then
            return
              League.Strings.Internals.Create (Self.Data.Values (J).Value);
         end if;
      end loop;

      return Empty_Universal_String;
   end Value;

   ----------------
   -- Value_Type --
   ----------------

   function Value_Type
    (Self  : SAX_Attributes'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error;
      end if;

      return
        League.Strings.Internals.Create (Self.Data.Values (Index).Value_Type);
   end Value_Type;

   ----------------
   -- Value_Type --
   ----------------

   function Value_Type
    (Self           : SAX_Attributes'Class;
     Qualified_Name : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in 1 .. Self.Data.Length loop
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Qualified_Name,
              League.Strings.Internals.Internal (Qualified_Name))
         then
            return
              League.Strings.Internals.Create
               (Self.Data.Values (J).Value_Type);
         end if;
      end loop;

      return Empty_Universal_String;
   end Value_Type;

   ----------------
   -- Value_Type --
   ----------------

   function Value_Type
    (Self          : SAX_Attributes'Class;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return League.Strings.Universal_String is
   begin
      for J in 1 .. Self.Data.Length loop
         if String_Handler.Is_Equal
             (Self.Data.Values (J).Namespace_URI,
              League.Strings.Internals.Internal (Namespace_URI))
           and String_Handler.Is_Equal
                (Self.Data.Values (J).Local_Name,
                 League.Strings.Internals.Internal (Local_Name))
         then
            return
              League.Strings.Internals.Create
               (Self.Data.Values (J).Value_Type);
         end if;
      end loop;

      return Empty_Universal_String;
   end Value_Type;

end XML.SAX.Attributes;
