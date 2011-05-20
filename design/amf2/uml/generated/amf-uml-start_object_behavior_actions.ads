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
--  StartObjectBehaviorAction is an action that starts the execution either of 
--  a directly instantiated behavior or of the classifier behavior of an 
--  object. Argument values may be supplied for the input parameters of the 
--  behavior. If the behavior is invoked synchronously, then output values may 
--  be obtained for output parameters.
------------------------------------------------------------------------------
with AMF.UML.Call_Actions;
limited with AMF.UML.Input_Pins;

package AMF.UML.Start_Object_Behavior_Actions is

   pragma Preelaborate;

   type UML_Start_Object_Behavior_Action_Interface is limited interface
     and AMF.UML.Call_Actions.UML_Call_Action_Interface;

   type UML_Start_Object_Behavior_Action is
     access all UML_Start_Object_Behavior_Action_Interface'Class;
   for UML_Start_Object_Behavior_Action'Storage_Size use 0;

   not overriding function Get_Object
    (Self : not null access constant UML_Start_Object_Behavior_Action_Interface)
       return AMF.UML.Input_Pins.UML_Input_Pin is abstract;
   --  Holds the object which is either a behavior to be started or has a 
   --  classifier behavior to be started.

   not overriding procedure Set_Object
    (Self : not null access UML_Start_Object_Behavior_Action_Interface;
     To   : AMF.UML.Input_Pins.UML_Input_Pin) is abstract;

end AMF.UML.Start_Object_Behavior_Actions;
