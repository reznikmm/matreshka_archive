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
--  Behavior is a specification of how its context classifier changes state 
--  over time. This specification may be either a definition of possible 
--  behavior execution or emergent behavior, or a selective illustration of an 
--  interesting subset of possible executions. The latter form is typically 
--  used for capturing examples, such as a trace of a particular execution.
--  
--  A behavior owns zero or more parameter sets.
------------------------------------------------------------------------------
limited with AMF.UML.Behavioral_Features;
limited with AMF.UML.Behaviored_Classifiers;
limited with AMF.UML.Behaviors.Collections;
with AMF.UML.Classes;
limited with AMF.UML.Constraints.Collections;
limited with AMF.UML.Parameter_Sets.Collections;
limited with AMF.UML.Parameters.Collections;

package AMF.UML.Behaviors is

   pragma Preelaborate;

   type UML_Behavior is limited interface
     and AMF.UML.Classes.UML_Class;

   type UML_Behavior_Access is
     access all UML_Behavior'Class;
   for UML_Behavior_Access'Storage_Size use 0;

   not overriding function Get_Context
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access is abstract;
   --  Getter of Behavior::context.
   --
   --  The classifier that is the context for the execution of the behavior. 
   --  If the behavior is owned by a BehavioredClassifier, that classifier is 
   --  the context. Otherwise, the context is the first BehavioredClassifier 
   --  reached by following the chain of owner relationships. For example, 
   --  following this algorithm, the context of an entry action in a state 
   --  machine is the classifier that owns the state machine. The features of 
   --  the context classifier as well as the elements visible to the context 
   --  classifier are visible to the behavior.

   not overriding function Get_Is_Reentrant
    (Self : not null access constant UML_Behavior)
       return Boolean is abstract;
   --  Getter of Behavior::isReentrant.
   --
   --  Tells whether the behavior can be invoked while it is still executing 
   --  from a previous invocation.

   not overriding procedure Set_Is_Reentrant
    (Self : not null access UML_Behavior;
     To   : Boolean) is abstract;
   --  Setter of Behavior::isReentrant.
   --
   --  Tells whether the behavior can be invoked while it is still executing 
   --  from a previous invocation.

   not overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter is abstract;
   --  Getter of Behavior::ownedParameter.
   --
   --  References a list of parameters to the behavior which describes the 
   --  order and type of arguments that can be given when the behavior is 
   --  invoked and of the values which will be returned when the behavior 
   --  completes its execution.

   not overriding function Get_Owned_Parameter_Set
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set is abstract;
   --  Getter of Behavior::ownedParameterSet.
   --
   --  The ParameterSets owned by this Behavior.

   not overriding function Get_Postcondition
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  Getter of Behavior::postcondition.
   --
   --  An optional set of Constraints specifying what is fulfilled after the 
   --  execution of the behavior is completed, if its precondition was 
   --  fulfilled before its invocation.

   not overriding function Get_Precondition
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is abstract;
   --  Getter of Behavior::precondition.
   --
   --  An optional set of Constraints specifying what must be fulfilled when 
   --  the behavior is invoked.

   not overriding function Get_Redefined_Behavior
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior is abstract;
   --  Getter of Behavior::redefinedBehavior.
   --
   --  References a behavior that this behavior redefines. A subtype of 
   --  Behavior may redefine any other subtype of Behavior. If the behavior 
   --  implements a behavioral feature, it replaces the redefined behavior. If 
   --  the behavior is a classifier behavior, it extends the redefined 
   --  behavior.

   not overriding function Get_Specification
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access is abstract;
   --  Getter of Behavior::specification.
   --
   --  Designates a behavioral feature that the behavior implements. The 
   --  behavioral feature must be owned by the classifier that owns the 
   --  behavior or be inherited by it. The parameters of the behavioral 
   --  feature and the implementing behavior must match. A behavior does not 
   --  need to have a specification, in which case it either is the classifer 
   --  behavior of a BehavioredClassifier or it can only be invoked by another 
   --  behavior of the classifier.

   not overriding procedure Set_Specification
    (Self : not null access UML_Behavior;
     To   : AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access) is abstract;
   --  Setter of Behavior::specification.
   --
   --  Designates a behavioral feature that the behavior implements. The 
   --  behavioral feature must be owned by the classifier that owns the 
   --  behavior or be inherited by it. The parameters of the behavioral 
   --  feature and the implementing behavior must match. A behavior does not 
   --  need to have a specification, in which case it either is the classifer 
   --  behavior of a BehavioredClassifier or it can only be invoked by another 
   --  behavior of the classifier.

   not overriding function Context
    (Self : not null access constant UML_Behavior)
       return AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access is abstract;
   --  Operation Behavior::context.
   --
   --  Missing derivation for Behavior::/context : BehavioredClassifier

end AMF.UML.Behaviors;
