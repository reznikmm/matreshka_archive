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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Unchecked_Conversion;

package body AMF.Internals.Generic_Element_Table is

   use type Interfaces.Unsigned_32;

   function S (Item : AMF_Element) return Segment_Index;
   pragma Inline (S);
   function E (Item : AMF_Element) return Element_Index;
   pragma Inline (E);
   function M (Item : AMF_Element) return AMF_Metamodel;
   function U  is
     new Ada.Unchecked_Conversion (AMF_Element, Interfaces.Unsigned_32);

   -------
   -- S --
   -------

   function S (Item : AMF_Element) return Segment_Index is
   begin
      return Segment_Index ((U (Item) / 2 ** 12) and 16#00000FFF#);
   end S;

   -------
   -- E --
   -------

   function E (Item : AMF_Element) return Element_Index is
   begin
      return Element_Index (U (Item) and 16#00000FFF#);
   end E;

   -------
   -- M --
   -------

   function M (Item : AMF_Element) return AMF_Metamodel is
   begin
      return AMF_Metamodel (U (Item) / 2 ** 24);
   end M;

   --------------
   -- Allocate --
   --------------

   function Allocate return AMF_Element is
   begin
      Increment_Last;

      return Last;
   end Allocate;

   --------------------
   -- Increment_Last --
   --------------------

   procedure Increment_Last is
   begin
      Last_Element := Last_Element + 1;

      if E (Last_Element) = 0 then
         Segments (S (Last_Element)) := new Segment_Array;
      end if;
   end Increment_Last;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Metamodel : AMF_Metamodel) is
   begin
      Module_Component := Interfaces.Unsigned_32 (Metamodel) * 2 ** 24;
      Last_Element := 0;
      Segments (0) := new Segment_Array;
   end Initialize;

   ----------
   -- Last --
   ----------

   function Last return AMF_Element is
   begin
      return AMF_Element (U (Last_Element) or Module_Component);
   end Last;

   -----------
   -- Table --
   -----------

   function Table (Element : AMF_Element) return Element_Access is
   begin
      return Segments (S (Element)) (E (Element))'Access;
   end Table;

end AMF.Internals.Generic_Element_Table;
