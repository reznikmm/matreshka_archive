------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
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

with AMF.Internals.Element_Collections;
with AMF.Internals.Elements;
with AMF.Internals.Helpers;

package body AMF.Internals.Collections.Elements.Proxies is

   ---------
   -- Add --
   ---------

   overriding procedure Add
    (Self : not null access Shared_Element_Collection_Proxy;
     Item : not null AMF.Elements.Element_Access) is
   begin
      AMF.Internals.Element_Collections.Add
       (Self.Collection,
        AMF.Internals.Elements.Element_Base'Class (Item.all).Element);
   end Add;

   -----------
   -- Clear --
   -----------

   overriding procedure Clear
    (Self : not null access Shared_Element_Collection_Proxy) is
   begin
      raise Program_Error with "Not yet implemented";
   end Clear;

   -------------
   -- Element --
   -------------

   overriding function Element
    (Self  : not null access constant Shared_Element_Collection_Proxy;
     Index : Positive) return not null AMF.Elements.Element_Access is
   begin
      return
        AMF.Internals.Helpers.To_Element
         (AMF.Internals.Element_Collections.Element (Self.Collection, Index));
   end Element;

   ------------
   -- Length --
   ------------

   overriding function Length
    (Self : not null access constant Shared_Element_Collection_Proxy)
       return Natural is
   begin
      return AMF.Internals.Element_Collections.Length (Self.Collection);
   end Length;

   ---------------
   -- Reference --
   ---------------

   overriding procedure Reference
    (Self : not null access Shared_Element_Collection_Proxy) is
   begin
      Matreshka.Atomics.Counters.Increment (Self.Counter);
   end Reference;

   -----------------
   -- Unreference --
   -----------------

   overriding procedure Unreference
    (Self : not null access Shared_Element_Collection_Proxy)
   is
      procedure Free is
        new Ada.Unchecked_Deallocation
             (Shared_Element_Collection_Proxy'Class,
              Shared_Element_Collection_Proxy_Access);

      Aux : Shared_Element_Collection_Proxy_Access
        := Self.all'Unchecked_Access;

   begin
      if Matreshka.Atomics.Counters.Decrement (Self.Counter) then
         Free (Aux);
      end if;
   end Unreference;

end AMF.Internals.Collections.Elements.Proxies;
