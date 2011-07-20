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
--  CallAction is an abstract class for actions that invoke behavior and 
--  receive return values.
------------------------------------------------------------------------------
with AMF.UML.Invocation_Actions;
limited with AMF.UML.Output_Pins.Collections;

package AMF.UML.Call_Actions is

   pragma Preelaborate;

   type UML_Call_Action is limited interface
     and AMF.UML.Invocation_Actions.UML_Invocation_Action;

   type UML_Call_Action_Access is
     access all UML_Call_Action'Class;
   for UML_Call_Action_Access'Storage_Size use 0;

   not overriding function Get_Is_Synchronous
    (Self : not null access constant UML_Call_Action)
       return Boolean is abstract;
   --  Getter of CallAction::isSynchronous.
   --
   --  If true, the call is synchronous and the caller waits for completion of 
   --  the invoked behavior. If false, the call is asynchronous and the caller 
   --  proceeds immediately and does not expect a return values.

   not overriding procedure Set_Is_Synchronous
    (Self : not null access UML_Call_Action;
     To   : Boolean) is abstract;
   --  Setter of CallAction::isSynchronous.
   --
   --  If true, the call is synchronous and the caller waits for completion of 
   --  the invoked behavior. If false, the call is asynchronous and the caller 
   --  proceeds immediately and does not expect a return values.

   not overriding function Get_Result
    (Self : not null access constant UML_Call_Action)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin is abstract;
   --  Getter of CallAction::result.
   --
   --  A list of output pins where the results of performing the invocation 
   --  are placed.

end AMF.UML.Call_Actions;
