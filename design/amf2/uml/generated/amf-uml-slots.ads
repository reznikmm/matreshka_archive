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
--  A slot specifies that an entity modeled by an instance specification has a 
--  value or values for a specific structural feature.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Instance_Specifications;
limited with AMF.UML.Structural_Features;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Slots is

   pragma Preelaborate;

   type UML_Slot_Interface is limited interface
     and AMF.UML.Elements.UML_Element_Interface;

   type UML_Slot is
     access all UML_Slot_Interface'Class;

   type Set_Of_UML_Slot is null record;
   type Ordered_Set_Of_UML_Slot is null record;

   not overriding function Get_Defining_Feature
    (Self : not null access constant UML_Slot_Interface)
       return AMF.UML.Structural_Features.UML_Structural_Feature is abstract;
   --  The structural feature that specifies the values that may be held by 
   --  the slot.

   not overriding procedure Set_Defining_Feature
    (Self : not null access UML_Slot_Interface;
     To   : AMF.UML.Structural_Features.UML_Structural_Feature) is abstract;

   not overriding function Get_Owning_Instance
    (Self : not null access constant UML_Slot_Interface)
       return AMF.UML.Instance_Specifications.UML_Instance_Specification is abstract;
   --  The instance specification that owns this slot.

   not overriding procedure Set_Owning_Instance
    (Self : not null access UML_Slot_Interface;
     To   : AMF.UML.Instance_Specifications.UML_Instance_Specification) is abstract;

   not overriding function Get_Value
    (Self : not null access constant UML_Slot_Interface)
       return AMF.UML.Value_Specifications.Ordered_Set_Of_UML_Value_Specification is abstract;
   --  The value or values corresponding to the defining feature for the 
   --  owning instance specification.

end AMF.UML.Slots;
