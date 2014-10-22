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
-- Copyright © 2013-2014, Vadim Godunko <vgodunko@gmail.com>                --
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

limited with League.JSON.Documents;
limited with League.JSON.Values;
private with Matreshka.JSON_Types;

package League.JSON.Arrays is

   pragma Preelaborate;

   type JSON_Array is tagged private
     with Iterator_Element  => League.JSON.Values.JSON_Value,
          Constant_Indexing => Element;
   pragma Preelaborable_Initialization (JSON_Array);

   Empty_JSON_Array : constant JSON_Array;

   procedure Append
    (Self : in out JSON_Array'Class; Value : League.JSON.Values.JSON_Value);
   --  Inserts value at the end of the array.

   procedure Delete (Self : in out JSON_Array'Class; Index : Positive);
   --  Removes the value at index position Index. Index must be a valid index
   --  position in the array.

   procedure Delete_First (Self : in out JSON_Array'Class);
   --  Removes the first item in the array.

   procedure Delete_Last (Self : in out JSON_Array'Class);
   --  Removes the last item in the array.

   function Element
    (Self  : JSON_Array'Class;
     Index : Positive) return League.JSON.Values.JSON_Value;
    --  Returns a JSON_Value representing the value for index Index.

   function First_Element
    (Self : JSON_Array'Class) return League.JSON.Values.JSON_Value;
   --  Returns the first value stored in the array.

   procedure Insert
    (Self  : in out JSON_Array'Class;
     Index : Positive;
     Value : League.JSON.Values.JSON_Value);
   --  Inserts value at index position Index in the array. If Index is 1, the
   --  value is prepended to the array. If Index is large when Length, the
   --  value is appended to the array.

   function Is_Empty (Self : JSON_Array'Class) return Boolean;
   --  Returns true if the object is empty.

   function Last_Element
    (Self : JSON_Array'Class) return League.JSON.Values.JSON_Value;
   --  Returns the last value stored in the array.

   function Length (Self : JSON_Array'Class) return Natural;
   --  Returns the number of values stored in the array.

   procedure Prepend
    (Self : in out JSON_Array'Class; Value : League.JSON.Values.JSON_Value);
   --  Inserts value at the beginning of the array.

   procedure Replace
    (Self  : in out JSON_Array'Class;
     Index : Positive;
     Value : League.JSON.Values.JSON_Value);
   --  Replaces the item at index position Index with Value. Index must be a
   --  valid index position in the array.

   function Take
    (Self  : in out JSON_Array'Class;
     Index : Positive) return League.JSON.Values.JSON_Value;
   --  Removes the item at index position Index and returns it. Index must be a
   --  valid index position in the array.

   function To_JSON_Value
    (Self : JSON_Array'Class) return League.JSON.Values.JSON_Value;
   --  Converts JSON_Array into JSON_Value.

   function To_JSON_Document
    (Self : JSON_Array'Class) return League.JSON.Documents.JSON_Document;
   --  Converts JSON_Array into JSON_Document.

private

   type JSON_Array is new Ada.Finalization.Controlled with record
      Data : Matreshka.JSON_Types.Shared_JSON_Array_Access
        := Matreshka.JSON_Types.Empty_Shared_JSON_Array'Access;
   end record;

   overriding procedure Adjust (Self : in out JSON_Array);

   overriding procedure Finalize (Self : in out JSON_Array);

   Empty_JSON_Array : constant JSON_Array
     := (Ada.Finalization.Controlled with
           Data => Matreshka.JSON_Types.Empty_Shared_JSON_Array'Access);

end League.JSON.Arrays;
