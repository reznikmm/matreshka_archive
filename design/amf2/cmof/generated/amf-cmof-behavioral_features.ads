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
--  A behavioral feature is a feature of a classifier that specifies an aspect 
--  of the behavior of its instances.
------------------------------------------------------------------------------
with AMF.CMOF.Features;
limited with AMF.CMOF.Named_Elements;
with AMF.CMOF.Namespaces;
limited with AMF.CMOF.Parameters.Collections;
limited with AMF.CMOF.Types.Collections;

package AMF.CMOF.Behavioral_Features is

   pragma Preelaborate;

   type CMOF_Behavioral_Feature is limited interface
     and AMF.CMOF.Features.CMOF_Feature
     and AMF.CMOF.Namespaces.CMOF_Namespace;

   type CMOF_Behavioral_Feature_Access is
     access all CMOF_Behavioral_Feature'Class;
   for CMOF_Behavioral_Feature_Access'Storage_Size use 0;

   not overriding function Get_Owned_Parameter
    (Self : not null access constant CMOF_Behavioral_Feature)
       return AMF.CMOF.Parameters.Collections.Ordered_Set_Of_CMOF_Parameter is abstract;
   --  Specifies the ordered set of formal parameters of this 
   --  BehavioralFeature.

   not overriding function Get_Raised_Exception
    (Self : not null access constant CMOF_Behavioral_Feature)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type is abstract;
   --  References the Types representing exceptions that may be raised during 
   --  an invocation of this feature.

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Behavioral_Feature;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean is abstract;
   --  The query isDistinguishableFrom() determines whether two 
   --  BehavioralFeatures may coexist in the same Namespace. It specifies that 
   --  they have to have different signatures.

end AMF.CMOF.Behavioral_Features;
