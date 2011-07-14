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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.UML_Elements;
with AMF.UML.Associations;
with AMF.UML.Classes;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Connectable_Element_Template_Parameters;
with AMF.UML.Connector_Ends.Collections;
with AMF.UML.Data_Types;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Deployments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Extension_Ends;
with AMF.UML.Interfaces;
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Properties.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Stereotypes;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Types.Collections;
with AMF.UML.Value_Specifications;

package AMF.Internals.UML_Extension_Ends is

   type UML_Extension_End_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Extension_Ends.UML_Extension_End with null record;

   overriding function Get_Lower
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Integer;

   overriding procedure Set_Lower
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_Integer);

   overriding function Get_Type
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Stereotypes.UML_Stereotype_Access;

   overriding procedure Set_Type
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Stereotypes.UML_Stereotype_Access);

   overriding function Get_Aggregation
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.UML_Aggregation_Kind;

   overriding procedure Set_Aggregation
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.UML_Aggregation_Kind);

   overriding function Get_Association
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Associations.UML_Association_Access;

   overriding procedure Set_Association
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Associations.UML_Association_Access);

   overriding function Get_Association_End
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;

   overriding procedure Set_Association_End
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);

   overriding function Get_Class
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Classes.UML_Class_Access;

   overriding procedure Set_Class
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Classes.UML_Class_Access);

   overriding function Get_Datatype
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Data_Types.UML_Data_Type_Access;

   overriding procedure Set_Datatype
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Data_Types.UML_Data_Type_Access);

   overriding function Get_Default
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Default
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Default_Value
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   overriding procedure Set_Default_Value
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);

   overriding function Get_Interface
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Interfaces.UML_Interface_Access;

   overriding procedure Set_Interface
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Interfaces.UML_Interface_Access);

   overriding function Get_Is_Composite
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Composite
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Is_Derived
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Is_Derived_Union
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived_Union
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Is_ID
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_ID
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Is_Read_Only
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Read_Only
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Opposite
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;

   overriding procedure Set_Opposite
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);

   overriding function Get_Owning_Association
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Associations.UML_Association_Access;

   overriding procedure Set_Owning_Association
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Associations.UML_Association_Access);

   overriding function Get_Qualifier
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property;

   overriding function Get_Redefined_Property
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;

   overriding function Get_Subsetted_Property
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;

   overriding function Get_End
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End;

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access);

   overriding function Get_Type
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Types.UML_Type_Access;

   overriding procedure Set_Type
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Name
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Get_Deployed_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Deployment
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Deployments.Collections.Set_Of_UML_Deployment;

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Ordered
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Unique
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);

   overriding function Get_Upper
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding procedure Set_Upper
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.Optional_Unlimited_Natural);

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Extension_End_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Is_Static
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Static
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Extension_End_Proxy;
     To   : Boolean);

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Lower_Bound
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Integer;

   overriding function Default
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_String;

   overriding function Is_Attribute
    (Self : not null access constant UML_Extension_End_Proxy;
     P : AMF.UML.Properties.UML_Property_Access)
       return Boolean;

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Extension_End_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;

   overriding function Is_Composite
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Extension_End_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

   overriding function Is_Navigable
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding function Opposite
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access;

   overriding function Subsetting_Context
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;

   overriding function Ends
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End;

   overriding function All_Namespaces
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Extension_End_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Namespace
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Extension_End_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Extension_End_Proxy)
       return League.Strings.Universal_String;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding function Deployed_Element
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Compatible_With
    (Self : not null access constant UML_Extension_End_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Extension_End_Proxy;
     C : Integer)
       return Boolean;

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Extension_End_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;

   overriding function Iss
    (Self : not null access constant UML_Extension_End_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean;

   overriding function Is_Multivalued
    (Self : not null access constant UML_Extension_End_Proxy)
       return Boolean;

   overriding function Lower
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Integer;

   overriding function Upper
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding function Upper_Bound
    (Self : not null access constant UML_Extension_End_Proxy)
       return AMF.Optional_Unlimited_Natural;

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Extension_End_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

end AMF.Internals.UML_Extension_Ends;
