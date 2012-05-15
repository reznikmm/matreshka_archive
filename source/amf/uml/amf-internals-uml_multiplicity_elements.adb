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
with AMF.Elements;
with AMF.Factories.UML_Factories;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Stores;
with AMF.UML.Literal_Integers;
with AMF.UML.Literal_Unlimited_Naturals;

package body AMF.Internals.UML_Multiplicity_Elements is

   use type AMF.UML.Value_Specifications.UML_Value_Specification_Access;

   UML_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/UML/20100901");

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Ordered
         (Self.Element);
   end Get_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Unique
         (Self.Element);
   end Get_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return AMF.Optional_Integer is
   begin
      --  [UML2.4.1] 7.3.33 MultiplicityElement (from Kernel)
      --
      --  [5] The derived lower attribute must equal the lowerBound.
      --
      --  lower = lowerBound()

      return UML_Multiplicity_Element_Proxy'Class (Self.all).Lower_Bound;
   end Get_Lower;

   ---------------------
   -- Get_Lower_Value --
   ---------------------

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Lower_Value
             (Self.Element)));
   end Get_Lower_Value;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      --  [UML2.4.1] 7.3.33 MultiplicityElement (from Kernel)
      --
      --  [6] The derived upper attribute must equal the upperBound.
      --
      --  upper = upperBound()

      return UML_Multiplicity_Element_Proxy'Class (Self.all).Upper_Bound;
   end Get_Upper;

   ---------------------
   -- Get_Upper_Value --
   ---------------------

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper_Value
             (Self.Element)));
   end Get_Upper_Value;

   --------------------
   -- Is_Multivalued --
   --------------------

   overriding function Is_Multivalued
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return Boolean
   is
      --  7.3.33 MultiplicityElement (from Kernel)
      --
      --  [1] The query isMultivalued() checks whether this multiplicity has an
      --  upper bound greater than one.
      --
      --  MultiplicityElement::isMultivalued() : Boolean;
      --  pre: upperBound()->notEmpty()
      --  isMultivalued = (upperBound() > 1)

      Upper_Bound : constant Optional_Unlimited_Natural
        := UML_Multiplicity_Element_Proxy'Class (Self.all).Upper_Bound;

   begin
      if Upper_Bound.Is_Empty then
         raise Constraint_Error;
      end if;

      return Upper_Bound.Value > 1;
   end Is_Multivalued;

   -----------------
   -- Lower_Bound --
   -----------------

   overriding function Lower_Bound
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return AMF.Optional_Integer
   is
      --  7.3.33 MultiplicityElement (from Kernel)
      --
      --  [4] The query lowerBound() returns the lower bound of the
      --  multiplicity as an integer.
      --
      --  MultiplicityElement::lowerBound() : [Integer];
      --  lowerBound =
      --    if lowerValue->isEmpty() then 1
      --    else lowerValue.integerValue() endif

      Lower_Value : constant
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         := UML_Multiplicity_Element_Proxy'Class (Self.all).Get_Lower_Value;

   begin
      if Lower_Value = null then
         return (False, 1);

      else
         return Lower_Value.Integer_Value;
      end if;
   end Lower_Bound;

   --------------------
   -- Set_Is_Ordered --
   --------------------

   overriding procedure Set_Is_Ordered
    (Self : not null access UML_Multiplicity_Element_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Ordered
       (Self.Element, To);
   end Set_Is_Ordered;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
    (Self : not null access UML_Multiplicity_Element_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Unique (Self.Element, To);
   end Set_Is_Unique;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
    (Self : not null access UML_Multiplicity_Element_Proxy;
     To   : AMF.Optional_Integer)
   is
      Lower   : AMF.UML.Value_Specifications.UML_Value_Specification_Access
        := UML_Multiplicity_Element_Proxy'Class (Self.all).Get_Lower_Value;
      Factory : AMF.Factories.UML_Factories.UML_Factory_Access;

   begin
      if To.Is_Empty then
         if Lower /= null then
            --  XXX Remove of the element is not implemented.

            raise Program_Error;
         end if;

      else
         if Lower = null then
            Factory :=
             AMF.Factories.UML_Factories.UML_Factory_Access
              (AMF.Stores.Store'Class (Self.Extent.all).Get_Factory (UML_URI));
            Lower :=
              AMF.UML.Value_Specifications.UML_Value_Specification_Access
               (Factory.Create_Literal_Integer);
            UML_Multiplicity_Element_Proxy'Class
             (Self.all).Set_Lower_Value (Lower);
         end if;

         AMF.UML.Literal_Integers.UML_Literal_Integer'Class
          (Lower.all).Set_Value (To.Value);
      end if;
   end Set_Lower;

   ---------------------
   -- Set_Lower_Value --
   ---------------------

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Multiplicity_Element_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Lower_Value
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Lower_Value;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
    (Self : not null access UML_Multiplicity_Element_Proxy;
     To   : AMF.Optional_Unlimited_Natural)
   is
      Upper   : AMF.UML.Value_Specifications.UML_Value_Specification_Access
        := UML_Multiplicity_Element_Proxy'Class (Self.all).Get_Upper_Value;
      Factory : AMF.Factories.UML_Factories.UML_Factory_Access;

   begin
      if To.Is_Empty then
         if Upper /= null then
            --  XXX Remove of the element is not implemented.

            raise Program_Error;
         end if;

      else
         if Upper = null then
            Factory :=
             AMF.Factories.UML_Factories.UML_Factory_Access
              (AMF.Stores.Store'Class (Self.Extent.all).Get_Factory (UML_URI));
            Upper :=
              AMF.UML.Value_Specifications.UML_Value_Specification_Access
               (Factory.Create_Literal_Unlimited_Natural);
            UML_Multiplicity_Element_Proxy'Class
             (Self.all).Set_Upper_Value (Upper);
         end if;

         AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural'Class
          (Upper.all).Set_Value (To.Value);
      end if;
   end Set_Upper;

   ---------------------
   -- Set_Upper_Value --
   ---------------------

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Multiplicity_Element_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Upper_Value
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Upper_Value;

   -----------------
   -- Upper_Bound --
   -----------------

   overriding function Upper_Bound
    (Self : not null access constant UML_Multiplicity_Element_Proxy)
       return AMF.Optional_Unlimited_Natural
   is
      --  7.3.33 MultiplicityElement (from Kernel)
      --
      --  [5] The query upperBound() returns the upper bound of the
      --  multiplicity for a bounded multiplicity as an unlimited natural.
      --
      --  MultiplicityElement::upperBound() : [UnlimitedNatural];
      --  upperBound =
      --    if upperValue->isEmpty() then 1
      --    else upperValue.unlimitedValue() endif

      Upper_Value : constant
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
          := UML_Multiplicity_Element_Proxy'Class (Self.all).Get_Upper_Value;

   begin
      if Upper_Value = null then
         return (False, (False, 1));

      else
         return Upper_Value.Unlimited_Value;
      end if;
   end Upper_Bound;

end AMF.Internals.UML_Multiplicity_Elements;
