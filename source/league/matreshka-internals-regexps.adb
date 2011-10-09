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

with Matreshka.Atomics.Generic_Test_And_Set;
with Matreshka.Internals.Strings.Operations;

package body Matreshka.Internals.Regexps is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Utf16;

   function Test_And_Set is
     new Matreshka.Atomics.Generic_Test_And_Set
          (Shared_String, Shared_String_Access);

   -------------
   -- Capture --
   -------------

   function Capture
    (Item   : not null Shared_Match_Access;
     Number : Natural)
       return not null Matreshka.Internals.Strings.Shared_String_Access
   is
      Aux : Shared_String_Access := Item.Captures (Number);

   begin
      if Aux = null then
         Aux :=
           Operations.Slice
            (Item.Source,
             Item.Slices (Number).First_Position,
             Item.Slices (Number).Next_Position
               - Item.Slices (Number).First_Position,
             Item.Slices (Number).Next_Index
               - Item.Slices (Number).First_Index);

         if not Test_And_Set (Item.Captures (Number)'Access, null, Aux) then
            --  Operation can fail when capture is computed by another thread.
            --  In this case computed capture is dereferenced and another
            --  value is used.

            Dereference (Aux);
            Aux := Item.Captures (Number);
         end if;
      end if;

      Reference (Aux);

      return Aux;
   end Capture;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_Match_Access) is
      pragma Assert (Item /= null);

      procedure Free is
        new Ada.Unchecked_Deallocation (Shared_Match, Shared_Match_Access);

   begin
      if Item /= Empty_Shared_Match'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter'Access)
      then
         if Item.Source /= null then
            Dereference (Item.Source);
         end if;

         for J in Item.Captures'Range loop
            if Item.Captures (J) /= null then
               Dereference (Item.Captures (J));
            end if;
         end loop;

         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_Pattern_Access) is
      pragma Assert (Item /= null);

      procedure Free is
        new Ada.Unchecked_Deallocation (Shared_Pattern, Shared_Pattern_Access);

   begin
      if Item /= Empty_Shared_Pattern'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter'Access)
      then
         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : not null Shared_Match_Access) is
   begin
      if Item /= Empty_Shared_Match'Access then
         Matreshka.Atomics.Counters.Increment (Item.Counter'Access);
      end if;
   end Reference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : not null Shared_Pattern_Access) is
   begin
      if Item /= Empty_Shared_Pattern'Access then
         Matreshka.Atomics.Counters.Increment (Item.Counter'Access);
      end if;
   end Reference;

end Matreshka.Internals.Regexps;
