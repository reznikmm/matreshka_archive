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

with League.String_Vectors;
with League.Strings;
limited with League.JSON.Values;
private with Matreshka.JSON_Types;

package League.JSON.Objects is

   pragma Preelaborate;

   type JSON_Object is tagged private;
   pragma Preelaborable_Initialization (JSON_Object);

   Empty_JSON_Object : constant JSON_Object;

   function Contains
    (Self : JSON_Object'Class;
     Key  : League.Strings.Universal_String) return Boolean;
   --  Returns True if the object contains key Key.

   procedure Insert
    (Self  : in out JSON_Object'Class;
     Key   : League.Strings.Universal_String;
     Value : League.JSON.Values.JSON_Value);
   --  Inserts a new item with the key key and a value of value.
   --
   --  If there is already an item with the key key then that item's value is
   --  replaced with value.

   function Is_Empty (Self : JSON_Object'Class) return Boolean;
   --  Returns True if the object is empty.

   function Keys
    (Self : JSON_Object'Class)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns a list of all keys in this object.

   function Length (Self : JSON_Object'Class) return Natural;
   --  Returns the number of (key, value) pairs stored in the object.

   procedure Remove
    (Self : in out JSON_Object'Class;
     Key  : League.Strings.Universal_String);
   --  Removes key from the object.

   function Take
    (Self : in out JSON_Object'Class;
     Key  : League.Strings.Universal_String)
       return League.JSON.Values.JSON_Value;
   --  Removes key from the object.
   --
   --  Returns a JSON_Value containing the value referenced by key. If key was
   --  not contained in the object, the returned JSON_Value is Undefined.

   function Value
    (Self : JSON_Object'Class;
     Key  : League.Strings.Universal_String)
       return League.JSON.Values.JSON_Value;
   --  Returns a JSON_Value representing the value for the key Key.
   --
   --  The returned JSON_Value is Undefined, if the key does not exist.

private

   type JSON_Object is new Ada.Finalization.Controlled with record
      Data : Matreshka.JSON_Types.Shared_JSON_Object_Access
        := Matreshka.JSON_Types.Empty_Shared_JSON_Object'Access;
   end record;

   overriding procedure Adjust (Self : in out JSON_Object);

   overriding procedure Finalize (Self : in out JSON_Object);

   Empty_JSON_Object : constant JSON_Object
     := (Ada.Finalization.Controlled with
           Data => Matreshka.JSON_Types.Empty_Shared_JSON_Object'Access);

end League.JSON.Objects;
