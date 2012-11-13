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

package AMF.Internals.Tables.Standard_Profile_L3_Metamodel is

   pragma Preelaborate;

   function MM_Standard_Profile_L3_Standard_Profile_L3 return AMF.Internals.CMOF_Element;

   function MC_Standard_Profile_L3_Build_Component return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L3_Metamodel return AMF.Internals.CMOF_Element;
   function MC_Standard_Profile_L3_System_Model return AMF.Internals.CMOF_Element;

   function MP_Standard_Profile_L3_Build_Component_Base_Component return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L3_Metamodel_Base_Model return AMF.Internals.CMOF_Element;
   function MP_Standard_Profile_L3_System_Model_Base_Model return AMF.Internals.CMOF_Element;

   function MA_Standard_Profile_L3_A_Extension_System_Model_Base_Model return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L3_A_Extension_Build_Component_Base_Component return AMF.Internals.CMOF_Element;
   function MA_Standard_Profile_L3_A_Extension_Metamodel_Base_Model return AMF.Internals.CMOF_Element;

   function MB_Standard_Profile_L3 return AMF.Internals.AMF_Element;

   function ML_Standard_Profile_L3 return AMF.Internals.AMF_Element;

private

   Base : AMF.Internals.CMOF_Element := 0;

end AMF.Internals.Tables.Standard_Profile_L3_Metamodel;
