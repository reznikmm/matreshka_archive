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
--  A read link object end action is an action that retrieves an end object 
--  from a link object.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Input_Pins;
limited with AMF.UML.Output_Pins;
limited with AMF.UML.Properties;

package AMF.UML.Read_Link_Object_End_Actions is

   pragma Preelaborate;

   type UML_Read_Link_Object_End_Action is limited interface
     and AMF.UML.Actions.UML_Action;

   type UML_Read_Link_Object_End_Action_Access is
     access all UML_Read_Link_Object_End_Action'Class;
   for UML_Read_Link_Object_End_Action_Access'Storage_Size use 0;

   not overriding function Get_End
    (Self : not null access constant UML_Read_Link_Object_End_Action)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Getter of ReadLinkObjectEndAction::end.
   --
   --  Link end to be read.

   not overriding procedure Set_End
    (Self : not null access UML_Read_Link_Object_End_Action;
     To   : AMF.UML.Properties.UML_Property_Access) is abstract;
   --  Setter of ReadLinkObjectEndAction::end.
   --
   --  Link end to be read.

   not overriding function Get_Object
    (Self : not null access constant UML_Read_Link_Object_End_Action)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Getter of ReadLinkObjectEndAction::object.
   --
   --  Gives the input pin from which the link object is obtained.

   not overriding procedure Set_Object
    (Self : not null access UML_Read_Link_Object_End_Action;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;
   --  Setter of ReadLinkObjectEndAction::object.
   --
   --  Gives the input pin from which the link object is obtained.

   not overriding function Get_Result
    (Self : not null access constant UML_Read_Link_Object_End_Action)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access is abstract;
   --  Getter of ReadLinkObjectEndAction::result.
   --
   --  Pin where the result value is placed.

   not overriding procedure Set_Result
    (Self : not null access UML_Read_Link_Object_End_Action;
     To   : AMF.UML.Output_Pins.UML_Output_Pin_Access) is abstract;
   --  Setter of ReadLinkObjectEndAction::result.
   --
   --  Pin where the result value is placed.

end AMF.UML.Read_Link_Object_End_Actions;
