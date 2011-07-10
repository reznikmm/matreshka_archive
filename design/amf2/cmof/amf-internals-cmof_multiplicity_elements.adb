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
with AMF.Internals.Attributes.CMOF_Attributes;

package body AMF.Internals.CMOF_Multiplicity_Elements is

   use AMF.Internals.Attributes.CMOF_Attributes;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Boolean is
   begin
      --  isOrdered : Boolean
      --
      --  For a multivalued multiplicity, this attribute specifies whether the
      --  values in an instantiation of this element are sequentially ordered.
      --  Default is false.

      return Internal_Get_Is_Ordered (Self.Id);
   end Get_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Boolean is
   begin
      --  isUnique : Boolean
      --
      --  For a multivalued multiplicity, this attributes specifies whether the
      --  values in an instantiation of this element are unique. Default is
      --  true.

      return Internal_Get_Is_Unique (Self.Id);
   end Get_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Optional_Integer is
   begin
      --  lower : Integer [0..1]
      --
      --  Specifies the lower bound of the multiplicity interval, if it is
      --  expressed as an integer.

      return Internal_Get_Lower (Self.Id);
   end Get_Lower;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Optional_Unlimited_Natural is
   begin
      --  upper : UnlimitedNatural [0..1]
      --
      --  Specifies the upper bound of the multiplicity interval, if it is
      --  expressed as an unlimited natural.

      return Internal_Get_Upper (Self.Id);
   end Get_Upper;

   --------------------
   -- Is_Multivalued --
   --------------------

   overriding function Is_Multivalued
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Boolean is
   begin
      --  The query isMultivalued() checks whether this multiplicity has an
      --  upper bound greater than one.

      --  MultiplicityElement::isMultivalued() : Boolean;
      --  pre: upperBound()->notEmpty()
      --  isMultivalued = (upperBound() > 1)

      return CMOF_Multiplicity_Element_Proxy'Class (Self.all).Upper_Bound > 1;
   end Is_Multivalued;

   -----------------
   -- Lower_Bound --
   -----------------

   overriding function Lower_Bound
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Integer
   is
      Lower : constant Optional_Integer
        := CMOF_Multiplicity_Element_Proxy'Class (Self.all).Get_Lower;

   begin
      --  The query lowerBound() returns the lower bound of the multiplicity as
      --  an integer.
      --
      --  MultiplicityElement::lowerBound() : [Integer];
      --  lowerBound =
      --    if lowerValue->isEmpty() then 1
      --      else lowerValue.integerValue() endif

      if Lower.Is_Empty then
         return 1;

      else
         return Lower.Value;
      end if;
   end Lower_Bound;

   -----------------
   -- Upper_Bound --
   -----------------

   overriding function Upper_Bound
    (Self : not null access constant CMOF_Multiplicity_Element_Proxy)
       return Unlimited_Natural
   is
      Upper : constant Optional_Unlimited_Natural
        := CMOF_Multiplicity_Element_Proxy'Class (Self.all).Get_Upper;

   begin
      --  The query upperBound() returns the upper bound of the multiplicity
      --  for a bounded multiplicity as an unlimited natural.
      --
      --  MultiplicityElement::upperBound() : [UnlimitedNatural];
      --  upperBound =
      --    if upperValue->isEmpty() then 1
      --      else upperValue.unlimitedValue() endif

      if Upper.Is_Empty then
         return (False, 1);

      else
         return Upper.Value;
      end if;
   end Upper_Bound;

end AMF.Internals.CMOF_Multiplicity_Elements;
