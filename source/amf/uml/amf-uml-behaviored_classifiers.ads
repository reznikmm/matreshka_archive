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
--  A behaviored classifier may have an interface realization.
--  A classifier can have behavior specifications defined in its namespace. 
--  One of these may specify the behavior of the classifier itself.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviors.Collections;
with AMF.UML.Classifiers;
limited with AMF.UML.Interface_Realizations.Collections;

package AMF.UML.Behaviored_Classifiers is

   pragma Preelaborate;

   type UML_Behaviored_Classifier is limited interface
     and AMF.UML.Classifiers.UML_Classifier;

   type UML_Behaviored_Classifier_Access is
     access all UML_Behaviored_Classifier'Class;
   for UML_Behaviored_Classifier_Access'Storage_Size use 0;

   not overriding function Get_Classifier_Behavior
    (Self : not null access constant UML_Behaviored_Classifier)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Getter of BehavioredClassifier::classifierBehavior.
   --
   --  A behavior specification that specifies the behavior of the classifier 
   --  itself.

   not overriding procedure Set_Classifier_Behavior
    (Self : not null access UML_Behaviored_Classifier;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;
   --  Setter of BehavioredClassifier::classifierBehavior.
   --
   --  A behavior specification that specifies the behavior of the classifier 
   --  itself.

   not overriding function Get_Interface_Realization
    (Self : not null access constant UML_Behaviored_Classifier)
       return AMF.UML.Interface_Realizations.Collections.Set_Of_UML_Interface_Realization is abstract;
   --  Getter of BehavioredClassifier::interfaceRealization.
   --
   --  The set of InterfaceRealizations owned by the BehavioredClassifier. 
   --  Interface realizations reference the Interfaces of which the 
   --  BehavioredClassifier is an implementation.

   not overriding function Get_Owned_Behavior
    (Self : not null access constant UML_Behaviored_Classifier)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior is abstract;
   --  Getter of BehavioredClassifier::ownedBehavior.
   --
   --  References behavior specifications owned by a classifier.

end AMF.UML.Behaviored_Classifiers;
