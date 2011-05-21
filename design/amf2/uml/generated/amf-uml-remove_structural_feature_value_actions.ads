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
--  A remove structural feature value action is a write structural feature 
--  action that removes values from structural features.
------------------------------------------------------------------------------
limited with AMF.UML.Input_Pins;
with AMF.UML.Write_Structural_Feature_Actions;

package AMF.UML.Remove_Structural_Feature_Value_Actions is

   pragma Preelaborate;

   type UML_Remove_Structural_Feature_Value_Action is limited interface
     and AMF.UML.Write_Structural_Feature_Actions.UML_Write_Structural_Feature_Action;

   type UML_Remove_Structural_Feature_Value_Action_Access is
     access all UML_Remove_Structural_Feature_Value_Action'Class;
   for UML_Remove_Structural_Feature_Value_Action_Access'Storage_Size use 0;

   not overriding function Get_Is_Remove_Duplicates
    (Self : not null access constant UML_Remove_Structural_Feature_Value_Action)
       return Boolean is abstract;
   --  Specifies whether to remove duplicates of the value in nonunique 
   --  structural features.

   not overriding procedure Set_Is_Remove_Duplicates
    (Self : not null access UML_Remove_Structural_Feature_Value_Action;
     To   : Boolean) is abstract;

   not overriding function Get_Remove_At
    (Self : not null access constant UML_Remove_Structural_Feature_Value_Action)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;
   --  Specifies the position of an existing value to remove in ordered 
   --  nonunique structural features. The type of the pin is UnlimitedNatural, 
   --  but the value cannot be zero or unlimited.

   not overriding procedure Set_Remove_At
    (Self : not null access UML_Remove_Structural_Feature_Value_Action;
     To   : AMF.UML.Input_Pins.UML_Input_Pin_Access) is abstract;

end AMF.UML.Remove_Structural_Feature_Value_Actions;
