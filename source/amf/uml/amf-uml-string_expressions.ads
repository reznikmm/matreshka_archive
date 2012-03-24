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
--  An expression that specifies a string value that is derived by 
--  concatenating a set of sub string expressions, some of which might be 
--  template parameters.
------------------------------------------------------------------------------
with AMF.UML.Expressions;
limited with AMF.UML.String_Expressions.Collections;
with AMF.UML.Templateable_Elements;

package AMF.UML.String_Expressions is

   pragma Preelaborate;

   type UML_String_Expression is limited interface
     and AMF.UML.Expressions.UML_Expression
     and AMF.UML.Templateable_Elements.UML_Templateable_Element;

   type UML_String_Expression_Access is
     access all UML_String_Expression'Class;
   for UML_String_Expression_Access'Storage_Size use 0;

   not overriding function Get_Owning_Expression
    (Self : not null access constant UML_String_Expression)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is abstract;
   --  Getter of StringExpression::owningExpression.
   --
   --  The string expression of which this expression is a substring.

   not overriding procedure Set_Owning_Expression
    (Self : not null access UML_String_Expression;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is abstract;
   --  Setter of StringExpression::owningExpression.
   --
   --  The string expression of which this expression is a substring.

   not overriding function Get_Sub_Expression
    (Self : not null access constant UML_String_Expression)
       return AMF.UML.String_Expressions.Collections.Set_Of_UML_String_Expression is abstract;
   --  Getter of StringExpression::subExpression.
   --
   --  The StringExpressions that constitute this StringExpression.

   not overriding function String_Value
    (Self : not null access constant UML_String_Expression)
       return League.Strings.Universal_String is abstract;
   --  Operation StringExpression::stringValue.
   --
   --  The query stringValue() returns the string that concatenates, in order, 
   --  all the component string literals of all the subexpressions that are 
   --  part of the StringExpression.

end AMF.UML.String_Expressions;
