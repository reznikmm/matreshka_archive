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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Comments;
with AMF.CMOF.Constraints;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Element_Imports;
with AMF.CMOF.Enumeration_Literals;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Expressions;
with AMF.CMOF.Opaque_Expressions;
with AMF.CMOF.Operations;
with AMF.CMOF.Package_Imports;
with AMF.CMOF.Package_Merges;
with AMF.CMOF.Packages;
with AMF.CMOF.Parameters;
with AMF.CMOF.Primitive_Types;
with AMF.CMOF.Properties;
with AMF.CMOF.Tags;

package AMF.Visitors.CMOF_Visitors is

   pragma Preelaborate;

   type CMOF_Visitor is limited interface and AMF.Visitors.Abstract_Visitor;

   not overriding procedure Enter_Association
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Association
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Class
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Class
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Comment
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Comment
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Comments.CMOF_Comment_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Constraint
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Constraint
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Constraints.CMOF_Constraint_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Data_Type
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Data_Type
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Element_Import
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Element_Imports.CMOF_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Element_Import
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Element_Imports.CMOF_Element_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Enumeration
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Enumeration
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Enumeration_Literal
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Enumeration_Literal
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Expression
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Expressions.CMOF_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Expression
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Expressions.CMOF_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Opaque_Expression
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Opaque_Expression
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Operation
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Operation
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Operations.CMOF_Operation_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Package
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Package
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Package_Import
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Package_Imports.CMOF_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Package_Import
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Package_Imports.CMOF_Package_Import_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Package_Merge
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Package_Merge
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Parameter
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Parameter
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Parameters.CMOF_Parameter_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Primitive_Type
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Primitive_Type
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Property
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Property
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Tag
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Tag
    (Self    : in out CMOF_Visitor;
     Element : not null AMF.CMOF.Tags.CMOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

end AMF.Visitors.CMOF_Visitors;
