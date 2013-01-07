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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.UTP_Element_Table;
with AMF.Internals.Tables.UTP_Types;
with AMF.Internals.Tables.Utp_Metamodel;
with AMF.Internals.Utp_Coding_Rules;
with AMF.Internals.Utp_Data_Partitions;
with AMF.Internals.Utp_Data_Pools;
with AMF.Internals.Utp_Data_Selectors;
with AMF.Internals.Utp_Default_Applications;
with AMF.Internals.Utp_Defaults;
with AMF.Internals.Utp_Determ_Alts;
with AMF.Internals.Utp_Finish_Actions;
with AMF.Internals.Utp_Get_Timezone_Actions;
with AMF.Internals.Utp_Literal_Anies;
with AMF.Internals.Utp_Literal_Any_Or_Nulls;
with AMF.Internals.Utp_Log_Actions;
with AMF.Internals.Utp_Managed_Elements;
with AMF.Internals.Utp_Read_Timer_Actions;
with AMF.Internals.Utp_SUTs;
with AMF.Internals.Utp_Set_Timezone_Actions;
with AMF.Internals.Utp_Start_Timer_Actions;
with AMF.Internals.Utp_Stop_Timer_Actions;
with AMF.Internals.Utp_Test_Cases;
with AMF.Internals.Utp_Test_Components;
with AMF.Internals.Utp_Test_Contexts;
with AMF.Internals.Utp_Test_Log_Applications;
with AMF.Internals.Utp_Test_Logs;
with AMF.Internals.Utp_Test_Objectives;
with AMF.Internals.Utp_Test_Suites;
with AMF.Internals.Utp_Time_Out_Actions;
with AMF.Internals.Utp_Time_Out_Messages;
with AMF.Internals.Utp_Time_Outs;
with AMF.Internals.Utp_Timer_Running_Actions;
with AMF.Internals.Utp_Validation_Actions;
with AMF.Utp;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.UTP_Constructors is

   use AMF.Internals.Tables;
   use type AMF.Internals.AMF_Collection_Of_Element;

   ----------------------------
   -- Create_Utp_Coding_Rule --
   ----------------------------

   function Create_Utp_Coding_Rule return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Coding_Rules.Utp_Coding_Rule_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          2      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Namespace
          3      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Property
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_ValueSpecification
          4      => (AMF.Internals.Tables.UTP_Types.M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                       --  coding
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Coding_Rule;

   -------------------------------
   -- Create_Utp_Data_Partition --
   -------------------------------

   function Create_Utp_Data_Partition return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Data_Partition,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Data_Partitions.Utp_Data_Partition_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Classifier
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Data_Partition;

   --------------------------
   -- Create_Utp_Data_Pool --
   --------------------------

   function Create_Utp_Data_Pool return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Data_Pool,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Data_Pools.Utp_Data_Pool_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Classifier
          2      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Property
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Data_Pool;

   ------------------------------
   -- Create_Utp_Data_Selector --
   ------------------------------

   function Create_Utp_Data_Selector return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Data_Selector,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Data_Selectors.Utp_Data_Selector_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Operation
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Data_Selector;

   ------------------------
   -- Create_Utp_Default --
   ------------------------

   function Create_Utp_Default return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Default,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Defaults.Utp_Default_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Behavior
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Default;

   ------------------------------------
   -- Create_Utp_Default_Application --
   ------------------------------------

   function Create_Utp_Default_Application return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Default_Application,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Default_Applications.Utp_Default_Application_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Dependency
          2      => (AMF.Internals.Tables.UTP_Types.M_Unlimited_Natural, (False, 0)),
                       --  repetition
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Default_Application;

   ---------------------------
   -- Create_Utp_Determ_Alt --
   ---------------------------

   function Create_Utp_Determ_Alt return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Determ_Alt,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Determ_Alts.Utp_Determ_Alt_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_CombinedFragment
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Determ_Alt;

   ------------------------------
   -- Create_Utp_Finish_Action --
   ------------------------------

   function Create_Utp_Finish_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Finish_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Finish_Actions.Utp_Finish_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          2      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_InvocationAction
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_OpaqueAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Finish_Action;

   ------------------------------------
   -- Create_Utp_Get_Timezone_Action --
   ------------------------------------

   function Create_Utp_Get_Timezone_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Get_Timezone_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Get_Timezone_Actions.Utp_Get_Timezone_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_ReadStructuralFeatureAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Get_Timezone_Action;

   ----------------------------
   -- Create_Utp_Literal_Any --
   ----------------------------

   function Create_Utp_Literal_Any return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Literal_Anies.Utp_Literal_Any_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_LiteralSpecification
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Literal_Any;

   ------------------------------------
   -- Create_Utp_Literal_Any_Or_Null --
   ------------------------------------

   function Create_Utp_Literal_Any_Or_Null return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any_Or_Null,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Literal_Any_Or_Nulls.Utp_Literal_Any_Or_Null_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_LiteralSpecification
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Literal_Any_Or_Null;

   ---------------------------
   -- Create_Utp_Log_Action --
   ---------------------------

   function Create_Utp_Log_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Log_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Log_Actions.Utp_Log_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_SendObjectAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Log_Action;

   --------------------------------
   -- Create_Utp_Managed_Element --
   --------------------------------

   function Create_Utp_Managed_Element return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Managed_Element,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Managed_Elements.Utp_Managed_Element_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Element
          5      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  criticality
          3      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  description
          2      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  owner
          4      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  version
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Managed_Element;

   ----------------------------------
   -- Create_Utp_Read_Timer_Action --
   ----------------------------------

   function Create_Utp_Read_Timer_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Read_Timer_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Read_Timer_Actions.Utp_Read_Timer_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_CallOperationAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Read_Timer_Action;

   --------------------
   -- Create_Utp_SUT --
   --------------------

   function Create_Utp_SUT return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_SUT,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_SUTs.Utp_SUT_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Property
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_SUT;

   ------------------------------------
   -- Create_Utp_Set_Timezone_Action --
   ------------------------------------

   function Create_Utp_Set_Timezone_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Set_Timezone_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Set_Timezone_Actions.Utp_Set_Timezone_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_WriteStructuralFeatureAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Set_Timezone_Action;

   -----------------------------------
   -- Create_Utp_Start_Timer_Action --
   -----------------------------------

   function Create_Utp_Start_Timer_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Start_Timer_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Start_Timer_Actions.Utp_Start_Timer_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_CallOperationAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Start_Timer_Action;

   ----------------------------------
   -- Create_Utp_Stop_Timer_Action --
   ----------------------------------

   function Create_Utp_Stop_Timer_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Stop_Timer_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Stop_Timer_Actions.Utp_Stop_Timer_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_CallOperationAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Stop_Timer_Action;

   --------------------------
   -- Create_Utp_Test_Case --
   --------------------------

   function Create_Utp_Test_Case return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Case,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Cases.Utp_Test_Case_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          4      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Behavior
          5      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Operation
          2      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  compatibleSUTVariant
          1      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  compatibleSUTVersion
          3      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  priority
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Test_Case;

   -------------------------------
   -- Create_Utp_Test_Component --
   -------------------------------

   function Create_Utp_Test_Component return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Component,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Components.Utp_Test_Component_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          3      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_StructuredClassifier
          2      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  compatibleSUTVariant
          1      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  compatibleSUTVersion
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Test_Component;

   -----------------------------
   -- Create_Utp_Test_Context --
   -----------------------------

   function Create_Utp_Test_Context return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Context,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Contexts.Utp_Test_Context_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          4      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_BehavioredClassifier
          3      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_StructuredClassifier
          2      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  compatibleSUTVariant
          1      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  compatibleSUTVersion
          5      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  testLevel
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Test_Context;

   -------------------------
   -- Create_Utp_Test_Log --
   -------------------------

   function Create_Utp_Test_Log return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Logs.Utp_Test_Log_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Behavior
          4      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  duration
          3      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  executedAt
          7      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  sutVersion
          2      => (AMF.Internals.Tables.UTP_Types.M_Collection_Of_String, 0),
                       --  tester
          5      => (AMF.Internals.Tables.UTP_Types.M_Verdict, AMF.Utp.None),
                       --  verdict
          6      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  verdictReason
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Test_Log;

   -------------------------------------
   -- Create_Utp_Test_Log_Application --
   -------------------------------------

   function Create_Utp_Test_Log_Application return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log_Application,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Log_Applications.Utp_Test_Log_Application_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Dependency
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Test_Log_Application;

   -------------------------------
   -- Create_Utp_Test_Objective --
   -------------------------------

   function Create_Utp_Test_Objective return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Objective,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Objectives.Utp_Test_Objective_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Dependency
          3      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  priority
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Test_Objective;

   ---------------------------
   -- Create_Utp_Test_Suite --
   ---------------------------

   function Create_Utp_Test_Suite return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Test_Suite,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Test_Suites.Utp_Test_Suite_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Behavior
          3      => (AMF.Internals.Tables.UTP_Types.M_String, null),
                       --  priority
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      --  testCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Suite_Test_Case,
        UTP_Element_Table.Table (Self).Member (0).Collection + 1);

      return Self;
   end Create_Utp_Test_Suite;

   -------------------------
   -- Create_Utp_Time_Out --
   -------------------------

   function Create_Utp_Time_Out return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Time_Outs.Utp_Time_Out_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_TimeEvent
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Time_Out;

   --------------------------------
   -- Create_Utp_Time_Out_Action --
   --------------------------------

   function Create_Utp_Time_Out_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Time_Out_Actions.Utp_Time_Out_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_AcceptEventAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Time_Out_Action;

   ---------------------------------
   -- Create_Utp_Time_Out_Message --
   ---------------------------------

   function Create_Utp_Time_Out_Message return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Message,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Time_Out_Messages.Utp_Time_Out_Message_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_Message
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Time_Out_Message;

   -------------------------------------
   -- Create_Utp_Timer_Running_Action --
   -------------------------------------

   function Create_Utp_Timer_Running_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Timer_Running_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Timer_Running_Actions.Utp_Timer_Running_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_ReadStructuralFeatureAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Timer_Running_Action;

   ----------------------------------
   -- Create_Utp_Validation_Action --
   ----------------------------------

   function Create_Utp_Validation_Action return AMF.Internals.AMF_Element is
      Self : AMF.Internals.AMF_Element;

   begin
      UTP_Element_Table.Increment_Last;
      Self := UTP_Element_Table.Last;

      UTP_Element_Table.Table (Self).all :=
       (Kind     => AMF.Internals.Tables.UTP_Types.E_Utp_Validation_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.Utp_Validation_Actions.Utp_Validation_Action_Proxy'(Element => Self),
        Member   =>
         (0      => (Kind => AMF.Internals.Tables.UTP_Types.M_None),
          1      => (AMF.Internals.Tables.UTP_Types.M_Element, No_AMF_Link),
                       --  base_CallOperationAction
          others => (Kind => AMF.Internals.Tables.UTP_Types.M_None)));
      UTP_Element_Table.Table (Self).Member (0) :=
       (AMF.Internals.Tables.UTP_Types.M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (1));

      return Self;
   end Create_Utp_Validation_Action;

end AMF.Internals.Tables.UTP_Constructors;
