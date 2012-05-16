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

private with AMF.CMOF.Associations;
private with AMF.CMOF.Classes;
private with AMF.CMOF.Comments;
private with AMF.CMOF.Constraints;
private with AMF.CMOF.Data_Types;
private with AMF.CMOF.Element_Imports;
private with AMF.CMOF.Elements.Hash;
private with AMF.CMOF.Enumeration_Literals;
private with AMF.CMOF.Enumerations;
private with AMF.CMOF.Expressions;
private with AMF.CMOF.Opaque_Expressions;
private with AMF.CMOF.Operations;
private with AMF.CMOF.Package_Imports;
private with AMF.CMOF.Package_Merges;
private with AMF.CMOF.Packages;
private with AMF.CMOF.Parameters;
private with AMF.CMOF.Primitive_Types;
private with AMF.CMOF.Properties;
private with AMF.CMOF.Tags;
--private with AMF.Elements.Hash;
private with AMF.Factories.MOF_Factories;
private with AMF.Factories.UML_Factories;
private with AMF.UML.Elements;
with AMF.URI_Stores;
private with AMF.Visitors.CMOF_Visitors;

package AMF.Transformations.CMOF_To_UML_MOF is

   procedure Transform
    (Source : not null AMF.URI_Stores.URI_Store_Access;
     Target : not null AMF.URI_Stores.URI_Store_Access);
   --  Transforms UML+MOF model to equivalent CMOF model.

private

   package Element_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Elements.CMOF_Element_Access,
           AMF.UML.Elements.UML_Element_Access,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=",
           AMF.UML.Elements."=");

   type CMOF_To_UML_MOF_Transformer is tagged limited record
      Source         : AMF.URI_Stores.URI_Store_Access;
      Target         : AMF.URI_Stores.URI_Store_Access;
      UML_Factory    : AMF.Factories.UML_Factories.UML_Factory_Access;
      MOF_Factory    : AMF.Factories.MOF_Factories.MOF_Factory_Access;
      To_UML_Element : Element_Maps.Map;
   end record;

   procedure Initialize
    (Self   : not null access CMOF_To_UML_MOF_Transformer'Class;
     Source : not null AMF.URI_Stores.URI_Store_Access;
     Target : not null AMF.URI_Stores.URI_Store_Access);

   type First_Pass_Visitor
    (Transformer : not null access CMOF_To_UML_MOF_Transformer'Class) is
       limited new AMF.Visitors.CMOF_Visitors.CMOF_Visitor with null record;

   procedure Register
    (Self         : in out First_Pass_Visitor'Class;
     CMOF_Element : not null access AMF.CMOF.Elements.CMOF_Element'Class;
     UML_Element  : not null access AMF.UML.Elements.UML_Element'Class);
   --  Register CMOF to UML+MOF element mapping and set identifier of the UML
   --  element inside target extent.

   overriding procedure Enter_Association
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Class
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Comment
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Constraint
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Data_Type
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Element_Import
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Element_Imports.CMOF_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Expression
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Expressions.CMOF_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Opaque_Expression
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Operation
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package_Import
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Package_Imports.CMOF_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package_Merge
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Parameter
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Primitive_Type
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Property
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Tag
    (Self    : in out First_Pass_Visitor;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   type Second_Pass_Visitor
    (Transformer : not null access CMOF_To_UML_MOF_Transformer'Class) is
       limited new AMF.Visitors.CMOF_Visitors.CMOF_Visitor with null record;

   function Resolve
    (Self    : in out Second_Pass_Visitor'Class;
     Element : not null access AMF.CMOF.Elements.CMOF_Element'Class)
       return not null AMF.UML.Elements.UML_Element_Access;

   overriding procedure Enter_Association
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Class
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Comment
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Constraint
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control);

--   overriding procedure Enter_Data_Type
--    (Self    : in out Second_Pass_Visitor;
--     Element : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
--     Control : in out AMF.Visitors.Traverse_Control);
--
--   overriding procedure Enter_Element_Import
--    (Self    : in out Second_Pass_Visitor;
--     Element : not null AMF.CMOF.Element_Imports.CMOF_Element_Import_Access;
--     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control);

--   overriding procedure Enter_Expression
--    (Self    : in out Second_Pass_Visitor;
--     Element : not null AMF.CMOF.Expressions.CMOF_Expression_Access;
--     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Opaque_Expression
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Operation
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Package
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control);

--   overriding procedure Enter_Package_Import
--    (Self    : in out Second_Pass_Visitor;
--     Element : not null AMF.CMOF.Package_Imports.CMOF_Package_Import_Access;
--     Control : in out AMF.Visitors.Traverse_Control);
--
--   overriding procedure Enter_Package_Merge
--    (Self    : in out Second_Pass_Visitor;
--     Element : not null AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access;
--     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Parameter
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Primitive_Type
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Property
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Tag
    (Self    : in out Second_Pass_Visitor;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control);

end AMF.Transformations.CMOF_To_UML_MOF;
