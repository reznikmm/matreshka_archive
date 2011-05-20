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
--  An interaction use refers to an interaction. The interaction use is a 
--  shorthand for copying the contents of the referenced interaction where the 
--  interaction use is. To be accurate the copying must take into account 
--  substituting parameters with arguments and connect the formal gates with 
--  the actual ones.
------------------------------------------------------------------------------
limited with AMF.UML.Gates.Collections;
with AMF.UML.Interaction_Fragments;
limited with AMF.UML.Interactions;
limited with AMF.UML.Properties;
limited with AMF.UML.Value_Specifications;
limited with AMF.UML.Value_Specifications.Collections;

package AMF.UML.Interaction_Uses is

   pragma Preelaborate;

   type UML_Interaction_Use_Interface is limited interface
     and AMF.UML.Interaction_Fragments.UML_Interaction_Fragment_Interface;

   type UML_Interaction_Use is
     access all UML_Interaction_Use_Interface'Class;
   for UML_Interaction_Use'Storage_Size use 0;

   not overriding function Get_Actual_Gate
    (Self : not null access constant UML_Interaction_Use_Interface)
       return AMF.UML.Gates.Collections.Set_Of_UML_Gate is abstract;
   --  The actual gates of the InteractionUse

   not overriding function Get_Argument
    (Self : not null access constant UML_Interaction_Use_Interface)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification is abstract;
   --  The actual arguments of the Interaction

   not overriding function Get_Refers_To
    (Self : not null access constant UML_Interaction_Use_Interface)
       return AMF.UML.Interactions.UML_Interaction is abstract;
   --  Refers to the Interaction that defines its meaning

   not overriding procedure Set_Refers_To
    (Self : not null access UML_Interaction_Use_Interface;
     To   : AMF.UML.Interactions.UML_Interaction) is abstract;

   not overriding function Get_Return_Value
    (Self : not null access constant UML_Interaction_Use_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  The value of the executed Interaction.

   not overriding procedure Set_Return_Value
    (Self : not null access UML_Interaction_Use_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

   not overriding function Get_Return_Value_Recipient
    (Self : not null access constant UML_Interaction_Use_Interface)
       return AMF.UML.Properties.UML_Property is abstract;
   --  The recipient of the return value.

   not overriding procedure Set_Return_Value_Recipient
    (Self : not null access UML_Interaction_Use_Interface;
     To   : AMF.UML.Properties.UML_Property) is abstract;

end AMF.UML.Interaction_Uses;
