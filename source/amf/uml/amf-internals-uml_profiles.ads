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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.UML_Packages;
with AMF.String_Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Package_Merges.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements.Collections;
with AMF.UML.Profile_Applications.Collections;
with AMF.UML.Profiles;
with AMF.UML.Stereotypes.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types.Collections;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Profiles is

   type UML_Profile_Proxy is
     limited new AMF.Internals.UML_Packages.UML_Package_Proxy
       and AMF.UML.Profiles.UML_Profile with null record;

   overriding function Get_Metaclass_Reference
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;
   --  Getter of Profile::metaclassReference.
   --
   --  References a metaclass that may be extended.

   overriding function Get_Metamodel_Reference
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;
   --  Getter of Profile::metamodelReference.
   --
   --  References a package containing (directly or indirectly) metaclasses 
   --  that may be extended.

   overriding function Get_URI
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.Optional_String;
   --  Getter of Package::URI.
   --
   --  Provides an identifier for the package that can be used for many 
   --  purposes. A URI is the universally unique identification of the package 
   --  following the IETF URI specification, RFC 2396 
   --  http://www.ietf.org/rfc/rfc2396.txt and it must comply with those 
   --  syntax rules.

   overriding procedure Set_URI
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.Optional_String);
   --  Setter of Package::URI.
   --
   --  Provides an identifier for the package that can be used for many 
   --  purposes. A URI is the universally unique identification of the package 
   --  following the IETF URI specification, RFC 2396 
   --  http://www.ietf.org/rfc/rfc2396.txt and it must comply with those 
   --  syntax rules.

   overriding function Get_Nested_Package
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Getter of Package::nestedPackage.
   --
   --  References the packaged elements that are Packages.

   overriding function Get_Nesting_Package
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packages.UML_Package_Access;
   --  Getter of Package::nestingPackage.
   --
   --  References the Package that owns this Package.

   overriding procedure Set_Nesting_Package
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.Packages.UML_Package_Access);
   --  Setter of Package::nestingPackage.
   --
   --  References the Package that owns this Package.

   overriding function Get_Owned_Stereotype
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Stereotypes.Collections.Set_Of_UML_Stereotype;
   --  Getter of Package::ownedStereotype.
   --
   --  References the Stereotypes that are owned by the Package

   overriding function Get_Owned_Type
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;
   --  Getter of Package::ownedType.
   --
   --  References the packaged elements that are Types.

   overriding function Get_Package_Merge
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Package_Merges.Collections.Set_Of_UML_Package_Merge;
   --  Getter of Package::packageMerge.
   --
   --  References the PackageMerges that are owned by this Package.

   overriding function Get_Profile_Application
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Profile_Applications.Collections.Set_Of_UML_Profile_Application;
   --  Getter of Package::profileApplication.
   --
   --  References the ProfileApplications that indicate which profiles have 
   --  been applied to the Package.

   overriding function Get_Element_Import
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;
   --  Getter of Namespace::elementImport.
   --
   --  References the ElementImports owned by the Namespace.

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of Namespace::importedMember.
   --
   --  References the PackageableElements that are members of this Namespace 
   --  as a result of either PackageImports or ElementImports.

   overriding function Get_Member
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::member.
   --
   --  A collection of NamedElements identifiable within the Namespace, either 
   --  by being owned or by being introduced by importing or inheritance.

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::ownedMember.
   --
   --  A collection of NamedElements owned by the Namespace.

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Namespace::ownedRule.
   --
   --  Specifies a set of Constraints owned by this Namespace.

   overriding function Get_Package_Import
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;
   --  Getter of Namespace::packageImport.
   --
   --  References the PackageImports owned by the Namespace.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Visibility
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.UML_Visibility_Kind;
   --  Getter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   overriding procedure Set_Visibility
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.UML_Visibility_Kind);
   --  Setter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;
   --  Getter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template 
   --  parameters.

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Profile_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);
   --  Setter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template 
   --  parameters.

   overriding function Get_Template_Binding
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding;
   --  Getter of TemplateableElement::templateBinding.
   --
   --  The optional bindings from this element to templates.

   overriding function All_Applicable_Stereotypes
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Stereotypes.Collections.Set_Of_UML_Stereotype;
   --  Operation Package::allApplicableStereotypes.
   --
   --  The query allApplicableStereotypes() returns all the directly or 
   --  indirectly owned stereotypes, including stereotypes contained in 
   --  sub-profiles.

   overriding function Containing_Profile
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Profiles.UML_Profile_Access;
   --  Operation Package::containingProfile.
   --
   --  The query containingProfile() returns the closest profile directly or 
   --  indirectly containing this package (or this package itself, if it is a 
   --  profile).

   overriding function Makes_Visible
    (Self : not null access constant UML_Profile_Proxy;
     El : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return Boolean;
   --  Operation Package::makesVisible.
   --
   --  The query makesVisible() defines whether a Package makes an element 
   --  visible outside itself. Elements with no visibility and elements with 
   --  public visibility are made visible.

   overriding function Nested_Package
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation Package::nestedPackage.
   --
   --  Missing derivation for Package::/nestedPackage : Package

   overriding function Owned_Stereotype
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Stereotypes.Collections.Set_Of_UML_Stereotype;
   --  Operation Package::ownedStereotype.
   --
   --  Missing derivation for Package::/ownedStereotype : Stereotype

   overriding function Owned_Type
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;
   --  Operation Package::ownedType.
   --
   --  Missing derivation for Package::/ownedType : Type

   overriding function Visible_Members
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Package::visibleMembers.
   --
   --  The query visibleMembers() defines which members of a Package can be 
   --  accessed outside it.

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Profile_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::excludeCollisions.
   --
   --  The query excludeCollisions() excludes from a set of 
   --  PackageableElements any that would not be distinguishable from each 
   --  other in this namespace.

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Profile_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;
   --  Operation Namespace::getNamesOfMember.
   --
   --  The query getNamesOfMember() takes importing into account. It gives 
   --  back the set of names that an element would have in an importing 
   --  namespace, either because it is owned, or if not owned then imported 
   --  individually, or if not individually then from a package.
   --  The query getNamesOfMember() gives a set of all of the names that a 
   --  member would have in a Namespace. In general a member can have multiple 
   --  names in a Namespace if it is imported more than once with different 
   --  aliases. The query takes account of importing. It gives back the set of 
   --  names that an element would have in an importing namespace, either 
   --  because it is owned, or if not owned then imported individually, or if 
   --  not individually then from a package.

   overriding function Import_Members
    (Self : not null access constant UML_Profile_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importMembers.
   --
   --  The query importMembers() defines which of a set of PackageableElements 
   --  are actually imported into the namespace. This excludes hidden ones, 
   --  i.e., those which have names that conflict with names of owned members, 
   --  and also excludes elements which would have the same name when imported.

   overriding function Imported_Member
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importedMember.
   --
   --  The importedMember property is derived from the ElementImports and the 
   --  PackageImports. References the PackageableElements that are members of 
   --  this Namespace as a result of either PackageImports or ElementImports.

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Profile_Proxy)
       return Boolean;
   --  Operation Namespace::membersAreDistinguishable.
   --
   --  The Boolean query membersAreDistinguishable() determines whether all of 
   --  the namespace's members are distinguishable within it.

   overriding function Owned_Member
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Namespace::ownedMember.
   --
   --  Missing derivation for Namespace::/ownedMember : NamedElement

   overriding function All_Namespaces
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly 
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Profile_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;
   --  Operation NamedElement::isDistinguishableFrom.
   --
   --  The query isDistinguishableFrom() determines whether two NamedElements 
   --  may logically co-exist within a Namespace. By default, two named 
   --  elements are distinguishable if (a) they have unrelated types or (b) 
   --  they have related types but different names.

   overriding function Namespace
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Profile_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Profile_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;
   --  Operation ParameterableElement::isCompatibleWith.
   --
   --  The query isCompatibleWith() determines if this parameterable element 
   --  is compatible with the specified parameterable element. By default 
   --  parameterable element P is compatible with parameterable element Q if 
   --  the kind of P is the same or a subtype as the kind of Q. Subclasses 
   --  should override this operation to specify different compatibility 
   --  constraints.

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Profile_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable 
   --  element is exposed as a formal template parameter.

   overriding function Is_Template
    (Self : not null access constant UML_Profile_Proxy)
       return Boolean;
   --  Operation TemplateableElement::isTemplate.
   --
   --  The query isTemplate() returns whether this templateable element is 
   --  actually a template.

   overriding function Parameterable_Elements
    (Self : not null access constant UML_Profile_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element;
   --  Operation TemplateableElement::parameterableElements.
   --
   --  The query parameterableElements() returns the set of elements that may 
   --  be used as the parametered elements for a template parameter of this 
   --  templateable element. By default, this set includes all the owned 
   --  elements. Subclasses may override this operation if they choose to 
   --  restrict the set of parameterable elements.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Profile_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Profile_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.UML_Profiles;
