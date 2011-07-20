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
--  A package can have one or more profile applications to indicate which 
--  profiles have been applied. Because a profile is a package, it is possible 
--  to apply a profile not only to packages, but also to profiles.
--  Package specializes TemplateableElement and PackageableElement specializes 
--  ParameterableElement to specify that a package can be used as a template 
--  and a PackageableElement as a template parameter.
--  A package is used to group elements, and provides a namespace for the 
--  grouped elements.
------------------------------------------------------------------------------
limited with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
limited with AMF.UML.Package_Merges.Collections;
with AMF.UML.Packageable_Elements;
limited with AMF.UML.Packageable_Elements.Collections;
limited with AMF.UML.Packages.Collections;
limited with AMF.UML.Profile_Applications.Collections;
limited with AMF.UML.Profiles;
limited with AMF.UML.Stereotypes.Collections;
with AMF.UML.Templateable_Elements;
limited with AMF.UML.Types.Collections;

package AMF.UML.Packages is

   pragma Preelaborate;

   type UML_Package is limited interface
     and AMF.UML.Namespaces.UML_Namespace
     and AMF.UML.Packageable_Elements.UML_Packageable_Element
     and AMF.UML.Templateable_Elements.UML_Templateable_Element;

   type UML_Package_Access is
     access all UML_Package'Class;
   for UML_Package_Access'Storage_Size use 0;

   not overriding function Get_URI
    (Self : not null access constant UML_Package)
       return AMF.Optional_String is abstract;
   --  Getter of Package::URI.
   --
   --  Provides an identifier for the package that can be used for many 
   --  purposes. A URI is the universally unique identification of the package 
   --  following the IETF URI specification, RFC 2396 
   --  http://www.ietf.org/rfc/rfc2396.txt and it must comply with those 
   --  syntax rules.

   not overriding procedure Set_URI
    (Self : not null access UML_Package;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Package::URI.
   --
   --  Provides an identifier for the package that can be used for many 
   --  purposes. A URI is the universally unique identification of the package 
   --  following the IETF URI specification, RFC 2396 
   --  http://www.ietf.org/rfc/rfc2396.txt and it must comply with those 
   --  syntax rules.

   not overriding function Get_Nested_Package
    (Self : not null access constant UML_Package)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is abstract;
   --  Getter of Package::nestedPackage.
   --
   --  References the packaged elements that are Packages.

   not overriding function Get_Nesting_Package
    (Self : not null access constant UML_Package)
       return AMF.UML.Packages.UML_Package_Access is abstract;
   --  Getter of Package::nestingPackage.
   --
   --  References the Package that owns this Package.

   not overriding procedure Set_Nesting_Package
    (Self : not null access UML_Package;
     To   : AMF.UML.Packages.UML_Package_Access) is abstract;
   --  Setter of Package::nestingPackage.
   --
   --  References the Package that owns this Package.

   not overriding function Get_Owned_Stereotype
    (Self : not null access constant UML_Package)
       return AMF.UML.Stereotypes.Collections.Set_Of_UML_Stereotype is abstract;
   --  Getter of Package::ownedStereotype.
   --
   --  References the Stereotypes that are owned by the Package

   not overriding function Get_Owned_Type
    (Self : not null access constant UML_Package)
       return AMF.UML.Types.Collections.Set_Of_UML_Type is abstract;
   --  Getter of Package::ownedType.
   --
   --  References the packaged elements that are Types.

   not overriding function Get_Package_Merge
    (Self : not null access constant UML_Package)
       return AMF.UML.Package_Merges.Collections.Set_Of_UML_Package_Merge is abstract;
   --  Getter of Package::packageMerge.
   --
   --  References the PackageMerges that are owned by this Package.

   not overriding function Get_Packaged_Element
    (Self : not null access constant UML_Package)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  Getter of Package::packagedElement.
   --
   --  Specifies the packageable elements that are owned by this Package.

   not overriding function Get_Profile_Application
    (Self : not null access constant UML_Package)
       return AMF.UML.Profile_Applications.Collections.Set_Of_UML_Profile_Application is abstract;
   --  Getter of Package::profileApplication.
   --
   --  References the ProfileApplications that indicate which profiles have 
   --  been applied to the Package.

   not overriding function All_Applicable_Stereotypes
    (Self : not null access constant UML_Package)
       return AMF.UML.Stereotypes.Collections.Set_Of_UML_Stereotype is abstract;
   --  The query allApplicableStereotypes() returns all the directly or 
   --  indirectly owned stereotypes, including stereotypes contained in 
   --  sub-profiles.

   not overriding function Containing_Profile
    (Self : not null access constant UML_Package)
       return AMF.UML.Profiles.UML_Profile_Access is abstract;
   --  The query containingProfile() returns the closest profile directly or 
   --  indirectly containing this package (or this package itself, if it is a 
   --  profile).

   not overriding function Makes_Visible
    (Self : not null access constant UML_Package;
     El : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return Boolean is abstract;
   --  The query makesVisible() defines whether a Package makes an element 
   --  visible outside itself. Elements with no visibility and elements with 
   --  public visibility are made visible.

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Package)
       return Boolean is abstract;
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner.

   not overriding function Nested_Package
    (Self : not null access constant UML_Package)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is abstract;
   --  Missing derivation for Package::/nestedPackage : Package

   not overriding function Owned_Stereotype
    (Self : not null access constant UML_Package)
       return AMF.UML.Stereotypes.Collections.Set_Of_UML_Stereotype is abstract;
   --  Missing derivation for Package::/ownedStereotype : Stereotype

   not overriding function Owned_Type
    (Self : not null access constant UML_Package)
       return AMF.UML.Types.Collections.Set_Of_UML_Type is abstract;
   --  Missing derivation for Package::/ownedType : Type

   not overriding function Visible_Members
    (Self : not null access constant UML_Package)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is abstract;
   --  The query visibleMembers() defines which members of a Package can be 
   --  accessed outside it.

end AMF.UML.Packages;
