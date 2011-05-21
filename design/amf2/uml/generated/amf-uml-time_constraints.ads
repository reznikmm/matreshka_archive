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
--  A time constraint is a constraint that refers to a time interval.
------------------------------------------------------------------------------
with AMF.UML.Interval_Constraints;
limited with AMF.UML.Time_Intervals;

package AMF.UML.Time_Constraints is

   pragma Preelaborate;

   type UML_Time_Constraint is limited interface
     and AMF.UML.Interval_Constraints.UML_Interval_Constraint;

   type UML_Time_Constraint_Access is
     access all UML_Time_Constraint'Class;
   for UML_Time_Constraint_Access'Storage_Size use 0;

   not overriding function Get_First_Event
    (Self : not null access constant UML_Time_Constraint)
       return Optional_Boolean is abstract;
   --  The value of firstEvent is related to constrainedElement. If firstEvent 
   --  is true, then the corresponding observation event is the first time 
   --  instant the execution enters constrainedElement. If firstEvent is 
   --  false, then the corresponding observation event is the last time 
   --  instant the execution is within constrainedElement.

   not overriding procedure Set_First_Event
    (Self : not null access UML_Time_Constraint;
     To   : Optional_Boolean) is abstract;

   not overriding function Get_Specification
    (Self : not null access constant UML_Time_Constraint)
       return AMF.UML.Time_Intervals.UML_Time_Interval_Access is abstract;
   --  A condition that must be true when evaluated in order for the 
   --  constraint to be satisfied.

   not overriding procedure Set_Specification
    (Self : not null access UML_Time_Constraint;
     To   : AMF.UML.Time_Intervals.UML_Time_Interval_Access) is abstract;

end AMF.UML.Time_Constraints;
