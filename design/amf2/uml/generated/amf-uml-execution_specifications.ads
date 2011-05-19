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
--  An execution specification is a specification of the execution of a unit 
--  of behavior or action within the lifeline. The duration of an execution 
--  specification is represented by two cccurrence specifications, the start 
--  occurrence specification and the finish occurrence specification.
------------------------------------------------------------------------------
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Occurrence_Specifications;

package AMF.UML.Execution_Specifications is

   pragma Preelaborate;

   type UML_Execution_Specification_Interface is limited interface
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment_Interface;

   type UML_Execution_Specification is
     access all UML_Execution_Specification_Interface'Class;

   type Set_Of_UML_Execution_Specification is null record;
   type Ordered_Set_Of_UML_Execution_Specification is null record;

   not overriding function Get_Finish
    (Self : not null access constant UML_Execution_Specification_Interface)
       return AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification is abstract;
   --  References the OccurrenceSpecification that designates the finish of 
   --  the Action or Behavior.

   not overriding procedure Set_Finish
    (Self : not null access UML_Execution_Specification_Interface;
     To   : AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification) is abstract;

   not overriding function Get_Start
    (Self : not null access constant UML_Execution_Specification_Interface)
       return AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification is abstract;
   --  References the OccurrenceSpecification that designates the start of the 
   --  Action or Behavior

   not overriding procedure Set_Start
    (Self : not null access UML_Execution_Specification_Interface;
     To   : AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification) is abstract;

end AMF.UML.Execution_Specifications;