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
--  A collaboration use represents one particular use of a collaboration to 
--  explain the relationships between the properties of a classifier. A 
--  collaboration use shows how the pattern described by a collaboration is 
--  applied in a given context, by binding specific entities from that context 
--  to the roles of the collaboration. Depending on the context, these 
--  entities could be structural features of a classifier, instance 
--  specifications, or even roles in some containing collaboration. There may 
--  be multiple occurrences of a given collaboration within a classifier, each 
--  involving a different set of roles and connectors. A given role or 
--  connector may be involved in multiple occurrences of the same or different 
--  collaborations. Associated dependencies map features of the collaboration 
--  type to features in the classifier. These dependencies indicate which role 
--  in the classifier plays which role in the collaboration.
------------------------------------------------------------------------------
limited with AMF.UML.Collaborations;
limited with AMF.UML.Dependencies;
with AMF.UML.Named_Elements;

package AMF.UML.Collaboration_Uses is

   pragma Preelaborate;

   type UML_Collaboration_Use_Interface is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element_Interface;

   type UML_Collaboration_Use is
     access all UML_Collaboration_Use_Interface'Class;

   type Set_Of_UML_Collaboration_Use is null record;
   type Ordered_Set_Of_UML_Collaboration_Use is null record;

   not overriding function Get_Role_Binding
    (Self : not null access constant UML_Collaboration_Use_Interface)
       return AMF.UML.Dependencies.Set_Of_UML_Dependency is abstract;
   --  A mapping between features of the collaboration type and features of 
   --  the owning classifier. This mapping indicates which connectable element 
   --  of the classifier plays which role(s) in the collaboration. A 
   --  connectable element may be bound to multiple roles in the same 
   --  collaboration use (that is, it may play multiple roles).

   not overriding function Get_Type
    (Self : not null access constant UML_Collaboration_Use_Interface)
       return AMF.UML.Collaborations.UML_Collaboration is abstract;
   --  The collaboration which is used in this occurrence. The collaboration 
   --  defines the cooperation between its roles which are mapped to 
   --  properties of the classifier owning the collaboration use.

   not overriding procedure Set_Type
    (Self : not null access UML_Collaboration_Use_Interface;
     To   : AMF.UML.Collaborations.UML_Collaboration) is abstract;

end AMF.UML.Collaboration_Uses;
