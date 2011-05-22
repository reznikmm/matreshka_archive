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
--  ValueSpecification specializes ParameterableElement to specify that a 
--  value specification can be exposed as a formal template parameter, and 
--  provided as an actual parameter in a binding of a template.
--  A value specification is the specification of a (possibly empty) set of 
--  instances, including both objects and data values.
------------------------------------------------------------------------------
with AMF.UML.Packageable_Elements;
limited with AMF.UML.Parameterable_Elements;
with AMF.UML.Typed_Elements;

package AMF.UML.Value_Specifications is

   pragma Preelaborate;

   type UML_Value_Specification is limited interface
     and AMF.UML.Typed_Elements.UML_Typed_Element
     and AMF.UML.Packageable_Elements.UML_Packageable_Element;

   type UML_Value_Specification_Access is
     access all UML_Value_Specification'Class;
   for UML_Value_Specification_Access'Storage_Size use 0;

   not overriding function Boolean_Value
    (Self : not null access constant UML_Value_Specification)
       return Optional_Boolean is abstract;
   --  The query booleanValue() gives a single Boolean value when one can be 
   --  computed.

   not overriding function Integer_Value
    (Self : not null access constant UML_Value_Specification)
       return Optional_Integer is abstract;
   --  The query integerValue() gives a single Integer value when one can be 
   --  computed.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Value_Specification;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is abstract;
   --  The query isCompatibleWith() determines if this parameterable element 
   --  is compatible with the specified parameterable element. By default 
   --  parameterable element P is compatible with parameterable element Q if 
   --  the kind of P is the same or a subtype as the kind of Q. In addition, 
   --  for ValueSpecification, the type must be conformant with the type of 
   --  the specified parameterable element.

   not overriding function Is_Computable
    (Self : not null access constant UML_Value_Specification)
       return Boolean is abstract;
   --  The query isComputable() determines whether a value specification can 
   --  be computed in a model. This operation cannot be fully defined in OCL. 
   --  A conforming implementation is expected to deliver true for this 
   --  operation for all value specifications that it can compute, and to 
   --  compute all of those for which the operation is true. A conforming 
   --  implementation is expected to be able to compute the value of all 
   --  literals.

   not overriding function Is_Null
    (Self : not null access constant UML_Value_Specification)
       return Boolean is abstract;
   --  The query isNull() returns true when it can be computed that the value 
   --  is null.

   not overriding function Real_Value
    (Self : not null access constant UML_Value_Specification)
       return Optional_Real is abstract;
   --  The query realValue() gives a single Real value when one can be 
   --  computed.

   not overriding function String_Value
    (Self : not null access constant UML_Value_Specification)
       return Optional_String is abstract;
   --  The query stringValue() gives a single String value when one can be 
   --  computed.

   not overriding function Unlimited_Value
    (Self : not null access constant UML_Value_Specification)
       return Optional_Unlimited_Natural is abstract;
   --  The query unlimitedValue() gives a single UnlimitedNatural value when 
   --  one can be computed.

end AMF.UML.Value_Specifications;
