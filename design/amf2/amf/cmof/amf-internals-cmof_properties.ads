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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Classes;
with AMF.CMOF.Classifiers.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Multiplicity_Elements;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Redefinable_Elements;
with AMF.CMOF.Types;
with AMF.Internals.CMOF_Features;
with AMF.Internals.CMOF_Multiplicity_Elements;
pragma Elaborate (AMF.Internals.CMOF_Multiplicity_Elements);
with AMF.Internals.CMOF_Typed_Elements;
pragma Elaborate (AMF.Internals.CMOF_Typed_Elements);

package AMF.Internals.CMOF_Properties is

   package Multiplicity_Elements is
     new AMF.Internals.CMOF_Multiplicity_Elements
          (AMF.Internals.CMOF_Features.CMOF_Feature_Proxy);

   package Typed_Elements is
     new AMF.Internals.CMOF_Typed_Elements
          (Multiplicity_Elements.CMOF_Multiplicity_Element_Proxy);

   type CMOF_Property_Proxy is
     limited new Typed_Elements.CMOF_Typed_Element_Proxy
       and AMF.CMOF.Properties.CMOF_Property
         with null record;

   --  XXX These subprograms are stubs

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Lower
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_Integer);

   overriding procedure Set_Upper
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_Unlimited_Natural);

   overriding function Includes_Multiplicity
    (Self : not null access constant CMOF_Property_Proxy;
     M : AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element_Access)
       return Boolean;

   overriding function Includes_Cardinality
    (Self : not null access constant CMOF_Property_Proxy;
     C : Integer)
       return Boolean;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Property_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Property_Proxy)
       return League.Strings.Universal_String;

   overriding procedure Set_Type
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Types.CMOF_Type_Access);

   overriding procedure Set_Is_Leaf
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant CMOF_Property_Proxy;
     Redefined : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
       return Boolean;

   overriding function Get_Is_Read_Only
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Read_Only
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Default
    (Self : not null access constant CMOF_Property_Proxy)
       return Optional_String;

   overriding procedure Set_Default
    (Self : not null access CMOF_Property_Proxy;
     To   : Optional_String);

   overriding function Get_Is_Composite
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Composite
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Is_Derived_Union
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived_Union
    (Self : not null access CMOF_Property_Proxy;
     To   : Boolean);

   overriding function Get_Class
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Classes.CMOF_Class_Access;

   overriding procedure Set_Class
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Classes.CMOF_Class_Access);

   overriding function Get_Owning_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association_Access;

   overriding procedure Set_Owning_Association
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Associations.CMOF_Association_Access);

   overriding function Get_Redefined_Property
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;

   overriding function Get_Subsetted_Property
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;

   overriding function Get_Opposite
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.CMOF_Property_Access;
   --  Getter of Property::opposite.
   --
   --  In the case where the property is one navigable end of a binary 
   --  association with both ends navigable, this gives the other end.

   overriding procedure Set_Opposite
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Properties.CMOF_Property_Access);

   overriding function Get_Datatype
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
   --  Getter of Property::datatype.
   --
   --  The DataType that owns this Property.

   overriding procedure Set_Datatype
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type_Access);

   overriding function Get_Association
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Associations.CMOF_Association_Access;

   overriding procedure Set_Association
    (Self : not null access CMOF_Property_Proxy;
     To   : AMF.CMOF.Associations.CMOF_Association_Access);

   overriding function Opposite
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Properties.CMOF_Property_Access;

   overriding function Is_Consistent_With
    (Self : not null access constant CMOF_Property_Proxy;
     Redefinee : AMF.CMOF.Redefinable_Elements.CMOF_Redefinable_Element_Access)
       return Boolean;

   overriding function Subsetting_Context
    (Self : not null access constant CMOF_Property_Proxy)
       return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier;

   overriding function Is_Navigable
    (Self : not null access constant CMOF_Property_Proxy)
       return Boolean;

   overriding function Is_Attribute
    (Self : not null access constant CMOF_Property_Proxy;
     P : AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean;

end AMF.Internals.CMOF_Properties;
