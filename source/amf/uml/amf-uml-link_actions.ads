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
--  LinkAction is an abstract class for all link actions that identify their 
--  links by the objects at the ends of the links and by the qualifiers at 
--  ends of the links.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Associations;
limited with AMF.UML.Input_Pins.Collections;
limited with AMF.UML.Link_End_Datas.Collections;

package AMF.UML.Link_Actions is

   pragma Preelaborate;

   type UML_Link_Action is limited interface
     and AMF.UML.Actions.UML_Action;

   type UML_Link_Action_Access is
     access all UML_Link_Action'Class;
   for UML_Link_Action_Access'Storage_Size use 0;

   not overriding function Get_End_Data
    (Self : not null access constant UML_Link_Action)
       return AMF.UML.Link_End_Datas.Collections.Set_Of_UML_Link_End_Data is abstract;
   --  Getter of LinkAction::endData.
   --
   --  Data identifying one end of a link by the objects on its ends and 
   --  qualifiers.

   not overriding function Get_Input_Value
    (Self : not null access constant UML_Link_Action)
       return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin is abstract;
   --  Getter of LinkAction::inputValue.
   --
   --  Pins taking end objects and qualifier values as input.

   not overriding function Association
    (Self : not null access constant UML_Link_Action)
       return AMF.UML.Associations.UML_Association_Access is abstract;
   --  Operation LinkAction::association.
   --
   --  The association operates on LinkAction. It returns the association of 
   --  the action.

end AMF.UML.Link_Actions;
