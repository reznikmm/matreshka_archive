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
with AMF.CMOF;
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.Primitive_Types_Metamodel;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.Internals.Tables.Utp_String_Data_00;

package body AMF.Internals.Tables.Utp_Metamodel is

   Base : AMF.Internals.CMOF_Element := 0;

   ----------------
   -- MM_Utp_Utp --
   ----------------

   function MM_Utp_Utp return AMF.Internals.CMOF_Element is
   begin
      return Base + 126;
   end MM_Utp_Utp;

   ---------------------
   -- MC_Utp_Duration --
   ---------------------

   function MC_Utp_Duration return AMF.Internals.CMOF_Element is
   begin
      return Base + 137;
   end MC_Utp_Duration;

   -----------------
   -- MC_Utp_Time --
   -----------------

   function MC_Utp_Time return AMF.Internals.CMOF_Element is
   begin
      return Base + 136;
   end MC_Utp_Time;

   ---------------------
   -- MC_Utp_Timezone --
   ---------------------

   function MC_Utp_Timezone return AMF.Internals.CMOF_Element is
   begin
      return Base + 135;
   end MC_Utp_Timezone;

   --------------------
   -- MC_Utp_Verdict --
   --------------------

   function MC_Utp_Verdict return AMF.Internals.CMOF_Element is
   begin
      return Base + 129;
   end MC_Utp_Verdict;

   ------------------------
   -- MC_Utp_Coding_Rule --
   ------------------------

   function MC_Utp_Coding_Rule return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_Utp_Coding_Rule;

   ---------------------------
   -- MC_Utp_Data_Partition --
   ---------------------------

   function MC_Utp_Data_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_Utp_Data_Partition;

   ----------------------
   -- MC_Utp_Data_Pool --
   ----------------------

   function MC_Utp_Data_Pool return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_Utp_Data_Pool;

   --------------------------
   -- MC_Utp_Data_Selector --
   --------------------------

   function MC_Utp_Data_Selector return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_Utp_Data_Selector;

   --------------------
   -- MC_Utp_Default --
   --------------------

   function MC_Utp_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_Utp_Default;

   --------------------------------
   -- MC_Utp_Default_Application --
   --------------------------------

   function MC_Utp_Default_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_Utp_Default_Application;

   -----------------------
   -- MC_Utp_Determ_Alt --
   -----------------------

   function MC_Utp_Determ_Alt return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MC_Utp_Determ_Alt;

   --------------------------
   -- MC_Utp_Finish_Action --
   --------------------------

   function MC_Utp_Finish_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_Utp_Finish_Action;

   --------------------------------
   -- MC_Utp_Get_Timezone_Action --
   --------------------------------

   function MC_Utp_Get_Timezone_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MC_Utp_Get_Timezone_Action;

   ------------------------
   -- MC_Utp_Literal_Any --
   ------------------------

   function MC_Utp_Literal_Any return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_Utp_Literal_Any;

   --------------------------------
   -- MC_Utp_Literal_Any_Or_Null --
   --------------------------------

   function MC_Utp_Literal_Any_Or_Null return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MC_Utp_Literal_Any_Or_Null;

   -----------------------
   -- MC_Utp_Log_Action --
   -----------------------

   function MC_Utp_Log_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 12;
   end MC_Utp_Log_Action;

   ----------------------------
   -- MC_Utp_Managed_Element --
   ----------------------------

   function MC_Utp_Managed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 13;
   end MC_Utp_Managed_Element;

   ------------------------------
   -- MC_Utp_Read_Timer_Action --
   ------------------------------

   function MC_Utp_Read_Timer_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 14;
   end MC_Utp_Read_Timer_Action;

   ----------------
   -- MC_Utp_SUT --
   ----------------

   function MC_Utp_SUT return AMF.Internals.CMOF_Element is
   begin
      return Base + 15;
   end MC_Utp_SUT;

   --------------------------------
   -- MC_Utp_Set_Timezone_Action --
   --------------------------------

   function MC_Utp_Set_Timezone_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MC_Utp_Set_Timezone_Action;

   -------------------------------
   -- MC_Utp_Start_Timer_Action --
   -------------------------------

   function MC_Utp_Start_Timer_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 17;
   end MC_Utp_Start_Timer_Action;

   ------------------------------
   -- MC_Utp_Stop_Timer_Action --
   ------------------------------

   function MC_Utp_Stop_Timer_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MC_Utp_Stop_Timer_Action;

   ----------------------
   -- MC_Utp_Test_Case --
   ----------------------

   function MC_Utp_Test_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 19;
   end MC_Utp_Test_Case;

   ---------------------------
   -- MC_Utp_Test_Component --
   ---------------------------

   function MC_Utp_Test_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MC_Utp_Test_Component;

   -------------------------
   -- MC_Utp_Test_Context --
   -------------------------

   function MC_Utp_Test_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 21;
   end MC_Utp_Test_Context;

   ---------------------
   -- MC_Utp_Test_Log --
   ---------------------

   function MC_Utp_Test_Log return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MC_Utp_Test_Log;

   ---------------------------------
   -- MC_Utp_Test_Log_Application --
   ---------------------------------

   function MC_Utp_Test_Log_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 23;
   end MC_Utp_Test_Log_Application;

   ---------------------------
   -- MC_Utp_Test_Objective --
   ---------------------------

   function MC_Utp_Test_Objective return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MC_Utp_Test_Objective;

   -----------------------
   -- MC_Utp_Test_Suite --
   -----------------------

   function MC_Utp_Test_Suite return AMF.Internals.CMOF_Element is
   begin
      return Base + 25;
   end MC_Utp_Test_Suite;

   ---------------------
   -- MC_Utp_Time_Out --
   ---------------------

   function MC_Utp_Time_Out return AMF.Internals.CMOF_Element is
   begin
      return Base + 26;
   end MC_Utp_Time_Out;

   ----------------------------
   -- MC_Utp_Time_Out_Action --
   ----------------------------

   function MC_Utp_Time_Out_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 27;
   end MC_Utp_Time_Out_Action;

   -----------------------------
   -- MC_Utp_Time_Out_Message --
   -----------------------------

   function MC_Utp_Time_Out_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 28;
   end MC_Utp_Time_Out_Message;

   ---------------------------------
   -- MC_Utp_Timer_Running_Action --
   ---------------------------------

   function MC_Utp_Timer_Running_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 29;
   end MC_Utp_Timer_Running_Action;

   ------------------------------
   -- MC_Utp_Validation_Action --
   ------------------------------

   function MC_Utp_Validation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 30;
   end MC_Utp_Validation_Action;

   ---------------------------------------
   -- MP_Utp_Coding_Rule_Base_Namespace --
   ---------------------------------------

   function MP_Utp_Coding_Rule_Base_Namespace return AMF.Internals.CMOF_Element is
   begin
      return Base + 32;
   end MP_Utp_Coding_Rule_Base_Namespace;

   --------------------------------------
   -- MP_Utp_Coding_Rule_Base_Property --
   --------------------------------------

   function MP_Utp_Coding_Rule_Base_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 33;
   end MP_Utp_Coding_Rule_Base_Property;

   -------------------------------------------------
   -- MP_Utp_Coding_Rule_Base_Value_Specification --
   -------------------------------------------------

   function MP_Utp_Coding_Rule_Base_Value_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 34;
   end MP_Utp_Coding_Rule_Base_Value_Specification;

   -------------------------------
   -- MP_Utp_Coding_Rule_Coding --
   -------------------------------

   function MP_Utp_Coding_Rule_Coding return AMF.Internals.CMOF_Element is
   begin
      return Base + 35;
   end MP_Utp_Coding_Rule_Coding;

   -------------------------------------------
   -- MP_Utp_Data_Partition_Base_Classifier --
   -------------------------------------------

   function MP_Utp_Data_Partition_Base_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 36;
   end MP_Utp_Data_Partition_Base_Classifier;

   --------------------------------------
   -- MP_Utp_Data_Pool_Base_Classifier --
   --------------------------------------

   function MP_Utp_Data_Pool_Base_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 37;
   end MP_Utp_Data_Pool_Base_Classifier;

   ------------------------------------
   -- MP_Utp_Data_Pool_Base_Property --
   ------------------------------------

   function MP_Utp_Data_Pool_Base_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 38;
   end MP_Utp_Data_Pool_Base_Property;

   -----------------------------------------
   -- MP_Utp_Data_Selector_Base_Operation --
   -----------------------------------------

   function MP_Utp_Data_Selector_Base_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 39;
   end MP_Utp_Data_Selector_Base_Operation;

   ----------------------------------
   -- MP_Utp_Default_Base_Behavior --
   ----------------------------------

   function MP_Utp_Default_Base_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 40;
   end MP_Utp_Default_Base_Behavior;

   ------------------------------------------------
   -- MP_Utp_Default_Application_Base_Dependency --
   ------------------------------------------------

   function MP_Utp_Default_Application_Base_Dependency return AMF.Internals.CMOF_Element is
   begin
      return Base + 41;
   end MP_Utp_Default_Application_Base_Dependency;

   -------------------------------------------
   -- MP_Utp_Default_Application_Repetition --
   -------------------------------------------

   function MP_Utp_Default_Application_Repetition return AMF.Internals.CMOF_Element is
   begin
      return Base + 42;
   end MP_Utp_Default_Application_Repetition;

   ----------------------------------------------
   -- MP_Utp_Determ_Alt_Base_Combined_Fragment --
   ----------------------------------------------

   function MP_Utp_Determ_Alt_Base_Combined_Fragment return AMF.Internals.CMOF_Element is
   begin
      return Base + 43;
   end MP_Utp_Determ_Alt_Base_Combined_Fragment;

   -------------------------------------------------
   -- MP_Utp_Finish_Action_Base_Invocation_Action --
   -------------------------------------------------

   function MP_Utp_Finish_Action_Base_Invocation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 44;
   end MP_Utp_Finish_Action_Base_Invocation_Action;

   ---------------------------------------------
   -- MP_Utp_Finish_Action_Base_Opaque_Action --
   ---------------------------------------------

   function MP_Utp_Finish_Action_Base_Opaque_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 45;
   end MP_Utp_Finish_Action_Base_Opaque_Action;

   --------------------------------------------------------------------
   -- MP_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action --
   --------------------------------------------------------------------

   function MP_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 46;
   end MP_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action;

   ---------------------------------------------------
   -- MP_Utp_Literal_Any_Base_Literal_Specification --
   ---------------------------------------------------

   function MP_Utp_Literal_Any_Base_Literal_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 47;
   end MP_Utp_Literal_Any_Base_Literal_Specification;

   -----------------------------------------------------------
   -- MP_Utp_Literal_Any_Or_Null_Base_Literal_Specification --
   -----------------------------------------------------------

   function MP_Utp_Literal_Any_Or_Null_Base_Literal_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 48;
   end MP_Utp_Literal_Any_Or_Null_Base_Literal_Specification;

   -----------------------------------------------
   -- MP_Utp_Log_Action_Base_Send_Object_Action --
   -----------------------------------------------

   function MP_Utp_Log_Action_Base_Send_Object_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 49;
   end MP_Utp_Log_Action_Base_Send_Object_Action;

   -----------------------------------------
   -- MP_Utp_Managed_Element_Base_Element --
   -----------------------------------------

   function MP_Utp_Managed_Element_Base_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 50;
   end MP_Utp_Managed_Element_Base_Element;

   ----------------------------------------
   -- MP_Utp_Managed_Element_Criticality --
   ----------------------------------------

   function MP_Utp_Managed_Element_Criticality return AMF.Internals.CMOF_Element is
   begin
      return Base + 51;
   end MP_Utp_Managed_Element_Criticality;

   ----------------------------------------
   -- MP_Utp_Managed_Element_Description --
   ----------------------------------------

   function MP_Utp_Managed_Element_Description return AMF.Internals.CMOF_Element is
   begin
      return Base + 52;
   end MP_Utp_Managed_Element_Description;

   ----------------------------------
   -- MP_Utp_Managed_Element_Owner --
   ----------------------------------

   function MP_Utp_Managed_Element_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 53;
   end MP_Utp_Managed_Element_Owner;

   ------------------------------------
   -- MP_Utp_Managed_Element_Version --
   ------------------------------------

   function MP_Utp_Managed_Element_Version return AMF.Internals.CMOF_Element is
   begin
      return Base + 54;
   end MP_Utp_Managed_Element_Version;

   ---------------------------------------------------------
   -- MP_Utp_Read_Timer_Action_Base_Call_Operation_Action --
   ---------------------------------------------------------

   function MP_Utp_Read_Timer_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 55;
   end MP_Utp_Read_Timer_Action_Base_Call_Operation_Action;

   ------------------------------
   -- MP_Utp_SUT_Base_Property --
   ------------------------------

   function MP_Utp_SUT_Base_Property return AMF.Internals.CMOF_Element is
   begin
      return Base + 56;
   end MP_Utp_SUT_Base_Property;

   ---------------------------------------------------------------------
   -- MP_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action --
   ---------------------------------------------------------------------

   function MP_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 57;
   end MP_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action;

   ----------------------------------------------------------
   -- MP_Utp_Start_Timer_Action_Base_Call_Operation_Action --
   ----------------------------------------------------------

   function MP_Utp_Start_Timer_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 58;
   end MP_Utp_Start_Timer_Action_Base_Call_Operation_Action;

   ---------------------------------------------------------
   -- MP_Utp_Stop_Timer_Action_Base_Call_Operation_Action --
   ---------------------------------------------------------

   function MP_Utp_Stop_Timer_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 59;
   end MP_Utp_Stop_Timer_Action_Base_Call_Operation_Action;

   ------------------------------------
   -- MP_Utp_Test_Case_Base_Behavior --
   ------------------------------------

   function MP_Utp_Test_Case_Base_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 60;
   end MP_Utp_Test_Case_Base_Behavior;

   -------------------------------------
   -- MP_Utp_Test_Case_Base_Operation --
   -------------------------------------

   function MP_Utp_Test_Case_Base_Operation return AMF.Internals.CMOF_Element is
   begin
      return Base + 61;
   end MP_Utp_Test_Case_Base_Operation;

   ---------------------------------------------
   -- MP_Utp_Test_Case_Compatible_SUT_Variant --
   ---------------------------------------------

   function MP_Utp_Test_Case_Compatible_SUT_Variant return AMF.Internals.CMOF_Element is
   begin
      return Base + 62;
   end MP_Utp_Test_Case_Compatible_SUT_Variant;

   ---------------------------------------------
   -- MP_Utp_Test_Case_Compatible_SUT_Version --
   ---------------------------------------------

   function MP_Utp_Test_Case_Compatible_SUT_Version return AMF.Internals.CMOF_Element is
   begin
      return Base + 63;
   end MP_Utp_Test_Case_Compatible_SUT_Version;

   -------------------------------
   -- MP_Utp_Test_Case_Priority --
   -------------------------------

   function MP_Utp_Test_Case_Priority return AMF.Internals.CMOF_Element is
   begin
      return Base + 64;
   end MP_Utp_Test_Case_Priority;

   ------------------------------------------------------
   -- MP_Utp_Test_Component_Base_Structured_Classifier --
   ------------------------------------------------------

   function MP_Utp_Test_Component_Base_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 65;
   end MP_Utp_Test_Component_Base_Structured_Classifier;

   --------------------------------------------------
   -- MP_Utp_Test_Component_Compatible_SUT_Variant --
   --------------------------------------------------

   function MP_Utp_Test_Component_Compatible_SUT_Variant return AMF.Internals.CMOF_Element is
   begin
      return Base + 66;
   end MP_Utp_Test_Component_Compatible_SUT_Variant;

   --------------------------------------------------
   -- MP_Utp_Test_Component_Compatible_SUT_Version --
   --------------------------------------------------

   function MP_Utp_Test_Component_Compatible_SUT_Version return AMF.Internals.CMOF_Element is
   begin
      return Base + 67;
   end MP_Utp_Test_Component_Compatible_SUT_Version;

   ----------------------------------------------------
   -- MP_Utp_Test_Context_Base_Behaviored_Classifier --
   ----------------------------------------------------

   function MP_Utp_Test_Context_Base_Behaviored_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 68;
   end MP_Utp_Test_Context_Base_Behaviored_Classifier;

   ----------------------------------------------------
   -- MP_Utp_Test_Context_Base_Structured_Classifier --
   ----------------------------------------------------

   function MP_Utp_Test_Context_Base_Structured_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 69;
   end MP_Utp_Test_Context_Base_Structured_Classifier;

   ------------------------------------------------
   -- MP_Utp_Test_Context_Compatible_SUT_Variant --
   ------------------------------------------------

   function MP_Utp_Test_Context_Compatible_SUT_Variant return AMF.Internals.CMOF_Element is
   begin
      return Base + 70;
   end MP_Utp_Test_Context_Compatible_SUT_Variant;

   ------------------------------------------------
   -- MP_Utp_Test_Context_Compatible_SUT_Version --
   ------------------------------------------------

   function MP_Utp_Test_Context_Compatible_SUT_Version return AMF.Internals.CMOF_Element is
   begin
      return Base + 71;
   end MP_Utp_Test_Context_Compatible_SUT_Version;

   ------------------------------------
   -- MP_Utp_Test_Context_Test_Level --
   ------------------------------------

   function MP_Utp_Test_Context_Test_Level return AMF.Internals.CMOF_Element is
   begin
      return Base + 72;
   end MP_Utp_Test_Context_Test_Level;

   -----------------------------------
   -- MP_Utp_Test_Log_Base_Behavior --
   -----------------------------------

   function MP_Utp_Test_Log_Base_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 73;
   end MP_Utp_Test_Log_Base_Behavior;

   ------------------------------
   -- MP_Utp_Test_Log_Duration --
   ------------------------------

   function MP_Utp_Test_Log_Duration return AMF.Internals.CMOF_Element is
   begin
      return Base + 74;
   end MP_Utp_Test_Log_Duration;

   ---------------------------------
   -- MP_Utp_Test_Log_Executed_At --
   ---------------------------------

   function MP_Utp_Test_Log_Executed_At return AMF.Internals.CMOF_Element is
   begin
      return Base + 75;
   end MP_Utp_Test_Log_Executed_At;

   ---------------------------------
   -- MP_Utp_Test_Log_Sut_Version --
   ---------------------------------

   function MP_Utp_Test_Log_Sut_Version return AMF.Internals.CMOF_Element is
   begin
      return Base + 76;
   end MP_Utp_Test_Log_Sut_Version;

   ----------------------------
   -- MP_Utp_Test_Log_Tester --
   ----------------------------

   function MP_Utp_Test_Log_Tester return AMF.Internals.CMOF_Element is
   begin
      return Base + 77;
   end MP_Utp_Test_Log_Tester;

   -----------------------------
   -- MP_Utp_Test_Log_Verdict --
   -----------------------------

   function MP_Utp_Test_Log_Verdict return AMF.Internals.CMOF_Element is
   begin
      return Base + 78;
   end MP_Utp_Test_Log_Verdict;

   ------------------------------------
   -- MP_Utp_Test_Log_Verdict_Reason --
   ------------------------------------

   function MP_Utp_Test_Log_Verdict_Reason return AMF.Internals.CMOF_Element is
   begin
      return Base + 79;
   end MP_Utp_Test_Log_Verdict_Reason;

   -------------------------------------------------
   -- MP_Utp_Test_Log_Application_Base_Dependency --
   -------------------------------------------------

   function MP_Utp_Test_Log_Application_Base_Dependency return AMF.Internals.CMOF_Element is
   begin
      return Base + 80;
   end MP_Utp_Test_Log_Application_Base_Dependency;

   -------------------------------------------
   -- MP_Utp_Test_Objective_Base_Dependency --
   -------------------------------------------

   function MP_Utp_Test_Objective_Base_Dependency return AMF.Internals.CMOF_Element is
   begin
      return Base + 81;
   end MP_Utp_Test_Objective_Base_Dependency;

   ------------------------------------
   -- MP_Utp_Test_Objective_Priority --
   ------------------------------------

   function MP_Utp_Test_Objective_Priority return AMF.Internals.CMOF_Element is
   begin
      return Base + 82;
   end MP_Utp_Test_Objective_Priority;

   -------------------------------------
   -- MP_Utp_Test_Suite_Base_Behavior --
   -------------------------------------

   function MP_Utp_Test_Suite_Base_Behavior return AMF.Internals.CMOF_Element is
   begin
      return Base + 83;
   end MP_Utp_Test_Suite_Base_Behavior;

   --------------------------------
   -- MP_Utp_Test_Suite_Priority --
   --------------------------------

   function MP_Utp_Test_Suite_Priority return AMF.Internals.CMOF_Element is
   begin
      return Base + 84;
   end MP_Utp_Test_Suite_Priority;

   ---------------------------------
   -- MP_Utp_Test_Suite_Test_Case --
   ---------------------------------

   function MP_Utp_Test_Suite_Test_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 31;
   end MP_Utp_Test_Suite_Test_Case;

   -------------------------------------
   -- MP_Utp_Time_Out_Base_Time_Event --
   -------------------------------------

   function MP_Utp_Time_Out_Base_Time_Event return AMF.Internals.CMOF_Element is
   begin
      return Base + 85;
   end MP_Utp_Time_Out_Base_Time_Event;

   -----------------------------------------------------
   -- MP_Utp_Time_Out_Action_Base_Accept_Event_Action --
   -----------------------------------------------------

   function MP_Utp_Time_Out_Action_Base_Accept_Event_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 86;
   end MP_Utp_Time_Out_Action_Base_Accept_Event_Action;

   ------------------------------------------
   -- MP_Utp_Time_Out_Message_Base_Message --
   ------------------------------------------

   function MP_Utp_Time_Out_Message_Base_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 87;
   end MP_Utp_Time_Out_Message_Base_Message;

   ---------------------------------------------------------------------
   -- MP_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action --
   ---------------------------------------------------------------------

   function MP_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 88;
   end MP_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action;

   ---------------------------------------------------------
   -- MP_Utp_Validation_Action_Base_Call_Operation_Action --
   ---------------------------------------------------------

   function MP_Utp_Validation_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 89;
   end MP_Utp_Validation_Action_Base_Call_Operation_Action;

   -------------------------------------------------
   -- MA_Utp_Property_Base_Property_Extension_SUT --
   -------------------------------------------------

   function MA_Utp_Property_Base_Property_Extension_SUT return AMF.Internals.CMOF_Element is
   begin
      return Base + 90;
   end MA_Utp_Property_Base_Property_Extension_SUT;

   ------------------------------------------------------------------------------------
   -- MA_Utp_Behaviored_Classifier_Base_Behaviored_Classifier_Extension_Test_Context --
   ------------------------------------------------------------------------------------

   function MA_Utp_Behaviored_Classifier_Base_Behaviored_Classifier_Extension_Test_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 91;
   end MA_Utp_Behaviored_Classifier_Base_Behaviored_Classifier_Extension_Test_Context;

   -------------------------------------------------------------
   -- MA_Utp_Operation_Base_Operation_Extension_Data_Selector --
   -------------------------------------------------------------

   function MA_Utp_Operation_Base_Operation_Extension_Data_Selector return AMF.Internals.CMOF_Element is
   begin
      return Base + 92;
   end MA_Utp_Operation_Base_Operation_Extension_Data_Selector;

   -----------------------------------------------------------------------------------------
   -- MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Validation_Action --
   -----------------------------------------------------------------------------------------

   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Validation_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 93;
   end MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Validation_Action;

   ----------------------------------------------------------
   -- MA_Utp_Time_Event_Base_Time_Event_Extension_Time_Out --
   ----------------------------------------------------------

   function MA_Utp_Time_Event_Base_Time_Event_Extension_Time_Out return AMF.Internals.CMOF_Element is
   begin
      return Base + 94;
   end MA_Utp_Time_Event_Base_Time_Event_Extension_Time_Out;

   -----------------------------------------------------------
   -- MA_Utp_Element_Base_Element_Extension_Managed_Element --
   -----------------------------------------------------------

   function MA_Utp_Element_Base_Element_Extension_Managed_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 95;
   end MA_Utp_Element_Base_Element_Extension_Managed_Element;

   ------------------------------------------------------------
   -- MA_Utp_Message_Base_Message_Extension_Time_Out_Message --
   ------------------------------------------------------------

   function MA_Utp_Message_Base_Message_Extension_Time_Out_Message return AMF.Internals.CMOF_Element is
   begin
      return Base + 96;
   end MA_Utp_Message_Base_Message_Extension_Time_Out_Message;

   --------------------------------------------------------------------------------------
   -- MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Component --
   --------------------------------------------------------------------------------------

   function MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 97;
   end MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Component;

   -----------------------------------------------------------------------------------
   -- MA_Utp_Accept_Event_Action_Base_Accept_Event_Action_Extension_Time_Out_Action --
   -----------------------------------------------------------------------------------

   function MA_Utp_Accept_Event_Action_Base_Accept_Event_Action_Extension_Time_Out_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 98;
   end MA_Utp_Accept_Event_Action_Base_Accept_Event_Action_Extension_Time_Out_Action;

   --------------------------------------------------------
   -- MA_Utp_Behavior_Base_Behavior_Extension_Test_Suite --
   --------------------------------------------------------

   function MA_Utp_Behavior_Base_Behavior_Extension_Test_Suite return AMF.Internals.CMOF_Element is
   begin
      return Base + 99;
   end MA_Utp_Behavior_Base_Behavior_Extension_Test_Suite;

   ------------------------------------------------------
   -- MA_Utp_Behavior_Base_Behavior_Extension_Test_Log --
   ------------------------------------------------------

   function MA_Utp_Behavior_Base_Behavior_Extension_Test_Log return AMF.Internals.CMOF_Element is
   begin
      return Base + 100;
   end MA_Utp_Behavior_Base_Behavior_Extension_Test_Log;

   ------------------------------------------------------------------------------------------
   -- MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Start_Timer_Action --
   ------------------------------------------------------------------------------------------

   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Start_Timer_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 101;
   end MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Start_Timer_Action;

   ------------------------------------------------------------------------------------
   -- MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Context --
   ------------------------------------------------------------------------------------

   function MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Context return AMF.Internals.CMOF_Element is
   begin
      return Base + 102;
   end MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Context;

   ----------------------------------------------------------------------
   -- MA_Utp_Dependency_Base_Dependency_Extension_Test_Log_Application --
   ----------------------------------------------------------------------

   function MA_Utp_Dependency_Base_Dependency_Extension_Test_Log_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 103;
   end MA_Utp_Dependency_Base_Dependency_Extension_Test_Log_Application;

   -----------------------------------------------------------------------------------------
   -- MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Stop_Timer_Action --
   -----------------------------------------------------------------------------------------

   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Stop_Timer_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 104;
   end MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Stop_Timer_Action;

   -----------------------------------------------------------------------------------------
   -- MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Read_Timer_Action --
   -----------------------------------------------------------------------------------------

   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Read_Timer_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 105;
   end MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Read_Timer_Action;

   -------------------------------------------------------------------------------
   -- MA_Utp_Value_Specification_Base_Value_Specification_Extension_Coding_Rule --
   -------------------------------------------------------------------------------

   function MA_Utp_Value_Specification_Base_Value_Specification_Extension_Coding_Rule return AMF.Internals.CMOF_Element is
   begin
      return Base + 106;
   end MA_Utp_Value_Specification_Base_Value_Specification_Extension_Coding_Rule;

   --------------------------------------------------------------------------------------------------------------
   -- MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Timer_Running_Action --
   --------------------------------------------------------------------------------------------------------------

   function MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Timer_Running_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 107;
   end MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Timer_Running_Action;

   -----------------------------------------------------------
   -- MA_Utp_Namespace_Base_Namespace_Extension_Coding_Rule --
   -----------------------------------------------------------

   function MA_Utp_Namespace_Base_Namespace_Extension_Coding_Rule return AMF.Internals.CMOF_Element is
   begin
      return Base + 108;
   end MA_Utp_Namespace_Base_Namespace_Extension_Coding_Rule;

   ---------------------------------------------------------
   -- MA_Utp_Property_Base_Property_Extension_Coding_Rule --
   ---------------------------------------------------------

   function MA_Utp_Property_Base_Property_Extension_Coding_Rule return AMF.Internals.CMOF_Element is
   begin
      return Base + 109;
   end MA_Utp_Property_Base_Property_Extension_Coding_Rule;

   -------------------------------------------------------------------------------------------------------------
   -- MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Get_Timezone_Action --
   -------------------------------------------------------------------------------------------------------------

   function MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Get_Timezone_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 110;
   end MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Get_Timezone_Action;

   -------------------------------------------------------
   -- MA_Utp_Behavior_Base_Behavior_Extension_Test_Case --
   -------------------------------------------------------

   function MA_Utp_Behavior_Base_Behavior_Extension_Test_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 111;
   end MA_Utp_Behavior_Base_Behavior_Extension_Test_Case;

   -----------------------------------------------------------------------------------
   -- MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any --
   -----------------------------------------------------------------------------------

   function MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any return AMF.Internals.CMOF_Element is
   begin
      return Base + 112;
   end MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any;

   ---------------------------------------------------------
   -- MA_Utp_Operation_Base_Operation_Extension_Test_Case --
   ---------------------------------------------------------

   function MA_Utp_Operation_Base_Operation_Extension_Test_Case return AMF.Internals.CMOF_Element is
   begin
      return Base + 113;
   end MA_Utp_Operation_Base_Operation_Extension_Test_Case;

   ---------------------------------------------------------------------------------------------------------------
   -- MA_Utp_Write_Structural_Feature_Action_Base_Write_Structural_Feature_Action_Extension_Set_Timezone_Action --
   ---------------------------------------------------------------------------------------------------------------

   function MA_Utp_Write_Structural_Feature_Action_Base_Write_Structural_Feature_Action_Extension_Set_Timezone_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 114;
   end MA_Utp_Write_Structural_Feature_Action_Base_Write_Structural_Feature_Action_Extension_Set_Timezone_Action;

   ---------------------------------------------------------------------
   -- MA_Utp_Opaque_Action_Base_Opaque_Action_Extension_Finish_Action --
   ---------------------------------------------------------------------

   function MA_Utp_Opaque_Action_Base_Opaque_Action_Extension_Finish_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 115;
   end MA_Utp_Opaque_Action_Base_Opaque_Action_Extension_Finish_Action;

   -------------------------------------------------------------------------------------------
   -- MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any_Or_Null --
   -------------------------------------------------------------------------------------------

   function MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any_Or_Null return AMF.Internals.CMOF_Element is
   begin
      return Base + 116;
   end MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any_Or_Null;

   ----------------------------------------------------------------------------
   -- MA_Utp_Send_Object_Action_Base_Send_Object_Action_Extension_Log_Action --
   ----------------------------------------------------------------------------

   function MA_Utp_Send_Object_Action_Base_Send_Object_Action_Extension_Log_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 117;
   end MA_Utp_Send_Object_Action_Base_Send_Object_Action_Extension_Log_Action;

   ----------------------------------------------------------------
   -- MA_Utp_Dependency_Base_Dependency_Extension_Test_Objective --
   ----------------------------------------------------------------

   function MA_Utp_Dependency_Base_Dependency_Extension_Test_Objective return AMF.Internals.CMOF_Element is
   begin
      return Base + 118;
   end MA_Utp_Dependency_Base_Dependency_Extension_Test_Objective;

   -----------------------------------------------------------------------------
   -- MA_Utp_Invocation_Action_Base_Invocation_Action_Extension_Finish_Action --
   -----------------------------------------------------------------------------

   function MA_Utp_Invocation_Action_Base_Invocation_Action_Extension_Finish_Action return AMF.Internals.CMOF_Element is
   begin
      return Base + 119;
   end MA_Utp_Invocation_Action_Base_Invocation_Action_Extension_Finish_Action;

   -----------------------------------------------------------
   -- MA_Utp_Classifier_Base_Classifier_Extension_Data_Pool --
   -----------------------------------------------------------

   function MA_Utp_Classifier_Base_Classifier_Extension_Data_Pool return AMF.Internals.CMOF_Element is
   begin
      return Base + 120;
   end MA_Utp_Classifier_Base_Classifier_Extension_Data_Pool;

   -----------------------------------------------------
   -- MA_Utp_Behavior_Base_Behavior_Extension_Default --
   -----------------------------------------------------

   function MA_Utp_Behavior_Base_Behavior_Extension_Default return AMF.Internals.CMOF_Element is
   begin
      return Base + 121;
   end MA_Utp_Behavior_Base_Behavior_Extension_Default;

   -------------------------------------------------------
   -- MA_Utp_Property_Base_Property_Extension_Data_Pool --
   -------------------------------------------------------

   function MA_Utp_Property_Base_Property_Extension_Data_Pool return AMF.Internals.CMOF_Element is
   begin
      return Base + 122;
   end MA_Utp_Property_Base_Property_Extension_Data_Pool;

   --------------------------------------------------------------------------
   -- MA_Utp_Combined_Fragment_Base_Combined_Fragment_Extension_Determ_Alt --
   --------------------------------------------------------------------------

   function MA_Utp_Combined_Fragment_Base_Combined_Fragment_Extension_Determ_Alt return AMF.Internals.CMOF_Element is
   begin
      return Base + 123;
   end MA_Utp_Combined_Fragment_Base_Combined_Fragment_Extension_Determ_Alt;

   ----------------------------------------------------------------
   -- MA_Utp_Classifier_Base_Classifier_Extension_Data_Partition --
   ----------------------------------------------------------------

   function MA_Utp_Classifier_Base_Classifier_Extension_Data_Partition return AMF.Internals.CMOF_Element is
   begin
      return Base + 124;
   end MA_Utp_Classifier_Base_Classifier_Extension_Data_Partition;

   ---------------------------------------------------------------------
   -- MA_Utp_Dependency_Base_Dependency_Extension_Default_Application --
   ---------------------------------------------------------------------

   function MA_Utp_Dependency_Base_Dependency_Extension_Default_Application return AMF.Internals.CMOF_Element is
   begin
      return Base + 125;
   end MA_Utp_Dependency_Base_Dependency_Extension_Default_Application;

   ------------
   -- MB_Utp --
   ------------

   function MB_Utp return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_Utp;

   ------------
   -- MB_Utp --
   ------------

   function ML_Utp return AMF.Internals.AMF_Element is
   begin
      return Base + 172;
   end ML_Utp;

   ------------------------
   -- Initialize_Objects --
   ------------------------

   procedure Initialize_Objects is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.Utp_String_Data_00.MS_0027'Access);
      Aux    : AMF.Internals.CMOF_Element;

   begin
      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);
      Base := Aux - 1;

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Class;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Association;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Enumeration_Literal;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Primitive_Type;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Property;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.Utp_String_Data_00.MS_002D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0065'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.Utp_String_Data_00.MS_001F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0057'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0061'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0060'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0028'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0050'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0023'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0058'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0002'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0062'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.Utp_String_Data_00.MS_001B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0035'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 25,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0048'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 25, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 26,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0055'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 27,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 28,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 28, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 29,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0068'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 29, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 30,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 30, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 31, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 31,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0005'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 31, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 31, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 32,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0036'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 32, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 33,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0026'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 33, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 34,
        AMF.Internals.Tables.Utp_String_Data_00.MS_001C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 34, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 35,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0056'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 35, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 36,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 36, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 37,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 37, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 38,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0026'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 38, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 39,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 39, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 40,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 40, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 41,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 41, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 42,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 42, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 43,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0039'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 43, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 44,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 44, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.Utp_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 46,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 46, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0066'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 48,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0066'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 48, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0031'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.Utp_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 51, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0022'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 52, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0069'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 52, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 53, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0020'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 53, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 54, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 54,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0032'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 54, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 55,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0018'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 55, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 56,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0026'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 56, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 57,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 57, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 58,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0018'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 58, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 59,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0018'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 59, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 60,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 60, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 61,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 61, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 62, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 62,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0038'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 62, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 62, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 63, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 63,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 63, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 63, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 64, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 64,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0046'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 64, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 65,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0013'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 65, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 66, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 66,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0038'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 66, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 66, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 67, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 67,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 67, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 67, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 68,
        AMF.Internals.Tables.Utp_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 68, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 69,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0013'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 69, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 70, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 70,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0038'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 70, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 70, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 71, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 71,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 71, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 71, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 72, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 72,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 72, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 73,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 73, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 74, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 74,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0014'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 74, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 75, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 75,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0042'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 75, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 76, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 76,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 76, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 77, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 77,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 77, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 77, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 78,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0044'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 78, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 79, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 79,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 79, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 80,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 80, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 81,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 81, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 82, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 82,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0046'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 82, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 83,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 83, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 84, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 84,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0046'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 84, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 85,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 85, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 86,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 86, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 87,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 87, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 88,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 88, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 89,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0018'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 89, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 90, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 91, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 92, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 93, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 94, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 95, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 96, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 97, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 98, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 99, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 100, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 101, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 102, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 103, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 104, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 105, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 106, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 107, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 108, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 109, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 110, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 111, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 112, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 113, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 114, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 115, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 116, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 117, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 118, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 119, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 120, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 121, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 122, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 123, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 124, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 125, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 126,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 126,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0027'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 126, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 127, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 127, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 127,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0051'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 127, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 128, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 128, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 128,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 128, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 129,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0034'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 129, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 130,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 130, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 131,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 131, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 132,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 132, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 133,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0063'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 133, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 134,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 134, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 135,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0053'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 135, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 136,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 136, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 137,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 137, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 138, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 138, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 138,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0041'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 138, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 139, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 139, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 139,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0041'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 139, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 140, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 140, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 140,
        AMF.Internals.Tables.Utp_String_Data_00.MS_002F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 140, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 141, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 141, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 141,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0021'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 141, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 142, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 142, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 142,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0025'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 142, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 143, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 143, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 143,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0012'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 143, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 144, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 144, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 144,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 144, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 145, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 145, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 145,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 145, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 146, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 146, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 146,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 146, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 147, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 147, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 147,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 147, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 148, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 148, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 148,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 148, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 149, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 149, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 149,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 149, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 150, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 150, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 150,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0045'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 150, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 151, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 151, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 151,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 151, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 152, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 152, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 152,
        AMF.Internals.Tables.Utp_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 152, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 153, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 153, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 153,
        AMF.Internals.Tables.Utp_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 153, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 154, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 154, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 154,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0047'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 154, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 155, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 155, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 155,
        AMF.Internals.Tables.Utp_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 155, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 156, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 156, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 156,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0064'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 156, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 157, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 157, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 157,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0016'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 157, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 158, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 158, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 158,
        AMF.Internals.Tables.Utp_String_Data_00.MS_001D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 158, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 159, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 159, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 159,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0010'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 159, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 160, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 160, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 160,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0030'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 160, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 161, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 161, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 161,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0043'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 161, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 162, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 162, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 162,
        AMF.Internals.Tables.Utp_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 162, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 163, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 163, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 163,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 163, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 164, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 164, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 164,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 164, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 165, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 165, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 165,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0024'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 165, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 166, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 166, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 166,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 166, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 167, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 167, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 167,
        AMF.Internals.Tables.Utp_String_Data_00.MS_002E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 167, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 168, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 168, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 168,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0040'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 168, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 169, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 169, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 169,
        AMF.Internals.Tables.Utp_String_Data_00.MS_000F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 169, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 170, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 170, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 170,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0007'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 170, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 171, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 171, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 171,
        AMF.Internals.Tables.Utp_String_Data_00.MS_0008'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 171, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 172,
        AMF.Internals.Tables.Utp_String_Data_00.MS_003F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 172,
        AMF.Internals.Tables.Utp_String_Data_00.MS_006B'Access);
   end Initialize_Objects;

   ----------------------
   -- Initialize_Links --
   ----------------------

   procedure Initialize_Links is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Attribute_Classifier,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Attribute,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Attribute_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Namespace,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Specification,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Dependency,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_Unlimited_Natural,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Combined_Fragment,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Invocation_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Opaque_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Structural_Feature_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Specification,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Literal_Specification,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Send_Object_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Element,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Property,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Write_Structural_Feature_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Operation,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Structured_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behaviored_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Structured_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Dependency,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Dependency,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavior,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.Primitive_Types_Metamodel.MC_Primitive_Types_String,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Time_Event,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Accept_Event_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Message,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Read_Structural_Feature_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Call_Operation_Action,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Feature_Feature_Featuring_Classifier,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Classifier_Feature,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Feature_Featuring_Classifier);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Member_Namespace,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Member,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Member_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Owned_Type_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Owned_Type,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Owned_Element_Owner,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Element,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owner);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Enumeration_Literal_Owned_Literal_Enumeration,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Owned_Literal,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Enumeration_Literal_Enumeration);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Named_Element_Owned_Member_Namespace,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Member,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Named_Element_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_Links;

end AMF.Internals.Tables.Utp_Metamodel;
