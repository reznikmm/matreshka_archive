------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Hashed_Sets;
with Ada.Containers.Ordered_Maps;
with Ada.Containers.Ordered_Sets;
with Ada.Containers.Vectors;

with League.Strings.Hash;

with AMF.CMOF.Data_Types;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Classes.Hash;
with AMF.CMOF.Elements.Hash;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Parameters;
with AMF.CMOF.Properties;
with AMF.CMOF.Packages;
with AMF.Elements.Collections;
with AMF.Extents.Collections;

package Generator is

   use type League.Strings.Universal_String;

   function Less
    (Left  : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Right : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access) return Boolean;

   function Less
    (Left  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Right : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right.

   function Less
    (Left  : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Right : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right.

   function Less
    (Left  : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access;
     Right : not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right.

   package CMOF_Named_Element_Ordered_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access,
           Less,
           AMF.CMOF.Named_Elements."=");

   package CMOF_Class_Sets is
     new Ada.Containers.Hashed_Sets
          (AMF.CMOF.Classes.CMOF_Class_Access,
           AMF.CMOF.Classes.Hash,
           AMF.CMOF.Classes."=",
           AMF.CMOF.Classes."=");

   package CMOF_Class_Ordered_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Classes.CMOF_Class_Access, Less, AMF.CMOF.Classes."=");

   package CMOF_Data_Type_Ordered_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Data_Types.CMOF_Data_Type_Access,
           Less,
           AMF.CMOF.Data_Types."=");

   package CMOF_Enumeration_Ordered_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Enumerations.CMOF_Enumeration_Access,
           Less,
           AMF.CMOF.Enumerations."=");

   package CMOF_Element_String_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Elements.CMOF_Element_Access,
           League.Strings.Universal_String,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=",
           League.Strings."=");

   package CMOF_Element_Number_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Elements.CMOF_Element_Access,
           Positive,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=");

   package Number_CMOF_Element_Maps is
     new Ada.Containers.Ordered_Maps
          (Positive,
           AMF.CMOF.Elements.CMOF_Element_Access,
           "<",
           AMF.CMOF.Elements."=");

   package CMOF_Element_Sets is
     new Ada.Containers.Hashed_Sets
          (AMF.CMOF.Elements.CMOF_Element_Access,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=",
           AMF.CMOF.Elements."=");

   function Sort
    (Set : CMOF_Element_Sets.Set)
       return CMOF_Named_Element_Ordered_Sets.Set;

   package Extent_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           AMF.Extents.Extent_Access,
           AMF.Extents."=");

   -------------------------------------------
   --  Second generation of internal data.  --
   -------------------------------------------

--   function Hash
--    (Item : not null access AMF.CMOF.Elements.CMOF_Element'Class)
--       return Ada.Containers.Hash_Type;

--   function Hash
--    (Item : not null AMF.CMOF.Classes.CMOF_Class_Access)
--       return Ada.Containers.Hash_Type;

   function Hash
    (Item : AMF.CMOF.Properties.CMOF_Property_Access)
       return Ada.Containers.Hash_Type;

   function Hash (Item : Natural) return Ada.Containers.Hash_Type;

   function Less
    (Left  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Right : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when name of Left is less than name of Right, if they are
   --  equal returns True when internal identifier of Left is less than
   --  internals identifier of Right.

   package CMOF_Property_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Properties.CMOF_Property_Access,
           Less,
           AMF.CMOF.Properties."=");

   package CMOF_Property_Natural_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Properties.CMOF_Property_Access,
           Natural,
           Hash,
           AMF.CMOF.Properties."=");

   package Natural_CMOF_Property_Maps is
     new Ada.Containers.Hashed_Maps
          (Natural,
           AMF.CMOF.Properties.CMOF_Property_Access,
           Hash,
           "=",
           AMF.CMOF.Properties."=");

   type Class_Information is record
      Class                : AMF.CMOF.Classes.CMOF_Class_Access;
      All_Attributes       : CMOF_Property_Sets.Set;
      --  Set of all attributes of the class.
      Redefined_Attributes : CMOF_Property_Sets.Set;
      --  Subset of all attributes of the class witch is redefined by another
      --  attribute of the class.
   end record;
   --  Class information record contains extracted information for each class.

   type Class_Information_Access is access all Class_Information;

   package Class_Information_Maps is
     new Ada.Containers.Ordered_Maps
          (AMF.CMOF.Classes.CMOF_Class_Access,
           Class_Information_Access,
           Less);

--   type Attribute_Group is record
--      Properties : CMOF_Property_Sets.Set;
----      Classes    : CMOF_Class_Sets.Set;
--   end record;
--
--   type Attribute_Group_Access is access all Attribute_Group;
--
--   function Less
--    (Left  : Attribute_Group_Access;
--     Right : Attribute_Group_Access) return Boolean;
--
--   package Attribute_Group_Sets is
--     new Ada.Containers.Ordered_Sets (Attribute_Group_Access, Less);
--
----   package CMOF_Property_Attribute_Homograph_Maps is
----     new Ada.Containers.

   package String_Number_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Natural,
           League.Strings.Hash,
           League.Strings."=");

   package Number_String_Maps is
     new Ada.Containers.Ordered_Maps
          (Natural, League.Strings.Universal_String);

   ---------------------------
   -- Metamodel information --
   ---------------------------

   type Metamodel_Information is tagged limited record
      Extent                       : AMF.Extents.Extent_Access;
      --  Extent which contains metamodel.

      Associations                 : CMOF_Element_Sets.Set;
      Classes                      : CMOF_Element_Sets.Set;
      Data_Types                   : CMOF_Element_Sets.Set;
      Packages                     : CMOF_Element_Sets.Set;
      --  All classes, associations, data types and packages of the model
      --  correspondingly.

      Non_Abstract_Classes         : CMOF_Class_Ordered_Sets.Set;
      --  Alphabetically ordered set of non-abstract classes in the metamodel.

      Root_Package                 : AMF.CMOF.Packages.CMOF_Package_Access;
      --  Root package of metamodel.

      Number_Element               : Number_CMOF_Element_Maps.Map;
      Element_Numbers              : CMOF_Element_Number_Maps.Map;
      --  Mapping of the assigned number to corresponding element and back.

      Ada_Name                     : League.Strings.Universal_String;
      --  Ada style name of the metamodel.

      First_Class                  : Positive;
      Last_Class                   : Natural;
      First_Class_Property         : Positive;
      Last_Class_Property          : Natural;
      Last_Multiple_Class_Property : Natural;
      Last_Element                 : Positive;
      --  First and last numbers are assigned to:
      --   - classes
      --   - properties owned by classes
      --   - multiple properties of element type owned by classes

      String_Numbers               : String_Number_Maps.Map;
      Number_Strings               : Number_String_Maps.Map;
      --  Mappings from strings to allocated number and back.
   end record;

   type Metamodel_Information_Access is access all Metamodel_Information;

   package Extent_Metamodel_Information_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.Extents.Extent_Access,
           Metamodel_Information_Access,
           AMF.Extents.Collections.Hash,
           AMF.Extents."=");

   ------------------------
   -- Module information --
   ------------------------

   type Module_Information is limited record
      Ada_Name             : League.Strings.Universal_String;
      --  Ada style name of the generated module.

      Classes              : CMOF_Class_Sets.Set;
      --  All classes from all metamodels of module.

      Extents              : Extent_Vectors.Vector;
      --  All extents of module.

      Attribute_Member     : CMOF_Property_Natural_Maps.Map;
      Attribute_Collection : CMOF_Property_Natural_Maps.Map;
      --  Attribute to member or collection mappings.
   end record;

   ------------------------
   -- Global information --
   ------------------------

   Used_Extents    : AMF.Extents.Collections.Set_Of_Extent;
   Metamodel_Infos : Extent_Metamodel_Information_Maps.Map;

   Class_Info : Class_Information_Maps.Map;
   --  Mapping from CMOF::Class to class information.

--   Attribute_Info : Property_
--   Attribute_Groups : Attribute_Group_Sets.Set;

   Metamodel_Info : Metamodel_Information_Access;
   --  Metamodel information. This is temporal variable to assist code
   --  refactoring.

   Module_Info : Module_Information;
   --  Module information.

   ---------------
   -- Utilities --
   ---------------

   type Representation_Kinds is
    (Value, Holder, Set, Ordered_Set, Bag, Sequence);

   function Representation
    (Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access)
       return Representation_Kinds;

   type Subprogram_Kinds is (Public, Internal, Proxy);

   function Has_Internal_Setter
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when specified attribute has internal setter. Note, it is
   --  not needed for attributes of element type because their values are
   --  represented by links.

   function Use_Member_Slot
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;
   --  Returns True when member slot is used for this attribute.

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   function Class_Properties_Except_Redefined
    (Self : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Element_Sets.Set;
   --  Returns all properties of the specified class (including properties of
   --  superclasses, but except redefined properties).

end Generator;
