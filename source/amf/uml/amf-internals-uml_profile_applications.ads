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
with AMF.Internals.UML_Elements;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Packages;
with AMF.UML.Profile_Applications;
with AMF.UML.Profiles;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Profile_Applications is

   type UML_Profile_Application_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Profile_Applications.UML_Profile_Application with null record;

   overriding function Get_Applied_Profile
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Profiles.UML_Profile_Access;
   --  Getter of ProfileApplication::appliedProfile.
   --
   --  References the Profiles that are applied to a Package through this 
   --  ProfileApplication.

   overriding procedure Set_Applied_Profile
    (Self : not null access UML_Profile_Application_Proxy;
     To   : AMF.UML.Profiles.UML_Profile_Access);
   --  Setter of ProfileApplication::appliedProfile.
   --
   --  References the Profiles that are applied to a Package through this 
   --  ProfileApplication.

   overriding function Get_Applying_Package
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Packages.UML_Package_Access;
   --  Getter of ProfileApplication::applyingPackage.
   --
   --  The package that owns the profile application.

   overriding procedure Set_Applying_Package
    (Self : not null access UML_Profile_Application_Proxy;
     To   : AMF.UML.Packages.UML_Package_Access);
   --  Setter of ProfileApplication::applyingPackage.
   --
   --  The package that owns the profile application.

   overriding function Get_Is_Strict
    (Self : not null access constant UML_Profile_Application_Proxy)
       return Boolean;
   --  Getter of ProfileApplication::isStrict.
   --
   --  Specifies that the Profile filtering rules for the metaclasses of the 
   --  referenced metamodel shall be strictly applied.

   overriding procedure Set_Is_Strict
    (Self : not null access UML_Profile_Application_Proxy;
     To   : Boolean);
   --  Setter of ProfileApplication::isStrict.
   --
   --  Specifies that the Profile filtering rules for the metaclasses of the 
   --  referenced metamodel shall be strictly applied.

   overriding function Get_Source
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::source.
   --
   --  Specifies the sources of the DirectedRelationship.

   overriding function Get_Target
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::target.
   --
   --  Specifies the targets of the DirectedRelationship.

   overriding function Get_Related_Element
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Relationship::relatedElement.
   --
   --  Specifies the elements related by the Relationship.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Profile_Application_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Profile_Application_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.UML_Profile_Applications;
