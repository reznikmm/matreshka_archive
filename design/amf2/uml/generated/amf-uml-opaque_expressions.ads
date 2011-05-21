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
--  An opaque expression is an uninterpreted textual statement that denotes a 
--  (possibly empty) set of values when evaluated in a context.
--  Provides a mechanism for precisely defining the behavior of an opaque 
--  expression. An opaque expression is defined by a behavior restricted to 
--  return one result.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors;
limited with AMF.UML.Parameters;
with AMF.UML.Value_Specifications;

package AMF.UML.Opaque_Expressions is

   pragma Preelaborate;

   type UML_Opaque_Expression is limited interface
     and AMF.UML.Value_Specifications.UML_Value_Specification;

   type UML_Opaque_Expression_Access is
     access all UML_Opaque_Expression'Class;
   for UML_Opaque_Expression_Access'Storage_Size use 0;

   not overriding function Get_Behavior
    (Self : not null access constant UML_Opaque_Expression)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Specifies the behavior of the opaque expression.

   not overriding procedure Set_Behavior
    (Self : not null access UML_Opaque_Expression;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;

   not overriding function Get_Body
    (Self : not null access constant UML_Opaque_Expression)
       return Sequence_Of_String is abstract;
   --  The text of the expression, possibly in multiple languages.

   not overriding function Get_Language
    (Self : not null access constant UML_Opaque_Expression)
       return Ordered_Set_Of_String is abstract;
   --  Specifies the languages in which the expression is stated. The 
   --  interpretation of the expression body depends on the languages. If the 
   --  languages are unspecified, they might be implicit from the expression 
   --  body or the context. Languages are matched to body strings by order.

   not overriding function Get_Result
    (Self : not null access constant UML_Opaque_Expression)
       return AMF.UML.Parameters.UML_Parameter_Access is abstract;
   --  Restricts an opaque expression to return exactly one return result. 
   --  When the invocation of the opaque expression completes, a single set of 
   --  values is returned to its owner. This association is derived from the 
   --  single return result parameter of the associated behavior.

end AMF.UML.Opaque_Expressions;
