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
with AMF.UML.Parameterable_Elements;
with AMF.UML.Template_Bindings;
with AMF.UML.Template_Parameter_Substitutions;
with AMF.UML.Template_Parameters;
with AMF.Visitors;

package AMF.Internals.UML_Template_Parameter_Substitutions is

   type UML_Template_Parameter_Substitution_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution with null record;

   overriding function Get_Actual
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access;
   --  Getter of TemplateParameterSubstitution::actual.
   --
   --  The element that is the actual parameter for this substitution.

   overriding procedure Set_Actual
    (Self : not null access UML_Template_Parameter_Substitution_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access);
   --  Setter of TemplateParameterSubstitution::actual.
   --
   --  The element that is the actual parameter for this substitution.

   overriding function Get_Formal
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of TemplateParameterSubstitution::formal.
   --
   --  The formal template parameter that is associated with this substitution.

   overriding procedure Set_Formal
    (Self : not null access UML_Template_Parameter_Substitution_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of TemplateParameterSubstitution::formal.
   --
   --  The formal template parameter that is associated with this substitution.

   overriding function Get_Owned_Actual
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access;
   --  Getter of TemplateParameterSubstitution::ownedActual.
   --
   --  The actual parameter that is owned by this substitution.

   overriding procedure Set_Owned_Actual
    (Self : not null access UML_Template_Parameter_Substitution_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access);
   --  Setter of TemplateParameterSubstitution::ownedActual.
   --
   --  The actual parameter that is owned by this substitution.

   overriding function Get_Template_Binding
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Template_Bindings.UML_Template_Binding_Access;
   --  Getter of TemplateParameterSubstitution::templateBinding.
   --
   --  The optional bindings from this element to templates.

   overriding procedure Set_Template_Binding
    (Self : not null access UML_Template_Parameter_Substitution_Proxy;
     To   : AMF.UML.Template_Bindings.UML_Template_Binding_Access);
   --  Setter of TemplateParameterSubstitution::templateBinding.
   --
   --  The optional bindings from this element to templates.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Template_Parameter_Substitution_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Template_Parameter_Substitution_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Template_Parameter_Substitution_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Template_Parameter_Substitutions;
