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
--  A general ordering represents a binary relation between two occurrence 
--  specifications, to describe that one occurrence specification must occur 
--  before the other in a valid trace. This mechanism provides the ability to 
--  define partial orders of occurrence cpecifications that may otherwise not 
--  have a specified order.
------------------------------------------------------------------------------
with AMF.UML.Named_Elements;
limited with AMF.UML.Occurrence_Specifications;

package AMF.UML.General_Orderings is

   pragma Preelaborate;

   type UML_General_Ordering_Interface is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element_Interface;

   type UML_General_Ordering is
     access all UML_General_Ordering_Interface'Class;
   for UML_General_Ordering'Storage_Size use 0;

   not overriding function Get_After
    (Self : not null access constant UML_General_Ordering_Interface)
       return AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification is abstract;
   --  The OccurrenceSpecification referenced comes after the 
   --  OccurrenceSpecification referenced by before.

   not overriding procedure Set_After
    (Self : not null access UML_General_Ordering_Interface;
     To   : AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification) is abstract;

   not overriding function Get_Before
    (Self : not null access constant UML_General_Ordering_Interface)
       return AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification is abstract;
   --  The OccurrenceSpecification referenced comes before the 
   --  OccurrenceSpecification referenced by after.

   not overriding procedure Set_Before
    (Self : not null access UML_General_Ordering_Interface;
     To   : AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification) is abstract;

end AMF.UML.General_Orderings;
