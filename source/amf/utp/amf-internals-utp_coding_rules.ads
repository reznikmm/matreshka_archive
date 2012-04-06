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
with AMF.Internals.Utp_Elements;
with AMF.UML.Namespaces;
with AMF.UML.Properties;
with AMF.UML.Value_Specifications;
with AMF.Utp.Coding_Rules;
with AMF.Visitors;

package AMF.Internals.Utp_Coding_Rules is

   type Utp_Coding_Rule_Proxy is
     limited new AMF.Internals.Utp_Elements.Utp_Element_Proxy
       and AMF.Utp.Coding_Rules.Utp_Coding_Rule with null record;

   overriding function Get_Base_Value_Specification
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of CodingRule::base_ValueSpecification.
   --

   overriding procedure Set_Base_Value_Specification
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of CodingRule::base_ValueSpecification.
   --

   overriding function Get_Base_Namespace
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of CodingRule::base_Namespace.
   --

   overriding procedure Set_Base_Namespace
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : AMF.UML.Namespaces.UML_Namespace_Access);
   --  Setter of CodingRule::base_Namespace.
   --

   overriding function Get_Base_Property
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return AMF.UML.Properties.UML_Property_Access;
   --  Getter of CodingRule::base_Property.
   --

   overriding procedure Set_Base_Property
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access);
   --  Setter of CodingRule::base_Property.
   --

   overriding function Get_Coding
    (Self : not null access constant Utp_Coding_Rule_Proxy)
       return League.Strings.Universal_String;
   --  Getter of CodingRule::coding.
   --

   overriding procedure Set_Coding
    (Self : not null access Utp_Coding_Rule_Proxy;
     To   : League.Strings.Universal_String);
   --  Setter of CodingRule::coding.
   --

   overriding procedure Enter_Element
    (Self    : not null access constant Utp_Coding_Rule_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant Utp_Coding_Rule_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant Utp_Coding_Rule_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.Utp_Coding_Rules;
