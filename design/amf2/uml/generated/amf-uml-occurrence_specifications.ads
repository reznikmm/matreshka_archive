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
--  An occurrence specification is the basic semantic unit of interactions. 
--  The sequences of occurrences specified by them are the meanings of 
--  interactions.
------------------------------------------------------------------------------
limited with AMF.UML.General_Orderings.Collections;
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Lifelines;

package AMF.UML.Occurrence_Specifications is

   pragma Preelaborate;

   type UML_Occurrence_Specification is limited interface
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment;

   type UML_Occurrence_Specification_Access is
     access all UML_Occurrence_Specification'Class;
   for UML_Occurrence_Specification_Access'Storage_Size use 0;

   not overriding function Get_Covered
    (Self : not null access constant UML_Occurrence_Specification)
       return AMF.UML.Lifelines.UML_Lifeline_Access is abstract;
   --  Getter of OccurrenceSpecification::covered.
   --
   --  References the Lifeline on which the OccurrenceSpecification appears.

   not overriding procedure Set_Covered
    (Self : not null access UML_Occurrence_Specification;
     To   : AMF.UML.Lifelines.UML_Lifeline_Access) is abstract;
   --  Setter of OccurrenceSpecification::covered.
   --
   --  References the Lifeline on which the OccurrenceSpecification appears.

   not overriding function Get_To_After
    (Self : not null access constant UML_Occurrence_Specification)
       return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering is abstract;
   --  Getter of OccurrenceSpecification::toAfter.
   --
   --  References the GeneralOrderings that specify EventOcurrences that must 
   --  occur after this OccurrenceSpecification

   not overriding function Get_To_Before
    (Self : not null access constant UML_Occurrence_Specification)
       return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering is abstract;
   --  Getter of OccurrenceSpecification::toBefore.
   --
   --  References the GeneralOrderings that specify EventOcurrences that must 
   --  occur before this OccurrenceSpecification

end AMF.UML.Occurrence_Specifications;
