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
with Ada.Wide_Wide_Text_IO;

with CMOF.Collections;
with CMOF.Internals.Extents;
with CMOF.Internals.Factories;
with CMOF.Internals.Metamodel;
with CMOF.Named_Elements;
with CMOF.Package_Merges;
with CMOF.Packages;
with CMOF.Reflection;
with League.Strings;

package body CMOF.Utilities.Merge is

   use Ada.Wide_Wide_Text_IO;
   use CMOF.Collections;
   use CMOF.Named_Elements;
   use CMOF.Package_Merges;
   use CMOF.Packages;
   use CMOF.Reflection;

   use type League.Strings.Universal_String;

   function Do_Package_Merge
    (Merged    : CMOF.CMOF_Package;
     Receiving : CMOF.CMOF_Package) return CMOF.CMOF_Package;

   procedure Copy_Package
    (Resulting : CMOF.CMOF_Package;
     Merged    : CMOF.CMOF_Package);

   procedure Merge_Package
    (Resulting : CMOF.CMOF_Package;
     Merged    : CMOF.CMOF_Package);

   function Existing_Element
    (Resulting_Package : CMOF.CMOF_Package;
     Merged_Element    : CMOF.CMOF_Packageable_Element)
       return CMOF.CMOF_Packageable_Element;

   Factory : aliased CMOF.Internals.Factories.CMOF_Factory;
   Extent  : CMOF_Extent;

   ------------------
   -- Copy_Package --
   ------------------

   procedure Copy_Package
    (Resulting : CMOF.CMOF_Package;
     Merged    : CMOF.CMOF_Package) is
   begin
      null;
   end Copy_Package;

   ----------------------
   -- Do_Package_Merge --
   ----------------------

   function Do_Package_Merge
    (Merged    : CMOF.CMOF_Package;
     Receiving : CMOF.CMOF_Package) return CMOF.CMOF_Package
   is
      Resulting : CMOF.CMOF_Package;
--        := Factory.Create (Extent, CMOF.Internals.Metamodel.MC_CMOF_Package);

   begin
      Put_Line
       ("Merging "
          & Get_Name (Merged).To_Wide_Wide_String
          & " -> "
          & Get_Name (Receiving).To_Wide_Wide_String);

--      Set_Name (Resulting, Get_Name (Receiving));

      return Resulting;
   end Do_Package_Merge;

   ----------------------
   -- Existing_Element --
   ----------------------

   function Existing_Element
    (Resulting_Package : CMOF.CMOF_Package;
     Merged_Element    : CMOF.CMOF_Packageable_Element)
       return CMOF.CMOF_Packageable_Element
   is
      Packaged_Element  : constant Set_Of_CMOF_Element
        := Get_Packaged_Element (Resulting_Package);
      Merged_Name       : constant League.Strings.Universal_String
        := Get_Name (Merged_Element);
      Merged_Meta_Class : constant CMOF_Class
        := Get_Meta_Class (Merged_Element);
      Packaged          : CMOF_Packageable_Element;

   begin
      for J in 1 .. Length (Packaged_Element) loop
         Packaged := Element (Packaged_Element, J);

         if Get_Name (Packaged) = Merged_Name
           and then Get_Meta_Class (Packaged) = Merged_Meta_Class
         then
            return Packaged;
         end if;
      end loop;

      return Null_CMOF_Element;
   end Existing_Element;

   -------------------
   -- Merge_Package --
   -------------------

   procedure Merge_Package
    (Resulting : CMOF.CMOF_Package;
     Merged    : CMOF.CMOF_Package)
   is
--      Packaged_Element : constant CMOF.Ordered_Set_Of_CMOF_Packaged_Element
--        := Get_Packaged_Element (
   begin
      Put_Line
       ("Merging "
          & Get_Name (Merged).To_Wide_Wide_String
          & " into "
          & Get_Name (Resulting).To_Wide_Wide_String);

--      if Length (Get_Package_Merge (Merged)) /= 0 then
--         raise Program_Error with "Deep merge is not supported";
--      end if;

      declare
         Package_Merge : constant CMOF.Set_Of_CMOF_Package_Merge
           := Get_Package_Merge (Merged);

      begin
         for J in 1 .. Length (Package_Merge) loop
            Merge_Package (Resulting, Get_Merged_Package (Element (Package_Merge, J)));
         end loop;
      end;

      --  elementImport
      --  name
      --  nestingPackage
      --  ownedComment
      --  ownedRule
      --  packageImport
      --  packageMerge
      --  packagedElement

      declare
         Packaged_Element : constant CMOF.Set_Of_CMOF_Packageable_Element
           := Get_Packaged_Element (Merged);
         Packaged         : CMOF.CMOF_Packageable_Element;
         Existing         : CMOF.CMOF_Packageable_Element;

      begin
         for J in 1 .. Length (Packaged_Element) loop
            Packaged := Element (Packaged_Element, J);
            Existing := Existing_Element (Resulting, Packaged);

            if Existing = Null_CMOF_Element then
               Put_Line
                (Standard_Error,
                 "copy " & Get_Name (Packaged).To_Wide_Wide_String);

            else
               raise Program_Error;
               null;
            end if;
         end loop;
      end;

      --  uri
      --  visibility

      null;
   end Merge_Package;

   --------------------
   -- Merge_Packages --
   --------------------

   function Merge_Packages
    (Source : CMOF.CMOF_Package) return CMOF.CMOF_Package
   is
      Merges    : constant CMOF.Set_Of_CMOF_Package_Merge
        := Get_Package_Merge (Source);
      Resulting : CMOF.CMOF_Package;

   begin
      --  Create new extent to store resulting model.

      Extent    := CMOF.Internals.Extents.Create_Extent;

      --  Create resulting package and do minimal initialization to be able to
      --  merge it with receiving package.

--      Resulting := Factory.Create (Extent, CMOF.Internals.Metamodel.MC_CMOF_Package);
      Set_Name (Resulting, Get_Name (Source));
--      Set_URI (Resulting, Get_URI (Source));

      --  Merge receiving package into resulting package.

      Copy_Package (Resulting, Source);
--      Merge_Package (Resulting, Source);

      --  Merge all merged packages.

      for J in 1 .. Length (Merges) loop
         Merge_Package (Resulting, Get_Merged_Package (Element (Merges, J)));
      end loop;

      return Resulting;
   end Merge_Packages;

end CMOF.Utilities.Merge;
