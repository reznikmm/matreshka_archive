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
with AMF.Internals.UML_Elements;
with AMF.UML.Comments.Collections;
with AMF.UML.Element_Imports;
with AMF.UML.Elements.Collections;
with AMF.UML.Namespaces;
with AMF.UML.Packageable_Elements;
with AMF.Visitors;

package AMF.Internals.UML_Element_Imports is

   type UML_Element_Import_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Element_Imports.UML_Element_Import with null record;

   overriding function Get_Alias
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.Optional_String;
   --  Getter of ElementImport::alias.
   --
   --  Specifies the name that should be added to the namespace of the
   --  importing package in lieu of the name of the imported packagable
   --  element. The aliased name must not clash with any other member name in
   --  the importing package. By default, no alias is used.

   overriding procedure Set_Alias
    (Self : not null access UML_Element_Import_Proxy;
     To   : AMF.Optional_String);
   --  Setter of ElementImport::alias.
   --
   --  Specifies the name that should be added to the namespace of the
   --  importing package in lieu of the name of the imported packagable
   --  element. The aliased name must not clash with any other member name in
   --  the importing package. By default, no alias is used.

   overriding function Get_Imported_Element
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Packageable_Elements.UML_Packageable_Element_Access;
   --  Getter of ElementImport::importedElement.
   --
   --  Specifies the PackageableElement whose name is to be added to a
   --  Namespace.

   overriding procedure Set_Imported_Element
    (Self : not null access UML_Element_Import_Proxy;
     To   : AMF.UML.Packageable_Elements.UML_Packageable_Element_Access);
   --  Setter of ElementImport::importedElement.
   --
   --  Specifies the PackageableElement whose name is to be added to a
   --  Namespace.

   overriding function Get_Importing_Namespace
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of ElementImport::importingNamespace.
   --
   --  Specifies the Namespace that imports a PackageableElement from another
   --  Package.

   overriding procedure Set_Importing_Namespace
    (Self : not null access UML_Element_Import_Proxy;
     To   : AMF.UML.Namespaces.UML_Namespace_Access);
   --  Setter of ElementImport::importingNamespace.
   --
   --  Specifies the Namespace that imports a PackageableElement from another
   --  Package.

   overriding function Get_Visibility
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.UML_Visibility_Kind;
   --  Getter of ElementImport::visibility.
   --
   --  Specifies the visibility of the imported PackageableElement within the
   --  importing Package. The default visibility is the same as that of the
   --  imported element. If the imported element does not have a visibility,
   --  it is possible to add visibility to the element import.

   overriding procedure Set_Visibility
    (Self : not null access UML_Element_Import_Proxy;
     To   : AMF.UML.UML_Visibility_Kind);
   --  Setter of ElementImport::visibility.
   --
   --  Specifies the visibility of the imported PackageableElement within the
   --  importing Package. The default visibility is the same as that of the
   --  imported element. If the imported element does not have a visibility,
   --  it is possible to add visibility to the element import.

   overriding function Get_Source
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::source.
   --
   --  Specifies the sources of the DirectedRelationship.

   overriding function Get_Target
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::target.
   --
   --  Specifies the targets of the DirectedRelationship.

   overriding function Get_Related_Element
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Relationship::relatedElement.
   --
   --  Specifies the elements related by the Relationship.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Name
    (Self : not null access constant UML_Element_Import_Proxy)
       return League.Strings.Universal_String;
   --  Operation ElementImport::getName.
   --
   --  The query getName() returns the name under which the imported
   --  PackageableElement will be known in the importing namespace.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Element_Import_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Element_Import_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Element_Import_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Element_Import_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Element_Imports;
