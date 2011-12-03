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
--  A duration observation is a reference to a duration during an execution. 
--  It points out the element(s) in the model to observe and whether the 
--  observations are when this model element is entered or when it is exited.
------------------------------------------------------------------------------
with AMF.Boolean_Collections;
limited with AMF.UML.Named_Elements.Collections;
with AMF.UML.Observations;

package AMF.UML.Duration_Observations is

   pragma Preelaborate;

   type UML_Duration_Observation is limited interface
     and AMF.UML.Observations.UML_Observation;

   type UML_Duration_Observation_Access is
     access all UML_Duration_Observation'Class;
   for UML_Duration_Observation_Access'Storage_Size use 0;

   not overriding function Get_Event
    (Self : not null access constant UML_Duration_Observation)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Getter of DurationObservation::event.
   --
   --  The observation is determined by the entering or exiting of the event 
   --  element during execution.

   not overriding function Get_First_Event
    (Self : not null access constant UML_Duration_Observation)
       return AMF.Boolean_Collections.Set_Of_Boolean is abstract;
   --  Getter of DurationObservation::firstEvent.
   --
   --  The value of firstEvent[i] is related to event[i] (where i is 1 or 2). 
   --  If firstEvent[i] is true, then the corresponding observation event is 
   --  the first time instant the execution enters event[i]. If firstEvent[i] 
   --  is false, then the corresponding observation event is the time instant 
   --  the execution exits event[i]. Default value is true applied when 
   --  event[i] refers an element that represents only one time instant.

end AMF.UML.Duration_Observations;
