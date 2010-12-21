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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
------------------------------------------------------------------------------
with Interfaces;
with League.Strings;

package AMF is

   pragma Preelaborate;

   ---------------------
   -- Primitive types --
   ---------------------

   type AMF_Boolean is new Boolean;

   type AMF_Integer is new Interfaces.Integer_32;
   subtype AMF_Natural is AMF_Integer range 0 .. AMF_Integer'Last;

   type AMF_Unlimited_Natural (Unlimited : Boolean := False) is record
      case Unlimited is
         when False =>
            Value : AMF_Natural;

         when True =>
            null;
      end case;
   end record;

   function "<"
    (Left  : AMF_Unlimited_Natural;
     Right : AMF_Unlimited_Natural) return Boolean;
   function "<="
    (Left  : AMF_Unlimited_Natural;
     Right : AMF_Unlimited_Natural) return Boolean;
   function ">"
    (Left  : AMF_Unlimited_Natural;
     Right : AMF_Unlimited_Natural) return Boolean;
   function ">="
    (Left  : AMF_Unlimited_Natural;
     Right : AMF_Unlimited_Natural) return Boolean;

   function "<"
    (Left : AMF_Unlimited_Natural; Right : AMF_Integer) return Boolean;
   function "<="
    (Left : AMF_Unlimited_Natural; Right : AMF_Integer) return Boolean;
   function ">"
    (Left : AMF_Unlimited_Natural; Right : AMF_Integer) return Boolean;
   function ">="
    (Left : AMF_Unlimited_Natural; Right : AMF_Integer) return Boolean;

   function "<"
    (Left : AMF_Integer; Right : AMF_Unlimited_Natural) return Boolean;
   function "<="
    (Left : AMF_Integer; Right : AMF_Unlimited_Natural) return Boolean;
   function ">"
    (Left : AMF_Integer; Right : AMF_Unlimited_Natural) return Boolean;
   function ">="
    (Left : AMF_Integer; Right : AMF_Unlimited_Natural) return Boolean;

   subtype AMF_String is League.Strings.Universal_String;

   ----------------------------------------
   -- Optional values of primitive types --
   ----------------------------------------

   type Optional_String (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when False =>
            null;

         when True =>
            Value : League.Strings.Universal_String;
      end case;
   end record;

   type Optional_Boolean (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when False =>
            null;

         when True =>
            Value : Boolean;
      end case;
   end record;

   type Optional_Integer (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when False =>
            null;

         when True =>
            Value : Integer;
      end case;
   end record;

   type Optional_Unlimited_Natural (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when False =>
            null;

         when True =>
            Value : AMF_Unlimited_Natural;
      end case;
   end record;

end AMF;
