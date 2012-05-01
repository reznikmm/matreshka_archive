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
with AMF.Boolean_Collections;
with AMF.Internals.UML_Packageable_Elements;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Duration_Constraints;
with AMF.UML.Duration_Intervals;
with AMF.UML.Elements.Collections;
with AMF.UML.Intervals;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Value_Specifications;
with AMF.Visitors;

package AMF.Internals.UML_Duration_Constraints is

   type UML_Duration_Constraint_Proxy is
     limited new AMF.Internals.UML_Packageable_Elements.UML_Packageable_Element_Proxy
       and AMF.UML.Duration_Constraints.UML_Duration_Constraint with null record;

   overriding function Get_First_Event
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.Boolean_Collections.Set_Of_Boolean;
   --  Getter of DurationConstraint::firstEvent.
   --
   --  The value of firstEvent[i] is related to constrainedElement[i] (where i
   --  is 1 or 2). If firstEvent[i] is true, then the corresponding
   --  observation event is the first time instant the execution enters
   --  constrainedElement[i]. If firstEvent[i] is false, then the
   --  corresponding observation event is the last time instant the execution
   --  is within constrainedElement[i]. Default value is true applied when
   --  constrainedElement[i] refers an element that represents only one time
   --  instant.

   overriding function Get_Specification
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Duration_Intervals.UML_Duration_Interval_Access;
   --  Getter of DurationConstraint::specification.
   --
   --  The interval constraining the duration.

   overriding procedure Set_Specification
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.Duration_Intervals.UML_Duration_Interval_Access);
   --  Setter of DurationConstraint::specification.
   --
   --  The interval constraining the duration.

   overriding function Get_Specification
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Intervals.UML_Interval_Access;
   --  Getter of IntervalConstraint::specification.
   --
   --  A condition that must be true when evaluated in order for the
   --  constraint to be satisfied.

   overriding procedure Set_Specification
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.Intervals.UML_Interval_Access);
   --  Setter of IntervalConstraint::specification.
   --
   --  A condition that must be true when evaluated in order for the
   --  constraint to be satisfied.

   overriding function Get_Constrained_Element
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Elements.Collections.Ordered_Set_Of_UML_Element;
   --  Getter of Constraint::constrainedElement.
   --
   --  The ordered set of Elements referenced by this Constraint.

   overriding function Get_Context
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of Constraint::context.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding procedure Set_Context
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.Namespaces.UML_Namespace_Access);
   --  Setter of Constraint::context.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Specification
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of Constraint::specification.
   --
   --  A condition that must be true when evaluated in order for the
   --  constraint to be satisfied.

   overriding procedure Set_Specification
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of Constraint::specification.
   --
   --  A condition that must be true when evaluated in order for the
   --  constraint to be satisfied.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Duration_Constraint_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Duration_Constraint_Proxy;
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
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Duration_Constraint_Proxy;
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
    (Self : not null access constant UML_Duration_Constraint_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable
   --  element is exposed as a formal template parameter.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Duration_Constraint_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Duration_Constraint_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Duration_Constraint_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Duration_Constraints;
