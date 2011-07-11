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
with AMF.Internals.Containers;
with AMF.Internals.Helpers;
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.AMF_Tables;
with AMF.Internals.Tables.CMOF_Attribute_Mappings;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Metamodel;
with CMOF.Internals.Reflection;
with CMOF.Internals.Subclassing;

package body CMOF.Internals.Extents is

   use AMF.Internals;
   use AMF.Internals.Tables;
   use AMF.Internals.Tables.CMOF_Attribute_Mappings;
   use AMF.Internals.Tables.CMOF_Attributes;
   use AMF.Internals.Element_Collections;
   use AMF.Internals.Tables.CMOF_Metamodel;
   use type AMF.Internals.Tables.AMF_Tables.Extent_Element_Identifier;

   ---------------
   -- Container --
   ---------------

   function Container (Self : CMOF_Element) return CMOF_Element is

      use CMOF.Internals.Subclassing;
      use type AMF.Internals.Tables.AMF_Tables.Collection_Element_Identifier;

      Meta_Class      : constant CMOF_Class
        := Reflection.Get_Meta_Class (Self);
      Meta_Extent     : constant AMF_Extent
        := CMOF_Element_Table.Table (Meta_Class).Extent;
      Current         : AMF_Tables.Extent_Element_Identifier
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Meta_Extent).Head;
      Current_Element : AMF_Element;
      Association     : CMOF_Association;
      Member_End      : Ordered_Set_Of_CMOF_Property;
      Opposite        : CMOF_Property;
      Collection      : AMF_Tables.Collection_Element_Identifier;
      Owner           : CMOF_Element;
      Link            : AMF.Internals.AMF_Link;

   begin
      --  All properties must be traversed to detect containment.

      while Current /= 0 loop
         Current_Element := AMF_Tables.Extent_Elements.Table (Current).Element;

         if Is_Property (Current_Element)
           and then Internal_Get_Type (Current_Element) in CMOF_Meta_Class
           and then Is_Subclass
                     (Meta_Class, Internal_Get_Type (Current_Element))
           and then Boolean (Internal_Get_Is_Composite (Current_Element))
         then
            --  Find opposite property, it is at the element's side of the
            --  association.

            Association := Internal_Get_Association (Current_Element);
            Member_End := Internal_Get_Member_End (Association);

            if Element (Member_End, 1) = Current_Element then
               Opposite := Element (Member_End, 2);

            else
               Opposite := Element (Member_End, 1);
            end if;

            --  Depending of multiplicity and ownedship of property, locate
            --  member or collection and check presence of link. Note: this
            --  must be reflective operation, but now it is hardcoded at
            --  CMOF level.

            if Opposite in Cmof_Non_Collection_Of_Element_Property'Range then
               if Member_Offset
                   (CMOF_Element_Table.Table (Self).Kind, Opposite) /= 0
               then
                  Owner :=
                    CMOF_Element_Table.Table (Self).Member
                     (Member_Offset
                       (CMOF_Element_Table.Table (Self).Kind,
                       Opposite)).Element;

                  if Owner /= Null_CMOF_Element then
                     return Owner;
                  end if;

               else
               Collection :=
                 AMF_Tables.Collections.Table
                  (CMOF_Element_Table.Table (Self).Member (0).Collection).Head;

               while Collection /= 0 loop
                  Link :=
                    AMF_Tables.Collection_Elements.Table (Collection).Link;

                  if AMF_Tables.Links.Table (Link).Association
                       = Association
                  then
                     if AMF_Tables.Links.Table (Link).First_Element = Self then
                        return AMF_Tables.Links.Table (Link).Second_Element;

                     else
                        return AMF_Tables.Links.Table (Link).First_Element;
                     end if;
                  end if;

                  Collection :=
                    AMF_Tables.Collection_Elements.Table (Collection).Next;
               end loop;
               end if;

            else
               Collection :=
                 AMF_Tables.Collections.Table
                  (CMOF_Element_Table.Table (Self).Member (0).Collection).Head;

               while Collection /= 0 loop
                  Link :=
                    AMF_Tables.Collection_Elements.Table (Collection).Link;

                  if AMF_Tables.Links.Table (Link).Association
                       = Association
                  then
                     if AMF_Tables.Links.Table (Link).First_Element = Self then
                        return AMF_Tables.Links.Table (Link).Second_Element;

                     else
                        return AMF_Tables.Links.Table (Link).First_Element;
                     end if;
                  end if;

                  Collection :=
                    AMF_Tables.Collection_Elements.Table (Collection).Next;
               end loop;
            end if;
         end if;

         Current := AMF_Tables.Extent_Elements.Table (Current).Next;
      end loop;

      return Null_CMOF_Element;
   end Container;

   ------------------
   -- All_Elements --
   ------------------

   function All_Elements
    (Self : CMOF_Extent)
       return not null AMF.Internals.Collections.Collection_Access
   is
      Current  : AMF_Tables.Extent_Element_Identifier
        := AMF_Tables.Extents.Table (Self).Head;
      Result   : not null AMF.Internals.Collections.Collection_Access
        := new AMF.Internals.Containers.Collection;
      Elements : AMF.Internals.Containers.Vectors.Vector
        renames AMF.Internals.Containers.Collection (Result.all).Elements;

   begin
      while Current /= 0 loop
         Elements.Append
          (AMF.Internals.Helpers.To_Element
            (AMF_Tables.Extent_Elements.Table (Current).Element));
         Current := AMF_Tables.Extent_Elements.Table (Current).Next;
      end loop;

      return Result;
   end All_Elements;

   --------------------------------------
   -- Initialize_CMOF_Metamodel_Extent --
   --------------------------------------

   procedure Initialize_CMOF_Metamodel_Extent is
   begin
      AMF.Internals.Tables.AMF_Tables.Extents.Set_Last (CMOF_Metamodel_Extent);
      AMF.Internals.Tables.AMF_Tables.Extents.Table
       (CMOF_Metamodel_Extent) := (0, 0);
   end Initialize_CMOF_Metamodel_Extent;

end CMOF.Internals.Extents;
