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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  A parameter is a specification of an argument used to pass information 
--  into or out of an invocation of a behavioral feature.
--  
--  Parameters have support for streaming, exceptions, and parameter sets.
--  
--  Parameters are allowed to be treated as connectable elements.
------------------------------------------------------------------------------
with AMF.UML.Connectable_Elements;
with AMF.UML.Multiplicity_Elements;
limited with AMF.UML.Operations;
limited with AMF.UML.Parameter_Sets.Collections;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Parameters is

   pragma Preelaborate;

   type UML_Parameter is limited interface
     and AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element
     and AMF.UML.Connectable_Elements.UML_Connectable_Element;

   type UML_Parameter_Access is
     access all UML_Parameter'Class;
   for UML_Parameter_Access'Storage_Size use 0;

   not overriding function Get_Default
    (Self : not null access constant UML_Parameter)
       return AMF.Optional_String is abstract;
   --  Getter of Parameter::default.
   --
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Parameter.

   not overriding procedure Set_Default
    (Self : not null access UML_Parameter;
     To   : AMF.Optional_String) is abstract;
   --  Setter of Parameter::default.
   --
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Parameter.

   not overriding function Get_Default_Value
    (Self : not null access constant UML_Parameter)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of Parameter::defaultValue.
   --
   --  Specifies a ValueSpecification that represents a value to be used when 
   --  no argument is supplied for the Parameter.

   not overriding procedure Set_Default_Value
    (Self : not null access UML_Parameter;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of Parameter::defaultValue.
   --
   --  Specifies a ValueSpecification that represents a value to be used when 
   --  no argument is supplied for the Parameter.

   not overriding function Get_Direction
    (Self : not null access constant UML_Parameter)
       return AMF.UML.UML_Parameter_Direction_Kind is abstract;
   --  Getter of Parameter::direction.
   --
   --  Indicates whether a parameter is being sent into or out of a behavioral 
   --  element.

   not overriding procedure Set_Direction
    (Self : not null access UML_Parameter;
     To   : AMF.UML.UML_Parameter_Direction_Kind) is abstract;
   --  Setter of Parameter::direction.
   --
   --  Indicates whether a parameter is being sent into or out of a behavioral 
   --  element.

   not overriding function Get_Effect
    (Self : not null access constant UML_Parameter)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind is abstract;
   --  Getter of Parameter::effect.
   --
   --  Specifies the effect that the owner of the parameter has on values 
   --  passed in or out of the parameter.

   not overriding procedure Set_Effect
    (Self : not null access UML_Parameter;
     To   : AMF.UML.Optional_UML_Parameter_Effect_Kind) is abstract;
   --  Setter of Parameter::effect.
   --
   --  Specifies the effect that the owner of the parameter has on values 
   --  passed in or out of the parameter.

   not overriding function Get_Is_Exception
    (Self : not null access constant UML_Parameter)
       return Boolean is abstract;
   --  Getter of Parameter::isException.
   --
   --  Tells whether an output parameter may emit a value to the exclusion of 
   --  the other outputs.

   not overriding procedure Set_Is_Exception
    (Self : not null access UML_Parameter;
     To   : Boolean) is abstract;
   --  Setter of Parameter::isException.
   --
   --  Tells whether an output parameter may emit a value to the exclusion of 
   --  the other outputs.

   not overriding function Get_Is_Stream
    (Self : not null access constant UML_Parameter)
       return Boolean is abstract;
   --  Getter of Parameter::isStream.
   --
   --  Tells whether an input parameter may accept values while its behavior 
   --  is executing, or whether an output parameter post values while the 
   --  behavior is executing.

   not overriding procedure Set_Is_Stream
    (Self : not null access UML_Parameter;
     To   : Boolean) is abstract;
   --  Setter of Parameter::isStream.
   --
   --  Tells whether an input parameter may accept values while its behavior 
   --  is executing, or whether an output parameter post values while the 
   --  behavior is executing.

   not overriding function Get_Operation
    (Self : not null access constant UML_Parameter)
       return AMF.UML.Operations.UML_Operation_Access is abstract;
   --  Getter of Parameter::operation.
   --
   --  References the Operation owning this parameter.

   not overriding procedure Set_Operation
    (Self : not null access UML_Parameter;
     To   : AMF.UML.Operations.UML_Operation_Access) is abstract;
   --  Setter of Parameter::operation.
   --
   --  References the Operation owning this parameter.

   not overriding function Get_Parameter_Set
    (Self : not null access constant UML_Parameter)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set is abstract;
   --  Getter of Parameter::parameterSet.
   --
   --  The parameter sets containing the parameter. See ParameterSet.

   not overriding function Default
    (Self : not null access constant UML_Parameter)
       return AMF.Optional_String is abstract;
   --  Operation Parameter::default.
   --
   --  Missing derivation for Parameter::/default : String

end AMF.UML.Parameters;
