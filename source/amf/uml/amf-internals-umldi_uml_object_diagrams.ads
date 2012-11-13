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
with AMF.CMOF.Elements;
with AMF.DC;
with AMF.DI.Diagram_Elements.Collections;
with AMF.DI.Styles;
with AMF.Internals.UMLDI_UML_Diagrams;
with AMF.UML.Comments.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UMLDI.UML_Diagram_Elements.Collections;
with AMF.UMLDI.UML_Labels;
with AMF.UMLDI.UML_Object_Diagrams;
with AMF.UMLDI.UML_Styles.Collections;
with AMF.Visitors;
with League.Strings;

package AMF.Internals.UMLDI_UML_Object_Diagrams is

   type UMLDI_UML_Object_Diagram_Proxy is
     limited new AMF.Internals.UMLDI_UML_Diagrams.UMLDI_UML_Diagram_Proxy
       and AMF.UMLDI.UML_Object_Diagrams.UMLDI_UML_Object_Diagram with null record;

   overriding function Get_Heading
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access;
   --  Getter of UMLDiagram::heading.
   --

   overriding procedure Set_Heading
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.UMLDI.UML_Labels.UMLDI_UML_Label_Access);
   --  Setter of UMLDiagram::heading.
   --

   overriding function Get_Is_Frame
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return Boolean;
   --  Getter of UMLDiagram::isFrame.
   --
   --  Indicates when diagram frames shall be shown.

   overriding procedure Set_Is_Frame
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : Boolean);
   --  Setter of UMLDiagram::isFrame.
   --
   --  Indicates when diagram frames shall be shown.

   overriding function Get_Is_Iso
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return Boolean;
   --  Getter of UMLDiagram::isIso.
   --
   --  Indicate when ISO notation rules shall be followed.

   overriding procedure Set_Is_Iso
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : Boolean);
   --  Setter of UMLDiagram::isIso.
   --
   --  Indicate when ISO notation rules shall be followed.

   overriding function Get_Is_Icon
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return Boolean;
   --  Getter of UMLDiagramElement::isIcon.
   --
   --  For modelElements that have an option to be shown with shapes other 
   --  than rectangles, such as Actors, or with other identifying shapes 
   --  inside them, such as arrows distinguishing InputPins and OutputPins, or 
   --  edges that have an option to be shown with lines other than solid with 
   --  open arrow heads, such as Realization.  A value of true for isIcon 
   --  indicates the alternative notation shall be shown.

   overriding procedure Set_Is_Icon
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : Boolean);
   --  Setter of UMLDiagramElement::isIcon.
   --
   --  For modelElements that have an option to be shown with shapes other 
   --  than rectangles, such as Actors, or with other identifying shapes 
   --  inside them, such as arrows distinguishing InputPins and OutputPins, or 
   --  edges that have an option to be shown with lines other than solid with 
   --  open arrow heads, such as Realization.  A value of true for isIcon 
   --  indicates the alternative notation shall be shown.

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access;
   --  Getter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.UMLDI.UML_Styles.UMLDI_UML_Style_Access);
   --  Setter of UMLDiagramElement::localStyle.
   --
   --  Restricts owned styles to UMLStyles.

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of UMLDiagramElement::modelElement.
   --
   --  Restricts UMLDiagramElements to show UML Elements, rather than other 
   --  language elements. 

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.Collections.Ordered_Set_Of_UMLDI_UML_Diagram_Element;
   --  Getter of UMLDiagramElement::ownedElement.
   --
   --  Restricts UMLDiagramElements to own only UMLDiagramElements.

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access;
   --  Getter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   overriding procedure Set_Owning_Element
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.UMLDI.UML_Diagram_Elements.UMLDI_UML_Diagram_Element_Access);
   --  Setter of UMLDiagramElement::owningElement.
   --
   --  Restricts UMLDiagramElements to be owned by only UMLDiagramElements.

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UMLDI.UML_Styles.Collections.Set_Of_UMLDI_UML_Style;
   --  Getter of UMLDiagramElement::sharedStyle.
   --
   --  Restricts shared styles to UMLStyles.

   overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;
   --  Getter of DiagramElement::modelElement.
   --
   --  a reference to a depicted model element, which can be any MOF-based 
   --  element

   overriding function Get_Owning_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.DI.Diagram_Elements.DI_Diagram_Element_Access;
   --  Getter of DiagramElement::owningElement.
   --
   --  a reference to the diagram element that directly owns this diagram 
   --  element.

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.DI.Diagram_Elements.Collections.Set_Of_DI_Diagram_Element;
   --  Getter of DiagramElement::ownedElement.
   --
   --  a collection of diagram elements that are directly owned by this 
   --  diagram element.

   overriding function Get_Local_Style
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.DI.Styles.DI_Style_Access;
   --  Getter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   overriding procedure Set_Local_Style
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access);
   --  Setter of DiagramElement::localStyle.
   --
   --  a reference to an optional locally-owned style for this diagram element.

   overriding function Get_Shared_Style
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.DI.Styles.DI_Style_Access;
   --  Getter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

   overriding procedure Set_Shared_Style
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.DI.Styles.DI_Style_Access);
   --  Setter of DiagramElement::sharedStyle.
   --
   --  a reference to an optional shared style element for this diagram 
   --  element.

   overriding function Get_Name
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return League.Strings.Universal_String;
   --  Getter of Diagram::name.
   --
   --  the name of the diagram.

   overriding procedure Set_Name
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : League.Strings.Universal_String);
   --  Setter of Diagram::name.
   --
   --  the name of the diagram.

   overriding function Get_Documentation
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return League.Strings.Universal_String;
   --  Getter of Diagram::documentation.
   --
   --  the documentation of the diagram.

   overriding procedure Set_Documentation
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : League.Strings.Universal_String);
   --  Setter of Diagram::documentation.
   --
   --  the documentation of the diagram.

   overriding function Get_Resolution
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.Real;
   --  Getter of Diagram::resolution.
   --
   --  the resolution of the diagram expressed in user units per inch.

   overriding procedure Set_Resolution
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.Real);
   --  Setter of Diagram::resolution.
   --
   --  the resolution of the diagram expressed in user units per inch.

   overriding function Get_Bounds
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.DC.Optional_DC_Bounds;
   --  Getter of Shape::bounds.
   --
   --  the optional bounds of the shape relative to the origin of its nesting 
   --  plane.

   overriding procedure Set_Bounds
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.DC.Optional_DC_Bounds);
   --  Setter of Shape::bounds.
   --
   --  the optional bounds of the shape relative to the origin of its nesting 
   --  plane.

   overriding function Get_Client_Dependency
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

   overriding function Get_Owned_Comment
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UMLDI_UML_Object_Diagram_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function All_Namespaces
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly 
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy;
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
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function Separator
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::separator.
   --
   --  The query separator() gives the string that is used to separate names 
   --  when constructing a qualified name.

   overriding function All_Owned_Elements
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Is_Compatible_With
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy;
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
    (Self : not null access constant UMLDI_UML_Object_Diagram_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable 
   --  element is exposed as a formal template parameter.

   overriding procedure Enter_Element
    (Self    : not null access constant UMLDI_UML_Object_Diagram_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant UMLDI_UML_Object_Diagram_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant UMLDI_UML_Object_Diagram_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.UMLDI_UML_Object_Diagrams;
