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
with AMF.CMOF;
with AMF.Internals.Extents;
with AMF.Internals.Links;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.CMOF_Constructors;
with AMF.Internals.Tables.CMOF_Metamodel;
with AMF.Internals.Tables.Standard_Profile_L2_String_Data_00;
with AMF.Internals.Tables.UML_Metamodel;

package body AMF.Internals.Tables.Standard_Profile_L2_Metamodel is

   Base : AMF.Internals.CMOF_Element := 0;

   ------------------------------------------------
   -- MM_Standard_Profile_L2_Standard_Profile_L2 --
   ------------------------------------------------

   function MM_Standard_Profile_L2_Standard_Profile_L2 return AMF.Internals.CMOF_Element is
   begin
      return Base + 95;
   end MM_Standard_Profile_L2_Standard_Profile_L2;

   --------------------------------------
   -- MC_Standard_Profile_L2_Auxiliary --
   --------------------------------------

   function MC_Standard_Profile_L2_Auxiliary return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_Standard_Profile_L2_Auxiliary;

   ---------------------------------
   -- MC_Standard_Profile_L2_Call --
   ---------------------------------

   function MC_Standard_Profile_L2_Call return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_Standard_Profile_L2_Call;

   -----------------------------------
   -- MC_Standard_Profile_L2_Create --
   -----------------------------------

   function MC_Standard_Profile_L2_Create return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_Standard_Profile_L2_Create;

   -----------------------------------
   -- MC_Standard_Profile_L2_Derive --
   -----------------------------------

   function MC_Standard_Profile_L2_Derive return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_Standard_Profile_L2_Derive;

   ------------------------------------
   -- MC_Standard_Profile_L2_Destroy --
   ------------------------------------

   function MC_Standard_Profile_L2_Destroy return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_Standard_Profile_L2_Destroy;

   -------------------------------------
   -- MC_Standard_Profile_L2_Document --
   -------------------------------------

   function MC_Standard_Profile_L2_Document return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_Standard_Profile_L2_Document;

   -----------------------------------
   -- MC_Standard_Profile_L2_Entity --
   -----------------------------------

   function MC_Standard_Profile_L2_Entity return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MC_Standard_Profile_L2_Entity;

   ---------------------------------------
   -- MC_Standard_Profile_L2_Executable --
   ---------------------------------------

   function MC_Standard_Profile_L2_Executable return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_Standard_Profile_L2_Executable;

   ---------------------------------
   -- MC_Standard_Profile_L2_File --
   ---------------------------------

   function MC_Standard_Profile_L2_File return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MC_Standard_Profile_L2_File;

   ----------------------------------
   -- MC_Standard_Profile_L2_Focus --
   ----------------------------------

   function MC_Standard_Profile_L2_Focus return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_Standard_Profile_L2_Focus;

   --------------------------------------
   -- MC_Standard_Profile_L2_Framework --
   --------------------------------------

   function MC_Standard_Profile_L2_Framework return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MC_Standard_Profile_L2_Framework;

   --------------------------------------
   -- MC_Standard_Profile_L2_Implement --
   --------------------------------------

   function MC_Standard_Profile_L2_Implement return AMF.Internals.CMOF_Element is
   begin
      return Base + 12;
   end MC_Standard_Profile_L2_Implement;

   -------------------------------------------------
   -- MC_Standard_Profile_L2_Implementation_Class --
   -------------------------------------------------

   function MC_Standard_Profile_L2_Implementation_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 13;
   end MC_Standard_Profile_L2_Implementation_Class;

   ----------------------------------------
   -- MC_Standard_Profile_L2_Instantiate --
   ----------------------------------------

   function MC_Standard_Profile_L2_Instantiate return AMF.Internals.CMOF_Element is
   begin
      return Base + 14;
   end MC_Standard_Profile_L2_Instantiate;

   ------------------------------------
   -- MC_Standard_Profile_L2_Library --
   ------------------------------------

   function MC_Standard_Profile_L2_Library return AMF.Internals.CMOF_Element is
   begin
      return Base + 15;
   end MC_Standard_Profile_L2_Library;

   --------------------------------------
   -- MC_Standard_Profile_L2_Metaclass --
   --------------------------------------

   function MC_Standard_Profile_L2_Metaclass return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MC_Standard_Profile_L2_Metaclass;

   ------------------------------------------
   -- MC_Standard_Profile_L2_Model_Library --
   ------------------------------------------

   function MC_Standard_Profile_L2_Model_Library return AMF.Internals.CMOF_Element is
   begin
      return Base + 17;
   end MC_Standard_Profile_L2_Model_Library;

   ------------------------------------
   -- MC_Standard_Profile_L2_Process --
   ------------------------------------

   function MC_Standard_Profile_L2_Process return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MC_Standard_Profile_L2_Process;

   ----------------------------------------
   -- MC_Standard_Profile_L2_Realization --
   ----------------------------------------

   function MC_Standard_Profile_L2_Realization return AMF.Internals.CMOF_Element is
   begin
      return Base + 19;
   end MC_Standard_Profile_L2_Realization;

   -----------------------------------
   -- MC_Standard_Profile_L2_Refine --
   -----------------------------------

   function MC_Standard_Profile_L2_Refine return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MC_Standard_Profile_L2_Refine;

   -------------------------------------------
   -- MC_Standard_Profile_L2_Responsibility --
   -------------------------------------------

   function MC_Standard_Profile_L2_Responsibility return AMF.Internals.CMOF_Element is
   begin
      return Base + 21;
   end MC_Standard_Profile_L2_Responsibility;

   -----------------------------------
   -- MC_Standard_Profile_L2_Script --
   -----------------------------------

   function MC_Standard_Profile_L2_Script return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MC_Standard_Profile_L2_Script;

   ---------------------------------
   -- MC_Standard_Profile_L2_Send --
   ---------------------------------

   function MC_Standard_Profile_L2_Send return AMF.Internals.CMOF_Element is
   begin
      return Base + 23;
   end MC_Standard_Profile_L2_Send;

   ------------------------------------
   -- MC_Standard_Profile_L2_Service --
   ------------------------------------

   function MC_Standard_Profile_L2_Service return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MC_Standard_Profile_L2_Service;

   -----------------------------------
   -- MC_Standard_Profile_L2_Source --
   -----------------------------------

   function MC_Standard_Profile_L2_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 25;
   end MC_Standard_Profile_L2_Source;

   ------------------------------------------
   -- MC_Standard_Profile_L2_Specification --
   ------------------------------------------

   function MC_Standard_Profile_L2_Specification return AMF.Internals.CMOF_Element is
   begin
      return Base + 26;
   end MC_Standard_Profile_L2_Specification;

   --------------------------------------
   -- MC_Standard_Profile_L2_Subsystem --
   --------------------------------------

   function MC_Standard_Profile_L2_Subsystem return AMF.Internals.CMOF_Element is
   begin
      return Base + 27;
   end MC_Standard_Profile_L2_Subsystem;

   ----------------------------------
   -- MC_Standard_Profile_L2_Trace --
   ----------------------------------

   function MC_Standard_Profile_L2_Trace return AMF.Internals.CMOF_Element is
   begin
      return Base + 28;
   end MC_Standard_Profile_L2_Trace;

   ---------------------------------
   -- MC_Standard_Profile_L2_Type --
   ---------------------------------

   function MC_Standard_Profile_L2_Type return AMF.Internals.CMOF_Element is
   begin
      return Base + 29;
   end MC_Standard_Profile_L2_Type;

   ------------------------------------
   -- MC_Standard_Profile_L2_Utility --
   ------------------------------------

   function MC_Standard_Profile_L2_Utility return AMF.Internals.CMOF_Element is
   begin
      return Base + 30;
   end MC_Standard_Profile_L2_Utility;

   -------------------------------------------------
   -- MP_Standard_Profile_L2_Auxiliary_Base_Class --
   -------------------------------------------------

   function MP_Standard_Profile_L2_Auxiliary_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 31;
   end MP_Standard_Profile_L2_Auxiliary_Base_Class;

   --------------------------------------------
   -- MP_Standard_Profile_L2_Call_Base_Usage --
   --------------------------------------------

   function MP_Standard_Profile_L2_Call_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 32;
   end MP_Standard_Profile_L2_Call_Base_Usage;

   -----------------------------------------------------------
   -- MP_Standard_Profile_L2_Create_Base_Behavioral_Feature --
   -----------------------------------------------------------

   function MP_Standard_Profile_L2_Create_Base_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 33;
   end MP_Standard_Profile_L2_Create_Base_Behavioral_Feature;

   ----------------------------------------------
   -- MP_Standard_Profile_L2_Create_Base_Usage --
   ----------------------------------------------

   function MP_Standard_Profile_L2_Create_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 34;
   end MP_Standard_Profile_L2_Create_Base_Usage;

   ----------------------------------------------------
   -- MP_Standard_Profile_L2_Derive_Base_Abstraction --
   ----------------------------------------------------

   function MP_Standard_Profile_L2_Derive_Base_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 35;
   end MP_Standard_Profile_L2_Derive_Base_Abstraction;

   -----------------------------------------------
   -- MP_Standard_Profile_L2_Derive_Computation --
   -----------------------------------------------

   function MP_Standard_Profile_L2_Derive_Computation return AMF.Internals.CMOF_Element is
   begin
      return Base + 36;
   end MP_Standard_Profile_L2_Derive_Computation;

   ------------------------------------------------------------
   -- MP_Standard_Profile_L2_Destroy_Base_Behavioral_Feature --
   ------------------------------------------------------------

   function MP_Standard_Profile_L2_Destroy_Base_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 37;
   end MP_Standard_Profile_L2_Destroy_Base_Behavioral_Feature;

   ---------------------------------------------------
   -- MP_Standard_Profile_L2_Document_Base_Artifact --
   ---------------------------------------------------

   function MP_Standard_Profile_L2_Document_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 38;
   end MP_Standard_Profile_L2_Document_Base_Artifact;

   --------------------------------------------------
   -- MP_Standard_Profile_L2_Entity_Base_Component --
   --------------------------------------------------

   function MP_Standard_Profile_L2_Entity_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 39;
   end MP_Standard_Profile_L2_Entity_Base_Component;

   -----------------------------------------------------
   -- MP_Standard_Profile_L2_Executable_Base_Artifact --
   -----------------------------------------------------

   function MP_Standard_Profile_L2_Executable_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 40;
   end MP_Standard_Profile_L2_Executable_Base_Artifact;

   -----------------------------------------------
   -- MP_Standard_Profile_L2_File_Base_Artifact --
   -----------------------------------------------

   function MP_Standard_Profile_L2_File_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 41;
   end MP_Standard_Profile_L2_File_Base_Artifact;

   ---------------------------------------------
   -- MP_Standard_Profile_L2_Focus_Base_Class --
   ---------------------------------------------

   function MP_Standard_Profile_L2_Focus_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 42;
   end MP_Standard_Profile_L2_Focus_Base_Class;

   ---------------------------------------------------
   -- MP_Standard_Profile_L2_Framework_Base_Package --
   ---------------------------------------------------

   function MP_Standard_Profile_L2_Framework_Base_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 43;
   end MP_Standard_Profile_L2_Framework_Base_Package;

   -----------------------------------------------------
   -- MP_Standard_Profile_L2_Implement_Base_Component --
   -----------------------------------------------------

   function MP_Standard_Profile_L2_Implement_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 44;
   end MP_Standard_Profile_L2_Implement_Base_Component;

   ------------------------------------------------------------
   -- MP_Standard_Profile_L2_Implementation_Class_Base_Class --
   ------------------------------------------------------------

   function MP_Standard_Profile_L2_Implementation_Class_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 45;
   end MP_Standard_Profile_L2_Implementation_Class_Base_Class;

   ---------------------------------------------------
   -- MP_Standard_Profile_L2_Instantiate_Base_Usage --
   ---------------------------------------------------

   function MP_Standard_Profile_L2_Instantiate_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 46;
   end MP_Standard_Profile_L2_Instantiate_Base_Usage;

   --------------------------------------------------
   -- MP_Standard_Profile_L2_Library_Base_Artifact --
   --------------------------------------------------

   function MP_Standard_Profile_L2_Library_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 47;
   end MP_Standard_Profile_L2_Library_Base_Artifact;

   -------------------------------------------------
   -- MP_Standard_Profile_L2_Metaclass_Base_Class --
   -------------------------------------------------

   function MP_Standard_Profile_L2_Metaclass_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 48;
   end MP_Standard_Profile_L2_Metaclass_Base_Class;

   -------------------------------------------------------
   -- MP_Standard_Profile_L2_Model_Library_Base_Package --
   -------------------------------------------------------

   function MP_Standard_Profile_L2_Model_Library_Base_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 49;
   end MP_Standard_Profile_L2_Model_Library_Base_Package;

   ---------------------------------------------------
   -- MP_Standard_Profile_L2_Process_Base_Component --
   ---------------------------------------------------

   function MP_Standard_Profile_L2_Process_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 50;
   end MP_Standard_Profile_L2_Process_Base_Component;

   --------------------------------------------------------
   -- MP_Standard_Profile_L2_Realization_Base_Classifier --
   --------------------------------------------------------

   function MP_Standard_Profile_L2_Realization_Base_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 51;
   end MP_Standard_Profile_L2_Realization_Base_Classifier;

   ----------------------------------------------------
   -- MP_Standard_Profile_L2_Refine_Base_Abstraction --
   ----------------------------------------------------

   function MP_Standard_Profile_L2_Refine_Base_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 52;
   end MP_Standard_Profile_L2_Refine_Base_Abstraction;

   ------------------------------------------------------
   -- MP_Standard_Profile_L2_Responsibility_Base_Usage --
   ------------------------------------------------------

   function MP_Standard_Profile_L2_Responsibility_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 53;
   end MP_Standard_Profile_L2_Responsibility_Base_Usage;

   -------------------------------------------------
   -- MP_Standard_Profile_L2_Script_Base_Artifact --
   -------------------------------------------------

   function MP_Standard_Profile_L2_Script_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 54;
   end MP_Standard_Profile_L2_Script_Base_Artifact;

   --------------------------------------------
   -- MP_Standard_Profile_L2_Send_Base_Usage --
   --------------------------------------------

   function MP_Standard_Profile_L2_Send_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 55;
   end MP_Standard_Profile_L2_Send_Base_Usage;

   ---------------------------------------------------
   -- MP_Standard_Profile_L2_Service_Base_Component --
   ---------------------------------------------------

   function MP_Standard_Profile_L2_Service_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 56;
   end MP_Standard_Profile_L2_Service_Base_Component;

   -------------------------------------------------
   -- MP_Standard_Profile_L2_Source_Base_Artifact --
   -------------------------------------------------

   function MP_Standard_Profile_L2_Source_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 57;
   end MP_Standard_Profile_L2_Source_Base_Artifact;

   ----------------------------------------------------------
   -- MP_Standard_Profile_L2_Specification_Base_Classifier --
   ----------------------------------------------------------

   function MP_Standard_Profile_L2_Specification_Base_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 58;
   end MP_Standard_Profile_L2_Specification_Base_Classifier;

   -----------------------------------------------------
   -- MP_Standard_Profile_L2_Subsystem_Base_Component --
   -----------------------------------------------------

   function MP_Standard_Profile_L2_Subsystem_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 59;
   end MP_Standard_Profile_L2_Subsystem_Base_Component;

   ---------------------------------------------------
   -- MP_Standard_Profile_L2_Trace_Base_Abstraction --
   ---------------------------------------------------

   function MP_Standard_Profile_L2_Trace_Base_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 60;
   end MP_Standard_Profile_L2_Trace_Base_Abstraction;

   --------------------------------------------
   -- MP_Standard_Profile_L2_Type_Base_Class --
   --------------------------------------------

   function MP_Standard_Profile_L2_Type_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 61;
   end MP_Standard_Profile_L2_Type_Base_Class;

   -----------------------------------------------
   -- MP_Standard_Profile_L2_Utility_Base_Class --
   -----------------------------------------------

   function MP_Standard_Profile_L2_Utility_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 62;
   end MP_Standard_Profile_L2_Utility_Base_Class;

   -------------------------------------------------------------
   -- MA_Standard_Profile_L2_Focus_Extension_Focus_Base_Class --
   -------------------------------------------------------------

   function MA_Standard_Profile_L2_Focus_Extension_Focus_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 63;
   end MA_Standard_Profile_L2_Focus_Extension_Focus_Base_Class;

   -------------------------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Implementation_Class_Extension_Implementation_Class_Base_Class --
   -------------------------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Implementation_Class_Extension_Implementation_Class_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 64;
   end MA_Standard_Profile_L2_Implementation_Class_Extension_Implementation_Class_Base_Class;

   ---------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Metaclass_Extension_Metaclass_Base_Class --
   ---------------------------------------------------------------------

   function MA_Standard_Profile_L2_Metaclass_Extension_Metaclass_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 65;
   end MA_Standard_Profile_L2_Metaclass_Extension_Metaclass_Base_Class;

   -----------------------------------------------------------
   -- MA_Standard_Profile_L2_Type_Extension_Type_Base_Class --
   -----------------------------------------------------------

   function MA_Standard_Profile_L2_Type_Extension_Type_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 66;
   end MA_Standard_Profile_L2_Type_Extension_Type_Base_Class;

   -----------------------------------------------------------------
   -- MA_Standard_Profile_L2_Utility_Extension_Utility_Base_Class --
   -----------------------------------------------------------------

   function MA_Standard_Profile_L2_Utility_Extension_Utility_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 67;
   end MA_Standard_Profile_L2_Utility_Extension_Utility_Base_Class;

   ------------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Realization_Extension_Realization_Base_Classifier --
   ------------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Realization_Extension_Realization_Base_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 68;
   end MA_Standard_Profile_L2_Realization_Extension_Realization_Base_Classifier;

   ----------------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Specification_Extension_Specification_Base_Classifier --
   ----------------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Specification_Extension_Specification_Base_Classifier return AMF.Internals.CMOF_Element is
   begin
      return Base + 69;
   end MA_Standard_Profile_L2_Specification_Extension_Specification_Base_Classifier;

   -------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Entity_Extension_Entity_Base_Component --
   -------------------------------------------------------------------

   function MA_Standard_Profile_L2_Entity_Extension_Entity_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 70;
   end MA_Standard_Profile_L2_Entity_Extension_Entity_Base_Component;

   -------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Implement_Extension_Implement_Base_Component --
   -------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Implement_Extension_Implement_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 71;
   end MA_Standard_Profile_L2_Implement_Extension_Implement_Base_Component;

   ---------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Process_Extension_Process_Base_Component --
   ---------------------------------------------------------------------

   function MA_Standard_Profile_L2_Process_Extension_Process_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 72;
   end MA_Standard_Profile_L2_Process_Extension_Process_Base_Component;

   ---------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Service_Extension_Service_Base_Component --
   ---------------------------------------------------------------------

   function MA_Standard_Profile_L2_Service_Extension_Service_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 73;
   end MA_Standard_Profile_L2_Service_Extension_Service_Base_Component;

   -------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Subsystem_Extension_Subsystem_Base_Component --
   -------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Subsystem_Extension_Subsystem_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 74;
   end MA_Standard_Profile_L2_Subsystem_Extension_Subsystem_Base_Component;

   -----------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Framework_Extension_Framework_Base_Package --
   -----------------------------------------------------------------------

   function MA_Standard_Profile_L2_Framework_Extension_Framework_Base_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 75;
   end MA_Standard_Profile_L2_Framework_Extension_Framework_Base_Package;

   -------------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Model_Library_Extension_Model_Library_Base_Package --
   -------------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Model_Library_Extension_Model_Library_Base_Package return AMF.Internals.CMOF_Element is
   begin
      return Base + 76;
   end MA_Standard_Profile_L2_Model_Library_Extension_Model_Library_Base_Package;

   -----------------------------------------------------------
   -- MA_Standard_Profile_L2_Call_Extension_Call_Base_Usage --
   -----------------------------------------------------------

   function MA_Standard_Profile_L2_Call_Extension_Call_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 77;
   end MA_Standard_Profile_L2_Call_Extension_Call_Base_Usage;

   ---------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Derive_Extension_Derive_Base_Abstraction --
   ---------------------------------------------------------------------

   function MA_Standard_Profile_L2_Derive_Extension_Derive_Base_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 78;
   end MA_Standard_Profile_L2_Derive_Extension_Derive_Base_Abstraction;

   ---------------------------------------------------------------
   -- MA_Standard_Profile_L2_Create_Extension_Create_Base_Usage --
   ---------------------------------------------------------------

   function MA_Standard_Profile_L2_Create_Extension_Create_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 79;
   end MA_Standard_Profile_L2_Create_Extension_Create_Base_Usage;

   ---------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Refine_Extension_Refine_Base_Abstraction --
   ---------------------------------------------------------------------

   function MA_Standard_Profile_L2_Refine_Extension_Refine_Base_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 80;
   end MA_Standard_Profile_L2_Refine_Extension_Refine_Base_Abstraction;

   ----------------------------------------------------------------
   -- MA_Standard_Profile_L2_Derive_Extension_Derive_Computation --
   ----------------------------------------------------------------

   function MA_Standard_Profile_L2_Derive_Extension_Derive_Computation return AMF.Internals.CMOF_Element is
   begin
      return Base + 81;
   end MA_Standard_Profile_L2_Derive_Extension_Derive_Computation;

   -------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Trace_Extension_Trace_Base_Abstraction --
   -------------------------------------------------------------------

   function MA_Standard_Profile_L2_Trace_Extension_Trace_Base_Abstraction return AMF.Internals.CMOF_Element is
   begin
      return Base + 82;
   end MA_Standard_Profile_L2_Trace_Extension_Trace_Base_Abstraction;

   -------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Instantiate_Extension_Instantiate_Base_Usage --
   -------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Instantiate_Extension_Instantiate_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 83;
   end MA_Standard_Profile_L2_Instantiate_Extension_Instantiate_Base_Usage;

   ----------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Document_Extension_Document_Base_Artifact --
   ----------------------------------------------------------------------

   function MA_Standard_Profile_L2_Document_Extension_Document_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 84;
   end MA_Standard_Profile_L2_Document_Extension_Document_Base_Artifact;

   -------------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Responsibility_Extension_Responsibility_Base_Usage --
   -------------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Responsibility_Extension_Responsibility_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 85;
   end MA_Standard_Profile_L2_Responsibility_Extension_Responsibility_Base_Usage;

   --------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Executable_Extension_Executable_Base_Artifact --
   --------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Executable_Extension_Executable_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 86;
   end MA_Standard_Profile_L2_Executable_Extension_Executable_Base_Artifact;

   -----------------------------------------------------------
   -- MA_Standard_Profile_L2_Send_Extension_Send_Base_Usage --
   -----------------------------------------------------------

   function MA_Standard_Profile_L2_Send_Extension_Send_Base_Usage return AMF.Internals.CMOF_Element is
   begin
      return Base + 87;
   end MA_Standard_Profile_L2_Send_Extension_Send_Base_Usage;

   --------------------------------------------------------------
   -- MA_Standard_Profile_L2_File_Extension_File_Base_Artifact --
   --------------------------------------------------------------

   function MA_Standard_Profile_L2_File_Extension_File_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 88;
   end MA_Standard_Profile_L2_File_Extension_File_Base_Artifact;

   --------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Library_Extension_Library_Base_Artifact --
   --------------------------------------------------------------------

   function MA_Standard_Profile_L2_Library_Extension_Library_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 89;
   end MA_Standard_Profile_L2_Library_Extension_Library_Base_Artifact;

   ------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Script_Extension_Script_Base_Artifact --
   ------------------------------------------------------------------

   function MA_Standard_Profile_L2_Script_Extension_Script_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 90;
   end MA_Standard_Profile_L2_Script_Extension_Script_Base_Artifact;

   ------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Source_Extension_Source_Base_Artifact --
   ------------------------------------------------------------------

   function MA_Standard_Profile_L2_Source_Extension_Source_Base_Artifact return AMF.Internals.CMOF_Element is
   begin
      return Base + 91;
   end MA_Standard_Profile_L2_Source_Extension_Source_Base_Artifact;

   ----------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Create_Extension_Create_Base_Behavioral_Feature --
   ----------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Create_Extension_Create_Base_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 92;
   end MA_Standard_Profile_L2_Create_Extension_Create_Base_Behavioral_Feature;

   ------------------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Destroy_Extension_Destroy_Base_Behavioral_Feature --
   ------------------------------------------------------------------------------

   function MA_Standard_Profile_L2_Destroy_Extension_Destroy_Base_Behavioral_Feature return AMF.Internals.CMOF_Element is
   begin
      return Base + 93;
   end MA_Standard_Profile_L2_Destroy_Extension_Destroy_Base_Behavioral_Feature;

   ---------------------------------------------------------------------
   -- MA_Standard_Profile_L2_Auxiliary_Extension_Auxiliary_Base_Class --
   ---------------------------------------------------------------------

   function MA_Standard_Profile_L2_Auxiliary_Extension_Auxiliary_Base_Class return AMF.Internals.CMOF_Element is
   begin
      return Base + 94;
   end MA_Standard_Profile_L2_Auxiliary_Extension_Auxiliary_Base_Class;

   ----------------------------
   -- MB_Standard_Profile_L2 --
   ----------------------------

   function MB_Standard_Profile_L2 return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_Standard_Profile_L2;

   ----------------------------
   -- MB_Standard_Profile_L2 --
   ----------------------------

   function ML_Standard_Profile_L2 return AMF.Internals.AMF_Element is
   begin
      return Base + 180;
   end ML_Standard_Profile_L2;

   ------------------------
   -- Initialize_Objects --
   ------------------------

   procedure Initialize_Objects is
      Extent : constant AMF.Internals.AMF_Extent
        := AMF.Internals.Extents.Allocate_Extent
            (AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0049'Access);
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

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Package_Import;
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

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Comment;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Constraint;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Opaque_Expression;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_CMOF_Tag;
      AMF.Internals.Extents.Internal_Append (Extent, Aux);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_004A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_006A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0088'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_001D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0013'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0071'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 9, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0010'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0076'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0007'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0036'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0079'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0040'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_001E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0052'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_004C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0082'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0055'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_001B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0062'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 25,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_006E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 25, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 26,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0014'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 27,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0051'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 28,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_001A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 28, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 29,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_006D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 29, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 30,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0022'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 30, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 31,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 31, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 32,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 32, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 33,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 33, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 34,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 34, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 35,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0078'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 35, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 36, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 36,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 36, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 37,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0085'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 37, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 38,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 38, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 39,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 39, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 40,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 40, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 41,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 41, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 42,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 42, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 43,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 43, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 44,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 44, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 46,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 46, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 48,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 48, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0043'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0078'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 52, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 53, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 54,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 54, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 55,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 55, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 56,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 56, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 57,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 57, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 58,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0043'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 58, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 59,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0037'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 59, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 60,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0078'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 60, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 61,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 61, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 62,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 62, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 63,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0042'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 63, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 64,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 64, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 65,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 65, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 66,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 66, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 67,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 67, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 68,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0020'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 68, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 69,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0069'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 69, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 70,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_003E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 70, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 71,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0074'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 71, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 72,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0032'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 72, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 73,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_004F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 73, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 74,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0063'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 74, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 75,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0059'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 75, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 76,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0070'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 76, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 77,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0068'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 77, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 78,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 78, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 79,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0054'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 79, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 80,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 80, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 81,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 81, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 82,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_004E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 82, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 83,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0050'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 83, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 84,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0028'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 84, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 85,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_003D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 85, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 86,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0077'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 86, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 87,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0027'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 87, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 88,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_006F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 88, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 89,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 89, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 90,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0038'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 90, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 91,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0067'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 91, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 92,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_004B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 92, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 93,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0061'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 93, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 94,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0030'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 94, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 95,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 95,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0049'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 95, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 96, AMF.CMOF.Public_Visibility);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 97, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 97, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 97,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0060'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 97, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 98, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 98, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 98,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0073'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 98, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 99, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 99, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 99,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0041'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 99, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 100, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 100, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 100,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0008'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 100, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 101, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 101, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 101,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0056'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 101, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 102, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 102, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 102,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_006B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 102, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 103, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 103, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 103,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0000'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 103, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 104, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 104, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 104,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_001F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 104, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 105, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 105, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 105,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0075'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 105, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 106, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 106, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 106,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 106, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 107, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 107, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 107,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_002F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 107, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 108, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 108, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 108,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 108, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 109, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 109, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 109,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0081'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 109, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 110, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 110, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 110,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 110, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 111, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 111, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 111,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0016'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 111, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 112, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 112, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 112,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0005'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 112, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 113, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 113, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 113,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0064'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 113, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 114, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 114, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 114,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0080'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 114, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 115, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 115, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 115,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0045'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 115, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 116, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 116, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 116,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0065'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 116, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 117, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 117, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 117,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0025'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 117, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 118, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 118, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 118,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0012'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 118, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 119, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 119, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 119,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0035'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 119, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 120, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 120, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 120,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0089'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 120, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 121, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 121, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 121,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0044'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 121, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 122, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 122, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 122,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_003B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 122, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 123, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 123, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 123,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0084'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 123, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 124, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 124, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 124,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 124, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 125, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 125, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 125,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0060'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 125, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 126, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 126, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 126,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 126, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 127, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 127, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 127,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 127, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 128, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 128, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 128,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 128, (False, AMF.CMOF.Public_Visibility));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 129,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0072'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 130,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0048'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 131,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_004D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 131, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 132, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 133,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_002A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 134,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0053'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 134, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 135, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 136,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008B'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 137,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_001C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 138,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_000F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 139,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0046'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 140,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0009'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 141,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0031'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 142,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0004'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 143,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0047'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 144,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0039'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 145,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0034'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 146,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0087'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 146, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 147, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 148,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0018'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 149,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_008E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 149, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 150, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 151,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0066'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 152,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0053'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 152, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 153, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 154,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_006C'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 155,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0086'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 156,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0083'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 157,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_003F'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 158,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0058'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 159,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005F'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 159, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 160, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 161,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0002'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 162,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_003A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 163,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007A'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 164,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0024'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 165,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_002D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 165, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 166, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 167,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_002E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 168,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005E'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 169,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0021'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 170,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_005A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 170, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 171, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 172,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0026'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 173,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0019'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 174,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0021'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 175,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 175, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 176, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 177,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0057'Access);

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 178,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_0023'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 178, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 179, (Is_Empty => True));

      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 180,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_003C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 180,
        AMF.Internals.Tables.Standard_Profile_L2_String_Data_00.MS_007D'Access);
   end Initialize_Objects;

   ----------------------
   -- Initialize_Links --
   ----------------------

   procedure Initialize_Links is
   begin
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Class_Super_Class_Class,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Super_Class,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Super_Class_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_Attribute_Class,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Class_Owned_Attribute,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Class);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Constraint_Owned_Rule_Context,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Owned_Rule,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Context);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavioral_Feature,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Comment_Owned_Comment_Owning_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Owned_Comment,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Owned_Comment_Owning_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Value_Specification,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Behavioral_Feature,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Package,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Package,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Usage,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Redefined_Property_Property,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Redefined_Property,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Redefined_Property_Property);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Artifact,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Classifier,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Component,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Abstraction,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        AMF.Internals.Tables.UML_Metamodel.MC_UML_Class,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 42,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 45,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 48,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 61,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 62,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 51,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 58,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 39,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 44,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 50,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 56,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 59,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 43,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 49,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 32,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 35,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 34,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 52,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 60,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 46,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 38,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 53,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 40,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 55,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 41,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 47,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 54,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 57,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 33,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 37,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Member_End_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Member_End,
        Base + 31,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Property_Owned_End_Owning_Association,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Association_Owned_End,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Property_Owning_Association);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Import_Package_Import_Importing_Namespace,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Namespace_Package_Import,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Importing_Namespace);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 78,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 80,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 82,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 84,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 86,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 88,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 89,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 90,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 91,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 92,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 93,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 94,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 63,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 64,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 65,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 66,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 67,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 68,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 69,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 70,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 71,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 72,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 73,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 74,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 75,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 76,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 77,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 79,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 81,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 83,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 85,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 87,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Packageable_Element_Packaged_Element_Owning_Package,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Packaged_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Packaged_Element_Owning_Package);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Package_Imported_Package_Package_Import,
        Base + 96,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Package_Import_Imported_Package,
        AMF.Internals.Tables.UML_Metamodel.MM_UML_UML,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Imported_Package_Package_Import);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 97,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 98,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 99,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 100,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 101,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 102,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 103,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 104,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 105,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 106,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 107,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 108,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 109,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 110,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 111,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 112,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 113,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 114,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 115,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 116,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 117,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 118,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 119,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 120,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 121,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 122,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 123,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 124,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 125,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 126,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 127,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Type_Type_Typed_Element,
        Base + 128,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Typed_Element_Type,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Type_Typed_Element);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 129,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 1,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 130,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 2,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 131,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 132,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 133,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 3,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 134,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 135,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 136,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 4,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 137,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 36,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 138,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 5,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 139,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 6,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 140,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 7,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 141,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 8,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 142,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 9,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 143,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 10,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 144,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 11,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 145,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 12,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 146,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 147,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 148,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 13,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 149,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 150,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 151,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 14,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 152,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 153,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 154,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 15,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 155,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 16,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 156,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 17,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 157,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 18,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 158,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 19,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 159,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 160,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 161,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 20,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 162,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 21,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 163,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 22,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 164,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 23,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 165,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 166,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 167,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 24,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 168,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 25,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 169,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 26,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 170,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 171,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 172,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 27,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 173,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 28,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 174,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 29,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 175,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 176,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Annotated_Element_Comment,
        Base + 177,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Comment_Annotated_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Annotated_Element_Comment);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Constrained_Element_Constraint,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Constrained_Element,
        Base + 30,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constrained_Element_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Value_Specification_Specification_Owning_Constraint,
        Base + 178,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Constraint_Specification,
        Base + 179,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Specification_Owning_Constraint);
      AMF.Internals.Links.Internal_Create_Link
       (AMF.Internals.Tables.CMOF_Metamodel.MA_CMOF_Element_Element_Tag,
        Base + 180,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Tag_Element,
        Base + 95,
        AMF.Internals.Tables.CMOF_Metamodel.MP_CMOF_Element_Tag);
   end Initialize_Links;

end AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
