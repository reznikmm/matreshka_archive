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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Visitors.UML_Iterators;
with AMF.Visitors.UML_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Nodes is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Node_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Node
            (AMF.UML.Nodes.UML_Node_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Node_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Node
            (AMF.UML.Nodes.UML_Node_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Node_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Node
            (Visitor,
             AMF.UML.Nodes.UML_Node_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ---------------------
   -- Get_Nested_Node --
   ---------------------

   overriding function Get_Nested_Node
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Nodes.Collections.Set_Of_UML_Node is
   begin
      return
        AMF.UML.Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Nested_Node
             (Self.Element)));
   end Get_Nested_Node;

   -------------------
   -- Get_Extension --
   -------------------

   overriding function Get_Extension
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Extensions.Collections.Set_Of_UML_Extension is
   begin
      return
        AMF.UML.Extensions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Extension
             (Self.Element)));
   end Get_Extension;

   ---------------------
   -- Get_Is_Abstract --
   ---------------------

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Abstract
         (Self.Element);
   end Get_Is_Abstract;

   -------------------
   -- Get_Is_Active --
   -------------------

   overriding function Get_Is_Active
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Active
         (Self.Element);
   end Get_Is_Active;

   -------------------
   -- Set_Is_Active --
   -------------------

   overriding procedure Set_Is_Active
    (Self : not null access UML_Node_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Active
       (Self.Element, To);
   end Set_Is_Active;

   ---------------------------
   -- Get_Nested_Classifier --
   ---------------------------

   overriding function Get_Nested_Classifier
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Ordered_Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Nested_Classifier
             (Self.Element)));
   end Get_Nested_Classifier;

   -------------------------
   -- Get_Owned_Attribute --
   -------------------------

   overriding function Get_Owned_Attribute
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property is
   begin
      return
        AMF.UML.Properties.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Attribute
             (Self.Element)));
   end Get_Owned_Attribute;

   -------------------------
   -- Get_Owned_Operation --
   -------------------------

   overriding function Get_Owned_Operation
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation is
   begin
      return
        AMF.UML.Operations.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Operation
             (Self.Element)));
   end Get_Owned_Operation;

   -------------------------
   -- Get_Owned_Reception --
   -------------------------

   overriding function Get_Owned_Reception
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Receptions.Collections.Set_Of_UML_Reception is
   begin
      return
        AMF.UML.Receptions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Reception
             (Self.Element)));
   end Get_Owned_Reception;

   ---------------------
   -- Get_Super_Class --
   ---------------------

   overriding function Get_Super_Class
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classes.Collections.Set_Of_UML_Class is
   begin
      return
        AMF.UML.Classes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Super_Class
             (Self.Element)));
   end Get_Super_Class;

   -----------------------------
   -- Get_Classifier_Behavior --
   -----------------------------

   overriding function Get_Classifier_Behavior
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Classifier_Behavior
             (Self.Element)));
   end Get_Classifier_Behavior;

   -----------------------------
   -- Set_Classifier_Behavior --
   -----------------------------

   overriding procedure Set_Classifier_Behavior
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Classifier_Behavior
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Classifier_Behavior;

   -------------------------------
   -- Get_Interface_Realization --
   -------------------------------

   overriding function Get_Interface_Realization
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Interface_Realizations.Collections.Set_Of_UML_Interface_Realization is
   begin
      return
        AMF.UML.Interface_Realizations.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Interface_Realization
             (Self.Element)));
   end Get_Interface_Realization;

   ------------------------
   -- Get_Owned_Behavior --
   ------------------------

   overriding function Get_Owned_Behavior
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior is
   begin
      return
        AMF.UML.Behaviors.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Behavior
             (Self.Element)));
   end Get_Owned_Behavior;

   -------------------
   -- Get_Attribute --
   -------------------

   overriding function Get_Attribute
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property is
   begin
      return
        AMF.UML.Properties.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Attribute
             (Self.Element)));
   end Get_Attribute;

   ---------------------------
   -- Get_Collaboration_Use --
   ---------------------------

   overriding function Get_Collaboration_Use
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Collaboration_Uses.Collections.Set_Of_UML_Collaboration_Use is
   begin
      return
        AMF.UML.Collaboration_Uses.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Collaboration_Use
             (Self.Element)));
   end Get_Collaboration_Use;

   -----------------
   -- Get_Feature --
   -----------------

   overriding function Get_Feature
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature is
   begin
      return
        AMF.UML.Features.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Feature
             (Self.Element)));
   end Get_Feature;

   -----------------
   -- Get_General --
   -----------------

   overriding function Get_General
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_General
             (Self.Element)));
   end Get_General;

   ------------------------
   -- Get_Generalization --
   ------------------------

   overriding function Get_Generalization
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization is
   begin
      return
        AMF.UML.Generalizations.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Generalization
             (Self.Element)));
   end Get_Generalization;

   --------------------------
   -- Get_Inherited_Member --
   --------------------------

   overriding function Get_Inherited_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Inherited_Member
             (Self.Element)));
   end Get_Inherited_Member;

   ---------------------------------
   -- Get_Is_Final_Specialization --
   ---------------------------------

   overriding function Get_Is_Final_Specialization
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Final_Specialization
         (Self.Element);
   end Get_Is_Final_Specialization;

   ---------------------------------
   -- Set_Is_Final_Specialization --
   ---------------------------------

   overriding procedure Set_Is_Final_Specialization
    (Self : not null access UML_Node_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Final_Specialization
       (Self.Element, To);
   end Set_Is_Final_Specialization;

   ----------------------------------
   -- Get_Owned_Template_Signature --
   ----------------------------------

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access is
   begin
      return
        AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Template_Signature
             (Self.Element)));
   end Get_Owned_Template_Signature;

   ----------------------------------
   -- Set_Owned_Template_Signature --
   ----------------------------------

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Owned_Template_Signature
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Owned_Template_Signature;

   ------------------------
   -- Get_Owned_Use_Case --
   ------------------------

   overriding function Get_Owned_Use_Case
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case is
   begin
      return
        AMF.UML.Use_Cases.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Use_Case
             (Self.Element)));
   end Get_Owned_Use_Case;

   --------------------------
   -- Get_Powertype_Extent --
   --------------------------

   overriding function Get_Powertype_Extent
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set is
   begin
      return
        AMF.UML.Generalization_Sets.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Powertype_Extent
             (Self.Element)));
   end Get_Powertype_Extent;

   ------------------------------
   -- Get_Redefined_Classifier --
   ------------------------------

   overriding function Get_Redefined_Classifier
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Classifier
             (Self.Element)));
   end Get_Redefined_Classifier;

   ------------------------
   -- Get_Representation --
   ------------------------

   overriding function Get_Representation
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access is
   begin
      return
        AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Representation
             (Self.Element)));
   end Get_Representation;

   ------------------------
   -- Set_Representation --
   ------------------------

   overriding procedure Set_Representation
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Representation
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Representation;

   ----------------------
   -- Get_Substitution --
   ----------------------

   overriding function Get_Substitution
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Substitutions.Collections.Set_Of_UML_Substitution is
   begin
      return
        AMF.UML.Substitutions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Substitution
             (Self.Element)));
   end Get_Substitution;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access is
   begin
      return
        AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Parameter
             (Self.Element)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   ------------------
   -- Get_Use_Case --
   ------------------

   overriding function Get_Use_Case
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case is
   begin
      return
        AMF.UML.Use_Cases.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Use_Case
             (Self.Element)));
   end Get_Use_Case;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import is
   begin
      return
        AMF.UML.Element_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Element_Import
             (Self.Element)));
   end Get_Element_Import;

   -------------------------
   -- Get_Imported_Member --
   -------------------------

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      return
        AMF.UML.Packageable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Imported_Member
             (Self.Element)));
   end Get_Imported_Member;

   ----------------
   -- Get_Member --
   ----------------

   overriding function Get_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Member
             (Self.Element)));
   end Get_Member;

   ----------------------
   -- Get_Owned_Member --
   ----------------------

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Member
             (Self.Element)));
   end Get_Owned_Member;

   --------------------
   -- Get_Owned_Rule --
   --------------------

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Rule
             (Self.Element)));
   end Get_Owned_Rule;

   ------------------------
   -- Get_Package_Import --
   ------------------------

   overriding function Get_Package_Import
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import is
   begin
      return
        AMF.UML.Package_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Package_Import
             (Self.Element)));
   end Get_Package_Import;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Element)));
   end Get_Client_Dependency;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Name_Expression
             (Self.Element)));
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Name_Expression
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Namespace
             (Self.Element)));
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Node_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Qualified_Name (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Qualified_Name;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Packages.UML_Package_Access is
   begin
      return
        AMF.UML.Packages.UML_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Package
             (Self.Element)));
   end Get_Package;

   -----------------
   -- Set_Package --
   -----------------

   overriding procedure Set_Package
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Packages.UML_Package_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Package
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Package;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owning_Template_Parameter
             (Self.Element)));
   end Get_Owning_Template_Parameter;

   -----------------------------------
   -- Set_Owning_Template_Parameter --
   -----------------------------------

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Owning_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Owning_Template_Parameter;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Parameter
             (Self.Element)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   ----------------------------------
   -- Get_Owned_Template_Signature --
   ----------------------------------

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access is
   begin
      return
        AMF.UML.Template_Signatures.UML_Template_Signature_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Template_Signature
             (Self.Element)));
   end Get_Owned_Template_Signature;

   ----------------------------------
   -- Set_Owned_Template_Signature --
   ----------------------------------

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Node_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Owned_Template_Signature
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Owned_Template_Signature;

   --------------------------
   -- Get_Template_Binding --
   --------------------------

   overriding function Get_Template_Binding
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding is
   begin
      return
        AMF.UML.Template_Bindings.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Binding
             (Self.Element)));
   end Get_Template_Binding;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Leaf
         (Self.Element);
   end Get_Is_Leaf;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Node_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Leaf
       (Self.Element, To);
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element is
   begin
      return
        AMF.UML.Redefinable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Element
             (Self.Element)));
   end Get_Redefined_Element;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefinition_Context
             (Self.Element)));
   end Get_Redefinition_Context;

   --------------------
   -- Get_Owned_Port --
   --------------------

   overriding function Get_Owned_Port
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Ports.Collections.Set_Of_UML_Port is
   begin
      return
        AMF.UML.Ports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Port
             (Self.Element)));
   end Get_Owned_Port;

   -------------------------
   -- Get_Owned_Connector --
   -------------------------

   overriding function Get_Owned_Connector
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Connectors.Collections.Set_Of_UML_Connector is
   begin
      return
        AMF.UML.Connectors.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Connector
             (Self.Element)));
   end Get_Owned_Connector;

   --------------
   -- Get_Part --
   --------------

   overriding function Get_Part
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property is
   begin
      return
        AMF.UML.Properties.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Part
             (Self.Element)));
   end Get_Part;

   --------------
   -- Get_Role --
   --------------

   overriding function Get_Role
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Connectable_Elements.Collections.Set_Of_UML_Connectable_Element is
   begin
      return
        AMF.UML.Connectable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Role
             (Self.Element)));
   end Get_Role;

   --------------------------
   -- Get_Deployed_Element --
   --------------------------

   overriding function Get_Deployed_Element
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      return
        AMF.UML.Packageable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Deployed_Element
             (Self.Element)));
   end Get_Deployed_Element;

   --------------------
   -- Get_Deployment --
   --------------------

   overriding function Get_Deployment
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Deployments.Collections.Set_Of_UML_Deployment is
   begin
      return
        AMF.UML.Deployments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Deployment
             (Self.Element)));
   end Get_Deployment;

   ---------------
   -- Extension --
   ---------------

   overriding function Extension
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Extensions.Collections.Set_Of_UML_Extension is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Extension unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Extension";
      return Extension (Self);
   end Extension;

   -------------
   -- Inherit --
   -------------

   overriding function Inherit
    (Self : not null access constant UML_Node_Proxy;
     Inhs : AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Inherit unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Inherit";
      return Inherit (Self, Inhs);
   end Inherit;

   -----------------
   -- Super_Class --
   -----------------

   overriding function Super_Class
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classes.Collections.Set_Of_UML_Class is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Super_Class unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Super_Class";
      return Super_Class (Self);
   end Super_Class;

   ------------------
   -- All_Features --
   ------------------

   overriding function All_Features
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Features unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.All_Features";
      return All_Features (Self);
   end All_Features;

   -----------------
   -- Conforms_To --
   -----------------

   overriding function Conforms_To
    (Self : not null access constant UML_Node_Proxy;
     Other : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Conforms_To unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Conforms_To";
      return Conforms_To (Self, Other);
   end Conforms_To;

   -------------
   -- General --
   -------------

   overriding function General
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "General unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.General";
      return General (Self);
   end General;

   -----------------------
   -- Has_Visibility_Of --
   -----------------------

   overriding function Has_Visibility_Of
    (Self : not null access constant UML_Node_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Has_Visibility_Of unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Has_Visibility_Of";
      return Has_Visibility_Of (Self, N);
   end Has_Visibility_Of;

   -------------------------
   -- Inheritable_Members --
   -------------------------

   overriding function Inheritable_Members
    (Self : not null access constant UML_Node_Proxy;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Inheritable_Members unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Inheritable_Members";
      return Inheritable_Members (Self, C);
   end Inheritable_Members;

   ----------------------
   -- Inherited_Member --
   ----------------------

   overriding function Inherited_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Inherited_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Inherited_Member";
      return Inherited_Member (Self);
   end Inherited_Member;

   -----------------
   -- Is_Template --
   -----------------

   overriding function Is_Template
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Is_Template";
      return Is_Template (Self);
   end Is_Template;

   -------------------------
   -- May_Specialize_Type --
   -------------------------

   overriding function May_Specialize_Type
    (Self : not null access constant UML_Node_Proxy;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "May_Specialize_Type unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.May_Specialize_Type";
      return May_Specialize_Type (Self, C);
   end May_Specialize_Type;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Node_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Exclude_Collisions";
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Node_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Get_Names_Of_Member";
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
    (Self : not null access constant UML_Node_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Import_Members";
      return Import_Members (Self, Imps);
   end Import_Members;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Imported_Member";
      return Imported_Member (Self);
   end Imported_Member;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Members_Are_Distinguishable";
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   ------------------
   -- Owned_Member --
   ------------------

   overriding function Owned_Member
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Node_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Node_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   -----------------
   -- Conforms_To --
   -----------------

   overriding function Conforms_To
    (Self : not null access constant UML_Node_Proxy;
     Other : AMF.UML.Types.UML_Type_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Conforms_To unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Conforms_To";
      return Conforms_To (Self, Other);
   end Conforms_To;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Node_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Node_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   ----------------------------
   -- Parameterable_Elements --
   ----------------------------

   overriding function Parameterable_Elements
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Parameterable_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Parameterable_Elements";
      return Parameterable_Elements (Self);
   end Parameterable_Elements;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Node_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Node_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   ----------------
   -- Owned_Port --
   ----------------

   overriding function Owned_Port
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Ports.Collections.Set_Of_UML_Port is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Port unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Owned_Port";
      return Owned_Port (Self);
   end Owned_Port;

   ----------
   -- Part --
   ----------

   overriding function Part
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Part unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Part";
      return Part (Self);
   end Part;

   ----------------------
   -- Deployed_Element --
   ----------------------

   overriding function Deployed_Element
    (Self : not null access constant UML_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Deployed_Element unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Node_Proxy.Deployed_Element";
      return Deployed_Element (Self);
   end Deployed_Element;

end AMF.Internals.UML_Nodes;
