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
--  A multiplicity is a definition of an inclusive interval of non-negative 
--  integers beginning with a lower bound and ending with a (possibly 
--  infinite) upper bound. A multiplicity element embeds this information to 
--  specify the allowable cardinalities for an instantiation of this element.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Multiplicity_Elements is

   pragma Preelaborate;

   type UML_Multiplicity_Element is limited interface
     and AMF.UML.Elements.UML_Element;

   type UML_Multiplicity_Element_Access is
     access all UML_Multiplicity_Element'Class;
   for UML_Multiplicity_Element_Access'Storage_Size use 0;

   not overriding function Get_Is_Ordered
    (Self : not null access constant UML_Multiplicity_Element)
       return Boolean is abstract;
   --  Getter of MultiplicityElement::isOrdered.
   --
   --  For a multivalued multiplicity, this attribute specifies whether the 
   --  values in an instantiation of this element are sequentially ordered.

   not overriding procedure Set_Is_Ordered
    (Self : not null access UML_Multiplicity_Element;
     To   : Boolean) is abstract;
   --  Setter of MultiplicityElement::isOrdered.
   --
   --  For a multivalued multiplicity, this attribute specifies whether the 
   --  values in an instantiation of this element are sequentially ordered.

   not overriding function Get_Is_Unique
    (Self : not null access constant UML_Multiplicity_Element)
       return Boolean is abstract;
   --  Getter of MultiplicityElement::isUnique.
   --
   --  For a multivalued multiplicity, this attributes specifies whether the 
   --  values in an instantiation of this element are unique.

   not overriding procedure Set_Is_Unique
    (Self : not null access UML_Multiplicity_Element;
     To   : Boolean) is abstract;
   --  Setter of MultiplicityElement::isUnique.
   --
   --  For a multivalued multiplicity, this attributes specifies whether the 
   --  values in an instantiation of this element are unique.

   not overriding function Get_Lower
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.Optional_Integer is abstract;
   --  Getter of MultiplicityElement::lower.
   --
   --  Specifies the lower bound of the multiplicity interval.

   not overriding procedure Set_Lower
    (Self : not null access UML_Multiplicity_Element;
     To   : AMF.Optional_Integer) is abstract;
   --  Setter of MultiplicityElement::lower.
   --
   --  Specifies the lower bound of the multiplicity interval.

   not overriding function Get_Lower_Value
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of MultiplicityElement::lowerValue.
   --
   --  The specification of the lower bound for this multiplicity.

   not overriding procedure Set_Lower_Value
    (Self : not null access UML_Multiplicity_Element;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of MultiplicityElement::lowerValue.
   --
   --  The specification of the lower bound for this multiplicity.

   not overriding function Get_Upper
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.Optional_Unlimited_Natural is abstract;
   --  Getter of MultiplicityElement::upper.
   --
   --  Specifies the upper bound of the multiplicity interval.

   not overriding procedure Set_Upper
    (Self : not null access UML_Multiplicity_Element;
     To   : AMF.Optional_Unlimited_Natural) is abstract;
   --  Setter of MultiplicityElement::upper.
   --
   --  Specifies the upper bound of the multiplicity interval.

   not overriding function Get_Upper_Value
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is abstract;
   --  Getter of MultiplicityElement::upperValue.
   --
   --  The specification of the upper bound for this multiplicity.

   not overriding procedure Set_Upper_Value
    (Self : not null access UML_Multiplicity_Element;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is abstract;
   --  Setter of MultiplicityElement::upperValue.
   --
   --  The specification of the upper bound for this multiplicity.

   not overriding function Compatible_With
    (Self : not null access constant UML_Multiplicity_Element;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is abstract;
   --  Operation MultiplicityElement::compatibleWith.
   --
   --  The operation compatibleWith takes another multiplicity as input. It 
   --  checks if one multiplicity is compatible with another.

   not overriding function Includes_Cardinality
    (Self : not null access constant UML_Multiplicity_Element;
     C : Integer)
       return Boolean is abstract;
   --  Operation MultiplicityElement::includesCardinality.
   --
   --  The query includesCardinality() checks whether the specified 
   --  cardinality is valid for this multiplicity.

   not overriding function Includes_Multiplicity
    (Self : not null access constant UML_Multiplicity_Element;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is abstract;
   --  Operation MultiplicityElement::includesMultiplicity.
   --
   --  The query includesMultiplicity() checks whether this multiplicity 
   --  includes all the cardinalities allowed by the specified multiplicity.

   not overriding function Iss
    (Self : not null access constant UML_Multiplicity_Element;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean is abstract;
   --  Operation MultiplicityElement::is.
   --
   --  The operation is determines if the upper and lower bound of the ranges 
   --  are the ones given.

   not overriding function Is_Multivalued
    (Self : not null access constant UML_Multiplicity_Element)
       return Boolean is abstract;
   --  Operation MultiplicityElement::isMultivalued.
   --
   --  The query isMultivalued() checks whether this multiplicity has an upper 
   --  bound greater than one.

   not overriding function Lower
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.Optional_Integer is abstract;
   --  Operation MultiplicityElement::lower.
   --
   --  The derived lower attribute must equal the lowerBound.

   not overriding function Lower_Bound
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.Optional_Integer is abstract;
   --  Operation MultiplicityElement::lowerBound.
   --
   --  The query lowerBound() returns the lower bound of the multiplicity as 
   --  an integer.

   not overriding function Upper
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.Optional_Unlimited_Natural is abstract;
   --  Operation MultiplicityElement::upper.
   --
   --  The derived upper attribute must equal the upperBound.

   not overriding function Upper_Bound
    (Self : not null access constant UML_Multiplicity_Element)
       return AMF.Optional_Unlimited_Natural is abstract;
   --  Operation MultiplicityElement::upperBound.
   --
   --  The query upperBound() returns the upper bound of the multiplicity for 
   --  a bounded multiplicity as an unlimited natural.

end AMF.UML.Multiplicity_Elements;
