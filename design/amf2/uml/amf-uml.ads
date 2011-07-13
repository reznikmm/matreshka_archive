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

package AMF.UML is

   pragma Preelaborate;

   type UML_Aggregation_Kind is
    (None,
     Shared,
     Composite);

   type UML_Call_Concurrency_Kind is
    (Sequential,
     Guarded,
     Concurrent);

   type UML_Connector_Kind is
    (Assembly,
     Delegation);

   type UML_Expansion_Kind is
    (Parallel,
     Iterative,
     Stream);

   type UML_Interaction_Operator_Kind is
    (Alt_Operator,
     Opt_Operator,
     Par_Operator,
     Loop_Operator,
     Critical_Operator,
     Neg_Operator,
     Assert_Operator,
     Strict_Operator,
     Seq_Operator,
     Ignore_Operator,
     Consider_Operator);

   type UML_Message_Kind is
    (Complete,
     Lost,
     Found,
     Unknown);

   type UML_Message_Sort is
    (Synch_Call,
     Asynch_Call,
     Asynch_Signal,
     Create_Message,
     Delete_Message,
     Reply);

   type UML_Object_Node_Ordering_Kind is
    (Unordered,
     Ordered,
     LIFO,
     FIFO);

   type UML_Parameter_Direction_Kind is
    (In_Parameter,
     In_Out_Parameter,
     Out_Parameter,
     Return_Parameter);

   type UML_Parameter_Effect_Kind is
    (Create,
     Read,
     Update,
     Delete);

   type UML_Pseudostate_Kind is
    (Initial_Pseudostate,
     Deep_History_Pseudostate,
     Shallow_History_Pseudostate,
     Join_Pseudostate,
     Fork_Pseudostate,
     Junction_Pseudostate,
     Choice_Pseudostate,
     Entry_Point_Pseudostate,
     Exit_Point_Pseudostate,
     Terminate_Pseudostate);

   type UML_Transition_Kind is
    (External,
     Internal,
     Local);

   type UML_Visibility_Kind is
    (Public_Visibility,
     Private_Visibility,
     Protected_Visibility,
     Package_Visibility);

   type Optional_UML_Parameter_Effect_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UML_Parameter_Effect_Kind;
      end case;
   end record;

   type Optional_UML_Visibility_Kind (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : UML_Visibility_Kind;
      end case;
   end record;

   --  XXX Should be reused between meta models.

   type Collection_Of_Boolean is new Natural;

   subtype Set_Of_Boolean is Collection_Of_Boolean;

   type Collection_Of_String is new Natural;

   subtype Set_Of_String is Collection_Of_String;

   subtype Sequence_Of_String is Collection_Of_String;

   subtype Ordered_Set_Of_String is Collection_Of_String;

--   type Optional_Real is null record;

end AMF.UML;
