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

package body AMF.Internals.Tables.Standard_Profile_L3_Metamodel is

   ------------------------------------------------
   -- MM_Standard_Profile_L3_Standard_Profile_L3 --
   ------------------------------------------------

   function MM_Standard_Profile_L3_Standard_Profile_L3 return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MM_Standard_Profile_L3_Standard_Profile_L3;

   --------------------------------------------
   -- MC_Standard_Profile_L3_Build_Component --
   --------------------------------------------

   function MC_Standard_Profile_L3_Build_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_Standard_Profile_L3_Build_Component;

   --------------------------------------
   -- MC_Standard_Profile_L3_Metamodel --
   --------------------------------------

   function MC_Standard_Profile_L3_Metamodel return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_Standard_Profile_L3_Metamodel;

   -----------------------------------------
   -- MC_Standard_Profile_L3_System_Model --
   -----------------------------------------

   function MC_Standard_Profile_L3_System_Model return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_Standard_Profile_L3_System_Model;

   -----------------------------------------------------------
   -- MP_Standard_Profile_L3_Build_Component_Base_Component --
   -----------------------------------------------------------

   function MP_Standard_Profile_L3_Build_Component_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MP_Standard_Profile_L3_Build_Component_Base_Component;

   -------------------------------------------------
   -- MP_Standard_Profile_L3_Metamodel_Base_Model --
   -------------------------------------------------

   function MP_Standard_Profile_L3_Metamodel_Base_Model return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MP_Standard_Profile_L3_Metamodel_Base_Model;

   ----------------------------------------------------
   -- MP_Standard_Profile_L3_System_Model_Base_Model --
   ----------------------------------------------------

   function MP_Standard_Profile_L3_System_Model_Base_Model return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MP_Standard_Profile_L3_System_Model_Base_Model;

   ----------------------------------------------------------------
   -- MA_Standard_Profile_L3_A_Extension_System_Model_Base_Model --
   ----------------------------------------------------------------

   function MA_Standard_Profile_L3_A_Extension_System_Model_Base_Model return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MA_Standard_Profile_L3_A_Extension_System_Model_Base_Model;

   -----------------------------------------------------------------------
   -- MA_Standard_Profile_L3_A_Extension_Build_Component_Base_Component --
   -----------------------------------------------------------------------

   function MA_Standard_Profile_L3_A_Extension_Build_Component_Base_Component return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MA_Standard_Profile_L3_A_Extension_Build_Component_Base_Component;

   -------------------------------------------------------------
   -- MA_Standard_Profile_L3_A_Extension_Metamodel_Base_Model --
   -------------------------------------------------------------

   function MA_Standard_Profile_L3_A_Extension_Metamodel_Base_Model return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MA_Standard_Profile_L3_A_Extension_Metamodel_Base_Model;

   ----------------------------
   -- MB_Standard_Profile_L3 --
   ----------------------------

   function MB_Standard_Profile_L3 return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_Standard_Profile_L3;

   ----------------------------
   -- MB_Standard_Profile_L3 --
   ----------------------------

   function ML_Standard_Profile_L3 return AMF.Internals.AMF_Element is
   begin
      return Base + 15;
   end ML_Standard_Profile_L3;

end AMF.Internals.Tables.Standard_Profile_L3_Metamodel;
