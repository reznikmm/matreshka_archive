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
with AMF.Internals.Helpers;
with CMOF.Collections;
with CMOF.Internals.Extents;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Subclassing;
with CMOF.Named_Elements;
with CMOF.Packages;

package body CMOF.XMI_Helper is

   --------------------
   -- Is_Association --
   --------------------

   function Is_Association (Element : CMOF_Element) return Boolean
     renames CMOF.Internals.Subclassing.Is_Association;

   ------------------
   -- Is_Data_Type --
   ------------------

   function Is_Data_Type (Element : CMOF_Element) return Boolean
     renames CMOF.Internals.Subclassing.Is_Data_Type;

   --------------
   -- Is_Class --
   --------------

   function Is_Class (Element : CMOF_Element) return Boolean
     renames CMOF.Internals.Subclassing.Is_Class;

   ----------------
   -- Is_Package --
   ----------------

   function Is_Package (Element : CMOF_Element) return Boolean
     renames CMOF.Internals.Subclassing.Is_Package;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Name : League.Strings.Universal_String) return CMOF_Element
   is
      use type League.Strings.Universal_String;

      use CMOF.Collections;
      use CMOF.Named_Elements;
      use CMOF.Packages;

      E : constant Set_Of_CMOF_Packageable_Element
        := Get_Packaged_Element (CMOF.Internals.Metamodel.MM_CMOF);

   begin
      for J in 1 .. Length (E) loop
         if Get_Name (Element (E, J)) = Name then
            return Element (E, J);
         end if;
      end loop;

      raise Program_Error with "Unknown CMOF class";
   end Resolve;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Name : League.Strings.Universal_String)
       return AMF.Elements.Element_Access is
   begin
      return AMF.Internals.Helpers.To_Element (Resolve (Name));
   end Resolve;

   ------------
   -- Set_Id --
   ------------

   procedure Set_Id
    (Element : not null access AMF.Elements.Abstract_Element'Class;
     Id      : League.Strings.Universal_String) is
   begin
      CMOF.Internals.Extents.Set_Id
       (AMF.Internals.Helpers.To_Element (Element), Id);
   end Set_Id;

end CMOF.XMI_Helper;
