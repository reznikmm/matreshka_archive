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
limited with AMF.UML.Namespaces;
limited with AMF.UML.Properties;
limited with AMF.UML.Value_Specifications;

package AMF.Utp.Coding_Rules is

   pragma Preelaborate;

   type Utp_Coding_Rule is limited interface;

   type Utp_Coding_Rule_Access is
     access all Utp_Coding_Rule'Class;
   for Utp_Coding_Rule_Access'Storage_Size use 0;

   not overriding function Get_Base_Value_Specification
    (Self : not null access constant Utp_Coding_Rule)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of CodingRule::base_ValueSpecification.
   --

   not overriding procedure Set_Base_Value_Specification
    (Self : not null access Utp_Coding_Rule;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of CodingRule::base_ValueSpecification.
   --

   not overriding function Get_Base_Namespace
    (Self : not null access constant Utp_Coding_Rule)
       return AMF.UML.Namespaces.UML_Namespace_Access is abstract;
   --  Getter of CodingRule::base_Namespace.
   --

   not overriding procedure Set_Base_Namespace
    (Self : not null access Utp_Coding_Rule;
     To   : AMF.UML.Namespaces.UML_Namespace_Access) is abstract;
   --  Setter of CodingRule::base_Namespace.
   --

   not overriding function Get_Base_Property
    (Self : not null access constant Utp_Coding_Rule)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Getter of CodingRule::base_Property.
   --

   not overriding procedure Set_Base_Property
    (Self : not null access Utp_Coding_Rule;
     To   : AMF.UML.Properties.UML_Property_Access) is abstract;
   --  Setter of CodingRule::base_Property.
   --

   not overriding function Get_Coding
    (Self : not null access constant Utp_Coding_Rule)
       return League.Strings.Universal_String is abstract;
   --  Getter of CodingRule::coding.
   --

   not overriding procedure Set_Coding
    (Self : not null access Utp_Coding_Rule;
     To   : League.Strings.Universal_String) is abstract;
   --  Setter of CodingRule::coding.
   --

end AMF.Utp.Coding_Rules;
