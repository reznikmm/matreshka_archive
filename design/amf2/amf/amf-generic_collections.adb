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
with AMF.Elements;

package body AMF.Generic_Collections is

   use type AMF.Internals.Collections.Elements.Shared_Element_Collection_Access;

   ---------
   -- Add --
   ---------

--   procedure Add (Self : Collection'Class; Item : not null Element_Access) is
   procedure Add
    (Self : Collection'Class; Item : not null access Abstract_Element'Class) is
   begin
      Self.Collection.Add (AMF.Elements.Element_Access (Item));
   end Add;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Collection'Class;
     Index : Positive) return not null Element_Access is
   begin
      return
        Element_Access
         (AMF.Elements.Element_Access'(Self.Collection.Element (Index)));
   end Element;

   --------------
   -- Internal --
   --------------

   function Internal
    (Self : Collection'Class)
       return AMF.Internals.Collections.Elements.Shared_Element_Collection_Access is
   begin
      return Self.Collection;
   end Internal;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : Collection'Class) return Boolean is
   begin
      return Self.Collection = null or else Self.Collection.Length = 0;
   end Is_Empty;

   ------------
   -- Length --
   ------------

   function Length (Self : Collection'Class) return Natural is
   begin
      if Self.Collection = null then
         return 0;

      else
         return Self.Collection.Length;
      end if;
   end Length;

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Item : not null AMF.Internals.Collections.Elements.Shared_Element_Collection_Access)
       return Bag is
   begin
      return Bag'(Ada.Finalization.Controlled with Collection => Item);
   end Wrap;

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Item : not null AMF.Internals.Collections.Elements.Shared_Element_Collection_Access)
       return Ordered_Set is
   begin
      return Ordered_Set'(Ada.Finalization.Controlled with Collection => Item);
   end Wrap;

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Item : not null AMF.Internals.Collections.Elements.Shared_Element_Collection_Access)
       return Sequence is
   begin
      return Sequence'(Ada.Finalization.Controlled with Collection => Item);
   end Wrap;

   ----------
   -- Wrap --
   ----------

   function Wrap
    (Item : not null AMF.Internals.Collections.Elements.Shared_Element_Collection_Access)
       return Set is
   begin
      return Set'(Ada.Finalization.Controlled with Collection => Item);
   end Wrap;

end AMF.Generic_Collections;
