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
with AMF.Internals.UML_Named_Elements;
with AMF.UML.Value_Specifications;

package AMF.Internals.UML_Value_Specifications is

   type UML_Value_Specification_Proxy is
     abstract limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Value_Specifications.UML_Value_Specification with null record;

   overriding function Boolean_Value
    (Self : not null access constant UML_Value_Specification_Proxy)
       return AMF.Optional_Boolean;
   --  Operation ValueSpecification::booleanValue.
   --
   --  The query booleanValue() gives a single Boolean value when one can be 
   --  computed.

   overriding function Integer_Value
    (Self : not null access constant UML_Value_Specification_Proxy)
       return AMF.Optional_Integer;
   --  Operation ValueSpecification::integerValue.
   --
   --  The query integerValue() gives a single Integer value when one can be 
   --  computed.

   overriding function Is_Computable
    (Self : not null access constant UML_Value_Specification_Proxy)
       return Boolean;
   --  Operation ValueSpecification::isComputable.
   --
   --  The query isComputable() determines whether a value specification can 
   --  be computed in a model. This operation cannot be fully defined in OCL. 
   --  A conforming implementation is expected to deliver true for this 
   --  operation for all value specifications that it can compute, and to 
   --  compute all of those for which the operation is true. A conforming 
   --  implementation is expected to be able to compute the value of all 
   --  literals.

   overriding function Is_Null
    (Self : not null access constant UML_Value_Specification_Proxy)
       return Boolean;
   --  Operation ValueSpecification::isNull.
   --
   --  The query isNull() returns true when it can be computed that the value 
   --  is null.

   overriding function Real_Value
    (Self : not null access constant UML_Value_Specification_Proxy)
       return AMF.Optional_Real;
   --  Operation ValueSpecification::realValue.
   --
   --  The query realValue() gives a single Real value when one can be 
   --  computed.

   overriding function String_Value
    (Self : not null access constant UML_Value_Specification_Proxy)
       return AMF.Optional_String;
   --  Operation ValueSpecification::stringValue.
   --
   --  The query stringValue() gives a single String value when one can be 
   --  computed.

   overriding function Unlimited_Value
    (Self : not null access constant UML_Value_Specification_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Operation ValueSpecification::unlimitedValue.
   --
   --  The query unlimitedValue() gives a single UnlimitedNatural value when 
   --  one can be computed.

end AMF.Internals.UML_Value_Specifications;
