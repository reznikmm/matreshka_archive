------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Asis.Extensions.Flat_Kinds;

with League.Strings;

with Properties.Common;
with Properties.Declarations.Component_Declaration;
with Properties.Declarations.Constant_Declarations;
with Properties.Declarations.Defining_Expanded_Name;
with Properties.Declarations.Defining_Names;
with Properties.Declarations.Element_Iterator_Specification;
with Properties.Declarations.Function_Declarations;
with Properties.Declarations.Function_Renaming_Declaration;
with Properties.Declarations.Generic_Declaration;
with Properties.Declarations.Incomplete_Type;
with Properties.Declarations.Loop_Parameter_Specification;
with Properties.Declarations.Ordinary_Type;
with Properties.Declarations.Package_Declaration;
with Properties.Declarations.Package_Instantiation;
with Properties.Declarations.Private_Type;
with Properties.Declarations.Procedure_Body_Declarations;
with Properties.Declarations.Procedure_Declaration;
with Properties.Declarations.Subprogram_Instantiation;
with Properties.Definitions.Access_To_Object;
with Properties.Definitions.Component_Definition;
with Properties.Definitions.Constrained_Array_Type;
with Properties.Definitions.Derived_Type;
with Properties.Definitions.Discriminant_Constraint;
with Properties.Definitions.Enumeration_Type;
with Properties.Definitions.Float_Point;
with Properties.Definitions.Index_Constraint;
with Properties.Definitions.Modular;
with Properties.Definitions.Others_Choice;
with Properties.Definitions.Range_Attribute;
with Properties.Definitions.Record_Type;
with Properties.Definitions.Signed;
with Properties.Definitions.Simple_Expression_Range;
with Properties.Definitions.Subtype_Indication;
with Properties.Definitions.Tagged_Record_Type;
with Properties.Definitions.Unconstrained_Array_Type;
with Properties.Definitions.Variant_Part;
with Properties.Definitions.Variant;
with Properties.Expressions.Allocation;
with Properties.Expressions.Allocation_From_Subtype;
with Properties.Expressions.Array_Component_Association;
with Properties.Expressions.Attribute_Reference;
with Properties.Expressions.Case_Expression;
with Properties.Expressions.Enumeration_Literal;
with Properties.Expressions.Explicit_Dereference;
with Properties.Expressions.Extension_Aggregate;
with Properties.Expressions.Function_Calls;
with Properties.Expressions.Identifiers;
with Properties.Expressions.If_Expression;
with Properties.Expressions.Indexed_Component;
with Properties.Expressions.Integer_Literal;
with Properties.Expressions.Membership_Test;
with Properties.Expressions.Null_Literal;
with Properties.Expressions.Parameter_Association;
with Properties.Expressions.Parenthesized;
with Properties.Expressions.Pos_Array_Aggregate;
with Properties.Expressions.Record_Aggregate;
with Properties.Expressions.Record_Component_Association;
with Properties.Expressions.Selected_Components;
with Properties.Expressions.Short_Circuit;
with Properties.Expressions.Slice;
with Properties.Expressions.String_Literal;
with Properties.Expressions.Type_Conversion;
with Properties.Statements.Assignment_Statement;
with Properties.Statements.Block_Statement;
with Properties.Statements.Case_Statement;
with Properties.Statements.Exit_Statement;
with Properties.Statements.Extended_Return;
with Properties.Statements.For_Loop_Statement;
with Properties.Statements.If_Statement;
with Properties.Statements.Loop_Statement;
with Properties.Statements.Procedure_Call_Statement;
with Properties.Statements.Raise_Statement;
with Properties.Statements.Return_Statement;
with Properties.Statements.While_Loop_Statement;

procedure Engines.Registry_All_Actions
  (Self : in out Engines.Contexts.Context)
is
   type Text_Callback is access function
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Element;
      Name    : Engines.Text_Property) return League.Strings.Universal_String;

   type Action_Item is record
      Name   : Engines.Text_Property;
      Kind   : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Action : Text_Callback;
   end record;

   type Boolean_Callback is access function
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Element;
      Name    : Engines.Boolean_Property) return Boolean;

   type Boolean_Action_Item is record
      Name   : Engines.Boolean_Property;
      Kind   : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Action : Boolean_Callback;
   end record;

   type Integer_Callback is access function
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Element;
      Name    : Engines.Integer_Property) return Integer;

   type Integer_Action_Item is record
      Name   : Engines.Integer_Property;
      Kind   : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Action : Integer_Callback;
   end record;

   type Action_Array is array (Positive range <>) of Action_Item;

   type Action_Range is record
      Name     : Engines.Text_Property;
      From, To : Asis.Extensions.Flat_Kinds.Flat_Element_Kinds;
      Action   : Text_Callback;
   end record;

   type Range_Array is array (Positive range <>) of Action_Range;

   package F renames Asis.Extensions.Flat_Kinds;
   package N renames Engines;
   package P renames Properties;

   Action_List : constant Action_Array :=
     --  Address
     ((Name   => N.Address,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Address'Access),
      (Name   => N.Address,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Code'Access),
      (Name   => N.Address,
       Kind   => F.A_Type_Conversion,
       Action => P.Expressions.Type_Conversion.Code'Access),
      (Name   => N.Address,
       Kind   => F.An_Explicit_Dereference,
       Action => P.Expressions.Explicit_Dereference.Address'Access),
      (Name   => N.Address,
       Kind   => F.An_Indexed_Component,
       Action => P.Expressions.Indexed_Component.Address'Access),

     --  Associations
      (Name   => N.Associations,
       Kind   => F.A_Record_Component_Association,
       Action =>
         P.Expressions.Record_Component_Association.Associations'Access),
     --  Code
      (Name   => N.Code,
       Kind   => F.A_Use_Package_Clause,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Constant_Declaration,
       Action => P.Declarations.Constant_Declarations.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Return_Constant_Specification,
       Action => P.Declarations.Constant_Declarations.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Return_Variable_Specification,
       Action => P.Declarations.Constant_Declarations.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Deferred_Constant_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Function_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Package_Declaration,
       Action => P.Declarations.Package_Declaration.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Package_Body_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Generic_Package_Declaration,
       Action => P.Declarations.Generic_Declaration.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Generic_Package_Renaming_Declaration,
       Action => P.Declarations.Generic_Declaration.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Generic_Function_Renaming_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Generic_Function_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Generic_Procedure_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Package_Renaming_Declaration,  --  FIXME
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.An_Object_Renaming_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.An_Integer_Number_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Real_Number_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Private_Extension_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Tagged_Incomplete_Type_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Private_Type_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.An_Incomplete_Type_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Procedure_Body_Declaration,
       Action => P.Declarations.Procedure_Body_Declarations.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Function_Body_Declaration,
       Action => P.Declarations.Procedure_Body_Declarations.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Procedure_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Null_Procedure_Declaration,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Loop_Parameter_Specification,
       Action =>
         P.Declarations.Loop_Parameter_Specification.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Element_Iterator_Specification,
       Action =>
         P.Declarations.Element_Iterator_Specification.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Variable_Declaration,
       Action => P.Declarations.Constant_Declarations.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Function_Renaming_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Procedure_Renaming_Declaration,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Defining_Identifier,
       Action => P.Declarations.Defining_Names.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Defining_Enumeration_Literal,
       Action => P.Declarations.Defining_Names.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Defining_Expanded_Name,
       Action => P.Declarations.Defining_Expanded_Name.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Package_Instantiation,
       Action => P.Declarations.Package_Instantiation.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Procedure_Instantiation,
       Action => P.Declarations.Subprogram_Instantiation.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Function_Instantiation,
       Action => P.Declarations.Subprogram_Instantiation.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Enumeration_Type_Definition,
       Action => P.Definitions.Enumeration_Type.Code'Access),
      (Name    => N.Code,
       Kind    => F.A_Signed_Integer_Type_Definition,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Constrained_Array_Definition,
       Action => P.Definitions.Constrained_Array_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Unconstrained_Array_Definition,
       Action => P.Definitions.Unconstrained_Array_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Component_Definition,
       Action => P.Definitions.Component_Definition.Initialize'Access),
      (Name   => N.Code,
       Kind   => F.A_Derived_Type_Definition,
       Action => P.Definitions.Derived_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Derived_Record_Extension_Definition,
       Action => P.Definitions.Tagged_Record_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Tagged_Record_Type_Definition,
       Action => P.Definitions.Tagged_Record_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Limited_Interface,
       Action => P.Definitions.Tagged_Record_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Record_Type_Definition,
       Action => P.Definitions.Record_Type.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Discriminant_Constraint,
       Action => P.Definitions.Discriminant_Constraint.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Index_Constraint,
       Action => P.Definitions.Index_Constraint.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Others_Choice,
       Action => P.Definitions.Others_Choice.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Access_To_Variable,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.An_Access_To_Constant,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Pool_Specific_Access_To_Variable,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.An_Access_To_Procedure,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.An_Access_To_Function,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Box_Expression,
       Action => P.Common.Empty'Access),  --  return "" for <>
      (Name   => N.Code,
       Kind   => F.An_Allocation_From_Qualified_Expression,
       Action => P.Expressions.Allocation.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Allocation_From_Subtype,
       Action => P.Expressions.Allocation_From_Subtype.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Enumeration_Literal,
       Action => P.Expressions.Enumeration_Literal.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Explicit_Dereference,
       Action => P.Expressions.Explicit_Dereference.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Function_Call,
       Action => P.Expressions.Function_Calls.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Indexed_Component,
       Action => P.Expressions.Indexed_Component.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Slice,
       Action => P.Expressions.Slice.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Integer_Literal,
       Action => P.Expressions.Integer_Literal.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Real_Literal,
       Action => P.Expressions.Integer_Literal.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Named_Array_Aggregate,
       Action => P.Expressions.Pos_Array_Aggregate.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Positional_Array_Aggregate,
       Action => P.Expressions.Pos_Array_Aggregate.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_In_Membership_Test,
       Action => P.Expressions.Membership_Test.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Not_In_Membership_Test,
       Action => P.Expressions.Membership_Test.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Or_Else_Short_Circuit,
       Action => P.Expressions.Short_Circuit.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Record_Aggregate,
       Action => P.Expressions.Record_Aggregate.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Extension_Aggregate,
       Action => P.Expressions.Extension_Aggregate.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Array_Component_Association,
       Action => P.Expressions.Array_Component_Association.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Record_Component_Association,
       Action => P.Expressions.Record_Component_Association.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Null_Literal,
       Action => P.Expressions.Null_Literal.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_String_Literal,
       Action => P.Expressions.String_Literal.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Type_Conversion,
       Action => P.Expressions.Type_Conversion.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Qualified_Expression,
       Action => P.Expressions.Type_Conversion.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Parenthesized_Expression,
       Action => P.Expressions.Parenthesized.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_If_Expression,
       Action => P.Expressions.If_Expression.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Case_Expression,
       Action => P.Expressions.Case_Expression.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Assignment_Statement,
       Action => P.Statements.Assignment_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Block_Statement,
       Action => P.Statements.Block_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Case_Statement,
       Action => P.Statements.Case_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_For_Loop_Statement,
       Action => P.Statements.For_Loop_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Loop_Statement,
       Action => P.Statements.Loop_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_If_Statement,
       Action => P.Statements.If_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Null_Statement,
       Action => P.Common.Empty'Access),
      (Name   => N.Code,
       Kind   => F.A_Use_Type_Clause,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Use_All_Type_Clause,
       Action => P.Common.Empty'Access),  --  Ignore
      (Name   => N.Code,
       Kind   => F.A_Procedure_Call_Statement,
       Action => P.Statements.Procedure_Call_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Return_Statement,
       Action => P.Statements.Return_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Extended_Return_Statement,
       Action => P.Statements.Extended_Return.Code'Access),
      (Name   => N.Code,
       Kind   => F.An_Exit_Statement,
       Action => P.Statements.Exit_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_While_Loop_Statement,
       Action => P.Statements.While_Loop_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_Raise_Statement,
       Action => P.Statements.Raise_Statement.Code'Access),
      (Name   => N.Code,
       Kind   => F.A_With_Clause,
       Action => P.Common.Empty'Access),

      (Name   => N.Condition,
       Kind   => F.An_Element_Iterator_Specification,
       Action =>
         P.Declarations.Element_Iterator_Specification.Condition'Access),
      (Name   => N.Condition,
       Kind   => F.A_Loop_Parameter_Specification,
       Action =>
         P.Declarations.Loop_Parameter_Specification.Condition'Access),

      --  Assign
      (Name   => N.Assign,
       Kind   => F.A_Component_Declaration,
       Action => P.Declarations.Component_Declaration.Assign'Access),
      (Name   => N.Assign,
       Kind   => F.A_Discriminant_Specification,
       Action => P.Declarations.Component_Declaration.Assign'Access),
      (Name   => N.Assign,
       Kind   => F.A_Variant_Part,
       Action => P.Definitions.Variant_Part.Assign'Access),
      (Name   => N.Assign,
       Kind   => F.A_Variant,
       Action => P.Definitions.Variant.Assign'Access),
      (Name   => N.Assign,
       Kind   => F.A_Null_Component,
       Action => P.Common.Empty'Access),

      --  Bounds
      (Name   => N.Bounds,
       Kind   => F.A_Constant_Declaration,
       Action => P.Declarations.Constant_Declarations.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Variable_Declaration,
       Action => P.Declarations.Constant_Declarations.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Component_Declaration,
       Action => P.Declarations.Constant_Declarations.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Component_Definition,
       Action => P.Definitions.Component_Definition.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.An_Index_Constraint,
       Action => P.Definitions.Index_Constraint.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Constrained_Array_Definition,
       Action => P.Definitions.Constrained_Array_Type.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.An_Unconstrained_Array_Definition,
       Action => P.Common.Empty'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Return_Statement,
       Action => P.Statements.Return_Statement.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Derived_Type_Definition,
       Action => P.Definitions.Derived_Type.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Parameter_Association,
       Action => P.Expressions.Parameter_Association.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Record_Component_Association,
       Action => P.Expressions.Record_Component_Association.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.A_Qualified_Expression,
       Action => P.Expressions.Type_Conversion.Bounds'Access),
      (Name   => N.Bounds,
       Kind   => F.An_Assignment_Statement,
       Action => P.Statements.Assignment_Statement.Bounds'Access),

      --  Initialize
      (Name   => N.Initialize,
       Kind   => F.A_Constant_Declaration,
       Action => P.Declarations.Constant_Declarations.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Return_Constant_Specification,
       Action => P.Declarations.Constant_Declarations.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Return_Variable_Specification,
       Action => P.Declarations.Constant_Declarations.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Discriminant_Specification,
       Action => P.Declarations.Constant_Declarations.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Component_Declaration,
       Action => P.Declarations.Constant_Declarations.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Variable_Declaration,
       Action => P.Declarations.Constant_Declarations.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Private_Extension_Declaration,
       Action => P.Declarations.Private_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Derived_Record_Extension_Definition,
       Action => P.Definitions.Tagged_Record_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Tagged_Record_Type_Definition,
       Action => P.Definitions.Tagged_Record_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Private_Type_Declaration,
       Action => P.Declarations.Private_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Loop_Parameter_Specification,
       Action =>
         P.Declarations.Loop_Parameter_Specification.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Element_Iterator_Specification,
       Action =>
         P.Declarations.Element_Iterator_Specification.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Component_Definition,
       Action => P.Definitions.Component_Definition.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Access_To_Variable,
       Action => P.Definitions.Access_To_Object.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Access_To_Constant,
       Action => P.Definitions.Access_To_Object.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Anonymous_Access_To_Variable,
       Action => P.Definitions.Access_To_Object.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Anonymous_Access_To_Constant,
       Action => P.Definitions.Access_To_Object.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Constrained_Array_Definition,
       Action => P.Definitions.Constrained_Array_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Derived_Type_Definition,
       Action => P.Definitions.Derived_Type.Initialize'Access),
      (Name   => N.Initialize,
       Kind   => F.A_Record_Type_Definition,
       Action => P.Definitions.Record_Type.Initialize'Access),
      (Name    => N.Initialize,
       Kind    => F.An_Enumeration_Type_Definition,
       Action  => P.Definitions.Enumeration_Type.Initialize'Access),
      (Name    => N.Initialize,
       Kind    => F.A_Signed_Integer_Type_Definition,
       Action  => P.Definitions.Enumeration_Type.Initialize'Access),
      (Name    => N.Initialize,
       Kind    => F.A_Modular_Type_Definition,
       Action  => P.Definitions.Enumeration_Type.Initialize'Access),
      (Name    => N.Initialize,
       Kind    => F.A_Floating_Point_Definition,
       Action  => P.Definitions.Enumeration_Type.Initialize'Access),

      (Name   => N.Lower,
       Kind   => F.A_Discrete_Simple_Expression_Range_As_Subtype_Definition,
       Action => P.Definitions.Simple_Expression_Range.Lower'Access),
      (Name   => N.Upper,
       Kind   => F.A_Discrete_Simple_Expression_Range_As_Subtype_Definition,
       Action => P.Definitions.Simple_Expression_Range.Upper'Access),
      (Name   => N.Lower,
       Kind   => F.A_Discrete_Simple_Expression_Range,
       Action => P.Definitions.Simple_Expression_Range.Lower'Access),
      (Name   => N.Upper,
       Kind   => F.A_Discrete_Simple_Expression_Range,
       Action => P.Definitions.Simple_Expression_Range.Upper'Access),
      (Name   => N.Lower,
       Kind   => F.A_Simple_Expression_Range,
       Action => P.Definitions.Simple_Expression_Range.Lower'Access),
      (Name   => N.Upper,
       Kind   => F.A_Simple_Expression_Range,
       Action => P.Definitions.Simple_Expression_Range.Upper'Access),
      (Name   => N.Upper,
       Kind   => F.A_Discrete_Subtype_Indication_As_Subtype_Definition,
       Action => P.Definitions.Subtype_Indication.Bounds'Access),
      (Name   => N.Lower,
       Kind   => F.A_Discrete_Subtype_Indication_As_Subtype_Definition,
       Action => P.Definitions.Subtype_Indication.Bounds'Access),
      (Name   => N.Upper,
       Kind   => F.A_Discrete_Range_Attribute_Reference_As_Subtype_Definition,
       Action => P.Definitions.Range_Attribute.Upper'Access),
      (Name   => N.Lower,
       Kind   => F.A_Discrete_Range_Attribute_Reference_As_Subtype_Definition,
       Action => P.Definitions.Range_Attribute.Lower'Access),
      (Name   => N.Upper,
       Kind   => F.A_Discrete_Range_Attribute_Reference,
       Action => P.Definitions.Range_Attribute.Upper'Access),
      (Name   => N.Lower,
       Kind   => F.A_Discrete_Range_Attribute_Reference,
       Action => P.Definitions.Range_Attribute.Lower'Access),
      (Name   => N.Upper,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Bounds'Access),
      (Name   => N.Lower,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Bounds'Access),
      (Name   => N.Upper,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Lower,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Lower,
       Kind   => F.An_Enumeration_Type_Definition,
       Action => P.Definitions.Enumeration_Type.Lower'Access),
      (Name   => N.Upper,
       Kind   => F.An_Enumeration_Type_Definition,
       Action => P.Definitions.Enumeration_Type.Upper'Access),
      (Name   => N.Lower,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Upper,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Lower,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Bounds'Access),
      (Name   => N.Upper,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Bounds'Access),

      --  Intrinsic_Name
      (Name   => N.Intrinsic_Name,
       Kind   => F.A_Function_Declaration,
       Action => P.Declarations.Function_Declarations.Intrinsic_Name'Access),
      (Name   => N.Intrinsic_Name,
       Kind   => F.A_Function_Renaming_Declaration,
       Action => P.Declarations.Function_Renaming_Declaration
                   .Intrinsic_Name'Access),
      (Name   => N.Intrinsic_Name,
       Kind   => F.A_Procedure_Declaration,
       Action => P.Declarations.Procedure_Declaration.Intrinsic_Name'Access),
      (Name   => N.Intrinsic_Name,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Intrinsic_Name'Access),
      (Name   => N.Intrinsic_Name,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components
                   .Intrinsic_Name'Access),

      --  Method_Name
      (Name   => N.Method_Name,
       Kind   => F.A_Defining_Identifier,
       Action => P.Declarations.Defining_Names.Method_Name'Access),
      (Name   => N.Method_Name,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Code'Access),
      (Name   => N.Method_Name,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Method_Name'Access),

      --  Size
      (Name   => N.Size,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Code'Access),
      (Name   => N.Size,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Size,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Bounds'Access),
      (Name   => N.Size,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Size'Access),
      (Name   => N.Size,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Size,
       Kind   => F.A_Component_Declaration,
       Action => P.Declarations.Constant_Declarations.Bounds'Access),
      (Name   => N.Size,
       Kind   => F.A_Component_Definition,
       Action => P.Definitions.Component_Definition.Size'Access),
      (Name   => N.Size,
       Kind   => F.A_Derived_Type_Definition,
       Action => P.Definitions.Derived_Type.Bounds'Access),
      (Name   => N.Size,
       Kind   => F.A_Floating_Point_Definition,
       Action => P.Definitions.Float_Point.Size'Access),
      (Name   => N.Size,
       Kind   => F.A_Record_Type_Definition,
       Action => P.Definitions.Record_Type.Size'Access),
      (Name   => N.Size,
       Kind   => F.A_Constrained_Array_Definition,
       Action => P.Definitions.Constrained_Array_Type.Size'Access),
      (Name   => N.Size,
       Kind   => F.A_Modular_Type_Definition,
       Action => P.Definitions.Modular.Size'Access),
      (Name   => N.Size,
       Kind   => F.A_Signed_Integer_Type_Definition,
       Action => P.Definitions.Modular.Size'Access),
      (Name   => N.Size,
       Kind   => F.A_Private_Type_Declaration,
       Action => P.Declarations.Private_Type.Initialize'Access),

      --  Tag_Name
      (Name   => N.Tag_Name,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Code'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Code'Access),
      (Name   => N.Tag_Name,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Initialize'Access),
      (Name   => N.Tag_Name,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Private_Extension_Declaration,
       Action => P.Declarations.Private_Type.Initialize'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Private_Type_Declaration,
       Action => P.Declarations.Private_Type.Initialize'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Subtype_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Derived_Record_Extension_Definition,
       Action => P.Definitions.Tagged_Record_Type.Tag_Name'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Tagged_Record_Type_Definition,
       Action => P.Definitions.Tagged_Record_Type.Tag_Name'Access),
      (Name   => N.Tag_Name,
       Kind   => F.A_Limited_Interface,
       Action => P.Definitions.Tagged_Record_Type.Tag_Name'Access),

      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Initialize'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Derived_Type_Definition,
       Action => P.Definitions.Derived_Type.Bounds'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Code'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Floating_Point_Definition,
       Action => P.Definitions.Float_Point.Typed_Array_Item_Type'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Modular_Type_Definition,
       Action => P.Definitions.Modular.Typed_Array_Item_Type'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Signed_Integer_Type_Definition,
       Action => P.Definitions.Signed.Typed_Array_Item_Type'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Constrained_Array_Definition,
       Action => P.Common.Empty'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Record_Type_Definition,
       Action => P.Common.Empty'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Bounds'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Private_Type_Declaration,
       Action => P.Declarations.Private_Type.Initialize'Access),
      (Name   => N.Typed_Array_Item_Type,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components
                    .Typed_Array_Item_Type'Access),

      (Name   => N.Typed_Array_Initialize,
       Kind   => F.A_Positional_Array_Aggregate,
       Action => P.Expressions.Pos_Array_Aggregate
                     .Typed_Array_Initialize'Access),
      (Name   => N.Typed_Array_Initialize,
       Kind   => F.A_Record_Aggregate,
       Action => P.Expressions.Record_Aggregate.Typed_Array_Initialize'Access)
     );

   Range_List : constant Range_Array :=
     ((N.Code,
       F.An_And_Operator, F.A_Not_Operator,
       P.Expressions.Identifiers.Code'Access),
      (N.Code,
       F.A_Defining_And_Operator, F.A_Defining_Not_Operator,
       Action => P.Declarations.Defining_Names.Code'Access),
      (N.Code,
       F.An_Access_Attribute, F.An_Implementation_Defined_Attribute,
       P.Expressions.Attribute_Reference.Code'Access),
      (N.Intrinsic_Name,
       F.An_Access_Attribute, F.An_Unknown_Attribute,
       P.Expressions.Attribute_Reference.Intrinsic_Name'Access),
      (N.Intrinsic_Name,
       F.An_And_Operator, F.A_Not_Operator,
       P.Expressions.Identifiers.Intrinsic_Name'Access),
      (N.Method_Name,
       F.A_Defining_And_Operator, F.A_Defining_Not_Operator,
       Action => P.Declarations.Defining_Names.Method_Name'Access));

   Integer_Actions : constant array (Positive range <>) of Integer_Action_Item
     :=
     ((Name   => N.Alignment,
       Kind   => F.A_Subtype_Indication,
       Action => P.Definitions.Subtype_Indication.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.An_Identifier,
       Action => P.Expressions.Identifiers.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Selected_Component,
       Action => P.Expressions.Selected_Components.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.An_Ordinary_Type_Declaration,
       Action => P.Declarations.Ordinary_Type.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Component_Declaration,
       Action => P.Declarations.Component_Declaration.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Component_Definition,
       Action => P.Definitions.Component_Definition.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Derived_Type_Definition,
       Action => P.Definitions.Derived_Type.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Record_Type_Definition,
       Action => P.Definitions.Record_Type.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Floating_Point_Definition,
       Action => P.Definitions.Float_Point.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Modular_Type_Definition,
       Action => P.Definitions.Modular.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Signed_Integer_Type_Definition,
       Action => P.Definitions.Modular.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Private_Type_Declaration,
       Action => P.Declarations.Private_Type.Alignment'Access),
      (Name   => N.Alignment,
       Kind   => F.A_Constrained_Array_Definition,
       Action => P.Definitions.Constrained_Array_Type.Alignment'Access));

   Boolean_Actions : constant array (Positive range <>) of Boolean_Action_Item
     :=
     ((Name   => N.Export,
       Kind   => F.A_Function_Body_Declaration,
       Action => P.Declarations.Procedure_Body_Declarations.Export'Access),
      (Name   => N.Export,
       Kind   => F.A_Function_Declaration,
       Action => P.Declarations.Function_Declarations.Export'Access),
      (Name   => N.Export,
       Kind   => F.A_Procedure_Body_Declaration,
       Action => P.Declarations.Procedure_Body_Declarations.Export'Access),
      (Name   => N.Export,
       Kind   => F.A_Procedure_Declaration,
       Action => P.Declarations.Function_Declarations.Export'Access),

      (Kind   => F.A_Parameter_Specification,
       Name   => N.Has_Simple_Output,
       Action => P.Declarations.Constant_Declarations
                   .Has_Simple_Output'Access),
      (Name   => N.Has_Simple_Output,
       Kind   => F.A_Procedure_Body_Declaration,
       Action => P.Declarations.Procedure_Body_Declarations
                   .Has_Simple_Output'Access),
      (Name   => N.Has_Simple_Output,
       Kind   => F.A_Function_Body_Declaration,
       Action => P.Declarations.Procedure_Body_Declarations
                   .Has_Simple_Output'Access),


      (Kind    => F.A_Function_Declaration,
       Name    => N.Is_Dispatching,
       Action  => P.Declarations.Function_Declarations.Is_Dispatching'Access),
      (Kind    => F.A_Procedure_Declaration,
       Name    => N.Is_Dispatching,
       Action  => P.Declarations.Function_Declarations.Is_Dispatching'Access),
      (Kind    => F.A_Null_Procedure_Declaration,
       Name    => N.Is_Dispatching,
       Action  => P.Declarations.Function_Declarations.Is_Dispatching'Access),
      (Kind    => F.A_Function_Body_Declaration,
       Name    => N.Is_Dispatching,
       Action  =>
         P.Declarations.Procedure_Body_Declarations.Is_Dispatching'Access),
      (Kind    => F.A_Procedure_Body_Declaration,
       Name    => N.Is_Dispatching,
       Action  =>
         P.Declarations.Procedure_Body_Declarations.Is_Dispatching'Access),
      (Kind    => F.A_Selected_Component,
       Name    => N.Is_Dispatching,
       Action  => P.Expressions.Selected_Components.Is_Dispatching'Access),
      (Kind    => F.An_Identifier,
       Name    => N.Is_Dispatching,
       Action  => P.Expressions.Identifiers.Is_Dispatching'Access),
      (Kind   => F.A_Function_Renaming_Declaration,
       Name   => N.Is_Dispatching,
       Action => P.Declarations.Function_Renaming_Declaration
       .Is_Dispatching'Access),
      (Kind   => F.A_Procedure_Renaming_Declaration,
       Name   => N.Is_Dispatching,
       Action => P.Declarations.Function_Renaming_Declaration
       .Is_Dispatching'Access),
      (Name   => N.Is_Dispatching,
       Kind   => F.A_Procedure_Instantiation,
       Action =>
         P.Declarations.Subprogram_Instantiation.Is_Dispatching'Access),
      (Name   => N.Is_Dispatching,
       Kind   => F.A_Function_Instantiation,
       Action =>
         P.Declarations.Subprogram_Instantiation.Is_Dispatching'Access),
      (Name   => N.Is_Dispatching,
       Kind   => F.A_Generic_Procedure_Declaration,
       Action => P.Common.False'Access),
      (Name   => N.Is_Dispatching,
       Kind   => F.A_Generic_Function_Declaration,
       Action => P.Common.False'Access),
      (Kind   => F.An_Object_Renaming_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Constant_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Return_Constant_Specification,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Return_Variable_Specification,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Deferred_Constant_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Component_Declaration,
       Name   => N.Is_Simple_Ref,  --  The same as constant
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Discriminant_Specification,
       Name   => N.Is_Simple_Ref,  --  The same as constant
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Variable_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.A_Parameter_Specification,
       Name   => N.Is_Simple_Ref,
       Action => P.Declarations.Constant_Declarations.Is_Simple_Ref'Access),
      (Kind   => F.An_Ordinary_Type_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Private_Type_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Private_Extension_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Subtype_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Procedure_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Function_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Function_Renaming_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Procedure_Renaming_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Null_Procedure_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Procedure_Instantiation,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Function_Instantiation,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.An_Element_Iterator_Specification,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Loop_Parameter_Specification,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.An_Integer_Number_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.A_Real_Number_Declaration,
       Name   => N.Is_Simple_Ref,
       Action => P.Common.False'Access),
      (Kind   => F.An_Indexed_Component,
       Name   => N.Is_Simple_Ref,
       Action => P.Expressions.Indexed_Component.Is_Simple_Ref'Access),
      (Kind   => F.A_Component_Definition,
       Name   => N.Is_Simple_Ref,
       Action => P.Definitions.Component_Definition.Is_Simple_Ref'Access),

      (Kind   => F.A_Subtype_Indication,
       Name   => N.Is_Simple_Type,
       Action => P.Definitions.Subtype_Indication.Is_Simple_Type'Access),
      (Kind    => F.A_Selected_Component,
       Name    => N.Is_Simple_Type,
       Action  => P.Expressions.Selected_Components.Is_Dispatching'Access),
      (Kind    => F.An_Identifier,
       Name    => N.Is_Simple_Type,
       Action  => P.Expressions.Identifiers.Is_Dispatching'Access),
      (Kind    => F.An_Ordinary_Type_Declaration,
       Name    => N.Is_Simple_Type,
       Action  => P.Declarations.Ordinary_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Subtype_Declaration,
       Name    => N.Is_Simple_Type,
       Action  => P.Declarations.Ordinary_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Private_Type_Declaration,
       Name    => N.Is_Simple_Type,
       Action  => P.Declarations.Private_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Tagged_Incomplete_Type_Declaration,
       Name    => N.Is_Simple_Type,
       Action  => P.Common.False'Access),
      (Kind    => F.An_Incomplete_Type_Declaration,
       Name    => N.Is_Simple_Type,
       Action  => P.Declarations.Incomplete_Type.Is_Simple_Type'Access),
      (Kind    => F.An_Enumeration_Type_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Enumeration_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Signed_Integer_Type_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Enumeration_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Modular_Type_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Enumeration_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Floating_Point_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Enumeration_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Universal_Real_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Common.True'Access),
      (Kind    => F.An_Access_To_Variable,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Enumeration_Type.Is_Simple_Type'Access),
      (Kind    => F.An_Access_To_Constant,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Enumeration_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Record_Type_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Constrained_Array_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Private_Extension_Declaration,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Constrained_Array_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Derived_Type_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Derived_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Derived_Record_Extension_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Tagged_Record_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Tagged_Record_Type_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Tagged_Record_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Limited_Interface,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Constrained_Array_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Constrained_Array_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Constrained_Array_Type.Is_Simple_Type'Access),
      (Kind    => F.An_Unconstrained_Array_Definition,
       Name    => N.Is_Simple_Type,
       Action  => P.Definitions.Constrained_Array_Type.Is_Simple_Type'Access),
      (Kind    => F.A_Class_Attribute,
       Name    => N.Is_Simple_Type,
       Action  => P.Common.False'Access),
      (Kind    => F.A_Base_Attribute,
       Name    => N.Is_Simple_Type,
       Action  => P.Common.True'Access),
      (Kind    => F.An_Anonymous_Access_To_Constant,
       Name    => N.Is_Simple_Type,
       Action  => P.Common.True'Access),
      (Kind    => F.An_Anonymous_Access_To_Variable,
       Name    => N.Is_Simple_Type,
       Action  => P.Common.True'Access),


      (Kind   => F.A_Constrained_Array_Definition,
       Name   => N.Is_Array_Of_Simple,
       Action => P.Definitions.Constrained_Array_Type
                    .Is_Array_Of_Simple'Access),
      (Kind   => F.An_Unconstrained_Array_Definition,
       Name   => N.Is_Array_Of_Simple,
       Action => P.Definitions.Constrained_Array_Type
                    .Is_Array_Of_Simple'Access));

begin
   for X of Action_List loop
      Self.Text.Register_Calculator (X.Kind, X.Name, X.Action);
   end loop;

   for X of Range_List loop
      for J in X.From .. X.To loop
         Self.Text.Register_Calculator (J, X.Name, X.Action);
      end loop;
   end loop;

   --  Call_Convention
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Function_Call,
      Action => P.Expressions.Function_Calls.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.An_Identifier,
      Action => P.Expressions.Identifiers.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Function_Declaration,
      Action => P.Declarations.Function_Declarations.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Function_Renaming_Declaration,
      Action => P.Declarations.Function_Renaming_Declaration
      .Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Procedure_Renaming_Declaration,
      Action => P.Declarations.Function_Renaming_Declaration
      .Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Procedure_Declaration,
      Action => P.Declarations.Procedure_Declaration.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Null_Procedure_Declaration,
      Action => P.Declarations.Procedure_Declaration.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Selected_Component,
      Action => P.Expressions.Selected_Components.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Procedure_Instantiation,
      Action =>
        P.Declarations.Subprogram_Instantiation.Call_Convention'Access);
   Self.Call_Convention.Register_Calculator
     (Name   => N.Call_Convention,
      Kind   => F.A_Function_Instantiation,
      Action =>
        P.Declarations.Subprogram_Instantiation.Call_Convention'Access);

   for X in F.An_And_Operator .. F.A_Not_Operator loop
      Self.Call_Convention.Register_Calculator
        (Kind    => X,
         Name    => N.Call_Convention,
         Action  => P.Expressions.Identifiers.Call_Convention'Access);
   end loop;

   for X in F.An_Access_Attribute .. F.An_Unknown_Attribute loop
      Self.Call_Convention.Register_Calculator
        (Kind    => X,
         Name    => N.Call_Convention,
         Action  => P.Expressions.Attribute_Reference.Call_Convention'Access);
   end loop;

   for X in F.Flat_Declaration_Kinds loop
      Self.Boolean.Register_Calculator
        (Kind    => X,
         Name    => N.Inside_Package,
         Action  => P.Declarations.Inside_Package'Access);
   end loop;

   for X in F.An_And_Operator .. F.A_Not_Operator loop
      Self.Boolean.Register_Calculator
        (Kind    => X,
         Name    => N.Is_Dispatching,
         Action  => P.Expressions.Identifiers.Is_Dispatching'Access);
   end loop;

   for X of Integer_Actions loop
      Self.Integer.Register_Calculator
        (Kind    => X.Kind,
         Name    => X.Name,
         Action  => X.Action);
   end loop;

   for X of Boolean_Actions loop
      Self.Boolean.Register_Calculator
        (Kind    => X.Kind,
         Name    => X.Name,
         Action  => X.Action);
   end loop;
end Engines.Registry_All_Actions;
