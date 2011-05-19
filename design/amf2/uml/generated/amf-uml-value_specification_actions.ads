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
--  A value specification action is an action that evaluates a value 
--  specification.
------------------------------------------------------------------------------
with AMF.UML.Actions;
limited with AMF.UML.Output_Pins;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Value_Specification_Actions is

   pragma Preelaborate;

   type UML_Value_Specification_Action_Interface is limited interface
     and AMF.UML.Actions.UML_Action_Interface;

   type UML_Value_Specification_Action is
     access all UML_Value_Specification_Action_Interface'Class;

   type Set_Of_UML_Value_Specification_Action is null record;
   type Ordered_Set_Of_UML_Value_Specification_Action is null record;

   not overriding function Get_Result
    (Self : not null access constant UML_Value_Specification_Action_Interface)
       return AMF.UML.Output_Pins.UML_Output_Pin is abstract;
   --  Gives the output pin on which the result is put.

   not overriding procedure Set_Result
    (Self : not null access UML_Value_Specification_Action_Interface;
     To   : AMF.UML.Output_Pins.UML_Output_Pin) is abstract;

   not overriding function Get_Value
    (Self : not null access constant UML_Value_Specification_Action_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  Value specification to be evaluated.

   not overriding procedure Set_Value
    (Self : not null access UML_Value_Specification_Action_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

end AMF.UML.Value_Specification_Actions;