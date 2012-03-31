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
with AMF.CMOF.Associations;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Classes;
with AMF.CMOF.Packages;
with AMF.MOF.Tags;
with AMF.UML.Enumerations;
with AMF.UML.Enumeration_Literals;
with AMF.UML.Extensions;
with AMF.UML.Extension_Ends;
with AMF.UML.Primitive_Types;
with AMF.UML.Profiles;
with AMF.UML.Properties;
with AMF.UML.Stereotypes;
with AMF.Visitors.MOF_Visitors;
with AMF.Visitors.UML_Visitors;

with AMF.Transformations.UML_Profile_To_CMOF.Contexts;

private package AMF.Transformations.UML_Profile_To_CMOF.Stage_1 is

   type Transformer
    (Context : not null access Contexts.Transformation_Context) is
       limited new AMF.Visitors.MOF_Visitors.MOF_Visitor
         and AMF.Visitors.UML_Visitors.UML_Visitor with
   record
      The_Association : AMF.CMOF.Associations.CMOF_Association_Access;
      The_Enumeration : AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
      The_Class       : AMF.CMOF.Classes.CMOF_Class_Access;
      The_Package     : AMF.CMOF.Packages.CMOF_Package_Access;
   end record;

   overriding procedure Enter_Enumeration
    (Self    : in out Transformer;
     Element : not null AMF.UML.Enumerations.UML_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Enumeration
    (Self    : in out Transformer;
     Element : not null AMF.UML.Enumerations.UML_Enumeration_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Enumeration_Literal
    (Self    : in out Transformer;
     Element : not null AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Extension
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extensions.UML_Extension_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Extension
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extensions.UML_Extension_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Extension_End
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extension_Ends.UML_Extension_End_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Primitive_Type
    (Self    : in out Transformer;
     Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Profile
    (Self    : in out Transformer;
     Element : not null AMF.UML.Profiles.UML_Profile_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Profile
    (Self    : in out Transformer;
     Element : not null AMF.UML.Profiles.UML_Profile_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Property
    (Self    : in out Transformer;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Stereotype
    (Self    : in out Transformer;
     Element : not null AMF.UML.Stereotypes.UML_Stereotype_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Stereotype
    (Self    : in out Transformer;
     Element : not null AMF.UML.Stereotypes.UML_Stereotype_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Enter_Tag
    (Self    : in out Transformer;
     Element : not null AMF.MOF.Tags.MOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control);

end AMF.Transformations.UML_Profile_To_CMOF.Stage_1;
