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
--  An expression represents a node in an expression tree, which may be 
--  non-terminal or terminal. It defines a symbol, and has a possibly empty 
--  sequence of operands which are value specifications.
--  An expression is a structured tree of symbols that denotes a (possibly 
--  empty) set of values when evaluated in a context.
------------------------------------------------------------------------------
with AMF.UML.Value_Specifications;
limited with AMF.UML.Value_Specifications.Collections;

package AMF.UML.Expressions is

   pragma Preelaborate;

   type UML_Expression is limited interface
     and AMF.UML.Value_Specifications.UML_Value_Specification;

   type UML_Expression_Access is
     access all UML_Expression'Class;
   for UML_Expression_Access'Storage_Size use 0;

   not overriding function Get_Operand
    (Self : not null access constant UML_Expression)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification is abstract;
   --  Specifies a sequence of operands.

   not overriding function Get_Symbol
    (Self : not null access constant UML_Expression)
       return Optional_String is abstract;
   --  The symbol associated with the node in the expression tree.

   not overriding procedure Set_Symbol
    (Self : not null access UML_Expression;
     To   : Optional_String) is abstract;

end AMF.UML.Expressions;
