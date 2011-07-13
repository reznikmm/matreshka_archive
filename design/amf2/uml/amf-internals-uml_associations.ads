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
with AMF.UML.Classifier_Template_Parameters;
with AMF.UML.Classifiers;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Collaboration_Uses;
with AMF.UML.Collaboration_Uses.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Features.Collections;
with AMF.UML.Generalization_Sets.Collections;
with AMF.UML.Generalizations.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Parameterable_Elements.Collections;
with AMF.UML.Properties.Collections;
with AMF.UML.Redefinable_Elements;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Redefinable_Template_Signatures;
with AMF.UML.String_Expressions;
with AMF.UML.Substitutions.Collections;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types;
with AMF.UML.Types.Collections;
with AMF.UML.Use_Cases.Collections;

package AMF.Internals.UML_Associations is

   type UML_Association_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Associations.UML_Association with null record;

   overriding function Get_End_Type
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Types.Collections.Ordered_Set_Of_UML_Type;

   overriding function Get_Is_Derived
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding procedure Set_Is_Derived
    (Self : not null access UML_Association_Proxy;
     To   : Boolean);

   overriding function Get_Member_End
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property;

   overriding function Get_Navigable_Owned_End
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;

   overriding function Get_Owned_End
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property;

   overriding function Get_Related_Element
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Get_Owner
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Elements.UML_Element_Access;

   overriding function Get_Attribute
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;

   overriding function Get_Collaboration_Use
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Collaboration_Uses.Collections.Set_Of_UML_Collaboration_Use;

   overriding function Get_Feature
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature;

   overriding function Get_General
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Generalization
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization;

   overriding function Get_Inherited_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Association_Proxy;
     To   : Boolean);

   overriding function Get_Is_Final_Specialization
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding procedure Set_Is_Final_Specialization
    (Self : not null access UML_Association_Proxy;
     To   : Boolean);

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access;

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access);

   overriding function Get_Owned_Use_Case
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case;

   overriding function Get_Powertype_Extent
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set;

   overriding function Get_Redefined_Classifier
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Get_Representation
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access;

   overriding procedure Set_Representation
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access);

   overriding function Get_Substitution
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Substitutions.Collections.Set_Of_UML_Substitution;

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access);

   overriding function Get_Use_Case
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case;

   overriding function Get_Element_Import
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   overriding function Get_Package_Import
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;

   overriding function Get_Name
    (Self : not null access constant UML_Association_Proxy)
       return AMF.Optional_String;

   overriding procedure Set_Name
    (Self : not null access UML_Association_Proxy;
     To   : AMF.Optional_String);

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);

   overriding function Get_Namespace
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Association_Proxy)
       return AMF.Optional_String;

   overriding function Get_Visibility
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);

   overriding function Get_Package
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Packages.UML_Package_Access;

   overriding procedure Set_Package
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Packages.UML_Package_Access);

   overriding function Get_Visibility
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.UML_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.UML_Visibility_Kind);

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Association_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);

   overriding function Get_Template_Binding
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding;

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Association_Proxy;
     To   : Boolean);

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function End_Type
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Types.Collections.Ordered_Set_Of_UML_Type;

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding function All_Features
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature;

   overriding function All_Parents
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Conforms_To
    (Self : not null access constant UML_Association_Proxy;
     Other : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean;

   overriding function General
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Has_Visibility_Of
    (Self : not null access constant UML_Association_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return Boolean;

   overriding function Inherit
    (Self : not null access constant UML_Association_Proxy;
     Inhs : AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Inheritable_Members
    (Self : not null access constant UML_Association_Proxy;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Inherited_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function Is_Template
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding function May_Specialize_Type
    (Self : not null access constant UML_Association_Proxy;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean;

   overriding function Parents
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Association_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Association_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.UML.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant UML_Association_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Imported_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding function Owned_Member
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;

   overriding function All_Namespaces
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Association_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;

   overriding function Namespace
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;

   overriding function Qualified_Name
    (Self : not null access constant UML_Association_Proxy)
       return League.Strings.Universal_String;

   overriding function Separator
    (Self : not null access constant UML_Association_Proxy)
       return League.Strings.Universal_String;

   overriding function Conforms_To
    (Self : not null access constant UML_Association_Proxy;
     Other : AMF.UML.Types.UML_Type_Access)
       return Boolean;

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Association_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Association_Proxy)
       return Boolean;

   overriding function Parameterable_Elements
    (Self : not null access constant UML_Association_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element;

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Association_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Association_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;

end AMF.Internals.UML_Associations;
