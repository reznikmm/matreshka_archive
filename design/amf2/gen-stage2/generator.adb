------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Unchecked_Conversion;
with Interfaces;

with League.Strings;

with AMF.Internals.CMOF_Elements;
with CMOF.Named_Elements;

package body Generator is

   use CMOF;
   use CMOF.Named_Elements;
   use type AMF.Optional_String;

   ---------
   -- "<" --
   ---------

   function "<"
    (Left : CMOF_Named_Element; Right : CMOF_Named_Element) return Boolean
   is
      use type League.Strings.Universal_String;
      use type Interfaces.Integer_32;

      function To_Integer_32 is
        new Ada.Unchecked_Conversion (CMOF_Element, Interfaces.Integer_32);

   begin
      return
        Get_Name (Left) < Get_Name (Right)
          or (Get_Name (Left) = Get_Name (Right)
                and To_Integer_32 (Left) < To_Integer_32 (Right));
   end "<";

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Ada.Containers.Hash_Type is
   begin
      return
        Ada.Containers.Hash_Type
         (AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (Item.all).Id);
   end Hash;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Right : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Boolean is
   begin
      return Left.Get_Name < Right.Get_Name;
   end Less;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Right : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean is
   begin
      if Left.Get_Name /= Right.Get_Name then
         return Left.Get_Name < Right.Get_Name;

      else
         return
           AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class (Left.all).Id
             < AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class
                (Right.all).Id;
      end if;
   end Less;

   ----------
   -- Sort --
   ----------

   function Sort
    (Set : CMOF.Extents.CMOF_Element_Sets.Set)
       return CMOF_Named_Element_Ordered_Sets.Set
   is
      Result   : CMOF_Named_Element_Ordered_Sets.Set;
      Position : CMOF.Extents.CMOF_Element_Sets.Cursor := Set.First;

   begin
      while CMOF.Extents.CMOF_Element_Sets.Has_Element (Position) loop
         Result.Insert (CMOF.Extents.CMOF_Element_Sets.Element (Position));
         CMOF.Extents.CMOF_Element_Sets.Next (Position);
      end loop;

      return Result;
   end Sort;

end Generator;
