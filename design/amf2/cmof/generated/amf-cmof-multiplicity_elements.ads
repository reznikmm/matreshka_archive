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
--  A multiplicity is a definition of an inclusive interval of non-negative 
--  integers beginning with a lower bound and ending with a (possibly 
--  infinite) upper bound. A multiplicity element embeds this information to 
--  specify the allowable cardinalities for an instantiation of this element.
------------------------------------------------------------------------------
with AMF.CMOF.Elements;

package AMF.CMOF.Multiplicity_Elements is

   pragma Preelaborate;

   type CMOF_Multiplicity_Element is limited interface
     and AMF.CMOF.Elements.CMOF_Element;

   type CMOF_Multiplicity_Element_Access is
     access all CMOF_Multiplicity_Element'Class;
   for CMOF_Multiplicity_Element_Access'Storage_Size use 0;

   not overriding function Get_Is_Ordered
    (Self : not null access constant CMOF_Multiplicity_Element)
       return Boolean is abstract;
   --  For a multivalued multiplicity, this attribute specifies whether the 
   --  values in an instantiation of this element are sequentially ordered.

   not overriding procedure Set_Is_Ordered
    (Self : not null access CMOF_Multiplicity_Element;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Unique
    (Self : not null access constant CMOF_Multiplicity_Element)
       return Boolean is abstract;
   --  For a multivalued multiplicity, this attributes specifies whether the 
   --  values in an instantiation of this element are unique.

   not overriding procedure Set_Is_Unique
    (Self : not null access CMOF_Multiplicity_Element;
     To   : Boolean) is abstract;

   not overriding function Get_Lower
    (Self : not null access constant CMOF_Multiplicity_Element)
       return AMF.Optional_Integer is abstract;
   --  Specifies the lower bound of the multiplicity interval.

   not overriding procedure Set_Lower
    (Self : not null access CMOF_Multiplicity_Element;
     To   : AMF.Optional_Integer) is abstract;

   not overriding function Get_Upper
    (Self : not null access constant CMOF_Multiplicity_Element)
       return AMF.Optional_Unlimited_Natural is abstract;
   --  Specifies the upper bound of the multiplicity interval.

   not overriding procedure Set_Upper
    (Self : not null access CMOF_Multiplicity_Element;
     To   : AMF.Optional_Unlimited_Natural) is abstract;

   not overriding function Is_Multivalued
    (Self : not null access constant CMOF_Multiplicity_Element)
       return Boolean is abstract;
   --  The query isMultivalued() checks whether this multiplicity has an upper 
   --  bound greater than one.

   not overriding function Includes_Multiplicity
    (Self : not null access constant CMOF_Multiplicity_Element;
     M : AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element_Access)
       return Boolean is abstract;
   --  The query includesMultiplicity() checks whether this multiplicity 
   --  includes all the cardinalities allowed by the specified multiplicity.

   not overriding function Includes_Cardinality
    (Self : not null access constant CMOF_Multiplicity_Element;
     C : Integer)
       return Boolean is abstract;
   --  The query includesCardinality() checks whether the specified 
   --  cardinality is valid for this multiplicity.

   not overriding function Lower_Bound
    (Self : not null access constant CMOF_Multiplicity_Element)
       return Integer is abstract;
   --  The query lowerBound() returns the lower bound of the multiplicity as 
   --  an integer.

   not overriding function Upper_Bound
    (Self : not null access constant CMOF_Multiplicity_Element)
       return AMF.Unlimited_Natural is abstract;
   --  The query upperBound() returns the upper bound of the multiplicity for 
   --  a bounded multiplicity as an unlimited natural.

end AMF.CMOF.Multiplicity_Elements;
