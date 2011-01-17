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
with AMF.Factories.Registry;
with CMOF.Internals.Extents;

package body CMOF.Extents is

   -------------------
   -- Create_Extent --
   -------------------

   function Create_Extent return CMOF_Extent
     renames CMOF.Internals.Extents.Create_Extent;

   --------------
   -- Elements --
   --------------

   function Elements (Extent : CMOF_Extent) return CMOF_Element_Sets.Set is
      use CMOF.Internals.Extents;

      Result : CMOF_Element_Sets.Set;

   begin
      for J in 1 .. Length (Extent) loop
          Result.Insert (Element (Extent, J));
      end loop;

      return Result;
   end Elements;

   -------------
   -- Factory --
   -------------

   function Factory
    (Self : CMOF_Extent) return AMF.Factories.AMF_Factory_Access is
   begin
      return
        AMF.Factories.Registry.Resolve
         (League.Strings.To_Universal_String
           ("http://schema.omg.org/spec/MOF/2.0/cmof.xml"));
   end Factory;

   ----------
   -- Hash --
   ----------

   function Hash (Item : CMOF_Element) return Ada.Containers.Hash_Type is
   begin
      return Ada.Containers.Hash_Type (Item);
   end Hash;

   ------------
   -- Object --
   ------------

   function Object
    (Self       : CMOF_Extent;
     Identifier : League.Strings.Universal_String) return CMOF_Element
       renames CMOF.Internals.Extents.Object;

end CMOF.Extents;
