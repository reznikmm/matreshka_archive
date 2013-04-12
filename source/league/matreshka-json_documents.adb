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

package body Matreshka.JSON_Documents is

   use type Matreshka.JSON_Types.Shared_JSON_Array_Access;
   use type Matreshka.JSON_Types.Shared_JSON_Object_Access;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_JSON_Document_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Shared_JSON_Document, Shared_JSON_Document_Access);

   begin
      if Self /= Empty_Shared_JSON_Document'Access
        and then Matreshka.Atomics.Counters.Decrement (Self.Counter)
      then
         if Self.Array_Value /= null then
            Matreshka.JSON_Types.Dereference (Self.Array_Value);
         end if;

         if Self.Object_Value /= null then
            Matreshka.JSON_Types.Dereference (Self.Object_Value);
         end if;

         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   ------------
   -- Mutate --
   ------------

   procedure Mutate (Self : in out not null Shared_JSON_Document_Access) is
      Source : not null Shared_JSON_Document_Access := Self;

   begin
      if Self = Empty_Shared_JSON_Document'Access
        or else not Matreshka.Atomics.Counters.Is_One (Self.Counter)
      then
         Self :=
           new Shared_JSON_Document'
                (Counter      => <>,
                 Array_Value  => Source.Array_Value,
                 Object_Value => Source.Object_Value);

         --  Update reference counters.

         if Self.Array_Value /= null then
            Matreshka.JSON_Types.Reference (Self.Array_Value);
         end if;

         if Self.Object_Value /= null then
            Matreshka.JSON_Types.Reference (Self.Object_Value);
         end if;

         --  Release source shared object.

         Dereference (Source);
      end if;
   end Mutate;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : not null Shared_JSON_Document_Access) is
   begin
      if Self /= Empty_Shared_JSON_Document'Access then
         Matreshka.Atomics.Counters.Increment (Self.Counter);
      end if;
   end Reference;

end Matreshka.JSON_Documents;
