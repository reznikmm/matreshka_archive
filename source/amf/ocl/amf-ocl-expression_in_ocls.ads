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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
limited with AMF.OCL.Ocl_Expressions;
limited with AMF.OCL.Variables.Collections;
limited with AMF.UML.Classifiers;
with AMF.UML.Opaque_Expressions;

package AMF.OCL.Expression_In_Ocls is

   pragma Preelaborate;

   type OCL_Expression_In_Ocl is limited interface
     and AMF.UML.Opaque_Expressions.UML_Opaque_Expression;

   type OCL_Expression_In_Ocl_Access is
     access all OCL_Expression_In_Ocl'Class;
   for OCL_Expression_In_Ocl_Access'Storage_Size use 0;

   not overriding function Get_Body_Expression
    (Self : not null access constant OCL_Expression_In_Ocl)
       return AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access is abstract;
   --  Getter of ExpressionInOcl::bodyExpression.
   --

   not overriding procedure Set_Body_Expression
    (Self : not null access OCL_Expression_In_Ocl;
     To   : AMF.OCL.Ocl_Expressions.OCL_Ocl_Expression_Access) is abstract;
   --  Setter of ExpressionInOcl::bodyExpression.
   --

   not overriding function Get_Context_Variable
    (Self : not null access constant OCL_Expression_In_Ocl)
       return AMF.OCL.Variables.OCL_Variable_Access is abstract;
   --  Getter of ExpressionInOcl::contextVariable.
   --

   not overriding procedure Set_Context_Variable
    (Self : not null access OCL_Expression_In_Ocl;
     To   : AMF.OCL.Variables.OCL_Variable_Access) is abstract;
   --  Setter of ExpressionInOcl::contextVariable.
   --

   not overriding function Get_Result_Variable
    (Self : not null access constant OCL_Expression_In_Ocl)
       return AMF.OCL.Variables.OCL_Variable_Access is abstract;
   --  Getter of ExpressionInOcl::resultVariable.
   --

   not overriding procedure Set_Result_Variable
    (Self : not null access OCL_Expression_In_Ocl;
     To   : AMF.OCL.Variables.OCL_Variable_Access) is abstract;
   --  Setter of ExpressionInOcl::resultVariable.
   --

   not overriding function Get_Parameter_Variable
    (Self : not null access constant OCL_Expression_In_Ocl)
       return AMF.OCL.Variables.Collections.Ordered_Set_Of_OCL_Variable is abstract;
   --  Getter of ExpressionInOcl::parameterVariable.
   --

   not overriding function Get_Generated_Type
    (Self : not null access constant OCL_Expression_In_Ocl)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of ExpressionInOcl::generatedType.
   --

   not overriding procedure Set_Generated_Type
    (Self : not null access OCL_Expression_In_Ocl;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;
   --  Setter of ExpressionInOcl::generatedType.
   --

end AMF.OCL.Expression_In_Ocls;
