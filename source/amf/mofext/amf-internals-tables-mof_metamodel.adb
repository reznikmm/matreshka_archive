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

package body AMF.Internals.Tables.MOF_Metamodel is

   ----------------
   -- MM_MOF_MOF --
   ----------------

   function MM_MOF_MOF return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MM_MOF_MOF;

   ----------------
   -- MC_MOF_Tag --
   ----------------

   function MC_MOF_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MC_MOF_Tag;

   ------------------------------
   -- MP_MOF_Tag_Element_A_Tag --
   ------------------------------

   function MP_MOF_Tag_Element_A_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MP_MOF_Tag_Element_A_Tag;

   ---------------------
   -- MP_MOF_Tag_Name --
   ---------------------

   function MP_MOF_Tag_Name return AMF.Internals.CMOF_Element is
   begin
      return Base + 3;
   end MP_MOF_Tag_Name;

   --------------------------------------
   -- MP_MOF_Tag_Tag_Owner_A_Owned_Tag --
   --------------------------------------

   function MP_MOF_Tag_Tag_Owner_A_Owned_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MP_MOF_Tag_Tag_Owner_A_Owned_Tag;

   ----------------------
   -- MP_MOF_Tag_Value --
   ----------------------

   function MP_MOF_Tag_Value return AMF.Internals.CMOF_Element is
   begin
      return Base + 5;
   end MP_MOF_Tag_Value;

   ------------------------------
   -- MP_MOF_A_Tag_Tag_Element --
   ------------------------------

   function MP_MOF_A_Tag_Tag_Element return AMF.Internals.CMOF_Element is
   begin
      return Base + 9;
   end MP_MOF_A_Tag_Tag_Element;

   --------------------------------------
   -- MP_MOF_A_Owned_Tag_Tag_Tag_Owner --
   --------------------------------------

   function MP_MOF_A_Owned_Tag_Tag_Tag_Owner return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MP_MOF_A_Owned_Tag_Tag_Tag_Owner;

   ----------------------------
   -- MA_MOF_Tag_Element_Tag --
   ----------------------------

   function MA_MOF_Tag_Element_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MA_MOF_Tag_Element_Tag;

   ------------------------------------
   -- MA_MOF_Tag_Tag_Owner_Owned_Tag --
   ------------------------------------

   function MA_MOF_Tag_Tag_Owner_Owned_Tag return AMF.Internals.CMOF_Element is
   begin
      return Base + 7;
   end MA_MOF_Tag_Tag_Owner_Owned_Tag;

   ------------
   -- MB_MOF --
   ------------

   function MB_MOF return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_MOF;

   ------------
   -- MB_MOF --
   ------------

   function ML_MOF return AMF.Internals.AMF_Element is
   begin
      return Base + 11;
   end ML_MOF;

end AMF.Internals.Tables.MOF_Metamodel;
