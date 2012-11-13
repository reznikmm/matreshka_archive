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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package AMF.Internals.Tables.Standard_Profile_L2_Metamodel is

   pragma Preelaborate;

   function MM_Standard_Profile_L2_Standard_Profile_L2 return AMF.Internals.CMOF_Element;

   function MC_Standard_Profile_L2_Auxiliary return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Call return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Create return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Derive return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Destroy return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Document return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Entity return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Executable return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_File return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Focus return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Framework return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Implement return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Implementation_Class return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Instantiate return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Library return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Metaclass return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Model_Library return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Process return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Realization return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Refine return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Responsibility return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Script return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Send return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Service return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Source return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Specification return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Subsystem return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Trace return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Type return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L2_Utility return AMF.Internals.CMOF_Element;

   function MP_Standard_Profile_L2_Auxiliary_Base_Class_A_Extension_Auxiliary return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Call_Base_Usage_A_Extension_Call return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Create_Base_Behavioral_Feature_A_Extension_Create return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Create_Base_Usage_A_Extension_Create return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Derive_Base_Abstraction_A_Extension_Derive return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Derive_Computation_A_Extension_Derive return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Destroy_Base_Behavioral_Feature_A_Extension_Destroy return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Document_Base_Artifact_A_Extension_Document return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Entity_Base_Component_A_Extension_Entity return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Executable_Base_Artifact_A_Extension_Executable return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_File_Base_Artifact_A_Extension_File return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Focus_Base_Class_A_Extension_Focus return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Framework_Base_Package_A_Extension_Framework return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Implement_Base_Component_A_Extension_Implement return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Implementation_Class_Base_Class_A_Extension_Implementation_Class return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Instantiate_Base_Usage_A_Extension_Instantiate return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Library_Base_Artifact_A_Extension_Library return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Metaclass_Base_Class_A_Extension_Metaclass return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Model_Library_Base_Package_A_Extension_Model_Library return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Process_Base_Component_A_Extension_Process return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Realization_Base_Classifier_A_Extension_Realization return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Refine_Base_Abstraction_A_Extension_Refine return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Responsibility_Base_Usage_A_Extension_Responsibility return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Script_Base_Artifact_A_Extension_Script return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Send_Base_Usage_A_Extension_Send return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Service_Base_Component_A_Extension_Service return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Source_Base_Artifact_A_Extension_Source return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Specification_Base_Classifier_A_Extension_Specification return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Subsystem_Base_Component_A_Extension_Subsystem return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Trace_Base_Abstraction_A_Extension_Trace return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Type_Base_Class_A_Extension_Type return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_Utility_Base_Class_A_Extension_Utility return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Focus_Focus_Base_Class return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Implementation_Class_Implementation_Class_Base_Class return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Metaclass_Metaclass_Base_Class return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Type_Type_Base_Class return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Utility_Utility_Base_Class return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Realization_Realization_Base_Classifier return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Specification_Specification_Base_Classifier return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Entity_Entity_Base_Component return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Implement_Implement_Base_Component return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Process_Process_Base_Component return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Service_Service_Base_Component return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Subsystem_Subsystem_Base_Component return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Framework_Framework_Base_Package return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Model_Library_Model_Library_Base_Package return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Call_Call_Base_Usage return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Derive_Derive_Base_Abstraction return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Create_Create_Base_Usage return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Refine_Refine_Base_Abstraction return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Derive_Derive_Computation return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Trace_Trace_Base_Abstraction return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Instantiate_Instantiate_Base_Usage return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Document_Document_Base_Artifact return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Responsibility_Responsibility_Base_Usage return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Executable_Executable_Base_Artifact return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Send_Send_Base_Usage return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_File_File_Base_Artifact return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Library_Library_Base_Artifact return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Script_Script_Base_Artifact return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Source_Source_Base_Artifact return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Create_Create_Base_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Destroy_Destroy_Base_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L2_A_Extension_Auxiliary_Auxiliary_Base_Class return AMF.Internals.CMOF_Element;

   function MA_Standard_Profile_L2_A_Extension_Focus_Base_Class return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Implementation_Class_Base_Class return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Metaclass_Base_Class return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Type_Base_Class return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Utility_Base_Class return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Realization_Base_Classifier return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Specification_Base_Classifier return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Entity_Base_Component return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Implement_Base_Component return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Process_Base_Component return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Service_Base_Component return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Subsystem_Base_Component return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Framework_Base_Package return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Model_Library_Base_Package return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Call_Base_Usage return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Derive_Base_Abstraction return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Create_Base_Usage return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Refine_Base_Abstraction return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Derive_Computation return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Trace_Base_Abstraction return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Instantiate_Base_Usage return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Document_Base_Artifact return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Responsibility_Base_Usage return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Executable_Base_Artifact return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Send_Base_Usage return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_File_Base_Artifact return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Library_Base_Artifact return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Script_Base_Artifact return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Source_Base_Artifact return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Create_Base_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Destroy_Base_Behavioral_Feature return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L2_A_Extension_Auxiliary_Base_Class return AMF.Internals.CMOF_Element;

   function MB_Standard_Profile_L2 return AMF.Internals.AMF_Element;

   function ML_Standard_Profile_L2 return AMF.Internals.AMF_Element;

private

   Base : AMF.Internals.CMOF_Element := 0;

end AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
