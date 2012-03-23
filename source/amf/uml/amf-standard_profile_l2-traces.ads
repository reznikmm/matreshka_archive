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
--  Specifies a trace relationship between model elements or sets of model 
--  elements that represent the same concept in different models. Traces are 
--  mainly used for tracking requirements and changes across models. Since 
--  model changes can occur in both directions, the directionality of the 
--  dependency can often be ignored. The mapping specifies the relationship 
--  between the two, but it is rarely computable and is usually informal.
------------------------------------------------------------------------------
limited with AMF.UML.Abstractions;

package AMF.Standard_Profile_L2.Traces is

   pragma Preelaborate;

   type Standard_Profile_L2_Trace is limited interface;

   type Standard_Profile_L2_Trace_Access is
     access all Standard_Profile_L2_Trace'Class;
   for Standard_Profile_L2_Trace_Access'Storage_Size use 0;

   not overriding function Get_Base_Abstraction
    (Self : not null access constant Standard_Profile_L2_Trace)
       return AMF.UML.Abstractions.UML_Abstraction_Access is abstract;
   --  Getter of Trace::base_Abstraction.
   --

   not overriding procedure Set_Base_Abstraction
    (Self : not null access Standard_Profile_L2_Trace;
     To   : AMF.UML.Abstractions.UML_Abstraction_Access) is abstract;
   --  Setter of Trace::base_Abstraction.
   --

end AMF.Standard_Profile_L2.Traces;
