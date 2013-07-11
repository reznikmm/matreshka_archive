------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides abstract declaration for MEP representation.
------------------------------------------------------------------------------
with Ada.Containers.Hashed_Maps;

with League.Strings;

with WSDL.AST;

package WSDL.MEPs is

   pragma Preelaborate;

   package Interface_Fault_Reference_Maps is
     new Ada.Containers.Hashed_Maps
          (WSDL.AST.Qualified_Name,
           WSDL.AST.Interface_Fault_Reference_Access,
           WSDL.AST.Hash,
           WSDL.AST."=",
           WSDL.AST."=");

   type Message_Placeholder is record
      Label     : League.Strings.Universal_String;
      Direction : WSDL.AST.Message_Directions;
      Message   : WSDL.AST.Interface_Message_Access;
      --  Interface Message Reference actually mapped to this placeholder.
      Faults    : Interface_Fault_Reference_Maps.Map;
      --  Interface Fault References actually associated with this placeholder.
   end record;

   type Message_Placeholder_Array is
     array (Positive range <>) of Message_Placeholder;

   type Fault_Propagation_Rules is
    (Fault_Replaces_Message,
     Message_Triggers_Fault,
     No_Faults);

   type MEP (Length : Natural) is limited record
      IRI            : League.Strings.Universal_String;
      Placeholders   : Message_Placeholder_Array (1 .. Length);
      --  Placeholder messages of the MEP.
      FPR            : Fault_Propagation_Rules;
      --  Fault propagation rule of the MEP.

      Has_In         : Boolean;
      --  MEP has at least one 'in' placeholder message.
      Has_Out        : Boolean;
      --  MEP has at least one 'out' placeholder message.
      Has_Single_In  : Boolean;
      --  MEP has only one 'in' placeholder message.
      Has_Single_Out : Boolean;
      --  MEP has only one 'out' placeholder message.
      Has_In_Fault   : Boolean;
      --  MEP supports at least one fault in the 'In' direction.
      Has_Out_Fault  : Boolean;
      --  MEP supports at least one fault in the 'Out' direction.
   end record;

   type MEP_Access is access all MEP;

end WSDL.MEPs;
