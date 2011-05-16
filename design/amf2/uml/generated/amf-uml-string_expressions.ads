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
--  An expression that specifies a string value that is derived by 
--  concatenating a set of sub string expressions, some of which might be 
--  template parameters.
------------------------------------------------------------------------------
with AMF.UML.Expressions;
with AMF.UML.Templateable_Elements;

package AMF.UML.String_Expressions is

   pragma Preelaborate;

   type UML_String_Expression_Interface is limited interface
     and AMF.UML.Expressions.UML_Expression_Interface
     and AMF.UML.Templateable_Elements.UML_Templateable_Element_Interface;

   type UML_String_Expression is
     access all UML_String_Expression_Interface'Class;

   type Set_Of_UML_String_Expression is null record;
   type Ordered_Set_Of_UML_String_Expression is null record;

   not overriding function Get_Owning_Expression
    (Self : not null access constant UML_String_Expression_Interface)
       return AMF.UML.String_Expressions.UML_String_Expression is abstract;
   --  The string expression of which this expression is a substring.

   not overriding procedure Set_Owning_Expression
    (Self : not null access UML_String_Expression_Interface;
     To   : AMF.UML.String_Expressions.UML_String_Expression) is abstract;

   not overriding function Get_Sub_Expression
    (Self : not null access constant UML_String_Expression_Interface)
       return AMF.UML.String_Expressions.Set_Of_UML_String_Expression is abstract;
   --  The StringExpressions that constitute this StringExpression.

end AMF.UML.String_Expressions;
