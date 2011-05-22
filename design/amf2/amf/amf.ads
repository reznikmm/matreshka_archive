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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Root package of Ada Modeling Framework.
--
--  This package contains declarations of primitive types corresponding to
--  types defined in PrimitiveTypes package and types to represent their
--  optional values (values with multiplicity 0..1).
--
--  Some primitive types are mapped implicitly:
--
--   - PrimitiveTypes::Boolean is mapped to Standard.Boolean;
--
--   - PrimitiveTypes::Integer is mapped to Standard.Integer;
--
--   - PrimitiveTypes::String is mapped to League.Strings.Universal_String.
--
------------------------------------------------------------------------------
with Interfaces;
with League.Strings;

package AMF is

   pragma Preelaborate;

   ---------------------
   -- Primitive types --
   ---------------------

   type Real is new Long_Float;

   type Unlimited_Natural (Unlimited : Boolean := False) is record
      case Unlimited is
         when False =>
            Value : Natural;

         when True =>
            null;
      end case;
   end record;

   Unlimited : constant Unlimited_Natural;

   function "<"
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean;
   function "<="
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean;
   function ">"
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean;
   function ">="
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean;

   function "="  (Left : Unlimited_Natural; Right : Integer) return Boolean;
   function "<"  (Left : Unlimited_Natural; Right : Integer) return Boolean;
   function "<=" (Left : Unlimited_Natural; Right : Integer) return Boolean;
   function ">"  (Left : Unlimited_Natural; Right : Integer) return Boolean;
   function ">=" (Left : Unlimited_Natural; Right : Integer) return Boolean;

   function "="  (Left : Integer; Right : Unlimited_Natural) return Boolean;
   function "<"  (Left : Integer; Right : Unlimited_Natural) return Boolean;
   function "<=" (Left : Integer; Right : Unlimited_Natural) return Boolean;
   function ">"  (Left : Integer; Right : Unlimited_Natural) return Boolean;
   function ">=" (Left : Integer; Right : Unlimited_Natural) return Boolean;

   ----------------------------------------
   -- Optional values of primitive types --
   ----------------------------------------

   type Optional_String (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : League.Strings.Universal_String;
      end case;
   end record;

   type Optional_Boolean (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : Boolean;
      end case;
   end record;

   type Optional_Integer (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : Integer;
      end case;
   end record;

   type Optional_Unlimited_Natural (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Value : Unlimited_Natural;
      end case;
   end record;

private

   Unlimited : constant Unlimited_Natural := (Unlimited => True);

end AMF;
