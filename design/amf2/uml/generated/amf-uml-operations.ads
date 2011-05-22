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
limited with AMF.UML.Constraints.Collections;
limited with AMF.UML.Data_Types;
limited with AMF.UML.Interfaces;
limited with AMF.UML.Operation_Template_Parameters;
limited with AMF.UML.Operations.Collections;
with AMF.UML.Parameterable_Elements;
limited with AMF.UML.Parameters.Collections;
limited with AMF.UML.Redefinable_Elements;
with AMF.UML.Templateable_Elements;
limited with AMF.UML.Types;
limited with AMF.UML.Types.Collections;

package AMF.UML.Operations is

   pragma Preelaborate;

   type UML_Operation is limited interface
     and AMF.UML.Behavioral_Features.UML_Behavioral_Feature
     and AMF.UML.Templateable_Elements.UML_Templateable_Element
     and AMF.UML.Parameterable_Elements.UML_Parameterable_Element;

   type UML_Operation_Access is
     access all UML_Operation'Class;
   for UML_Operation_Access'Storage_Size use 0;

   not overriding function Get_Body_Condition
    (Self : not null access constant UML_Operation)
       return AMF.UML.Constraints.UML_Constraint_Access is abstract;
   --  An optional Constraint on the result values of an invocation of this 
   --  Operation.

   not overriding procedure Set_Body_Condition
    (Self : not null access UML_Operation;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is abstract;

   not overriding function Get_Class
    (Self : not null access constant UML_Operation)
       return AMF.UML.Classes.UML_Class_Access is abstract;
   --  The class that owns the operation.

   not overriding procedure Set_Class
    (Self : not null access UML_Operation;
     To   : AMF.UML.Classes.UML_Class_Access) is abstract;

   not overriding function Get_Datatype
    (Self : not null access constant UML_Operation)
       return AMF.UML.Data_Types.UML_Data_Type_Access is abstract;
   --  The DataType that owns this Operation.

   not overriding procedure Set_Datatype
    (Self : not null access UML_Operation;
     To   : AMF.UML.Data_Types.UML_Data_Type_Access) is abstract;

   not overriding function Get_Interface
    (Self : not null access constant UML_Operation)
       return AMF.UML.Interfaces.UML_Interface_Access is abstract;
   --  The Interface that owns this Operation.

   not overriding procedure Set_Interface
    (Self : not null access UML_Operation;
     To   : AMF.UML.Interfaces.UML_Interface_Access) is abstract;

   not overriding function Get_Is_Ordered
    (Self : not null access constant UML_Operation)
       return Boolean is abstract;
   --  This information is derived from the return result for this Operation.
   --  Specifies whether the return parameter is ordered or not, if present.

   not overriding function Get_Is_Query
    (Self : not null access constant UML_Operation)
       return Boolean is abstract;
   --  Specifies whether an execution of the BehavioralFeature leaves the 
   --  state of the system unchanged (isQuery=true) or whether side effects 
   --  may occur (isQuery=false).

   not overriding procedure Set_Is_Query
    (Self : not null access UML_Operation;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Unique
    (Self : not null access constant UML_Operation)
       return Boolean is abstract;
   --  This information is derived from the return result for this Operation.
   --  Specifies whether the return parameter is unique or not, if present.

   not overriding function Get_Lower
    (Self : not null access constant UML_Operation)
       return Optional_Integer is abstract;
   --  Specifies the lower multiplicity of the return parameter, if present.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Operation)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter is abstract;
   --  Specifies the ordered set of formal parameters of this 
   --  BehavioralFeature.
   --  Specifies the parameters owned by this Operation.

   not overriding function Get_Postcondition
    (Self : not null access constant UML_Operation)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  An optional set of Constraints specifying the state of the system when 
   --  the Operation is completed.

   not overriding function Get_Precondition
    (Self : not null access constant UML_Operation)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  An optional set of Constraints on the state of the system when the 
   --  Operation is invoked.

   overriding function Get_Raised_Exception
    (Self : not null access constant UML_Operation)
       return AMF.UML.Types.Collections.Set_Of_UML_Type is abstract;
   --  References the Types representing exceptions that may be raised during 
   --  an invocation of this operation.

   not overriding function Get_Redefined_Operation
    (Self : not null access constant UML_Operation)
       return AMF.UML.Operations.Collections.Set_Of_UML_Operation is abstract;
   --  References the Operations that are redefined by this Operation.

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access is abstract;
   --  The template parameter that exposes this element as a formal parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation;
     To   : AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access) is abstract;

   not overriding function Get_Type
    (Self : not null access constant UML_Operation)
       return AMF.UML.Types.UML_Type_Access is abstract;
   --  This information is derived from the return result for this Operation.
   --  Specifies the return result of the operation, if present.

   not overriding function Get_Upper
    (Self : not null access constant UML_Operation)
       return Optional_Unlimited_Natural is abstract;
   --  Specifies the upper multiplicity of the return parameter, if present.
   --  This information is derived from the return result for this Operation.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Operation;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is abstract;
   --  A redefining operation is consistent with a redefined operation if it 
   --  has the same number of owned parameters, and the type of each owned 
   --  parameter conforms to the type of the corresponding redefined parameter.
   --  The query isConsistentWith() specifies, for any two Operations in a 
   --  context in which redefinition is possible, whether redefinition would 
   --  be consistent in the sense of maintaining type covariance. Other senses 
   --  of consistency may be required, for example to determine consistency in 
   --  the sense of contravariance. Users may define alternative queries under 
   --  names different from 'isConsistentWith()', as for example, users may 
   --  define a query named 'isContravariantWith()'.

   not overriding function Is_Ordered
    (Self : not null access constant UML_Operation)
       return Boolean is abstract;
   --  If this operation has a return parameter, isOrdered equals the value of 
   --  isOrdered for that parameter. Otherwise isOrdered is false.

   not overriding function Is_Unique
    (Self : not null access constant UML_Operation)
       return Boolean is abstract;
   --  If this operation has a return parameter, isUnique equals the value of 
   --  isUnique for that parameter. Otherwise isUnique is true.

   not overriding function Lower
    (Self : not null access constant UML_Operation)
       return Integer is abstract;
   --  If this operation has a return parameter, lower equals the value of 
   --  lower for that parameter. Otherwise lower is not defined.

   not overriding function Return_Result
    (Self : not null access constant UML_Operation)
       return AMF.UML.Parameters.Collections.Set_Of_UML_Parameter is abstract;
   --  The query returnResult() returns the set containing the return 
   --  parameter of the Operation if one exists, otherwise, it returns an 
   --  empty set

   not overriding function Upper
    (Self : not null access constant UML_Operation)
       return Unlimited_Natural is abstract;
   --  If this operation has a return parameter, upper equals the value of 
   --  upper for that parameter. Otherwise upper is not defined.

end AMF.UML.Operations;
