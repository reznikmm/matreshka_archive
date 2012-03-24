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
--  A message defines a particular communication between lifelines of an 
--  interaction.
------------------------------------------------------------------------------
limited with AMF.UML.Connectors;
limited with AMF.UML.Interactions;
limited with AMF.UML.Message_Ends;
with AMF.UML.Named_Elements;
limited with AMF.UML.Value_Specifications.Collections;

package AMF.UML.Messages is

   pragma Preelaborate;

   type UML_Message is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element;

   type UML_Message_Access is
     access all UML_Message'Class;
   for UML_Message_Access'Storage_Size use 0;

   not overriding function Get_Argument
    (Self : not null access constant UML_Message)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification is abstract;
   --  Getter of Message::argument.
   --
   --  The arguments of the Message

   not overriding function Get_Connector
    (Self : not null access constant UML_Message)
       return AMF.UML.Connectors.UML_Connector_Access is abstract;
   --  Getter of Message::connector.
   --
   --  The Connector on which this Message is sent.

   not overriding procedure Set_Connector
    (Self : not null access UML_Message;
     To   : AMF.UML.Connectors.UML_Connector_Access) is abstract;
   --  Setter of Message::connector.
   --
   --  The Connector on which this Message is sent.

   not overriding function Get_Interaction
    (Self : not null access constant UML_Message)
       return AMF.UML.Interactions.UML_Interaction_Access is abstract;
   --  Getter of Message::interaction.
   --
   --  The enclosing Interaction owning the Message

   not overriding procedure Set_Interaction
    (Self : not null access UML_Message;
     To   : AMF.UML.Interactions.UML_Interaction_Access) is abstract;
   --  Setter of Message::interaction.
   --
   --  The enclosing Interaction owning the Message

   not overriding function Get_Message_Kind
    (Self : not null access constant UML_Message)
       return AMF.UML.UML_Message_Kind is abstract;
   --  Getter of Message::messageKind.
   --
   --  The derived kind of the Message (complete, lost, found or unknown)

   not overriding function Get_Message_Sort
    (Self : not null access constant UML_Message)
       return AMF.UML.UML_Message_Sort is abstract;
   --  Getter of Message::messageSort.
   --
   --  The sort of communication reflected by the Message

   not overriding procedure Set_Message_Sort
    (Self : not null access UML_Message;
     To   : AMF.UML.UML_Message_Sort) is abstract;
   --  Setter of Message::messageSort.
   --
   --  The sort of communication reflected by the Message

   not overriding function Get_Receive_Event
    (Self : not null access constant UML_Message)
       return AMF.UML.Message_Ends.UML_Message_End_Access is abstract;
   --  Getter of Message::receiveEvent.
   --
   --  References the Receiving of the Message

   not overriding procedure Set_Receive_Event
    (Self : not null access UML_Message;
     To   : AMF.UML.Message_Ends.UML_Message_End_Access) is abstract;
   --  Setter of Message::receiveEvent.
   --
   --  References the Receiving of the Message

   not overriding function Get_Send_Event
    (Self : not null access constant UML_Message)
       return AMF.UML.Message_Ends.UML_Message_End_Access is abstract;
   --  Getter of Message::sendEvent.
   --
   --  References the Sending of the Message.

   not overriding procedure Set_Send_Event
    (Self : not null access UML_Message;
     To   : AMF.UML.Message_Ends.UML_Message_End_Access) is abstract;
   --  Setter of Message::sendEvent.
   --
   --  References the Sending of the Message.

   not overriding function Get_Signature
    (Self : not null access constant UML_Message)
       return AMF.UML.Named_Elements.UML_Named_Element_Access is abstract;
   --  Getter of Message::signature.
   --
   --  The signature of the Message is the specification of its content. It 
   --  refers either an Operation or a Signal.

   not overriding procedure Set_Signature
    (Self : not null access UML_Message;
     To   : AMF.UML.Named_Elements.UML_Named_Element_Access) is abstract;
   --  Setter of Message::signature.
   --
   --  The signature of the Message is the specification of its content. It 
   --  refers either an Operation or a Signal.

   not overriding function Message_Kind
    (Self : not null access constant UML_Message)
       return AMF.UML.UML_Message_Kind is abstract;
   --  Operation Message::messageKind.
   --
   --  Missing derivation for Message::/messageKind : MessageKind

end AMF.UML.Messages;
