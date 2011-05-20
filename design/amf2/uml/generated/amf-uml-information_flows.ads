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
--  An information flow specifies that one or more information items 
--  circulates from its sources to its targets. Information flows require some 
--  kind of information channel for transmitting information items from the 
--  source to the destination. An information channel is represented in 
--  various ways depending on the nature of its sources and targets. It may be 
--  represented by connectors, links, associations, or even dependencies. For 
--  example, if the source and destination are parts in some composite 
--  structure such as a collaboration, then the information channel is likely 
--  to be represented by a connector between them. Or, if the source and 
--  target are objects (which are a kind of instance specification), they may 
--  be represented by a link that joins the two, and so on.
------------------------------------------------------------------------------
limited with AMF.UML.Activity_Edges.Collections;
limited with AMF.UML.Classifiers.Collections;
limited with AMF.UML.Connectors.Collections;
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Messages.Collections;
limited with AMF.UML.Named_Elements.Collections;
with AMF.UML.Packageable_Elements;
limited with AMF.UML.Relationships.Collections;

package AMF.UML.Information_Flows is

   pragma Preelaborate;

   type UML_Information_Flow_Interface is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship_Interface
     and AMF.UML.Packageable_Elements.UML_Packageable_Element_Interface;

   type UML_Information_Flow is
     access all UML_Information_Flow_Interface'Class;
   for UML_Information_Flow'Storage_Size use 0;

   not overriding function Get_Conveyed
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  Specifies the information items that may circulate on this information 
   --  flow.

   not overriding function Get_Information_Source
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Defines from which source the conveyed InformationItems are initiated.

   not overriding function Get_Information_Target
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is abstract;
   --  Defines to which target the conveyed InformationItems are directed.

   not overriding function Get_Realization
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Relationships.Collections.Set_Of_UML_Relationship is abstract;
   --  Determines which Relationship will realize the specified flow

   not overriding function Get_Realizing_Activity_Edge
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is abstract;
   --  Determines which ActivityEdges will realize the specified flow.

   not overriding function Get_Realizing_Connector
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Connectors.Collections.Set_Of_UML_Connector is abstract;
   --  Determines which Connectors will realize the specified flow.

   not overriding function Get_Realizing_Message
    (Self : not null access constant UML_Information_Flow_Interface)
       return AMF.UML.Messages.Collections.Set_Of_UML_Message is abstract;
   --  Determines which Messages will realize the specified flow.

end AMF.UML.Information_Flows;
