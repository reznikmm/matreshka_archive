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

with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Elements;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Enumeration_Literals;
with AMF.CMOF.Packages;
with AMF.CMOF.Primitive_Types;
with AMF.CMOF.Properties;
with AMF.CMOF.Tags;
with AMF.UML.Elements;
private with AMF.UML.Elements.Hash;
with AMF.URI_Stores;

package AMF.Transformations.UML_Profile_To_CMOF.Contexts is

   type Transformation_Context is tagged limited private;

   procedure Initialize (Self : in out Transformation_Context);

   function Destination
    (Self : in out Transformation_Context)
       return not null AMF.URI_Stores.URI_Store_Access;
   --  Returns extent where result metamodel is created.

   function Mapped_Element
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Elements.CMOF_Element_Access;
   --  Returns element of CMOF metamodel associated with the specified element
   --  of UML profile.

   function Create_CMOF_Association
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Associations.CMOF_Association_Access;
   --  Creates element of CMOF::Association and associate it with specified UML
   --  element.

   function Create_CMOF_Class
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Classes.CMOF_Class_Access;
   --  Creates element of CMOF::Class and associate it with specified UML
   --  element.

   function Create_CMOF_Enumeration
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
   --  Creates element of CMOF::Enumeration and associate it with specified UML
   --  element.

   function Create_CMOF_Enumeration_Literal
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;
   --  Creates element of CMOF::Enumeration_Literal and associate it with
   --  specified UML element.

   function Create_CMOF_Package
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Packages.CMOF_Package_Access;
   --  Creates element of CMOF::Package and associate it with specified UML
   --  element.

   function Create_CMOF_Primitive_Type
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access;
   --  Creates element of CMOF::PrimitiveType and associate it with specified
   --  UML element.

   function Create_CMOF_Property
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Properties.CMOF_Property_Access;
   --  Creates element of CMOF::Property and associate it with specified UML
   --  element.

   function Create_CMOF_Tag
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Tags.CMOF_Tag_Access;
   --  Creates element of CMOF::Tag and associate it with specified MOF
   --  element.

private

   package UML_Element_To_CMOF_Element_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.UML.Elements.UML_Element_Access,
           AMF.CMOF.Elements.CMOF_Element_Access,
           AMF.UML.Elements.Hash,
           AMF.UML.Elements."=",
           AMF.CMOF.Elements."=");

   type Transformation_Context is tagged limited record
      Destination                        : AMF.URI_Stores.URI_Store_Access;

      Element_Map                        :
        UML_Element_To_CMOF_Element_Maps.Map;

      CMOF_Association_Metaclass         : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Class_Metaclass               : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Enumeration_Metaclass         : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Enumeration_Literal_Metaclass : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Package_Metaclass             : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Primitive_Type_Metaclass      : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Property_Metaclass            : AMF.CMOF.Classes.CMOF_Class_Access;
      CMOF_Tag_Metaclass                 : AMF.CMOF.Classes.CMOF_Class_Access;

      UML_Package                        :
        AMF.CMOF.Packages.CMOF_Package_Access;
      Primitive_Types_Package            :
        AMF.CMOF.Packages.CMOF_Package_Access;
   end record;

end AMF.Transformations.UML_Profile_To_CMOF.Contexts;
