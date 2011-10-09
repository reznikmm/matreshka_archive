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

package body Matreshka.Internals.Stream_Element_Vectors is

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Shared_Stream_Element_Vector, Shared_Stream_Element_Vector_Access);

   --------------
   -- Allocate --
   --------------

   function Allocate
    (Size : Ada.Streams.Stream_Element_Offset)
       return not null Shared_Stream_Element_Vector_Access is
   begin
      if Size = 0 then
         return Empty_Shared_Stream_Element_Vector'Access;

      else
         return new Shared_Stream_Element_Vector (Size);
      end if;
   end Allocate;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_Stream_Element_Vector_Access) is
   begin
      if Item /= Empty_Shared_Stream_Element_Vector'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter)
      then
         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : Shared_Stream_Element_Vector_Access) is
   begin
      if Item /= Empty_Shared_Stream_Element_Vector'Access then
         Matreshka.Atomics.Counters.Increment (Item.Counter);
      end if;
   end Reference;

end Matreshka.Internals.Stream_Element_Vectors;
