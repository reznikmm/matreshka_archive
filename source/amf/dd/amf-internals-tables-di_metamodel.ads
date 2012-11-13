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

package AMF.Internals.Tables.DI_Metamodel is

   pragma Preelaborate;

   function MM_DI_DI return AMF.Internals.CMOF_Element;

   function MC_DI_Diagram return AMF.Internals.CMOF_Element;
   function MC_DI_Diagram_Element return AMF.Internals.CMOF_Element;
   function MC_DI_Edge return AMF.Internals.CMOF_Element;
   function MC_DI_Shape return AMF.Internals.CMOF_Element;
   function MC_DI_Style return AMF.Internals.CMOF_Element;

   function MP_DI_Diagram_Documentation return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Name return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Resolution return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Element_Local_Style_A_Styled_Element return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Element_Model_Element_A_Diagram_Element return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Element_Owned_Element_Diagram_Element_Owning_Element return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Element_Owning_Element_Diagram_Element_Owned_Element return AMF.Internals.CMOF_Element;
   function MP_DI_Diagram_Element_Shared_Style_A_Styled_Element return AMF.Internals.CMOF_Element;
   function MP_DI_Edge_Source_A_Source_Edge return AMF.Internals.CMOF_Element;
   function MP_DI_Edge_Target_A_Target_Edge return AMF.Internals.CMOF_Element;
   function MP_DI_Edge_Waypoint return AMF.Internals.CMOF_Element;
   function MP_DI_Shape_Bounds return AMF.Internals.CMOF_Element;
   function MP_DI_A_Target_Edge_Edge_Target return AMF.Internals.CMOF_Element;
   function MP_DI_A_Source_Edge_Edge_Source return AMF.Internals.CMOF_Element;
   function MP_DI_A_Diagram_Element_Diagram_Element_Model_Element return AMF.Internals.CMOF_Element;
   function MP_DI_A_Styled_Element_Diagram_Element_Shared_Style return AMF.Internals.CMOF_Element;
   function MP_DI_A_Styled_Element_Diagram_Element_Local_Style return AMF.Internals.CMOF_Element;

   function MA_DI_Edge_Target_Target_Edge return AMF.Internals.CMOF_Element;
   function MA_DI_Edge_Source_Source_Edge return AMF.Internals.CMOF_Element;
   function MA_DI_Diagram_Element_Owned_Element_Owning_Element return AMF.Internals.CMOF_Element;
   function MA_DI_Diagram_Element_Model_Element_Diagram_Element return AMF.Internals.CMOF_Element;
   function MA_DI_Diagram_Element_Shared_Style_Styled_Element return AMF.Internals.CMOF_Element;
   function MA_DI_Diagram_Element_Local_Style_Styled_Element return AMF.Internals.CMOF_Element;

   function MB_DI return AMF.Internals.AMF_Element;

   function ML_DI return AMF.Internals.AMF_Element;

private

   Base : AMF.Internals.CMOF_Element := 0;

end AMF.Internals.Tables.DI_Metamodel;
