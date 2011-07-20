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
--  A variable is considered a connectable element.
--  Variables are elements for passing data between actions indirectly. A 
--  local variable stores values shared by the actions within a structured 
--  activity group but not accessible outside it. The output of an action may 
--  be written to a variable and read for the input to a subsequent action, 
--  which is effectively an indirect data flow path. Because there is no 
--  predefined relationship between actions that read and write variables, 
--  these actions must be sequenced by control flows to prevent race 
--  conditions that may occur between actions that read or write the same 
--  variable.
------------------------------------------------------------------------------
limited with AMF.UML.Actions;
limited with AMF.UML.Activities;
with AMF.UML.Connectable_Elements;
with AMF.UML.Multiplicity_Elements;
limited with AMF.UML.Structured_Activity_Nodes;

package AMF.UML.Variables is

   pragma Preelaborate;

   type UML_Variable is limited interface
     and AMF.UML.Connectable_Elements.UML_Connectable_Element
     and AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element;

   type UML_Variable_Access is
     access all UML_Variable'Class;
   for UML_Variable_Access'Storage_Size use 0;

   not overriding function Get_Activity_Scope
    (Self : not null access constant UML_Variable)
       return AMF.UML.Activities.UML_Activity_Access is abstract;
   --  Getter of Variable::activityScope.
   --
   --  An activity that owns the variable.

   not overriding procedure Set_Activity_Scope
    (Self : not null access UML_Variable;
     To   : AMF.UML.Activities.UML_Activity_Access) is abstract;
   --  Setter of Variable::activityScope.
   --
   --  An activity that owns the variable.

   not overriding function Get_Scope
    (Self : not null access constant UML_Variable)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access is abstract;
   --  Getter of Variable::scope.
   --
   --  A structured activity node that owns the variable.

   not overriding procedure Set_Scope
    (Self : not null access UML_Variable;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access) is abstract;
   --  Setter of Variable::scope.
   --
   --  A structured activity node that owns the variable.

   not overriding function Is_Accessible_By
    (Self : not null access constant UML_Variable;
     A : AMF.UML.Actions.UML_Action_Access)
       return Boolean is abstract;
   --  The isAccessibleBy() operation is not defined in standard UML. 
   --  Implementations should define it to specify which actions can access a 
   --  variable.

end AMF.UML.Variables;
