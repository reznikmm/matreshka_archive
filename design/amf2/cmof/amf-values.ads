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
--  This package provides data type to pass "any" value through reflection
--  capability. It supports only CMOF related types for now, but will be
--  extended to support other types or replaced by League.Values package at
--  some point.
------------------------------------------------------------------------------
with CMOF;

package AMF.Values is

   type Value_Kinds is
    (Value_None,
     Value_String,
     Value_Boolean,
     Value_Integer,
     Value_Unlimited_Natural,
     Value_Optional_String,
     Value_Optional_Boolean,
     Value_Optional_Integer,
     Value_Optional_Unlimited_Natural,
     Value_Element,
     Value_Collection_Of_Element);

   type Value (Kind : Value_Kinds := Value_None) is record
      case Kind is
         when Value_None =>
            null;

         when Value_String =>
            String_Value : League.Strings.Universal_String;

         when Value_Boolean =>
            Boolean_Value : Boolean;

         when Value_Integer =>
            Integer_Value : Integer;

         when Value_Unlimited_Natural =>
            Unlimited_Natural_Value : Unlimited_Natural;

         when Value_Optional_String =>
            Optional_String_Value : Optional_String;

         when Value_Optional_Boolean =>
            Optional_Boolean_Value : Optional_Boolean;

         when Value_Optional_Integer =>
            Optional_Integer_Value : Optional_Integer;

         when Value_Optional_Unlimited_Natural =>
            Optional_Unlimited_Natural_Value : Optional_Unlimited_Natural;

         when Value_Element =>
            Element_Value : CMOF.CMOF_Element;

         when Value_Collection_Of_Element =>
            Collection_Value : CMOF.Collection_Of_CMOF_Element;
      end case;
   end record;

end AMF.Values;
