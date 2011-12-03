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
--  An action has pre- and post-conditions.
--  An action is a named element that is the fundamental unit of executable 
--  functionality. The execution of an action represents some transformation 
--  or processing in the modeled system, be it a computer system or otherwise.
--  An action represents a single step within an activity, that is, one that 
--  is not further decomposed within the activity.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
limited with AMF.UML.Constraints.Collections;
with AMF.UML.Executable_Nodes;
limited with AMF.UML.Input_Pins.Collections;
limited with AMF.UML.Output_Pins.Collections;

package AMF.UML.Actions is

   pragma Preelaborate;

   type UML_Action is limited interface
     and AMF.UML.Executable_Nodes.UML_Executable_Node;

   type UML_Action_Access is
     access all UML_Action'Class;
   for UML_Action_Access'Storage_Size use 0;

   not overriding function Get_Context
    (Self : not null access constant UML_Action)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of Action::context.
   --
   --  The classifier that owns the behavior of which this action is a part.

   not overriding function Get_Input
    (Self : not null access constant UML_Action)
       return AMF.UML.Input_Pins.Collections.Ordered_Set_Of_UML_Input_Pin is abstract;
   --  Getter of Action::input.
   --
   --  The ordered set of input pins connected to the Action. These are among 
   --  the total set of inputs.

   not overriding function Get_Is_Locally_Reentrant
    (Self : not null access constant UML_Action)
       return Boolean is abstract;
   --  Getter of Action::isLocallyReentrant.
   --
   --  If true, the action can begin a new, concurrent execution, even if 
   --  there is already another execution of the action ongoing. If false, the 
   --  action cannot begin a new execution until any previous execution has 
   --  completed.

   not overriding procedure Set_Is_Locally_Reentrant
    (Self : not null access UML_Action;
     To   : Boolean) is abstract;
   --  Setter of Action::isLocallyReentrant.
   --
   --  If true, the action can begin a new, concurrent execution, even if 
   --  there is already another execution of the action ongoing. If false, the 
   --  action cannot begin a new execution until any previous execution has 
   --  completed.

   not overriding function Get_Local_Postcondition
    (Self : not null access constant UML_Action)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  Getter of Action::localPostcondition.
   --
   --  Constraint that must be satisfied when executed is completed.

   not overriding function Get_Local_Precondition
    (Self : not null access constant UML_Action)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  Getter of Action::localPrecondition.
   --
   --  Constraint that must be satisfied when execution is started.

   not overriding function Get_Output
    (Self : not null access constant UML_Action)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin is abstract;
   --  Getter of Action::output.
   --
   --  The ordered set of output pins connected to the Action. The action 
   --  places its results onto pins in this set.

   not overriding function Context
    (Self : not null access constant UML_Action)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Operation Action::context.
   --
   --  Missing derivation for Action::/context : Classifier

end AMF.UML.Actions;
