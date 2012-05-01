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

package body AMF.Internals.UML_Operations is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Operation_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Operation
            (AMF.UML.Operations.UML_Operation_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Operation_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Operation
            (AMF.UML.Operations.UML_Operation_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Return_Result --
   -------------------

   overriding function Return_Result
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameters.Collections.Set_Of_UML_Parameter
   is
      use type AMF.UML.UML_Parameter_Direction_Kind;

      Parameters    : constant
        AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter
          := Self.Get_Owned_Parameter;
      The_Parameter : AMF.UML.Parameters.UML_Parameter_Access;

   begin
      return Result : AMF.UML.Parameters.Collections.Set_Of_UML_Parameter do
         for J in 1 .. Parameters.Length loop
            The_Parameter := Parameters.Element (J);

            if The_Parameter.Get_Direction = AMF.UML.Return_Parameter then
               Result.Add (The_Parameter);
            end if;
         end loop;
      end return;
   end Return_Result;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Operation_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Operation
            (Visitor,
             AMF.UML.Operations.UML_Operation_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ------------------------
   -- Get_Body_Condition --
   ------------------------

   overriding function Get_Body_Condition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access is
   begin
      return
        AMF.UML.Constraints.UML_Constraint_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Body_Condition
             (Self.Element)));
   end Get_Body_Condition;

   ------------------------
   -- Set_Body_Condition --
   ------------------------

   overriding procedure Set_Body_Condition
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Body_Condition
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Body_Condition;

   ---------------
   -- Get_Class --
   ---------------

   overriding function Get_Class
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classes.UML_Class_Access is
   begin
      return
        AMF.UML.Classes.UML_Class_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Class
             (Self.Element)));
   end Get_Class;

   ---------------
   -- Set_Class --
   ---------------

   overriding procedure Set_Class
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Classes.UML_Class_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Class
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Class;

   ------------------
   -- Get_Datatype --
   ------------------

   overriding function Get_Datatype
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Data_Types.UML_Data_Type_Access is
   begin
      return
        AMF.UML.Data_Types.UML_Data_Type_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Datatype
             (Self.Element)));
   end Get_Datatype;

   ------------------
   -- Set_Datatype --
   ------------------

   overriding procedure Set_Datatype
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Data_Types.UML_Data_Type_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Datatype
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Datatype;

   -------------------
   -- Get_Interface --
   -------------------

   overriding function Get_Interface
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Interfaces.UML_Interface_Access is
   begin
      return
        AMF.UML.Interfaces.UML_Interface_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Interface
             (Self.Element)));
   end Get_Interface;

   -------------------
   -- Set_Interface --
   -------------------

   overriding procedure Set_Interface
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Interfaces.UML_Interface_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Interface
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Interface;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Ordered
         (Self.Element);
   end Get_Is_Ordered;

   ------------------
   -- Get_Is_Query --
   ------------------

   overriding function Get_Is_Query
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Query
         (Self.Element);
   end Get_Is_Query;

   ------------------
   -- Set_Is_Query --
   ------------------

   overriding procedure Set_Is_Query
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Query
       (Self.Element, To);
   end Set_Is_Query;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Unique
         (Self.Element);
   end Get_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_Integer is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Lower
         (Self.Element);
   end Get_Lower;

   -------------------------
   -- Get_Owned_Parameter --
   -------------------------

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter is
   begin
      return
        AMF.UML.Parameters.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Parameter
             (Self.Element)));
   end Get_Owned_Parameter;

   -----------------------
   -- Get_Postcondition --
   -----------------------

   overriding function Get_Postcondition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Postcondition
             (Self.Element)));
   end Get_Postcondition;

   ----------------------
   -- Get_Precondition --
   ----------------------

   overriding function Get_Precondition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Precondition
             (Self.Element)));
   end Get_Precondition;

   --------------------------
   -- Get_Raised_Exception --
   --------------------------

   overriding function Get_Raised_Exception
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type is
   begin
      return
        AMF.UML.Types.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Raised_Exception
             (Self.Element)));
   end Get_Raised_Exception;

   -----------------------------
   -- Get_Redefined_Operation --
   -----------------------------

   overriding function Get_Redefined_Operation
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Operations.Collections.Set_Of_UML_Operation is
   begin
      return
        AMF.UML.Operations.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Operation
             (Self.Element)));
   end Get_Redefined_Operation;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access is
   begin
      return
        AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Parameter
             (Self.Element)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.UML_Type_Access is
   begin
      return
        AMF.UML.Types.UML_Type_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Type
             (Self.Element)));
   end Get_Type;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper
         (Self.Element);
   end Get_Upper;

   ---------------------
   -- Get_Concurrency --
   ---------------------

   overriding function Get_Concurrency
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.UML_Call_Concurrency_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Concurrency
         (Self.Element);
   end Get_Concurrency;

   ---------------------
   -- Set_Concurrency --
   ---------------------

   overriding procedure Set_Concurrency
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.UML_Call_Concurrency_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Concurrency
       (Self.Element, To);
   end Set_Concurrency;

   ---------------------
   -- Get_Is_Abstract --
   ---------------------

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Abstract
         (Self.Element);
   end Get_Is_Abstract;

   ---------------------
   -- Set_Is_Abstract --
   ---------------------

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Abstract
       (Self.Element, To);
   end Set_Is_Abstract;

   ----------------
   -- Get_Method --
   ----------------

   overriding function Get_Method
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior is
   begin
      return
        AMF.UML.Behaviors.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Method
             (Self.Element)));
   end Get_Method;

   -----------------------------
   -- Get_Owned_Parameter_Set --
   -----------------------------

   overriding function Get_Owned_Parameter_Set
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set is
   begin
      return
        AMF.UML.Parameter_Sets.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Parameter_Set
             (Self.Element)));
   end Get_Owned_Parameter_Set;

   ------------------------------
   -- Get_Featuring_Classifier --
   ------------------------------

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Featuring_Classifier
             (Self.Element)));
   end Get_Featuring_Classifier;

   -------------------
   -- Get_Is_Static --
   -------------------

   overriding function Get_Is_Static
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Static
         (Self.Element);
   end Get_Is_Static;

   -------------------
   -- Set_Is_Static --
   -------------------

   overriding procedure Set_Is_Static
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Static
       (Self.Element, To);
   end Set_Is_Static;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Leaf
       (Self.Element, To);
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefinition_Context
             (Self.Element)));
   end Get_Redefinition_Context;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access UML_Operation_Proxy;
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
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

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import is
   begin
      return
        AMF.UML.Package_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Package_Import
             (Self.Element)));
   end Get_Package_Import;

   ----------------------------------
   -- Get_Owned_Template_Signature --
   ----------------------------------

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access UML_Operation_Proxy;
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
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding is
   begin
      return
        AMF.UML.Template_Bindings.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Binding
             (Self.Element)));
   end Get_Template_Binding;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access UML_Operation_Proxy;
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
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Operation_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   ----------------
   -- Is_Ordered --
   ----------------

   overriding function Is_Ordered
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Ordered unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Ordered";
      return Is_Ordered (Self);
   end Is_Ordered;

   ---------------
   -- Is_Unique --
   ---------------

   overriding function Is_Unique
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Unique unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Unique";
      return Is_Unique (Self);
   end Is_Unique;

   -----------
   -- Lower --
   -----------

   overriding function Lower
    (Self : not null access constant UML_Operation_Proxy)
       return Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Lower";
      return Lower (Self);
   end Lower;

   -----------
   -- Types --
   -----------

   overriding function Types
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.UML_Type_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Types unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Types";
      return Types (Self);
   end Types;

   -----------
   -- Upper --
   -----------

   overriding function Upper
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Unlimited_Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Upper";
      return Upper (Self);
   end Upper;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Operation_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Operation_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Operation_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Operation_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Exclude_Collisions";
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Operation_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Get_Names_Of_Member";
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
    (Self : not null access constant UML_Operation_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Import_Members";
      return Import_Members (Self, Imps);
   end Import_Members;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Imported_Member";
      return Imported_Member (Self);
   end Imported_Member;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Members_Are_Distinguishable";
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   ------------------
   -- Owned_Member --
   ------------------

   overriding function Owned_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   -----------------
   -- Is_Template --
   -----------------

   overriding function Is_Template
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Template";
      return Is_Template (Self);
   end Is_Template;

   ----------------------------
   -- Parameterable_Elements --
   ----------------------------

   overriding function Parameterable_Elements
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Parameterable_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Parameterable_Elements";
      return Parameterable_Elements (Self);
   end Parameterable_Elements;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Operation_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Operation_Proxy.Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

end AMF.Internals.UML_Operations;
