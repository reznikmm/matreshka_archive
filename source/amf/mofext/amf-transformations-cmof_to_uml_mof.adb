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
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Comments.Collections;
with AMF.CMOF.Constraints.Collections;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Enumeration_Literals.Collections;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces;
with AMF.CMOF.Operations.Collections;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Parameters.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Typed_Elements;
with AMF.CMOF.Types;
with AMF.CMOF.Value_Specifications;
with AMF.Elements;
with AMF.MOF.Tags;
with AMF.UML.Associations;
with AMF.UML.Classes;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Enumeration_Literals.Collections;
with AMF.UML.Enumerations;
with AMF.UML.Namespaces;
with AMF.UML.Opaque_Expressions;
with AMF.UML.Operations.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages;
with AMF.UML.Parameters.Collections;
with AMF.UML.Primitive_Types;
with AMF.UML.Properties.Collections;
with AMF.UML.Typed_Elements;
with AMF.UML.Types;
with AMF.UML.Value_Specifications;
with AMF.Visitors.CMOF_Containment;

package body AMF.Transformations.CMOF_To_UML_MOF is

   procedure Output (Item : Wide_Wide_String);

   MOF_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/MOF/20110701");
   UML_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/UML/20100901");

   function To_UML_Visibility_Kind
    (Element : not null access constant
       AMF.CMOF.Named_Elements.CMOF_Named_Element'Class)
         return AMF.UML.Optional_UML_Visibility_Kind;

   function To_UML_Parameter_Direction_Kind
    (Item : AMF.CMOF.CMOF_Parameter_Direction_Kind)
       return AMF.UML.UML_Parameter_Direction_Kind;

   procedure Link_Owned_Comment
    (Self           : in out Second_Pass_Visitor'Class;
     Source_Element : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Target_Element : not null access AMF.UML.Elements.UML_Element'Class);
   --  Link elements of CMOF::Element::ownedComment into
   --  UML::Element::ownedComment.

   procedure Link_Owned_Rule
    (Self           : in out Second_Pass_Visitor'Class;
     Source_Element : not null access AMF.CMOF.Namespaces.CMOF_Namespace'Class;
     Target_Element : not null access AMF.UML.Namespaces.UML_Namespace'Class);
   --  Link elements of CMOF::Namespace::ownedRule into
   --  UML::Namespace::ownedRule.

   procedure Link_Type
    (Self           : in out Second_Pass_Visitor'Class;
     Source_Element : not null access AMF.CMOF.Typed_Elements.CMOF_Typed_Element'Class;
     Target_Element : not null access AMF.UML.Typed_Elements.UML_Typed_Element'Class);
   --  Link element of CMOF::TypedElement::type into UML::TypedElement::type.

   -----------------------
   -- Enter_Association --
   -----------------------

   overriding procedure Enter_Association
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Association : constant not null
        AMF.UML.Associations.UML_Association_Access
          := Self.Transformer.UML_Factory.Create_Association;

   begin
      Self.Register (Element, The_UML_Association);
      The_UML_Association.Set_Is_Derived (Element.Get_Is_Derived);
      The_UML_Association.Set_Name (Element.Get_Name);
      The_UML_Association.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Association;

   -----------------------
   -- Enter_Association --
   -----------------------

   overriding procedure Enter_Association
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Association : constant not null
        AMF.UML.Associations.UML_Association_Access
          := AMF.UML.Associations.UML_Association_Access
              (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Association);

      --  UML::Association::memberEnd

      declare
         Source : AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
           := Element.Get_Member_End;
         Target : AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
           := The_UML_Association.Get_Member_End;

      begin
         for J in 1 .. Source.Length loop
            Target.Add
             (AMF.UML.Properties.UML_Property_Access
               (Self.Resolve (Source.Element (J))));
         end loop;

      end;

      --  UML::Association::ownedEnd

      declare
         Source : AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
           := Element.Get_Owned_End;
         Target : AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
           := The_UML_Association.Get_Owned_End;

      begin
         for J in 1 .. Source.Length loop
            Target.Add
             (AMF.UML.Properties.UML_Property_Access
               (Self.Resolve (Source.Element (J))));
         end loop;
      end;
   end Enter_Association;

   -----------------
   -- Enter_Class --
   -----------------

   overriding procedure Enter_Class
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Class : constant not null AMF.UML.Classes.UML_Class_Access
        := Self.Transformer.UML_Factory.Create_Class;

   begin
      Self.Register (Element, The_UML_Class);
      The_UML_Class.Set_Is_Abstract (Element.Get_Is_Abstract);
      The_UML_Class.Set_Name (Element.Get_Name);
      The_UML_Class.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Class;

   -----------------
   -- Enter_Class --
   -----------------

   overriding procedure Enter_Class
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Class : constant not null AMF.UML.Classes.UML_Class_Access
        := AMF.UML.Classes.UML_Class_Access (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Class);
      Self.Link_Owned_Rule (Element, The_UML_Class);

      --  UML::Namespace::ownedAttribute

      declare
         Source : AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
           := Element.Get_Owned_Attribute;
         Target : AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
           := The_UML_Class.Get_Owned_Attribute;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Properties.UML_Property_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Class::ownedAttribute is not found");
            end;
         end loop;
      end;

      --  UML::Class::ownedOperation

      declare
         Source : AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation
           := Element.Get_Owned_Operation;
         Target : AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation
           := The_UML_Class.Get_Owned_Operation;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Operations.UML_Operation_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Class::ownedOperation is not found");
            end;
         end loop;
      end;
   end Enter_Class;

   -------------------
   -- Enter_Comment --
   -------------------

   overriding procedure Enter_Comment
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Comment : constant not null AMF.UML.Comments.UML_Comment_Access
        := Self.Transformer.UML_Factory.Create_Comment;

   begin
      Self.Register (Element, The_UML_Comment);
      The_UML_Comment.Set_Body (Element.Get_Body);
   end Enter_Comment;

   -------------------
   -- Enter_Comment --
   -------------------

   overriding procedure Enter_Comment
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Comment : constant not null AMF.UML.Comments.UML_Comment_Access
        := AMF.UML.Comments.UML_Comment_Access (Self.Resolve (Element));

   begin
      --  UML::Comment::annotatedElement

      declare
         Source : AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
           := Element.Get_Annotated_Element;
         Target : AMF.UML.Elements.Collections.Set_Of_UML_Element
           := The_UML_Comment.Get_Annotated_Element;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Elements.UML_Element_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Comment::annotatedElement is not found");
            end;
         end loop;
      end;
   end Enter_Comment;

   ----------------------
   -- Enter_Constraint --
   ----------------------

   overriding procedure Enter_Constraint
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Constraint : constant not null
        AMF.UML.Constraints.UML_Constraint_Access
          := Self.Transformer.UML_Factory.Create_Constraint;

   begin
      Self.Register (Element, The_UML_Constraint);
      The_UML_Constraint.Set_Name (Element.Get_Name);
      The_UML_Constraint.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Constraint;

   ----------------------
   -- Enter_Constraint --
   ----------------------

   overriding procedure Enter_Constraint
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Constraint : constant not null
        AMF.UML.Constraints.UML_Constraint_Access
          := AMF.UML.Constraints.UML_Constraint_Access
              (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Constraint);

      --  UML::Constraint::constrainedElement

      declare
         Source : AMF.CMOF.Elements.Collections.Ordered_Set_Of_CMOF_Element
           := Element.Get_Constrained_Element;
         Target : AMF.UML.Elements.Collections.Ordered_Set_Of_UML_Element
           := The_UML_Constraint.Get_Constrained_Element;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Elements.UML_Element_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Constraint::constrainedElement is not found");
            end;
         end loop;
      end;

      --  UML::Constraint::specification

      declare
         The_Value_Specification : constant
           AMF.CMOF.Value_Specifications.CMOF_Value_Specification_Access
             := Element.Get_Specification;

      begin
         The_UML_Constraint.Set_Specification
          (AMF.UML.Value_Specifications.UML_Value_Specification_Access
            (Self.Resolve (The_Value_Specification)));
      end;
   end Enter_Constraint;

   ---------------------
   -- Enter_Data_Type --
   ---------------------

   overriding procedure Enter_Data_Type
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      null;
   end Enter_Data_Type;

   --------------------------
   -- Enter_Element_Import --
   --------------------------

   overriding procedure Enter_Element_Import
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Element_Imports.CMOF_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      null;
   end Enter_Element_Import;

   -----------------------
   -- Enter_Enumeration --
   -----------------------

   overriding procedure Enter_Enumeration
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Enumeration : constant not null
        AMF.UML.Enumerations.UML_Enumeration_Access
          := Self.Transformer.UML_Factory.Create_Enumeration;

   begin
      Self.Register (Element, The_UML_Enumeration);
      The_UML_Enumeration.Set_Name (Element.Get_Name);
      The_UML_Enumeration.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Enumeration;

   -----------------------
   -- Enter_Enumeration --
   -----------------------

   overriding procedure Enter_Enumeration
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Enumeration : constant not null
        AMF.UML.Enumerations.UML_Enumeration_Access
          := AMF.UML.Enumerations.UML_Enumeration_Access
              (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Enumeration);
      Self.Link_Owned_Rule (Element, The_UML_Enumeration);

      --  UML::Enumeration::ownedEnumeration_Literal

      declare
         Source : AMF.CMOF.Enumeration_Literals.Collections.Ordered_Set_Of_CMOF_Enumeration_Literal
           := Element.Get_Owned_Literal;
         Target : AMF.UML.Enumeration_Literals.Collections.Ordered_Set_Of_UML_Enumeration_Literal
           := The_UML_Enumeration.Get_Owned_Literal;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Enumeration::ownedEnumeration_Literal is not found");
            end;
         end loop;
      end;

      --  UML::Enumeration::ownedOperation

      declare
         Source : AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation
           := Element.Get_Owned_Operation;
         Target : AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation
           := The_UML_Enumeration.Get_Owned_Operation;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Operations.UML_Operation_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Enumeration::ownedOperation is not found");
            end;
         end loop;
      end;
   end Enter_Enumeration;

   -------------------------------
   -- Enter_Enumeration_Literal --
   -------------------------------

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Enumeration_Literal : constant not null
        AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access
          := Self.Transformer.UML_Factory.Create_Enumeration_Literal;

   begin
      Self.Register (Element, The_UML_Enumeration_Literal);
      The_UML_Enumeration_Literal.Set_Name (Element.Get_Name);
--      The_UML_Enumeration_Literal.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Enumeration_Literal;

   -------------------------------
   -- Enter_Enumeration_Literal --
   -------------------------------

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Enumeration_Literal : constant not null
        AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access
          := AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access
              (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Enumeration_Literal);
   end Enter_Enumeration_Literal;

   ----------------------
   -- Enter_Expression --
   ----------------------

   overriding procedure Enter_Expression
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Expressions.CMOF_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      null;
   end Enter_Expression;

   -----------------------------
   -- Enter_Opaque_Expression --
   -----------------------------

   overriding procedure Enter_Opaque_Expression
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Opaque_Expression : constant not null
        AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access
          := Self.Transformer.UML_Factory.Create_Opaque_Expression;

   begin
      Self.Register (Element, The_UML_Opaque_Expression);
      The_UML_Opaque_Expression.Set_Name (Element.Get_Name);
      The_UML_Opaque_Expression.Set_Visibility
       (To_UML_Visibility_Kind (Element));

      --  XXX UML::OpaqueExpression::body
      --  XXX UML::OpaqueExpression::language
   end Enter_Opaque_Expression;

   -----------------------------
   -- Enter_Opaque_Expression --
   -----------------------------

   overriding procedure Enter_Opaque_Expression
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Opaque_Expression : constant not null
        AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access
          := AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access
              (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Opaque_Expression);
   end Enter_Opaque_Expression;

   ---------------------
   -- Enter_Operation --
   ---------------------

   overriding procedure Enter_Operation
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Operation : constant not null
        AMF.UML.Operations.UML_Operation_Access
          := Self.Transformer.UML_Factory.Create_Operation;

   begin
      Self.Register (Element, The_UML_Operation);
      The_UML_Operation.Set_Is_Query (Element.Get_Is_Query);
      The_UML_Operation.Set_Name (Element.Get_Name);
      The_UML_Operation.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Operation;

   ---------------------
   -- Enter_Operation --
   ---------------------

   overriding procedure Enter_Operation
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Operation : constant not null
        AMF.UML.Operations.UML_Operation_Access
          := AMF.UML.Operations.UML_Operation_Access (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Operation);
      Self.Link_Owned_Rule (Element, The_UML_Operation);

      --  UML::Operation::bodyCondition

      declare
         The_Constraint : constant not null
           AMF.CMOF.Constraints.CMOF_Constraint_Access
             := Element.Get_Body_Condition;

      begin
         begin
            The_UML_Operation.Set_Body_Condition
             (AMF.UML.Constraints.UML_Constraint_Access
               (Self.Resolve (The_Constraint)));

         exception
            when Constraint_Error =>
               Output ("UML::Operation::bodyCondition is unknown");
         end;
      end;

      --  UML::Operation::redefinedOperation

      declare
         Source : AMF.CMOF.Operations.Collections.Set_Of_CMOF_Operation
           := Element.Get_Redefined_Operation;
         Target : AMF.UML.Operations.Collections.Set_Of_UML_Operation
           := The_UML_Operation.Get_Redefined_Operation;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Operations.UML_Operation_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Operation::redefinedOperation is not found");
            end;
         end loop;
      end;

      --  UML::Operation::ownedParameter

      declare
         Source : AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter
           := Element.Get_Owned_Parameter;
         Target : AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter
           := The_UML_Operation.Get_Owned_Parameter;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Parameters.UML_Parameter_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Operation::ownedParameter is not found");
            end;
         end loop;
      end;
   end Enter_Operation;

   -------------------
   -- Enter_Package --
   -------------------

   overriding procedure Enter_Package
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Package : constant not null AMF.UML.Packages.UML_Package_Access
        := Self.Transformer.UML_Factory.Create_Package;

   begin
      Self.Register (Element, The_UML_Package);
      The_UML_Package.Set_Name (Element.Get_Name);
      The_UML_Package.Set_URI (Element.Get_URI);
      The_UML_Package.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Package;

   -------------------
   -- Enter_Package --
   -------------------

   overriding procedure Enter_Package
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Package : constant not null AMF.UML.Packages.UML_Package_Access
        := AMF.UML.Packages.UML_Package_Access (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Package);

      --  UML::Package::packagedElement

      declare
         Source :
           AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
             := Element.Get_Packaged_Element;
         Target :
           AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
             := The_UML_Package.Get_Packaged_Element;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Packageable_Elements.UML_Packageable_Element_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("Package::packagedElement is unknown");
            end;
         end loop;
      end;
   end Enter_Package;

   --------------------------
   -- Enter_Package_Import --
   --------------------------

   overriding procedure Enter_Package_Import
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Package_Imports.CMOF_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      null;
   end Enter_Package_Import;

   -------------------------
   -- Enter_Package_Merge --
   -------------------------

   overriding procedure Enter_Package_Merge
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      null;
   end Enter_Package_Merge;

   ---------------------
   -- Enter_Parameter --
   ---------------------

   overriding procedure Enter_Parameter
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Parameter : constant not null
        AMF.UML.Parameters.UML_Parameter_Access
          := Self.Transformer.UML_Factory.Create_Parameter;

   begin
      Self.Register (Element, The_UML_Parameter);
      The_UML_Parameter.Set_Direction
       (To_UML_Parameter_Direction_Kind (Element.Get_Direction));
      The_UML_Parameter.Set_Name (Element.Get_Name);
      The_UML_Parameter.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Parameter;

   ---------------------
   -- Enter_Parameter --
   ---------------------

   overriding procedure Enter_Parameter
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Parameter : constant not null
        AMF.UML.Parameters.UML_Parameter_Access
          := AMF.UML.Parameters.UML_Parameter_Access (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Parameter);
      Self.Link_Type (Element, The_UML_Parameter);
   end Enter_Parameter;

   --------------------------
   -- Enter_Primitive_Type --
   --------------------------

   overriding procedure Enter_Primitive_Type
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Primitive_Type : constant not null
        AMF.UML.Primitive_Types.UML_Primitive_Type_Access
          := Self.Transformer.UML_Factory.Create_Primitive_Type;

   begin
      Self.Register (Element, The_UML_Primitive_Type);
      The_UML_Primitive_Type.Set_Name (Element.Get_Name);
      The_UML_Primitive_Type.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Primitive_Type;

   --------------------------
   -- Enter_Primitive_Type --
   --------------------------

   overriding procedure Enter_Primitive_Type
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Primitive_Type : constant not null
        AMF.UML.Primitive_Types.UML_Primitive_Type_Access
          := AMF.UML.Primitive_Types.UML_Primitive_Type_Access
              (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Primitive_Type);
   end Enter_Primitive_Type;

   --------------------
   -- Enter_Property --
   --------------------

   overriding procedure Enter_Property
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Property : constant not null
        AMF.UML.Properties.UML_Property_Access
          := Self.Transformer.UML_Factory.Create_Property;

   begin
      Self.Register (Element, The_UML_Property);
      The_UML_Property.Set_Is_Composite (Element.Get_Is_Composite);
--      The_UML_Property.Set_Is_ID (Element.Get_Is_ID);
      The_UML_Property.Set_Is_Derived (Element.Get_Is_Derived);
      The_UML_Property.Set_Is_Derived_Union (Element.Get_Is_Derived_Union);
      The_UML_Property.Set_Is_Read_Only (Element.Get_Is_Read_Only);
      The_UML_Property.Set_Lower (Element.Get_Lower);
      The_UML_Property.Set_Name (Element.Get_Name);
      The_UML_Property.Set_Upper (Element.Get_Upper);
      The_UML_Property.Set_Visibility (To_UML_Visibility_Kind (Element));
   end Enter_Property;

   --------------------
   -- Enter_Property --
   --------------------

   overriding procedure Enter_Property
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_UML_Property : constant not null
        AMF.UML.Properties.UML_Property_Access
          := AMF.UML.Properties.UML_Property_Access (Self.Resolve (Element));

   begin
      Self.Link_Owned_Comment (Element, The_UML_Property);
      Self.Link_Type (Element, The_UML_Property);

      --  UML::Property::association is handled at opposite end as
      --  UML::Association::memberEnd.

      --  UML::Property::subsettedProperty

      declare
         Source : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
           := Element.Get_Subsetted_Property;
         Target : AMF.UML.Properties.Collections.Set_Of_UML_Property
           := The_UML_Property.Get_Subsetted_Property;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Properties.UML_Property_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Property::subsettedProperty is unknown");
            end;
         end loop;
      end;

      --  UML::Property::redefinedProperty

      declare
         Source : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
           := Element.Get_Redefined_Property;
         Target : AMF.UML.Properties.Collections.Set_Of_UML_Property
           := The_UML_Property.Get_Redefined_Property;

      begin
         for J in 1 .. Source.Length loop
            begin
               Target.Add
                (AMF.UML.Properties.UML_Property_Access
                  (Self.Resolve (Source.Element (J))));

            exception
               when Constraint_Error =>
                  Output ("UML::Property::redefinedProperty is unknown");
            end;
         end loop;
      end;
   end Enter_Property;

   ---------------
   -- Enter_Tag --
   ---------------

   overriding procedure Enter_Tag
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_MOF_Tag : constant not null AMF.MOF.Tags.MOF_Tag_Access
        := Self.Transformer.MOF_Factory.Create_Tag;

   begin
      Self.Register (Element, The_MOF_Tag);
      The_MOF_Tag.Set_Name (Element.Get_Name);
      The_MOF_Tag.Set_Value (Element.Get_Value);
   end Enter_Tag;

   ---------------
   -- Enter_Tag --
   ---------------

   overriding procedure Enter_Tag
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      The_MOF_Tag : constant not null AMF.MOF.Tags.MOF_Tag_Access
        := AMF.MOF.Tags.MOF_Tag_Access (Self.Resolve (Element));

   begin
      --  CMOF::Tag::element

      declare
         Source : AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
           := Element.Get_Element;
         Target : AMF.UML.Elements.Collections.Set_Of_UML_Element
           := The_MOF_Tag.Get_Element;

      begin
         for J in 1 .. Source.Length loop
            Target.Add
             (AMF.UML.Elements.UML_Element_Access
               (Self.Resolve (Source.Element (J))));
         end loop;
      end;
   end Enter_Tag;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self   : not null access CMOF_To_UML_MOF_Transformer'Class;
     Source : not null AMF.URI_Stores.URI_Store_Access;
     Target : not null AMF.URI_Stores.URI_Store_Access) is
   begin
      Self.Source := Source;
      Self.Target := Target;
      Self.MOF_Factory :=
        AMF.Factories.MOF_Factories.MOF_Factory_Access
         (Self.Target.Get_Factory (MOF_URI));
      Self.UML_Factory :=
        AMF.Factories.UML_Factories.UML_Factory_Access
         (Self.Target.Get_Factory (UML_URI));
   end Initialize;

   ------------------------
   -- Link_Owned_Comment --
   ------------------------

   procedure Link_Owned_Comment
    (Self           : in out Second_Pass_Visitor'Class;
     Source_Element : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     Target_Element : not null access AMF.UML.Elements.UML_Element'Class)
   is
      Source : AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
        := Source_Element.Get_Owned_Comment;
      Target : AMF.UML.Comments.Collections.Set_Of_UML_Comment
        := Target_Element.Get_Owned_Comment;

   begin
      for J in 1 .. Source.Length loop
         Target.Add
          (AMF.UML.Comments.UML_Comment_Access
            (Self.Resolve (Source.Element (J))));
      end loop;
   end Link_Owned_Comment;

   ---------------------
   -- Link_Owned_Rule --
   ---------------------

   procedure Link_Owned_Rule
    (Self           : in out Second_Pass_Visitor'Class;
     Source_Element : not null access AMF.CMOF.Namespaces.CMOF_Namespace'Class;
     Target_Element : not null access AMF.UML.Namespaces.UML_Namespace'Class)
   is
      Source : AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint
        := Source_Element.Get_Owned_Rule;
      Target : AMF.UML.Constraints.Collections.Set_Of_UML_Constraint
        := Target_Element.Get_Owned_Rule;

   begin
      for J in 1 .. Source.Length loop
         Target.Add
          (AMF.UML.Constraints.UML_Constraint_Access
            (Self.Resolve (Source.Element (J))));
      end loop;
   end Link_Owned_Rule;

   ---------------
   -- Link_Type --
   ---------------

   procedure Link_Type
    (Self           : in out Second_Pass_Visitor'Class;
     Source_Element : not null access AMF.CMOF.Typed_Elements.CMOF_Typed_Element'Class;
     Target_Element : not null access AMF.UML.Typed_Elements.UML_Typed_Element'Class)
   is
      The_Type : constant not null AMF.CMOF.Types.CMOF_Type_Access
        := Source_Element.Get_Type;

   begin
      Target_Element.Set_Type
       (AMF.UML.Types.UML_Type_Access (Self.Resolve (The_Type)));
   end Link_Type;

   ------------
   -- Output --
   ------------

   procedure Output (Item : Wide_Wide_String) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error, Item);
   end Output;

   --------------
   -- Register --
   --------------

   procedure Register
    (Self         : in out First_Pass_Visitor'Class;
     CMOF_Element : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     UML_Element  : not null access AMF.UML.Elements.UML_Element'Class) is
   begin
      Self.Transformer.To_UML_Element.Insert
       (AMF.CMOF.Elements.CMOF_Element_Access (CMOF_Element),
        AMF.UML.Elements.UML_Element_Access (UML_Element));
      Self.Transformer.Target.Set_Id
       (AMF.Elements.Element_Access (UML_Element),
        Self.Transformer.Source.Get_Id
         (AMF.Elements.Element_Access (CMOF_Element)));
   end Register;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Self    : in out Second_Pass_Visitor'Class;
     Element : not null access AMF.CMOF.Elements.CMOF_Element'Class)
       return not null AMF.UML.Elements.UML_Element_Access is
   begin
      return
        Self.Transformer.To_UML_Element.Element
         (AMF.CMOF.Elements.CMOF_Element_Access (Element));
   end Resolve;

   -------------------------------------
   -- To_UML_Parameter_Direction_Kind --
   -------------------------------------

   function To_UML_Parameter_Direction_Kind
    (Item : AMF.CMOF.CMOF_Parameter_Direction_Kind)
       return AMF.UML.UML_Parameter_Direction_Kind is
   begin
      case Item is
         when AMF.CMOF.In_Parameter =>
            return AMF.UML.In_Parameter;

         when AMF.CMOF.Out_Parameter =>
            return AMF.UML.Out_Parameter;

         when AMF.CMOF.In_Out_Parameter =>
            return AMF.UML.In_Out_Parameter;

         when AMF.CMOF.Return_Parameter =>
            return AMF.UML.Return_Parameter;
      end case;
   end To_UML_Parameter_Direction_Kind;

   ----------------------------
   -- To_UML_Visibility_Kind --
   ----------------------------

   function To_UML_Visibility_Kind
    (Element : not null access constant
       AMF.CMOF.Named_Elements.CMOF_Named_Element'Class)
         return AMF.UML.Optional_UML_Visibility_Kind
   is
      Aux : constant AMF.CMOF.Optional_CMOF_Visibility_Kind
        := Element.Get_Visibility;

   begin
      if Aux.Is_Empty then
         if Element.all
              in AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element'Class
         then
            --  UML::PackageableElement can't have undefined visibility. CMOF
            --  specification constraints visibility to be 'public', so we
            --  enforce this constraint here.

            return (False, AMF.UML.Public_Visibility);

         else
            return (Is_Empty => True);
         end if;

      else
         case Aux.Value is
            when AMF.CMOF.Public_Visibility =>
               return (False, AMF.UML.Public_Visibility);

            when AMF.CMOF.Private_Visibility =>
               return (False, AMF.UML.Private_Visibility);

            when AMF.CMOF.Protected_Visibility =>
               return (False, AMF.UML.Protected_Visibility);

            when AMF.CMOF.Package_Visibility =>
               return (False, AMF.UML.Package_Visibility);
         end case;
      end if;
   end To_UML_Visibility_Kind;

   ---------------
   -- Transform --
   ---------------

   procedure Transform
    (Source : not null AMF.URI_Stores.URI_Store_Access;
     Target : not null AMF.URI_Stores.URI_Store_Access)
   is
      Transformer : aliased CMOF_To_UML_MOF_Transformer;
      Iterator    : AMF.Visitors.CMOF_Containment.CMOF_Containment_Iterator;
      First_Pass  : First_Pass_Visitor (Transformer'Access);
      Second_Pass : Second_Pass_Visitor (Transformer'Access);

   begin
      Initialize (Transformer'Access, Source, Target);
      Iterator.Visit (First_Pass, Source);
      Iterator.Visit (Second_Pass, Source);
   end Transform;

end AMF.Transformations.CMOF_To_UML_MOF;
