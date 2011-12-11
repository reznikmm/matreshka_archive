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
with AMF.Internals.UML_Elements;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Exception_Handlers;
with AMF.UML.Executable_Nodes;
with AMF.UML.Object_Nodes;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Exception_Handlers is

   type UML_Exception_Handler_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Exception_Handlers.UML_Exception_Handler with null record;

   overriding function Get_Exception_Input
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Object_Nodes.UML_Object_Node_Access;
   --  Getter of ExceptionHandler::exceptionInput.
   --
   --  An object node within the handler body. When the handler catches an 
   --  exception, the exception token is placed in this node, causing the body 
   --  to execute.

   overriding procedure Set_Exception_Input
    (Self : not null access UML_Exception_Handler_Proxy;
     To   : AMF.UML.Object_Nodes.UML_Object_Node_Access);
   --  Setter of ExceptionHandler::exceptionInput.
   --
   --  An object node within the handler body. When the handler catches an 
   --  exception, the exception token is placed in this node, causing the body 
   --  to execute.

   overriding function Get_Exception_Type
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of ExceptionHandler::exceptionType.
   --
   --  The kind of instances that the handler catches. If an exception occurs 
   --  whose type is any of the classifiers in the set, the handler catches 
   --  the exception and executes its body.

   overriding function Get_Handler_Body
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Executable_Nodes.UML_Executable_Node_Access;
   --  Getter of ExceptionHandler::handlerBody.
   --
   --  A node that is executed if the handler satisfies an uncaught exception.

   overriding procedure Set_Handler_Body
    (Self : not null access UML_Exception_Handler_Proxy;
     To   : AMF.UML.Executable_Nodes.UML_Executable_Node_Access);
   --  Setter of ExceptionHandler::handlerBody.
   --
   --  A node that is executed if the handler satisfies an uncaught exception.

   overriding function Get_Protected_Node
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Executable_Nodes.UML_Executable_Node_Access;
   --  Getter of ExceptionHandler::protectedNode.
   --
   --  The node protected by the handler. The handler is examined if an 
   --  exception propagates to the outside of the node.

   overriding procedure Set_Protected_Node
    (Self : not null access UML_Exception_Handler_Proxy;
     To   : AMF.UML.Executable_Nodes.UML_Executable_Node_Access);
   --  Setter of ExceptionHandler::protectedNode.
   --
   --  The node protected by the handler. The handler is examined if an 
   --  exception propagates to the outside of the node.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Exception_Handler_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Exception_Handler_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Exception_Handler_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.UML_Exception_Handlers;
