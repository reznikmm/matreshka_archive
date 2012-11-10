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
--  A duration constraint is a constraint that refers to a duration interval.
------------------------------------------------------------------------------
with AMF.Boolean_Collections;
limited with AMF.UML.Duration_Intervals;
with AMF.UML.Interval_Constraints;

package AMF.UML.Duration_Constraints is

   pragma Preelaborate;

   type UML_Duration_Constraint is limited interface
     and AMF.UML.Interval_Constraints.UML_Interval_Constraint;

   type UML_Duration_Constraint_Access is
     access all UML_Duration_Constraint'Class;
   for UML_Duration_Constraint_Access'Storage_Size use 0;

   not overriding function Get_First_Event
    (Self : not null access constant UML_Duration_Constraint)
       return AMF.Boolean_Collections.Set_Of_Boolean is abstract;
   --  Getter of DurationConstraint::firstEvent.
   --
   --  The value of firstEvent[i] is related to constrainedElement[i] (where i 
   --  is 1 or 2). If firstEvent[i] is true, then the corresponding 
   --  observation event is the first time instant the execution enters 
   --  constrainedElement[i]. If firstEvent[i] is false, then the 
   --  corresponding observation event is the last time instant the execution 
   --  is within constrainedElement[i]. Default value is true applied when 
   --  constrainedElement[i] refers an element that represents only one time 
   --  instant.

   not overriding function Get_Specification
    (Self : not null access constant UML_Duration_Constraint)
       return AMF.UML.Duration_Intervals.UML_Duration_Interval_Access is abstract;
   --  Getter of DurationConstraint::specification.
   --
   --  The interval constraining the duration.

   not overriding procedure Set_Specification
    (Self : not null access UML_Duration_Constraint;
     To   : AMF.UML.Duration_Intervals.UML_Duration_Interval_Access) is abstract;
   --  Setter of DurationConstraint::specification.
   --
   --  The interval constraining the duration.

end AMF.UML.Duration_Constraints;
