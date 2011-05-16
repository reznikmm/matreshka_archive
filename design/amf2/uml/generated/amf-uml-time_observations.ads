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
--  A time observation is a reference to a time instant during an execution. 
--  It points out the element in the model to observe and whether the 
--  observation is when this model element is entered or when it is exited.
------------------------------------------------------------------------------
limited with AMF.UML.Named_Elements;
with AMF.UML.Observations;

package AMF.UML.Time_Observations is

   pragma Preelaborate;

   type UML_Time_Observation_Interface is limited interface
     and AMF.UML.Observations.UML_Observation_Interface;

   type UML_Time_Observation is
     access all UML_Time_Observation_Interface'Class;

   type Set_Of_UML_Time_Observation is null record;
   type Ordered_Set_Of_UML_Time_Observation is null record;

   not overriding function Get_Event
    (Self : not null access constant UML_Time_Observation_Interface)
       return AMF.UML.Named_Elements.UML_Named_Element is abstract;
   --  The observation is determined by the entering or exiting of the event 
   --  element during execution.

   not overriding procedure Set_Event
    (Self : not null access UML_Time_Observation_Interface;
     To   : AMF.UML.Named_Elements.UML_Named_Element) is abstract;

   not overriding function Get_First_Event
    (Self : not null access constant UML_Time_Observation_Interface)
       return Boolean is abstract;
   --  The value of firstEvent is related to event. If firstEvent is true, 
   --  then the corresponding observation event is the first time instant the 
   --  execution enters event. If firstEvent is false, then the corresponding 
   --  observation event is the time instant the execution exits event.

   not overriding procedure Set_First_Event
    (Self : not null access UML_Time_Observation_Interface;
     To   : Boolean) is abstract;

end AMF.UML.Time_Observations;
