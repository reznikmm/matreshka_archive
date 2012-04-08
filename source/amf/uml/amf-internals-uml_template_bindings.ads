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
with AMF.UML.Elements.Collections;
with AMF.UML.Template_Bindings;
with AMF.UML.Template_Parameter_Substitutions.Collections;
with AMF.UML.Template_Signatures;
with AMF.UML.Templateable_Elements;
with AMF.Visitors;

package AMF.Internals.UML_Template_Bindings is

   type UML_Template_Binding_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Template_Bindings.UML_Template_Binding with null record;

   overriding function Get_Bound_Element
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Templateable_Elements.UML_Templateable_Element_Access;
   --  Getter of TemplateBinding::boundElement.
   --
   --  The element that is bound by this binding.

   overriding procedure Set_Bound_Element
    (Self : not null access UML_Template_Binding_Proxy;
     To   : AMF.UML.Templateable_Elements.UML_Templateable_Element_Access);
   --  Setter of TemplateBinding::boundElement.
   --
   --  The element that is bound by this binding.

   overriding function Get_Parameter_Substitution
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Template_Parameter_Substitutions.Collections.Set_Of_UML_Template_Parameter_Substitution;
   --  Getter of TemplateBinding::parameterSubstitution.
   --
   --  The parameter substitutions owned by this template binding.

   overriding function Get_Signature
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;
   --  Getter of TemplateBinding::signature.
   --
   --  The template signature for the template that is the target of the
   --  binding.

   overriding procedure Set_Signature
    (Self : not null access UML_Template_Binding_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);
   --  Setter of TemplateBinding::signature.
   --
   --  The template signature for the template that is the target of the
   --  binding.

   overriding function Get_Source
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::source.
   --
   --  Specifies the sources of the DirectedRelationship.

   overriding function Get_Target
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::target.
   --
   --  Specifies the targets of the DirectedRelationship.

   overriding function Get_Related_Element
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Relationship::relatedElement.
   --
   --  Specifies the elements related by the Relationship.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Template_Binding_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Template_Binding_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Template_Binding_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Template_Binding_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Template_Bindings;
