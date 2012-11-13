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

package body AMF.Internals.Tables.DI_Metamodel is

   --------------
   -- MM_DI_DI --
   --------------

   function MM_DI_DI return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MM_DI_DI;

   -------------------
   -- MC_DI_Diagram --
   -------------------

   function MC_DI_Diagram return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_DI_Diagram;

   ---------------------------
   -- MC_DI_Diagram_Element --
   ---------------------------

   function MC_DI_Diagram_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_DI_Diagram_Element;

   ----------------
   -- MC_DI_Edge --
   ----------------

   function MC_DI_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_DI_Edge;

   -----------------
   -- MC_DI_Shape --
   -----------------

   function MC_DI_Shape return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_DI_Shape;

   -----------------
   -- MC_DI_Style --
   -----------------

   function MC_DI_Style return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_DI_Style;

   ---------------------------------
   -- MP_DI_Diagram_Documentation --
   ---------------------------------

   function MP_DI_Diagram_Documentation return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MP_DI_Diagram_Documentation;

   ------------------------
   -- MP_DI_Diagram_Name --
   ------------------------

   function MP_DI_Diagram_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MP_DI_Diagram_Name;

   ------------------------------
   -- MP_DI_Diagram_Resolution --
   ------------------------------

   function MP_DI_Diagram_Resolution return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MP_DI_Diagram_Resolution;

   ---------------------------------------
   -- MP_DI_Diagram_Element_Local_Style --
   ---------------------------------------

   function MP_DI_Diagram_Element_Local_Style return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MP_DI_Diagram_Element_Local_Style;

   -----------------------------------------
   -- MP_DI_Diagram_Element_Model_Element --
   -----------------------------------------

   function MP_DI_Diagram_Element_Model_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MP_DI_Diagram_Element_Model_Element;

   -----------------------------------------
   -- MP_DI_Diagram_Element_Owned_Element --
   -----------------------------------------

   function MP_DI_Diagram_Element_Owned_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MP_DI_Diagram_Element_Owned_Element;

   ------------------------------------------
   -- MP_DI_Diagram_Element_Owning_Element --
   ------------------------------------------

   function MP_DI_Diagram_Element_Owning_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 12;
   end MP_DI_Diagram_Element_Owning_Element;

   ----------------------------------------
   -- MP_DI_Diagram_Element_Shared_Style --
   ----------------------------------------

   function MP_DI_Diagram_Element_Shared_Style return AMF.Internals.CMOF_Element is
   begin
      return Base + 13;
   end MP_DI_Diagram_Element_Shared_Style;

   -----------------------
   -- MP_DI_Edge_Source --
   -----------------------

   function MP_DI_Edge_Source return AMF.Internals.CMOF_Element is
   begin
      return Base + 14;
   end MP_DI_Edge_Source;

   -----------------------
   -- MP_DI_Edge_Target --
   -----------------------

   function MP_DI_Edge_Target return AMF.Internals.CMOF_Element is
   begin
      return Base + 15;
   end MP_DI_Edge_Target;

   -------------------------
   -- MP_DI_Edge_Waypoint --
   -------------------------

   function MP_DI_Edge_Waypoint return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MP_DI_Edge_Waypoint;

   ------------------------
   -- MP_DI_Shape_Bounds --
   ------------------------

   function MP_DI_Shape_Bounds return AMF.Internals.CMOF_Element is
   begin
      return Base + 17;
   end MP_DI_Shape_Bounds;

   -----------------------------------
   -- MA_DI_Edge_Target_Target_Edge --
   -----------------------------------

   function MA_DI_Edge_Target_Target_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MA_DI_Edge_Target_Target_Edge;

   -----------------------------------
   -- MA_DI_Edge_Source_Source_Edge --
   -----------------------------------

   function MA_DI_Edge_Source_Source_Edge return AMF.Internals.CMOF_Element is
   begin
      return Base + 19;
   end MA_DI_Edge_Source_Source_Edge;

   --------------------------------------------------------
   -- MA_DI_Diagram_Element_Owned_Element_Owning_Element --
   --------------------------------------------------------

   function MA_DI_Diagram_Element_Owned_Element_Owning_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MA_DI_Diagram_Element_Owned_Element_Owning_Element;

   ---------------------------------------------------------
   -- MA_DI_Diagram_Element_Model_Element_Diagram_Element --
   ---------------------------------------------------------

   function MA_DI_Diagram_Element_Model_Element_Diagram_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 21;
   end MA_DI_Diagram_Element_Model_Element_Diagram_Element;

   -------------------------------------------------------
   -- MA_DI_Diagram_Element_Shared_Style_Styled_Element --
   -------------------------------------------------------

   function MA_DI_Diagram_Element_Shared_Style_Styled_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MA_DI_Diagram_Element_Shared_Style_Styled_Element;

   ------------------------------------------------------
   -- MA_DI_Diagram_Element_Local_Style_Styled_Element --
   ------------------------------------------------------

   function MA_DI_Diagram_Element_Local_Style_Styled_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 23;
   end MA_DI_Diagram_Element_Local_Style_Styled_Element;

   -----------
   -- MB_DI --
   -----------

   function MB_DI return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_DI;

   -----------
   -- MB_DI --
   -----------

   function ML_DI return AMF.Internals.AMF_Element is
   begin
      return Base + 53;
   end ML_DI;

end AMF.Internals.Tables.DI_Metamodel;
