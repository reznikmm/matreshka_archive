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

package body AMF.Internals.Tables.Primitive_Types_Metamodel is

   ----------------------------------------
   -- MM_Primitive_Types_Primitive_Types --
   ----------------------------------------

   function MM_Primitive_Types_Primitive_Types return AMF.Internals.CMOF_Element is
   begin
      return Base + 1;
   end MM_Primitive_Types_Primitive_Types;

   --------------------------------
   -- MC_Primitive_Types_Boolean --
   --------------------------------

   function MC_Primitive_Types_Boolean return AMF.Internals.CMOF_Element is
   begin
      return Base + 2;
   end MC_Primitive_Types_Boolean;

   --------------------------------
   -- MC_Primitive_Types_Integer --
   --------------------------------

   function MC_Primitive_Types_Integer return AMF.Internals.CMOF_Element is
   begin
      return Base + 4;
   end MC_Primitive_Types_Integer;

   -----------------------------
   -- MC_Primitive_Types_Real --
   -----------------------------

   function MC_Primitive_Types_Real return AMF.Internals.CMOF_Element is
   begin
      return Base + 6;
   end MC_Primitive_Types_Real;

   -------------------------------
   -- MC_Primitive_Types_String --
   -------------------------------

   function MC_Primitive_Types_String return AMF.Internals.CMOF_Element is
   begin
      return Base + 8;
   end MC_Primitive_Types_String;

   ------------------------------------------
   -- MC_Primitive_Types_Unlimited_Natural --
   ------------------------------------------

   function MC_Primitive_Types_Unlimited_Natural return AMF.Internals.CMOF_Element is
   begin
      return Base + 10;
   end MC_Primitive_Types_Unlimited_Natural;

   ------------------------
   -- MB_Primitive_Types --
   ------------------------

   function MB_Primitive_Types return AMF.Internals.AMF_Element is
   begin
      return Base;
   end MB_Primitive_Types;

   ------------------------
   -- MB_Primitive_Types --
   ------------------------

   function ML_Primitive_Types return AMF.Internals.AMF_Element is
   begin
      return Base + 15;
   end ML_Primitive_Types;

end AMF.Internals.Tables.Primitive_Types_Metamodel;
