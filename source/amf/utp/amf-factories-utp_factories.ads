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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Utp.Coding_Rules;
with AMF.Utp.Data_Partitions;
with AMF.Utp.Data_Pools;
with AMF.Utp.Data_Selectors;
with AMF.Utp.Default_Applications;
with AMF.Utp.Defaults;
with AMF.Utp.Determ_Alts;
with AMF.Utp.Finish_Actions;
with AMF.Utp.Get_Timezone_Actions;
with AMF.Utp.Literal_Anies;
with AMF.Utp.Literal_Any_Or_Nulls;
with AMF.Utp.Log_Actions;
with AMF.Utp.Managed_Elements;
with AMF.Utp.Read_Timer_Actions;
with AMF.Utp.SUTs;
with AMF.Utp.Set_Timezone_Actions;
with AMF.Utp.Start_Timer_Actions;
with AMF.Utp.Stop_Timer_Actions;
with AMF.Utp.Test_Cases;
with AMF.Utp.Test_Components;
with AMF.Utp.Test_Contexts;
with AMF.Utp.Test_Log_Applications;
with AMF.Utp.Test_Logs;
with AMF.Utp.Test_Objectives;
with AMF.Utp.Test_Suites;
with AMF.Utp.Time_Out_Actions;
with AMF.Utp.Time_Out_Messages;
with AMF.Utp.Time_Outs;
with AMF.Utp.Timer_Running_Actions;
with AMF.Utp.Validation_Actions;

package AMF.Factories.Utp_Factories is

   pragma Preelaborate;

   type Utp_Factory is limited interface
     and AMF.Factories.Factory;

   type Utp_Factory_Access is access all Utp_Factory'Class;
   for Utp_Factory_Access'Storage_Size use 0;

   not overriding function Create_Coding_Rule
    (Self : not null access Utp_Factory)
       return AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access is abstract;

   not overriding function Create_Data_Partition
    (Self : not null access Utp_Factory)
       return AMF.Utp.Data_Partitions.Utp_Data_Partition_Access is abstract;

   not overriding function Create_Data_Pool
    (Self : not null access Utp_Factory)
       return AMF.Utp.Data_Pools.Utp_Data_Pool_Access is abstract;

   not overriding function Create_Data_Selector
    (Self : not null access Utp_Factory)
       return AMF.Utp.Data_Selectors.Utp_Data_Selector_Access is abstract;

   not overriding function Create_Default
    (Self : not null access Utp_Factory)
       return AMF.Utp.Defaults.Utp_Default_Access is abstract;

   not overriding function Create_Default_Application
    (Self : not null access Utp_Factory)
       return AMF.Utp.Default_Applications.Utp_Default_Application_Access is abstract;

   not overriding function Create_Determ_Alt
    (Self : not null access Utp_Factory)
       return AMF.Utp.Determ_Alts.Utp_Determ_Alt_Access is abstract;

   not overriding function Create_Finish_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Finish_Actions.Utp_Finish_Action_Access is abstract;

   not overriding function Create_Get_Timezone_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Get_Timezone_Actions.Utp_Get_Timezone_Action_Access is abstract;

   not overriding function Create_Literal_Any
    (Self : not null access Utp_Factory)
       return AMF.Utp.Literal_Anies.Utp_Literal_Any_Access is abstract;

   not overriding function Create_Literal_Any_Or_Null
    (Self : not null access Utp_Factory)
       return AMF.Utp.Literal_Any_Or_Nulls.Utp_Literal_Any_Or_Null_Access is abstract;

   not overriding function Create_Log_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Log_Actions.Utp_Log_Action_Access is abstract;

   not overriding function Create_Managed_Element
    (Self : not null access Utp_Factory)
       return AMF.Utp.Managed_Elements.Utp_Managed_Element_Access is abstract;

   not overriding function Create_Read_Timer_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Read_Timer_Actions.Utp_Read_Timer_Action_Access is abstract;

   not overriding function Create_SUT
    (Self : not null access Utp_Factory)
       return AMF.Utp.SUTs.Utp_SUT_Access is abstract;

   not overriding function Create_Set_Timezone_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Set_Timezone_Actions.Utp_Set_Timezone_Action_Access is abstract;

   not overriding function Create_Start_Timer_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Start_Timer_Actions.Utp_Start_Timer_Action_Access is abstract;

   not overriding function Create_Stop_Timer_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Stop_Timer_Actions.Utp_Stop_Timer_Action_Access is abstract;

   not overriding function Create_Test_Case
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Cases.Utp_Test_Case_Access is abstract;

   not overriding function Create_Test_Component
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Components.Utp_Test_Component_Access is abstract;

   not overriding function Create_Test_Context
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Contexts.Utp_Test_Context_Access is abstract;

   not overriding function Create_Test_Log
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Logs.Utp_Test_Log_Access is abstract;

   not overriding function Create_Test_Log_Application
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Log_Applications.Utp_Test_Log_Application_Access is abstract;

   not overriding function Create_Test_Objective
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Objectives.Utp_Test_Objective_Access is abstract;

   not overriding function Create_Test_Suite
    (Self : not null access Utp_Factory)
       return AMF.Utp.Test_Suites.Utp_Test_Suite_Access is abstract;

   not overriding function Create_Time_Out
    (Self : not null access Utp_Factory)
       return AMF.Utp.Time_Outs.Utp_Time_Out_Access is abstract;

   not overriding function Create_Time_Out_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Time_Out_Actions.Utp_Time_Out_Action_Access is abstract;

   not overriding function Create_Time_Out_Message
    (Self : not null access Utp_Factory)
       return AMF.Utp.Time_Out_Messages.Utp_Time_Out_Message_Access is abstract;

   not overriding function Create_Timer_Running_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Timer_Running_Actions.Utp_Timer_Running_Action_Access is abstract;

   not overriding function Create_Validation_Action
    (Self : not null access Utp_Factory)
       return AMF.Utp.Validation_Actions.Utp_Validation_Action_Access is abstract;

end AMF.Factories.Utp_Factories;
