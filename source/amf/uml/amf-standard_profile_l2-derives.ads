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
--  Specifies a derivation relationship among model elements that are usually, 
--  but not necessarily, of the same type. A derived dependency specifies that 
--  the client may be computed from the supplier. The mapping specifies the 
--  computation. The client may be implemented for design reasons, such as 
--  efficiency, even though it is logically redundant.
------------------------------------------------------------------------------
limited with AMF.UML.Abstractions;
limited with AMF.UML.Value_Specifications;

package AMF.Standard_Profile_L2.Derives is

   pragma Preelaborate;

   type Standard_Profile_L2_Derive is limited interface;

   type Standard_Profile_L2_Derive_Access is
     access all Standard_Profile_L2_Derive'Class;
   for Standard_Profile_L2_Derive_Access'Storage_Size use 0;

   not overriding function Get_Base_Abstraction
    (Self : not null access constant Standard_Profile_L2_Derive)
       return AMF.UML.Abstractions.UML_Abstraction_Access is abstract;
   --  Getter of Derive::base_Abstraction.
   --

   not overriding procedure Set_Base_Abstraction
    (Self : not null access Standard_Profile_L2_Derive;
     To   : AMF.UML.Abstractions.UML_Abstraction_Access) is abstract;
   --  Setter of Derive::base_Abstraction.
   --

   not overriding function Get_Computation
    (Self : not null access constant Standard_Profile_L2_Derive)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of Derive::computation.
   --
   --  The specification for computing the derived client element from the 
   --  derivation supplier element.

   not overriding procedure Set_Computation
    (Self : not null access Standard_Profile_L2_Derive;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of Derive::computation.
   --
   --  The specification for computing the derived client element from the 
   --  derivation supplier element.

end AMF.Standard_Profile_L2.Derives;
