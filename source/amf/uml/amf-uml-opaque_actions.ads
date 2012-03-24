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
--  An action with implementation-specific semantics.
------------------------------------------------------------------------------
limited with AMF.String_Collections;
with AMF.UML.Actions;
limited with AMF.UML.Input_Pins.Collections;
limited with AMF.UML.Output_Pins.Collections;

package AMF.UML.Opaque_Actions is

   pragma Preelaborate;

   type UML_Opaque_Action is limited interface
     and AMF.UML.Actions.UML_Action;

   type UML_Opaque_Action_Access is
     access all UML_Opaque_Action'Class;
   for UML_Opaque_Action_Access'Storage_Size use 0;

   not overriding function Get_Body
    (Self : not null access constant UML_Opaque_Action)
       return AMF.String_Collections.Sequence_Of_String is abstract;
   --  Getter of OpaqueAction::body.
   --
   --  Specifies the action in one or more languages.

   not overriding function Get_Input_Value
    (Self : not null access constant UML_Opaque_Action)
       return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin is abstract;
   --  Getter of OpaqueAction::inputValue.
   --
   --  Provides input to the action.

   not overriding function Get_Language
    (Self : not null access constant UML_Opaque_Action)
       return AMF.String_Collections.Ordered_Set_Of_String is abstract;
   --  Getter of OpaqueAction::language.
   --
   --  Languages the body strings use, in the same order as the body strings

   not overriding function Get_Output_Value
    (Self : not null access constant UML_Opaque_Action)
       return AMF.UML.Output_Pins.Collections.Set_Of_UML_Output_Pin is abstract;
   --  Getter of OpaqueAction::outputValue.
   --
   --  Takes output from the action.

end AMF.UML.Opaque_Actions;
