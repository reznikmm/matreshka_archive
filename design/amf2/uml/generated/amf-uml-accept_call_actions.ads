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
--  An accept call action is an accept event action representing the receipt 
--  of a synchronous call request. In addition to the normal operation 
--  parameters, the action produces an output that is needed later to supply 
--  the information to the reply action necessary to return control to the 
--  caller. This action is for synchronous calls. If it is used to handle an 
--  asynchronous call, execution of the subsequent reply action will complete 
--  immediately with no effects.
------------------------------------------------------------------------------
with AMF.UML.Accept_Event_Actions;
limited with AMF.UML.Output_Pins;

package AMF.UML.Accept_Call_Actions is

   pragma Preelaborate;

   type UML_Accept_Call_Action is limited interface
     and AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action;

   type UML_Accept_Call_Action_Access is
     access all UML_Accept_Call_Action'Class;
   for UML_Accept_Call_Action_Access'Storage_Size use 0;

   not overriding function Get_Return_Information
    (Self : not null access constant UML_Accept_Call_Action)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access is abstract;
   --  Pin where a value is placed containing sufficient information to 
   --  perform a subsequent reply and return control to the caller. The 
   --  contents of this value are opaque. It can be passed and copied but it 
   --  cannot be manipulated by the model.

   not overriding procedure Set_Return_Information
    (Self : not null access UML_Accept_Call_Action;
     To   : AMF.UML.Output_Pins.UML_Output_Pin_Access) is abstract;

end AMF.UML.Accept_Call_Actions;
