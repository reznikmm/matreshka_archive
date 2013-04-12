------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.JSON_Types is

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_JSON_Array_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Shared_JSON_Array, Shared_JSON_Array_Access);

   begin
      if Self /= Empty_Shared_JSON_Array'Access
        and then Matreshka.Atomics.Counters.Decrement (Self.Counter)
      then
         for Value of Self.Values loop
            Dereference (Value);
         end loop;

         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_JSON_Object_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Shared_JSON_Object, Shared_JSON_Object_Access);

   begin
      if Self /= Empty_Shared_JSON_Object'Access
        and then Matreshka.Atomics.Counters.Decrement (Self.Counter)
      then
         for Value of Self.Values loop
            Dereference (Value);
         end loop;

         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_JSON_Value_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Shared_JSON_Value, Shared_JSON_Value_Access);

   begin
      if Self /= Empty_Shared_JSON_Value'Access
        and then Self /= Null_Shared_JSON_Value'Access
        and then Matreshka.Atomics.Counters.Decrement (Self.Counter)
      then
         case Self.Value.Kind is
            when Empty_Value =>
               null;

            when Boolean_Value =>
               null;

            when Integer_Value =>
               null;

            when Float_Value =>
               null;

            when String_Value =>
               Matreshka.Internals.Strings.Dereference (Self.Value.String_Value);

            when Array_Value =>
               Dereference (Self.Value.Array_Value);

            when Object_Value =>
               Dereference (Self.Value.Object_Value);

            when Null_Value =>
               null;
         end case;

         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   ------------
   -- Mutate --
   ------------

   procedure Mutate (Self : in out not null Shared_JSON_Array_Access) is
      Source : not null Shared_JSON_Array_Access := Self;

   begin
      if Self = Empty_Shared_JSON_Array'Access
        or else not Matreshka.Atomics.Counters.Is_One (Self.Counter)
      then
         Self :=
           new Shared_JSON_Array'(Counter => <>, Values => Source.Values);

         --  Update reference counters for values.

         for Value of Self.Values loop
            Reference (Value);
         end loop;

         --  Release source shared object.

         Dereference (Source);
      end if;
   end Mutate;

   ------------
   -- Mutate --
   ------------

   procedure Mutate (Self : in out not null Shared_JSON_Object_Access) is
      Source : not null Shared_JSON_Object_Access := Self;

   begin
      if Self = Empty_Shared_JSON_Object'Access
        or else not Matreshka.Atomics.Counters.Is_One (Self.Counter)
      then
         Self :=
           new Shared_JSON_Object'(Counter => <>, Values => Source.Values);

         --  Update reference counters for values.

         for Value of Self.Values loop
            Reference (Value);
         end loop;

         --  Release source shared object.

         Dereference (Source);
      end if;
   end Mutate;

   ------------
   -- Mutate --
   ------------

   procedure Mutate (Self : in out not null Shared_JSON_Value_Access) is
   begin
      --  Mutate object: new shared object is allocated when reference counter
      --  is greater than one, reference counter of original object is
      --  decremented and original value is copied. Otherwise, shared object is
      --  unchanged.

      null;
   end Mutate;

   ------------
   -- Mutate --
   ------------

   procedure Mutate
    (Self : in out not null Shared_JSON_Value_Access;
     Kind : Value_Kinds) is
   begin
      --  Mutate object: allocate new shared then reference counter is greater
      --  than one, and decrement reference counter of original object. Value
      --  of the object is reset to default value of specifid kind.

      null;
   end Mutate;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Shared_JSON_Array_Access) is
   begin
      if Self /= Empty_Shared_JSON_Array'Access then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Shared_JSON_Object_Access) is
   begin
      if Self /= Empty_Shared_JSON_Object'Access then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Shared_JSON_Value_Access) is
   begin
      if Self /= Empty_Shared_JSON_Value'Access
        and Self /= Null_Shared_JSON_Value'Access
      then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

end Matreshka.JSON_Types;
