------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
private with Ada.Finalization;

with League.Holders;
with League.JSON.Arrays;
with League.JSON.Objects;
with League.Strings;
private with Matreshka.JSON_Types;

package League.JSON.Values is

   pragma Preelaborate;

   type JSON_Value_Kinds is
    (Empty_Value,
     Boolean_Value,
     Number_Value,
     String_Value,
     Array_Value,
     Object_Value,
     Null_Value);

   type JSON_Value is tagged private;
   pragma Preelaborable_Initialization (JSON_Value);

   Empty_JSON_Value : constant JSON_Value;

   Null_JSON_Value : constant JSON_Value;

   function To_JSON_Value (Value : Boolean) return JSON_Value;
   function To_JSON_Value
    (Value : League.Holders.Universal_Float) return JSON_Value;
   function To_JSON_Value
    (Value : League.Holders.Universal_Integer) return JSON_Value;
   function To_JSON_Value
    (Value : League.Strings.Universal_String) return JSON_Value;
   function To_JSON_Value (Value : League.Holders.Holder) return JSON_Value;

   function Is_Array (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains an array.

   function Is_Boolean (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains a boolean.

   function Is_Empty (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value is empty. This can happen in certain error
   --  cases as e.g. accessing a non existing key in a JSON_Object.

   function Is_Float_Number (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains a float number.

   function Is_Integer_Number (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains an integer number.

   function Is_Null (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value is null.

   function Is_Number (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains a number.

   function Is_Object (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains an object.

   function Is_String (Self : JSON_Value'Class) return Boolean;
   --  Returns true if the value contains a string.

   function Kind (Self : JSON_Value'Class) return JSON_Value_Kinds;
   --  Returns type of the value.

   function To_Array
    (Self    : JSON_Value'Class;
     Default : League.JSON.Arrays.JSON_Array
       := League.JSON.Arrays.Empty_JSON_Array)
       return League.JSON.Arrays.JSON_Array;
   --  Converts the value to an array and returns it.
   --
   --  If type of value is not Type_Array, the Default will be returned.

   function To_Boolean
    (Self : JSON_Value'Class; Default : Boolean := False) return Boolean;
   --  Converts the value to a bool and returns it.
   --
   --  If type of value is not Type_Boolean, the Default will be returned.

   function To_Float
    (Self    : JSON_Value'Class;
     Default : League.Holders.Universal_Float := 0.0)
       return League.Holders.Universal_Float;
   --  Converts the value to a float and returns it.
   --
   --  If type of value is not Type_Number, the Default will be returned.

   function To_Holder (Self : JSON_Value'Class) return League.Holders.Holder;
   --  Converts the value to a holder.
   --
   --  XXX: Can be implemented for 'simple' types only.

   function To_Integer
    (Self    : JSON_Value'Class;
     Default : League.Holders.Universal_Integer := 0)
       return League.Holders.Universal_Integer;
   --  Converts the value to an integer and returns it.
   --
   --  If type of value is not Type_Number, the Default will be returned.

   function To_Object
    (Self    : JSON_Value'Class;
     Default : League.JSON.Objects.JSON_Object
       := League.JSON.Objects.Empty_JSON_Object)
       return League.JSON.Objects.JSON_Object;
   --  Converts the value to an object and returns it.
   --
   --  If type of value is not Type_Object, the Default will be returned.

   function To_String
    (Self    : JSON_Value'Class;
     Default : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
       return League.Strings.Universal_String;
   --  Converts the value to a string and returns it.
   --
   --  If type of value is not Type_String, the Default will be returned.

private

   type JSON_Value is new Ada.Finalization.Controlled with record
      Data : Matreshka.JSON_Types.Shared_JSON_Value_Access
        := Matreshka.JSON_Types.Empty_Shared_JSON_Value'Access;
   end record;

   overriding procedure Adjust (Self : in out JSON_Value);

   overriding procedure Finalize (Self : in out JSON_Value);

   Empty_JSON_Value : constant JSON_Value
     := (Ada.Finalization.Controlled with
           Data => Matreshka.JSON_Types.Empty_Shared_JSON_Value'Access);

   Null_JSON_Value  : constant JSON_Value
     := (Ada.Finalization.Controlled with
           Data => Matreshka.JSON_Types.Null_Shared_JSON_Value'Access);

end League.JSON.Values;
