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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body CMOF.Properties is

   ---------------------
   -- Get_Association --
   ---------------------

   function Get_Association (Self : CMOF_Property) return CMOF_Association is
   begin
      return CMOF.Internals.Attributes.Internal_Get_Association (Self);
   end Get_Association;

   ---------------
   -- Get_Class --
   ---------------

   function Get_Class (Self : CMOF_Property) return CMOF_Class
     renames CMOF.Internals.Attributes.Internal_Get_Class;

   ----------------------
   -- Get_Is_Composite --
   ----------------------

   function Get_Is_Composite (Self : CMOF_Property) return AMF.AMF_Boolean
     renames CMOF.Internals.Attributes.Internal_Get_Is_Composite;

   --------------------
   -- Get_Is_Derived --
   --------------------

   function Get_Is_Derived (Self : CMOF_Property) return AMF.AMF_Boolean
     renames CMOF.Internals.Attributes.Internal_Get_Is_Derived;

   --------------------------
   -- Get_Is_Derived_Union --
   --------------------------

   function Get_Is_Derived_Union (Self : CMOF_Property) return AMF.AMF_Boolean
     renames CMOF.Internals.Attributes.Internal_Get_Is_Derived_Union;

   ----------------------
   -- Get_Is_Read_Only --
   ----------------------

   function Get_Is_Read_Only (Self : CMOF_Property) return AMF.AMF_Boolean
     renames CMOF.Internals.Attributes.Internal_Get_Is_Read_Only;

   ----------------------------
   -- Get_Owning_Association --
   ----------------------------

   function Get_Owning_Association
    (Self : CMOF_Property) return CMOF_Association
       renames CMOF.Internals.Attributes.Internal_Get_Owning_Association;

   ----------------------------
   -- Get_Redefined_Property --
   ----------------------------

   function Get_Redefined_Property
    (Self : CMOF_Property) return Set_Of_CMOF_Property
       renames CMOF.Internals.Attributes.Internal_Get_Redefined_Property;

   ----------------------------
   -- Get_Subsetted_Property --
   ----------------------------

   function Get_Subsetted_Property
    (Self : CMOF_Property) return Set_Of_CMOF_Property
       renames CMOF.Internals.Attributes.Internal_Get_Subsetted_Property;

end CMOF.Properties;
