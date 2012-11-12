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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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

package AMF.UMLDI is

   pragma Preelaborate;

   type UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind is
    (Diamond,
     Triangle);

   type Optional_UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind;
      end case;
   end record;

   type UMLDI_UML_Inherited_State_Border_Kind is
    (Dashed,
     Gray);

   type Optional_UMLDI_UML_Inherited_State_Border_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UMLDI_UML_Inherited_State_Border_Kind;
      end case;
   end record;

   type UMLDI_UML_Interaction_Diagram_Kind is
    (Communication,
     Overview,
     Sequence,
     Table,
     Timing);

   type Optional_UMLDI_UML_Interaction_Diagram_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UMLDI_UML_Interaction_Diagram_Kind;
      end case;
   end record;

   type UMLDI_UML_Interaction_Table_Label_Kind is
    (Constraint,
     Diagram_Identifier,
     Generated_Instance_Name,
     Lifeline_Class,
     Lifeline_Instance,
     Message_Name,
     Message_Receiving_Class,
     Message_Receiving_Instance,
     Message_Sending_Class,
     Message_Sending_Instance,
     Other_End,
     Parameter,
     Return_Value,
     Sequence_Number,
     Weak_Order);

   type Optional_UMLDI_UML_Interaction_Table_Label_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UMLDI_UML_Interaction_Table_Label_Kind;
      end case;
   end record;

   type UMLDI_UML_Navigability_Notation_Kind is
    (Always,
     Never,
     One_Way);

   type Optional_UMLDI_UML_Navigability_Notation_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UMLDI_UML_Navigability_Notation_Kind;
      end case;
   end record;

end AMF.UMLDI;
