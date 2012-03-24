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
--  An exception handler is an element that specifies a body to execute in 
--  case the specified exception occurs during the execution of the protected 
--  node.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers.Collections;
with AMF.UML.Elements;
limited with AMF.UML.Executable_Nodes;
limited with AMF.UML.Object_Nodes;

package AMF.UML.Exception_Handlers is

   pragma Preelaborate;

   type UML_Exception_Handler is limited interface
     and AMF.UML.Elements.UML_Element;

   type UML_Exception_Handler_Access is
     access all UML_Exception_Handler'Class;
   for UML_Exception_Handler_Access'Storage_Size use 0;

   not overriding function Get_Exception_Input
    (Self : not null access constant UML_Exception_Handler)
       return AMF.UML.Object_Nodes.UML_Object_Node_Access is abstract;
   --  Getter of ExceptionHandler::exceptionInput.
   --
   --  An object node within the handler body. When the handler catches an 
   --  exception, the exception token is placed in this node, causing the body 
   --  to execute.

   not overriding procedure Set_Exception_Input
    (Self : not null access UML_Exception_Handler;
     To   : AMF.UML.Object_Nodes.UML_Object_Node_Access) is abstract;
   --  Setter of ExceptionHandler::exceptionInput.
   --
   --  An object node within the handler body. When the handler catches an 
   --  exception, the exception token is placed in this node, causing the body 
   --  to execute.

   not overriding function Get_Exception_Type
    (Self : not null access constant UML_Exception_Handler)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  Getter of ExceptionHandler::exceptionType.
   --
   --  The kind of instances that the handler catches. If an exception occurs 
   --  whose type is any of the classifiers in the set, the handler catches 
   --  the exception and executes its body.

   not overriding function Get_Handler_Body
    (Self : not null access constant UML_Exception_Handler)
       return AMF.UML.Executable_Nodes.UML_Executable_Node_Access is abstract;
   --  Getter of ExceptionHandler::handlerBody.
   --
   --  A node that is executed if the handler satisfies an uncaught exception.

   not overriding procedure Set_Handler_Body
    (Self : not null access UML_Exception_Handler;
     To   : AMF.UML.Executable_Nodes.UML_Executable_Node_Access) is abstract;
   --  Setter of ExceptionHandler::handlerBody.
   --
   --  A node that is executed if the handler satisfies an uncaught exception.

   not overriding function Get_Protected_Node
    (Self : not null access constant UML_Exception_Handler)
       return AMF.UML.Executable_Nodes.UML_Executable_Node_Access is abstract;
   --  Getter of ExceptionHandler::protectedNode.
   --
   --  The node protected by the handler. The handler is examined if an 
   --  exception propagates to the outside of the node.

   not overriding procedure Set_Protected_Node
    (Self : not null access UML_Exception_Handler;
     To   : AMF.UML.Executable_Nodes.UML_Executable_Node_Access) is abstract;
   --  Setter of ExceptionHandler::protectedNode.
   --
   --  The node protected by the handler. The handler is examined if an 
   --  exception propagates to the outside of the node.

end AMF.UML.Exception_Handlers;
