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
with Ada.Text_IO;

with League.Strings.Internals;
with Matreshka.Internals.Strings;

with AMF.Internals.Containers;
with AMF.Internals.Tables.AMF_Tables;
with CMOF.Internals.Attribute_Mappings;
with CMOF.Internals.Attributes;
with CMOF.Internals.Collections;
with CMOF.Internals.Reflection;
with CMOF.Internals.Metamodel;
with CMOF.Internals.Subclassing;
with CMOF.Internals.Tables;

package body CMOF.Internals.Extents is

   use type AMF.Internals.AMF_Element;

   ---------------
   -- Container --
   ---------------

   function Container (Self : CMOF_Element) return CMOF_Element is

      use AMF.Internals.Tables;
      use CMOF.Internals.Attribute_Mappings;
      use CMOF.Internals.Attributes;
      use CMOF.Internals.Collections;
      use CMOF.Internals.Reflection;
      use CMOF.Internals.Metamodel;
      use CMOF.Internals.Subclassing;
      use type AMF.Internals.Tables.AMF_Tables.Collection_Element_Identifier;

      Meta_Class  : constant CMOF_Class := Reflection.Get_Meta_Class (Self);
      Meta_Extent : constant CMOF_Extent
        := Tables.Elements.Table (Meta_Class).Extent;
      Current     : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Meta_Extent).Head;
      Association : CMOF_Association;
      Member_End  : Ordered_Set_Of_CMOF_Property;
      Opposite    : CMOF_Property;
      Collection  : AMF_Tables.Collection_Element_Identifier;
      Owner       : CMOF_Element;
      Link        : AMF.Internals.AMF_Link;

   begin
      --  All properties must be traversed to detect containment.

      while Current /= 0 loop
         if Is_Property (Current)
           and then Internal_Get_Type (Current) in CMOF_Meta_Class
           and then Is_Subclass (Meta_Class, Internal_Get_Type (Current))
           and then Boolean (Internal_Get_Is_Composite (Current))
         then
            --  Find opposite property, it is at the element's side of the
            --  association.

            Association := Internal_Get_Association (Current);
            Member_End := Internal_Get_Member_End (Association);

            if Element (Member_End, 1) = Current then
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
                   (Tables.Elements.Table (Self).Kind, Opposite) /= 0
               then
                  Owner :=
                    Tables.Elements.Table (Self).Member
                     (Member_Offset
                       (Tables.Elements.Table (Self).Kind,
                       Opposite)).Element;

                  if Owner /= Null_CMOF_Element then
                     return Owner;
                  end if;

               else
               Collection :=
                 AMF_Tables.Collections.Table
                  (Tables.Elements.Table (Self).Member (0).Collection).Head;

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
                  (Tables.Elements.Table (Self).Member (0).Collection).Head;

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

         Current := Tables.Elements.Table (Current).Next;
      end loop;

      return Null_CMOF_Element;
   end Container;

   -------------------
   -- Create_Extent --
   -------------------

   function Create_Extent return CMOF_Extent is
   begin
      AMF.Internals.Tables.AMF_Tables.Extents.Increment_Last;
      AMF.Internals.Tables.AMF_Tables.Extents.Table
       (AMF.Internals.Tables.AMF_Tables.Extents.Last) := (0, 0);

      return AMF.Internals.Tables.AMF_Tables.Extents.Last;
   end Create_Extent;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : CMOF_Extent;
     Index : Positive) return CMOF_Element
   is
      Current : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Self).Head;

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

   --------------
   -- Elements --
   --------------

   function All_Elements
    (Self : CMOF_Extent)
       return not null AMF.Internals.Collections.Collection_Access
   is
      Current  : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Self).Head;
      Result   : not null AMF.Internals.Collections.Collection_Access
        := new AMF.Internals.Containers.Collection;
      Elements : AMF.Internals.Containers.Vectors.Vector
        renames AMF.Internals.Containers.Collection (Result.all).Elements;

   begin
      while Current /= 0 loop
         Elements.Append (Tables.Elements.Table (Current).Proxy);
         Current := Tables.Elements.Table (Current).Next;
      end loop;

      return Result;
   end All_Elements;

   ------------
   -- Get_Id --
   ------------

   function Get_Id
    (Element : CMOF_Element) return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create (Tables.Elements.Table (Element).Id);
   end Get_Id;

   ---------------------
   -- Internal_Append --
   ---------------------

   procedure Internal_Append
    (Extent  : CMOF_Extent;
     Element : CMOF_Element)
   is
      Head     : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Head;
      Tail     : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Tail;
      Previous : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Tail;
      Next     : CMOF_Element := 0;

   begin
      if Head = 0 then
         --  List is empty.

         Head := Element;
         Tail := Element;

         AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Head := Head;
         AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Tail := Tail;

      else
         Tail := Element;

         AMF.Internals.Tables.AMF_Tables.Extents.Table (Extent).Tail := Tail;
         Tables.Elements.Table (Previous).Next := Element;
      end if;

      Tables.Elements.Table (Element).Extent   := Extent;
      Tables.Elements.Table (Element).Previous := Previous;
      Tables.Elements.Table (Element).Next     := Next;
   end Internal_Append;

   --------------------------------------
   -- Initialize_CMOF_Metamodel_Extent --
   --------------------------------------

   procedure Initialize_CMOF_Metamodel_Extent is
   begin
      AMF.Internals.Tables.AMF_Tables.Extents.Set_Last (CMOF_Metamodel_Extent);
      AMF.Internals.Tables.AMF_Tables.Extents.Table
       (CMOF_Metamodel_Extent) := (0, 0);
   end Initialize_CMOF_Metamodel_Extent;

   ------------
   -- Length --
   ------------

   function Length (Self : CMOF_Extent) return Natural is
      Current : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Self).Head;
      Aux     : Natural := 0;

   begin
      while Current /= 0 loop
         Aux     := Aux + 1;
         Current := Tables.Elements.Table (Current).Next;
      end loop;

      return Aux;
   end Length;

   ------------
   -- Object --
   ------------

   function Object
    (Self       : CMOF_Extent;
     Identifier : League.Strings.Universal_String) return CMOF_Element
   is
      use type League.Strings.Universal_String;

      Current : CMOF_Element
        := AMF.Internals.Tables.AMF_Tables.Extents.Table (Self).Head;

   begin
      while Current /= Null_CMOF_Element loop
         if Get_Id (Current) = Identifier then
            return Current;
         end if;

         Current := Tables.Elements.Table (Current).Next;
      end loop;

      return Null_CMOF_Element;
   end Object;

   ------------
   -- Object --
   ------------

   function Object
    (Self       : CMOF_Extent;
     Identifier : League.Strings.Universal_String)
       return AMF.Elements.Element_Access is
   begin
      return Tables.Elements.Table (Object (Self, Identifier)).Proxy;
   end Object;

   ------------
   -- Set_Id --
   ------------

   procedure Set_Id
    (Element : CMOF_Element;
     Id      : League.Strings.Universal_String) is
   begin
      Matreshka.Internals.Strings.Dereference
       (Tables.Elements.Table (Element).Id);
      Tables.Elements.Table (Element).Id :=
        League.Strings.Internals.Internal (Id);
      Matreshka.Internals.Strings.Reference
       (Tables.Elements.Table (Element).Id);
   end Set_Id;

end CMOF.Internals.Extents;
