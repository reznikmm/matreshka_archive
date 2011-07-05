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
with AMF.Internals.Tables.AMF_Tables;

package body AMF.Internals.Element_Collections is

   use AMF.Internals.Tables.AMF_Tables;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : AMF_Collection_Of_Element;
     Index : Positive) return AMF_Element
   is
      Current : Collection_Element_Identifier := Collections.Table (Self).Head;

   begin
      for J in 2 .. Index loop
         exit when Current = 0;

         Current := Collection_Elements.Table (Current).Next;
      end loop;

      if Current = 0 then
         raise Constraint_Error;

      else
         return Collection_Elements.Table (Current).Element;
      end if;
   end Element;

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append
    (Collection : AMF_Collection_Of_Element;
     Element    : AMF_Element;
     Link       : AMF_Link)
   is
      Head        : Collection_Element_Identifier
        := Collections.Table (Collection).Head;
      Tail        : Collection_Element_Identifier
        := Collections.Table (Collection).Tail;
      Previous    : Collection_Element_Identifier
        := Collections.Table (Collection).Tail;
      Next        : Collection_Element_Identifier := 0;
      New_Element : Collection_Element_Identifier;

   begin
      Collection_Elements.Increment_Last;
      New_Element := Collection_Elements.Last;

      if Head = 0 then
         --  List is empty.

         Head := New_Element;
         Tail := New_Element;

         Collections.Table (Collection).Head := Head;
         Collections.Table (Collection).Tail := Tail;

      else
         Tail := New_Element;

         Collections.Table (Collection).Tail := Tail;
         Collection_Elements.Table (Previous).Next := New_Element;
      end if;

      Collection_Elements.Table (New_Element) :=
       (Element, Link, Previous, Next);
   end Internal_Append;

   ------------
   -- Length --
   ------------

   function Length (Self : AMF_Collection_Of_Element) return Natural is
      Current : Collection_Element_Identifier := Collections.Table (Self).Head;
      Aux     : Natural := 0;

   begin
      while Current /= 0 loop
         Aux     := Aux + 1;
         Current := Collection_Elements.Table (Current).Next;
      end loop;

      return Aux;
   end Length;

end AMF.Internals.Element_Collections;
