------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                            Testsuite Component                           --
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
with CMOF.Internals.Tables;

package body CMOF.Internals.Extents is

   -------------------
   -- Create_Extent --
   -------------------

   function Create_Extent return CMOF_Extent is
   begin
      Tables.Extents.Increment_Last;
      Tables.Extents.Table (Tables.Extents.Last) := (0, 0);

      return Tables.Extents.Last;
   end Create_Extent;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : CMOF_Extent;
     Index : Positive) return CMOF_Element
   is
      Current : CMOF_Element := Tables.Extents.Table (Self).Head;

   begin
      for J in 2 .. Index loop
         exit when Current = 0;

         Current := Tables.Elements.Table (Current).Next;
      end loop;

      if Current = 0 then
         raise Constraint_Error;

      else
         return Current;
      end if;
   end Element;

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append
    (Extent  : CMOF_Extent;
     Element : CMOF_Element)
   is
      Head        : CMOF_Element := Tables.Extents.Table (Extent).Head;
      Tail        : CMOF_Element := Tables.Extents.Table (Extent).Tail;
      Previous    : CMOF_Element := Tables.Extents.Table (Extent).Tail;
      Next        : CMOF_Element := 0;

   begin
      if Head = 0 then
         --  List is empty.

         Head := Element;
         Tail := Element;

         Tables.Extents.Table (Extent).Head := Head;
         Tables.Extents.Table (Extent).Tail := Tail;

      else
         Tail := Element;

         Tables.Extents.Table (Extent).Tail := Tail;
         Tables.Elements.Table (Previous).Next := Element;
      end if;

      Tables.Elements.Table (Element).Previous := Previous;
      Tables.Elements.Table (Element).Next     := Next;
   end Internal_Append;

   --------------------------------------
   -- Initialize_CMOF_Metamodel_Extent --
   --------------------------------------

   procedure Initialize_CMOF_Metamodel_Extent is
   begin
      Tables.Extents.Set_Last (CMOF_Metamodel_Extent);
      Tables.Extents.Table (CMOF_Metamodel_Extent) := (0, 0);
   end Initialize_CMOF_Metamodel_Extent;

   ------------
   -- Length --
   ------------

   function Length (Self : CMOF_Extent) return Natural is
      Current : CMOF_Element := Tables.Extents.Table (Self).Head;
      Aux     : Natural := 0;

   begin
      while Current /= 0 loop
         Aux     := Aux + 1;
         Current := Tables.Elements.Table (Current).Next;
      end loop;

      return Aux;
   end Length;

end CMOF.Internals.Extents;
