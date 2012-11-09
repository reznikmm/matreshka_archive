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

package body AMF.Internals.Tables.DC_Metamodel is

   --------------
   -- MM_DC_DC --
   --------------

   function MM_DC_DC return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MM_DC_DC;

   --------------------------
   -- MC_DC_Alignment_Kind --
   --------------------------

   function MC_DC_Alignment_Kind return AMF.Internals.CMOF_Element is
   begin
      return Base + 50;
   end MC_DC_Alignment_Kind;

   -------------------
   -- MC_DC_Boolean --
   -------------------

   function MC_DC_Boolean return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MC_DC_Boolean;

   ------------------
   -- MC_DC_Bounds --
   ------------------

   function MC_DC_Bounds return AMF.Internals.CMOF_Element is
   begin
      return Base + 37;
   end MC_DC_Bounds;

   -----------------
   -- MC_DC_Color --
   -----------------

   function MC_DC_Color return AMF.Internals.CMOF_Element is
   begin
      return Base + 11;
   end MC_DC_Color;

   ---------------------
   -- MC_DC_Dimension --
   ---------------------

   function MC_DC_Dimension return AMF.Internals.CMOF_Element is
   begin
      return Base + 28;
   end MC_DC_Dimension;

   -------------------
   -- MC_DC_Integer --
   -------------------

   function MC_DC_Integer return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MC_DC_Integer;

   -----------------------
   -- MC_DC_Known_Color --
   -----------------------

   function MC_DC_Known_Color return AMF.Internals.CMOF_Element is
   begin
      return Base + 58;
   end MC_DC_Known_Color;

   -----------------
   -- MC_DC_Point --
   -----------------

   function MC_DC_Point return AMF.Internals.CMOF_Element is
   begin
      return Base + 22;
   end MC_DC_Point;

   ----------------
   -- MC_DC_Real --
   ----------------

   function MC_DC_Real return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MC_DC_Real;

   ------------------
   -- MC_DC_String --
   ------------------

   function MC_DC_String return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MC_DC_String;

   -------------------------
   -- MP_DC_Bounds_Height --
   -------------------------

   function MP_DC_Bounds_Height return AMF.Internals.CMOF_Element is
   begin
      return Base + 48;
   end MP_DC_Bounds_Height;

   ------------------------
   -- MP_DC_Bounds_Width --
   ------------------------

   function MP_DC_Bounds_Width return AMF.Internals.CMOF_Element is
   begin
      return Base + 46;
   end MP_DC_Bounds_Width;

   --------------------
   -- MP_DC_Bounds_X --
   --------------------

   function MP_DC_Bounds_X return AMF.Internals.CMOF_Element is
   begin
      return Base + 42;
   end MP_DC_Bounds_X;

   --------------------
   -- MP_DC_Bounds_Y --
   --------------------

   function MP_DC_Bounds_Y return AMF.Internals.CMOF_Element is
   begin
      return Base + 44;
   end MP_DC_Bounds_Y;

   ----------------------
   -- MP_DC_Color_Blue --
   ----------------------

   function MP_DC_Color_Blue return AMF.Internals.CMOF_Element is
   begin
      return Base + 20;
   end MP_DC_Color_Blue;

   -----------------------
   -- MP_DC_Color_Green --
   -----------------------

   function MP_DC_Color_Green return AMF.Internals.CMOF_Element is
   begin
      return Base + 18;
   end MP_DC_Color_Green;

   ---------------------
   -- MP_DC_Color_Red --
   ---------------------

   function MP_DC_Color_Red return AMF.Internals.CMOF_Element is
   begin
      return Base + 16;
   end MP_DC_Color_Red;

   ----------------------------
   -- MP_DC_Dimension_Height --
   ----------------------------

   function MP_DC_Dimension_Height return AMF.Internals.CMOF_Element is
   begin
      return Base + 35;
   end MP_DC_Dimension_Height;

   ---------------------------
   -- MP_DC_Dimension_Width --
   ---------------------------

   function MP_DC_Dimension_Width return AMF.Internals.CMOF_Element is
   begin
      return Base + 33;
   end MP_DC_Dimension_Width;

   -------------------
   -- MP_DC_Point_X --
   -------------------

   function MP_DC_Point_X return AMF.Internals.CMOF_Element is
   begin
      return Base + 24;
   end MP_DC_Point_X;

   -------------------
   -- MP_DC_Point_Y --
   -------------------

   function MP_DC_Point_Y return AMF.Internals.CMOF_Element is
   begin
      return Base + 26;
   end MP_DC_Point_Y;

   -----------
   -- MB_DC --
   -----------

   function MB_DC return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_DC;

   -----------
   -- MB_DC --
   -----------

   function ML_DC return AMF.Internals.AMF_Element is
   begin
      return Base + 98;
   end ML_DC;

end AMF.Internals.Tables.DC_Metamodel;
