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
--  Operation specializes TemplateableElement in order to support 
--  specification of template operations and bound operations. Operation 
--  specializes ParameterableElement to specify that an operation can be 
--  exposed as a formal template parameter, and provided as an actual 
--  parameter in a binding of a template.
--  An operation may invoke both the execution of method behaviors as well as 
--  other behavioral responses.
--  An operation is a behavioral feature of a classifier that specifies the 
--  name, type, parameters, and constraints for invoking an associated 
--  behavior.
------------------------------------------------------------------------------
with AMF.UML.Behavioral_Features;
limited with AMF.UML.Classes;
limited with AMF.UML.Constraints;
limited with AMF.UML.Data_Types;
limited with AMF.UML.Interfaces;
limited with AMF.UML.Operation_Template_Parameters;
with AMF.UML.Parameterable_Elements;
limited with AMF.UML.Parameters;
with AMF.UML.Templateable_Elements;
limited with AMF.UML.Types;

package AMF.UML.Operations is

   pragma Preelaborate;

   type UML_Operation_Interface is limited interface
     and AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Interface
     and AMF.UML.Templateable_Elements.UML_Templateable_Element_Interface
     and AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Interface;

   type UML_Operation is
     access all UML_Operation_Interface'Class;

   type Set_Of_UML_Operation is null record;
   type Ordered_Set_Of_UML_Operation is null record;

   not overriding function Get_Body_Condition
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Constraints.UML_Constraint is abstract;
   --  An optional Constraint on the result values of an invocation of this 
   --  Operation.

   not overriding procedure Set_Body_Condition
    (Self : not null access UML_Operation_Interface;
     To   : AMF.UML.Constraints.UML_Constraint) is abstract;

   not overriding function Get_Class
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Classes.UML_Class is abstract;
   --  The class that owns the operation.

   not overriding procedure Set_Class
    (Self : not null access UML_Operation_Interface;
     To   : AMF.UML.Classes.UML_Class) is abstract;

   not overriding function Get_Datatype
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Data_Types.UML_Data_Type is abstract;
   --  The DataType that owns this Operation.

   not overriding procedure Set_Datatype
    (Self : not null access UML_Operation_Interface;
     To   : AMF.UML.Data_Types.UML_Data_Type) is abstract;

   not overriding function Get_Interface
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Interfaces.UML_Interface is abstract;
   --  The Interface that owns this Operation.

   not overriding procedure Set_Interface
    (Self : not null access UML_Operation_Interface;
     To   : AMF.UML.Interfaces.UML_Interface) is abstract;

   not overriding function Get_Is_Ordered
    (Self : not null access constant UML_Operation_Interface)
       return Boolean is abstract;
   --  This information is derived from the return result for this Operation.
   --  Specifies whether the return parameter is ordered or not, if present.

   not overriding function Get_Is_Query
    (Self : not null access constant UML_Operation_Interface)
       return Boolean is abstract;
   --  Specifies whether an execution of the BehavioralFeature leaves the 
   --  state of the system unchanged (isQuery=true) or whether side effects 
   --  may occur (isQuery=false).

   not overriding procedure Set_Is_Query
    (Self : not null access UML_Operation_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Unique
    (Self : not null access constant UML_Operation_Interface)
       return Boolean is abstract;
   --  This information is derived from the return result for this Operation.
   --  Specifies whether the return parameter is unique or not, if present.

   not overriding function Get_Lower
    (Self : not null access constant UML_Operation_Interface)
       return Optional_Integer is abstract;
   --  Specifies the lower multiplicity of the return parameter, if present.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Parameters.Ordered_Set_Of_UML_Parameter is abstract;
   --  Specifies the ordered set of formal parameters of this 
   --  BehavioralFeature.
   --  Specifies the parameters owned by this Operation.

   not overriding function Get_Postcondition
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Constraints.Set_Of_UML_Constraint is abstract;
   --  An optional set of Constraints specifying the state of the system when 
   --  the Operation is completed.

   not overriding function Get_Precondition
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Constraints.Set_Of_UML_Constraint is abstract;
   --  An optional set of Constraints on the state of the system when the 
   --  Operation is invoked.

   overriding function Get_Raised_Exception
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Types.Set_Of_UML_Type is abstract;
   --  References the Types representing exceptions that may be raised during 
   --  an invocation of this operation.

   not overriding function Get_Redefined_Operation
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Operations.Set_Of_UML_Operation is abstract;
   --  References the Operations that are redefined by this Operation.

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter is abstract;
   --  The template parameter that exposes this element as a formal parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation_Interface;
     To   : AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter) is abstract;

   not overriding function Get_Type
    (Self : not null access constant UML_Operation_Interface)
       return AMF.UML.Types.UML_Type is abstract;
   --  This information is derived from the return result for this Operation.
   --  Specifies the return result of the operation, if present.

   not overriding function Get_Upper
    (Self : not null access constant UML_Operation_Interface)
       return Optional_Unlimited_Natural is abstract;
   --  Specifies the upper multiplicity of the return parameter, if present.
   --  This information is derived from the return result for this Operation.

end AMF.UML.Operations;
