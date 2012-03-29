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

package AMF.Factories.CMOF_Factories is

   pragma Preelaborate;

   type CMOF_Factory is limited interface;

   not overriding function Create_Association
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Associations.CMOF_Association_Access is abstract;

   not overriding function Create_Class
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Classes.CMOF_Class_Access is abstract;

   not overriding function Create_Comment
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Comments.CMOF_Comment_Access is abstract;

   not overriding function Create_Constraint
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Constraints.CMOF_Constraint_Access is abstract;

   not overriding function Create_Data_Type
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access is abstract;

   not overriding function Create_Element_Import
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Element_Imports.CMOF_Element_Import_Access is abstract;

   not overriding function Create_Enumeration
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Enumerations.CMOF_Enumeration_Access is abstract;

   not overriding function Create_Enumeration_Literal
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access is abstract;

   not overriding function Create_Expression
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Expressions.CMOF_Expression_Access is abstract;

   not overriding function Create_Opaque_Expression
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Opaque_Expressions.CMOF_Opaque_Expression_Access is abstract;

   not overriding function Create_Operation
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Operations.CMOF_Operation_Access is abstract;

   not overriding function Create_Package
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Packages.CMOF_Package_Access is abstract;

   not overriding function Create_Package_Import
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Package_Imports.CMOF_Package_Import_Access is abstract;

   not overriding function Create_Package_Merge
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Package_Merges.CMOF_Package_Merge_Access is abstract;

   not overriding function Create_Parameter
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Parameters.CMOF_Parameter_Access is abstract;

   not overriding function Create_Primitive_Type
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access is abstract;

   not overriding function Create_Property
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Properties.CMOF_Property_Access is abstract;

   not overriding function Create_Tag
    (Self : not null access CMOF_Factory)
       return AMF.CMOF.Tags.CMOF_Tag_Access is abstract;

end AMF.Factories.CMOF_Factories;
