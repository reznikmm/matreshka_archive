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

package body League.Stream_Element_Vectors is

   use type Ada.Streams.Stream_Element_Array;
   use type Ada.Streams.Stream_Element_Offset;
   use Matreshka.Internals.Stream_Element_Vectors;

   ---------
   -- "=" --
   ---------

   not overriding function "="
    (Left  : Stream_Element_Vector;
     Right : Ada.Streams.Stream_Element_Array) return Boolean is
   begin
      if Left.Data.Last = Right'Length then
         return
           Left.Data.Value (Left.Data.Value'First .. Left.Data.Last) = Right;

      else
         return False;
      end if;
   end "=";

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Stream_Element_Vector) is
   begin
      Reference (Self.Data);
   end Adjust;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Stream_Element_Vector) is
   begin
      Dereference (Self.Data);
      Self.Data := MISEV.Empty_Shared_Stream_Element_Vector'Access;
   end Clear;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Stream_Element_Vector) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   ------------
   -- Length --
   ------------

   function Length
    (Self : Stream_Element_Vector) return Ada.Streams.Stream_Element_Offset is
   begin
      return Self.Data.Last;
   end Length;

   -----------------------------
   -- To_Stream_Element_Array --
   -----------------------------

   function To_Stream_Element_Array
    (Item : Stream_Element_Vector) return Ada.Streams.Stream_Element_Array is
   begin
      return Item.Data.Value (Item.Data.Value'First .. Item.Data.Last);
   end To_Stream_Element_Array;

   ------------------------------
   -- To_Stream_Element_Vector --
   ------------------------------

   function To_Stream_Element_Vector
    (Item : Ada.Streams.Stream_Element_Array) return Stream_Element_Vector
   is
      Data : Shared_Stream_Element_Vector_Access := Allocate (Item'Length);

   begin
      Data.Last := Item'Length;
      Data.Value (Data.Value'First .. Data.Last) := Item;

      return (Ada.Finalization.Controlled with Data => Data);
   end To_Stream_Element_Vector;

end League.Stream_Element_Vectors;
