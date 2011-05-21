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
--  An object flow is an activity edge that can have objects or data passing 
--  along it.
--  Object flows have support for multicast/receive, token selection from 
--  object nodes, and transformation of tokens.
------------------------------------------------------------------------------
with AMF.UML.Activity_Edges;
limited with AMF.UML.Behaviors;

package AMF.UML.Object_Flows is

   pragma Preelaborate;

   type UML_Object_Flow is limited interface
     and AMF.UML.Activity_Edges.UML_Activity_Edge;

   type UML_Object_Flow_Access is
     access all UML_Object_Flow'Class;
   for UML_Object_Flow_Access'Storage_Size use 0;

   not overriding function Get_Is_Multicast
    (Self : not null access constant UML_Object_Flow)
       return Boolean is abstract;
   --  Tells whether the objects in the flow are passed by multicasting.

   not overriding procedure Set_Is_Multicast
    (Self : not null access UML_Object_Flow;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Multireceive
    (Self : not null access constant UML_Object_Flow)
       return Boolean is abstract;
   --  Tells whether the objects in the flow are gathered from respondents to 
   --  multicasting.

   not overriding procedure Set_Is_Multireceive
    (Self : not null access UML_Object_Flow;
     To   : Boolean) is abstract;

   not overriding function Get_Selection
    (Self : not null access constant UML_Object_Flow)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Selects tokens from a source object node.

   not overriding procedure Set_Selection
    (Self : not null access UML_Object_Flow;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;

   not overriding function Get_Transformation
    (Self : not null access constant UML_Object_Flow)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Changes or replaces data tokens flowing along edge.

   not overriding procedure Set_Transformation
    (Self : not null access UML_Object_Flow;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;

end AMF.UML.Object_Flows;
