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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  A data type is a type whose instances are identified only by their value. 
--  A data type may contain attributes to support the modeling of structured 
--  data types.
------------------------------------------------------------------------------
with AMF.CMOF.Classifiers;
limited with AMF.CMOF.Operations.Collections;
limited with AMF.CMOF.Properties.Collections;

package AMF.CMOF.Data_Types is

   pragma Preelaborate;

   type CMOF_Data_Type is limited interface
     and AMF.CMOF.Classifiers.CMOF_Classifier;

   type CMOF_Data_Type_Access is
     access all CMOF_Data_Type'Class;
   for CMOF_Data_Type_Access'Storage_Size use 0;

   not overriding function Get_Owned_Attribute
    (Self : not null access constant CMOF_Data_Type)
       return AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property is abstract;
   --  The Attributes owned by the DataType.

   not overriding function Get_Owned_Operation
    (Self : not null access constant CMOF_Data_Type)
       return AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation is abstract;
   --  The Operations owned by the DataType.

end AMF.CMOF.Data_Types;
