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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with CMOF.Internals.Attributes;

package body CMOF.Multiplicity_Elements is

   use AMF;
   use CMOF.Internals.Attributes;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   function Get_Is_Ordered (Self : CMOF_Property) return Boolean
     renames CMOF.Internals.Attributes.Internal_Get_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   function Get_Is_Unique (Self : CMOF_Property) return Boolean
     renames CMOF.Internals.Attributes.Internal_Get_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   function Get_Lower (Self : CMOF_Multiplicity_Element) return Integer is
   begin
      return Internal_Get_Lower (Self).Value;
   end Get_Lower;

   ---------------
   -- Get_Upper --
   ---------------

   function Get_Upper
    (Self : CMOF_Multiplicity_Element) return AMF.Unlimited_Natural is
   begin
      return Internal_Get_Upper (Self).Value;
   end Get_Upper;

   --------------------
   -- Is_Multivalued --
   --------------------

   function Is_Multivalued
    (Self : CMOF_Multiplicity_Element) return Boolean is
   begin
      return Internal_Get_Upper (Self).Value > 1;
   end Is_Multivalued;

end CMOF.Multiplicity_Elements;
