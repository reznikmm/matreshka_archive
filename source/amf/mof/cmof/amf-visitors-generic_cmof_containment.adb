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
with AMF.CMOF.Elements.Collections;

package body AMF.Visitors.Generic_CMOF_Containment is

   procedure Visit_Owned_Elements
    (Self    : in out CMOF_Containment_Iterator'Class;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Control : in out Traverse_Control);
   --  Visit members of ownedElement of the element.

   -----------------------
   -- Visit_Association --
   -----------------------

   overriding procedure Visit_Association
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Association;

   -----------------
   -- Visit_Class --
   -----------------

   overriding procedure Visit_Class
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Class;

   -------------------
   -- Visit_Comment --
   -------------------

   overriding procedure Visit_Comment
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Comment;

   ----------------------
   -- Visit_Constraint --
   ----------------------

   overriding procedure Visit_Constraint
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Constraint;

   ---------------------
   -- Visit_Data_Type --
   ---------------------

   overriding procedure Visit_Data_Type
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Data_Type;

   --------------------------
   -- Visit_Element_Import --
   --------------------------

   overriding procedure Visit_Element_Import
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Element_Imports.CMOF_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Element_Import;

   -----------------------
   -- Visit_Enumeration --
   -----------------------

   overriding procedure Visit_Enumeration
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Enumeration;

   -------------------------------
   -- Visit_Enumeration_Literal --
   -------------------------------

   overriding procedure Visit_Enumeration_Literal
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Enumeration_Literal;

   ----------------------
   -- Visit_Expression --
   ----------------------

   overriding procedure Visit_Expression
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Expressions.CMOF_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Expression;

   -----------------------------
   -- Visit_Opaque_Expression --
   -----------------------------

   overriding procedure Visit_Opaque_Expression
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Opaque_Expression;

   ---------------------
   -- Visit_Operation --
   ---------------------

   overriding procedure Visit_Operation
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Operation;

   --------------------------
   -- Visit_Owned_Elements --
   --------------------------

   procedure Visit_Owned_Elements
    (Self    : in out CMOF_Containment_Iterator'Class;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Control : in out Traverse_Control)
   is
      Owned_Element : constant
        AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
          := Element.Get_Owned_Element;

   begin
      for J in 1 .. Owned_Element.Length loop
         AMF.Visitors.Visit
          (Self,
           Visitor,
           AMF.Elements.Element_Access (Owned_Element.Element (J)),
           Control);

         case Control is
            when Continue =>
               null;

            when Abandon_Children =>
               Control := Continue;

            when Abandon_Sibling =>
               Control := Continue;

               exit;

            when Terminate_Immediately =>
               exit;
         end case;
      end loop;
   end Visit_Owned_Elements;

   -------------------
   -- Visit_Package --
   -------------------

   overriding procedure Visit_Package
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Package;

   --------------------------
   -- Visit_Package_Import --
   --------------------------

   overriding procedure Visit_Package_Import
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Package_Imports.CMOF_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Package_Import;

   -------------------------
   -- Visit_Package_Merge --
   -------------------------

   overriding procedure Visit_Package_Merge
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Package_Merge;

   ---------------------
   -- Visit_Parameter --
   ---------------------

   overriding procedure Visit_Parameter
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Parameter;

   --------------------------
   -- Visit_Primitive_Type --
   --------------------------

   overriding procedure Visit_Primitive_Type
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Primitive_Type;

   --------------------
   -- Visit_Property --
   --------------------

   overriding procedure Visit_Property
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Property;

   ---------------
   -- Visit_Tag --
   ---------------

   overriding procedure Visit_Tag
    (Self    : in out CMOF_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Self.Visit_Owned_Elements (Visitor, Element, Control);
   end Visit_Tag;

end AMF.Visitors.Generic_CMOF_Containment;
