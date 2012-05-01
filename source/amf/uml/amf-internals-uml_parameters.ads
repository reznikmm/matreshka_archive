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
with AMF.Internals.UML_Multiplicity_Elements;
with AMF.Internals.UML_Named_Elements;
with AMF.UML.Connectable_Element_Template_Parameters;
with AMF.UML.Connector_Ends.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
with AMF.UML.Operations;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameter_Sets.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Parameters;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Types;
with AMF.UML.Value_Specifications;
with AMF.Visitors;

package AMF.Internals.UML_Parameters is

   package UML_Multiplicity_Elements is
     new AMF.Internals.UML_Multiplicity_Elements
          (AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy);

   type UML_Parameter_Proxy is
     limited new UML_Multiplicity_Elements.UML_Multiplicity_Element_Proxy
       and AMF.UML.Parameters.UML_Parameter with null record;

   overriding function Get_Default
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;
   --  Getter of Parameter::default.
   --
   --  Specifies a String that represents a value to be used when no argument
   --  is supplied for the Parameter.

   overriding procedure Set_Default
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.Optional_String);
   --  Setter of Parameter::default.
   --
   --  Specifies a String that represents a value to be used when no argument
   --  is supplied for the Parameter.

   overriding function Get_Default_Value
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of Parameter::defaultValue.
   --
   --  Specifies a ValueSpecification that represents a value to be used when
   --  no argument is supplied for the Parameter.

   overriding procedure Set_Default_Value
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of Parameter::defaultValue.
   --
   --  Specifies a ValueSpecification that represents a value to be used when
   --  no argument is supplied for the Parameter.

   overriding function Get_Direction
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.UML_Parameter_Direction_Kind;
   --  Getter of Parameter::direction.
   --
   --  Indicates whether a parameter is being sent into or out of a behavioral
   --  element.

   overriding procedure Set_Direction
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.UML_Parameter_Direction_Kind);
   --  Setter of Parameter::direction.
   --
   --  Indicates whether a parameter is being sent into or out of a behavioral
   --  element.

   overriding function Get_Effect
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind;
   --  Getter of Parameter::effect.
   --
   --  Specifies the effect that the owner of the parameter has on values
   --  passed in or out of the parameter.

   overriding procedure Set_Effect
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Optional_UML_Parameter_Effect_Kind);
   --  Setter of Parameter::effect.
   --
   --  Specifies the effect that the owner of the parameter has on values
   --  passed in or out of the parameter.

   overriding function Get_Is_Exception
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;
   --  Getter of Parameter::isException.
   --
   --  Tells whether an output parameter may emit a value to the exclusion of
   --  the other outputs.

   overriding procedure Set_Is_Exception
    (Self : not null access UML_Parameter_Proxy;
     To   : Boolean);
   --  Setter of Parameter::isException.
   --
   --  Tells whether an output parameter may emit a value to the exclusion of
   --  the other outputs.

   overriding function Get_Is_Stream
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;
   --  Getter of Parameter::isStream.
   --
   --  Tells whether an input parameter may accept values while its behavior
   --  is executing, or whether an output parameter post values while the
   --  behavior is executing.

   overriding procedure Set_Is_Stream
    (Self : not null access UML_Parameter_Proxy;
     To   : Boolean);
   --  Setter of Parameter::isStream.
   --
   --  Tells whether an input parameter may accept values while its behavior
   --  is executing, or whether an output parameter post values while the
   --  behavior is executing.

   overriding function Get_Operation
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Operations.UML_Operation_Access;
   --  Getter of Parameter::operation.
   --
   --  References the Operation owning this parameter.

   overriding procedure Set_Operation
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Operations.UML_Operation_Access);
   --  Setter of Parameter::operation.
   --
   --  References the Operation owning this parameter.

   overriding function Get_Parameter_Set
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set;
   --  Getter of Parameter::parameterSet.
   --
   --  The parameter sets containing the parameter. See ParameterSet.

   overriding function Get_End
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End;
   --  Getter of ConnectableElement::end.
   --
   --  Denotes a set of connector ends that attaches to this connectable
   --  element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access;
   --  Getter of ConnectableElement::templateParameter.
   --
   --  The ConnectableElementTemplateParameter for this ConnectableElement
   --  parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access);
   --  Setter of ConnectableElement::templateParameter.
   --
   --  The ConnectableElementTemplateParameter for this ConnectableElement
   --  parameter.

   overriding function Get_Type
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Getter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding procedure Set_Type
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);
   --  Setter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Parameter_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Default
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_String;
   --  Operation Parameter::default.
   --
   --  Missing derivation for Parameter::/default : String

   overriding function Compatible_With
    (Self : not null access constant UML_Parameter_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;
   --  Operation MultiplicityElement::compatibleWith.
   --
   --  The operation compatibleWith takes another multiplicity as input. It
   --  checks if one multiplicity is compatible with another.

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Parameter_Proxy;
     C : Integer)
       return Boolean;
   --  Operation MultiplicityElement::includesCardinality.
   --
   --  The query includesCardinality() checks whether the specified
   --  cardinality is valid for this multiplicity.

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Parameter_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean;
   --  Operation MultiplicityElement::includesMultiplicity.
   --
   --  The query includesMultiplicity() checks whether this multiplicity
   --  includes all the cardinalities allowed by the specified multiplicity.

   overriding function Iss
    (Self : not null access constant UML_Parameter_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean;
   --  Operation MultiplicityElement::is.
   --
   --  The operation is determines if the upper and lower bound of the ranges
   --  are the ones given.

   overriding function Lower
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Integer;
   --  Operation MultiplicityElement::lower.
   --
   --  The derived lower attribute must equal the lowerBound.

   overriding function Upper
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Operation MultiplicityElement::upper.
   --
   --  The derived upper attribute must equal the upperBound.

   overriding function Ends
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End;
   --  Operation ConnectableElement::end.
   --
   --  Missing derivation for ConnectableElement::/end : ConnectorEnd

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Parameter_Proxy;
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
    (Self : not null access constant UML_Parameter_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Parameter_Proxy;
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
    (Self : not null access constant UML_Parameter_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable
   --  element is exposed as a formal template parameter.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Parameter_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Parameter_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Parameter_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Parameters;
