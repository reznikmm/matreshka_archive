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
private with Ada.Containers.Hashed_Maps;

private with AMF.CMOF.Elements;
private with AMF.Elements.Hash;
with AMF.URI_Stores;
private with AMF.Factories.CMOF_Factories;
private with AMF.Visitors.MOF_Visitors;
private with AMF.Visitors.UML_Visitors;
private with AMF.UML.Associations;
private with AMF.UML.Classes;
private with AMF.UML.Comments;
private with AMF.UML.Constraints;
private with AMF.UML.Data_Types;
private with AMF.UML.Element_Imports;
private with AMF.UML.Elements;
private with AMF.UML.Enumeration_Literals;
private with AMF.UML.Enumerations;
private with AMF.UML.Generalizations;
private with AMF.UML.Instance_Values;
private with AMF.UML.Literal_Booleans;
private with AMF.UML.Literal_Integers;
private with AMF.UML.Literal_Nulls;
private with AMF.UML.Literal_Reals;
private with AMF.UML.Literal_Strings;
private with AMF.UML.Literal_Unlimited_Naturals;
private with AMF.UML.Opaque_Expressions;
private with AMF.UML.Operations;
private with AMF.UML.Package_Imports;
private with AMF.UML.Package_Merges;
private with AMF.UML.Packages;
private with AMF.UML.Parameters;
private with AMF.UML.Primitive_Types;
private with AMF.UML.Properties;

package AMF.Transformations.UML_MOF_To_CMOF is

   procedure Transform
    (Source : not null AMF.URI_Stores.URI_Store_Access;
     Target : not null AMF.URI_Stores.URI_Store_Access);
   --  Transforms UML+MOF model to equivalent CMOF model.

private

   package Element_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.Elements.Element_Access,
           AMF.CMOF.Elements.CMOF_Element_Access,
           AMF.Elements.Hash,
           AMF.Elements."=",
           AMF.CMOF.Elements."=");

   type UML_MOF_To_CMOF_Transformer is tagged limited record
      Target       : AMF.URI_Stores.URI_Store_Access;
      Factory      : AMF.Factories.CMOF_Factories.CMOF_Factory_Access;
      CMOF_Element : Element_Maps.Map;
   end record;

   procedure Initialize
    (Self   : not null access UML_MOF_To_CMOF_Transformer'Class;
     Target : not null AMF.URI_Stores.URI_Store_Access);

   type First_Pass_Visitor
    (Transformer : not null access UML_MOF_To_CMOF_Transformer'Class) is
       limited new AMF.Visitors.UML_Visitors.UML_Visitor
         and AMF.Visitors.MOF_Visitors.MOF_Visitor with null record;

   procedure Register
    (Self         : in out First_Pass_Visitor'Class;
     UML_Element  : not null access AMF.UML.Elements.UML_Element'Class;
     CMOF_Element : not null access AMF.CMOF.Elements.CMOF_Element'Class);

   overriding procedure Enter_Association
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Associations.UML_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Class
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Classes.UML_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Comment
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Comments.UML_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Constraint
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Constraints.UML_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Data_Type
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Data_Types.UML_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Element_Import
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Element_Imports.UML_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Enumerations.UML_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Generalization
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Generalizations.UML_Generalization_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Instance_Value
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Instance_Values.UML_Instance_Value_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Boolean
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Integer
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Literal_Integers.UML_Literal_Integer_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Null
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Literal_Nulls.UML_Literal_Null_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Real
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Literal_Reals.UML_Literal_Real_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_String
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Literal_Strings.UML_Literal_String_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Unlimited_Natural
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Opaque_Expression
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Operation
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Operations.UML_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Packages.UML_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package_Import
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Package_Imports.UML_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package_Merge
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Package_Merges.UML_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Parameter
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Parameters.UML_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Primitive_Type
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Property
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   type Second_Pass_Visitor
    (Transformer : not null access UML_MOF_To_CMOF_Transformer'Class) is
       limited new AMF.Visitors.UML_Visitors.UML_Visitor
         and AMF.Visitors.MOF_Visitors.MOF_Visitor with null record;

   function Resolve
    (Self        : in out Second_Pass_Visitor'Class;
     UML_Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Elements.CMOF_Element_Access;

   overriding procedure Enter_Association
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Associations.UML_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Class
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Classes.UML_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Comment
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Comments.UML_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Constraint
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Constraints.UML_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Data_Type
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Data_Types.UML_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Element_Import
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Element_Imports.UML_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Enumerations.UML_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Generalization
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Generalizations.UML_Generalization_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Instance_Value
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Instance_Values.UML_Instance_Value_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Boolean
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Integer
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Literal_Integers.UML_Literal_Integer_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Null
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Literal_Nulls.UML_Literal_Null_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Real
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Literal_Reals.UML_Literal_Real_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_String
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Literal_Strings.UML_Literal_String_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Literal_Unlimited_Natural
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Opaque_Expression
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Operation
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Operations.UML_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Packages.UML_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package_Import
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Package_Imports.UML_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package_Merge
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Package_Merges.UML_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Parameter
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Parameters.UML_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Primitive_Type
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Property
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control);

end AMF.Transformations.UML_MOF_To_CMOF;
