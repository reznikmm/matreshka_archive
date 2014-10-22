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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body League.JSON.Streams is

   procedure Update
    (Self  : not null access JSON_Stream'Class;
     Value : League.JSON.Values.JSON_Value);
   --  Update (or add) value to result.

   procedure Push
    (Self  : not null access JSON_Stream'Class;
     Kind  : State_Kinds);
   procedure Push
    (Self : not null access JSON_Stream'Class;
     Data : League.JSON.Arrays.JSON_Array);
   procedure Push
    (Self : not null access JSON_Stream'Class;
     Data : League.JSON.Objects.JSON_Object);
   --  Push current state into the stack and initialize new current state.

   procedure Pop (Self : not null access JSON_Stream'Class);
   --  Unwind state stack and add constructed value to new state.

   ---------------
   -- End_Array --
   ---------------

   procedure End_Array (Self : not null access JSON_Stream'Class) renames Pop;

   ----------------
   -- End_Object --
   ----------------

   procedure End_Object (Self : not null access JSON_Stream'Class) renames Pop;

   -----------------------
   -- Get_JSON_Document --
   -----------------------

   function Get_JSON_Document
    (Self : not null access JSON_Stream'Class)
       return League.JSON.Documents.JSON_Document is
   begin
      return Self.Current.Current_Array.To_JSON_Document;
   end Get_JSON_Document;

   ---------
   -- Key --
   ---------

   procedure Key
    (Self : not null access JSON_Stream'Class;
     Key  : League.Strings.Universal_String) is
   begin
      Self.Current.Key := Key;
   end Key;

   ---------
   -- Pop --
   ---------

   procedure Pop (Self : not null access JSON_Stream'Class) is
      Modified : constant Boolean := Self.Current.Modified;
      Value    : constant League.JSON.Values.JSON_Value
        := (case Self.Current.Kind is
              when Array_State => Self.Current.Current_Array.To_JSON_Value,
              when Object_State => Self.Current.Current_Object.To_JSON_Value);

   begin
      Self.Current := Self.Stack.Last_Element;
      Self.Stack.Delete_Last;

      if Modified then
         Self.Update (Value);

      elsif Self.Current.Kind = Array_State then
         Self.Current.Index := Self.Current.Index + 1;
      end if;
   end Pop;

   ----------
   -- Push --
   ----------

   procedure Push
    (Self : not null access JSON_Stream'Class;
     Kind : State_Kinds) is
   begin
      Self.Stack.Append (Self.Current);

      case Kind is
         when Array_State =>
            Self.Current :=
             (Array_State, False, League.JSON.Arrays.Empty_JSON_Array, 1);
         when Object_State =>
            Self.Current :=
             (Object_State,
              False,
              League.JSON.Objects.Empty_JSON_Object,
              League.Strings.Empty_Universal_String);
      end case;
   end Push;

   ----------
   -- Push --
   ----------

   procedure Push
    (Self : not null access JSON_Stream'Class;
     Data : League.JSON.Arrays.JSON_Array) is
   begin
      Self.Stack.Append (Self.Current);
      Self.Current := (Array_State, False, Data, 1);
   end Push;

   ----------
   -- Push --
   ----------

   procedure Push
    (Self : not null access JSON_Stream'Class;
     Data : League.JSON.Objects.JSON_Object) is
   begin
      Self.Stack.Append (Self.Current);
      Self.Current :=
       (Object_State, False, Data, League.Strings.Empty_Universal_String);
   end Push;

   ----------
   -- Read --
   ----------

   overriding procedure Read
     (Stream : in out JSON_Stream;
      Item   : out Ada.Streams.Stream_Element_Array;
      Last   : out Ada.Streams.Stream_Element_Offset) is
   begin
      raise Program_Error;
   end Read;

   ----------
   -- Read --
   ----------

   function Read
    (Self : in out JSON_Stream'Class)
       return League.JSON.Values.JSON_Value is
   begin
      case Self.Current.Kind is
         when Array_State =>
            Self.Current.Index := Self.Current.Index + 1;

            return Self.Current.Current_Array (Self.Current.Index - 1);

         when Object_State =>
            return Self.Current.Current_Object (Self.Current.Key);
      end case;
   end Read;

   -----------
   -- Write --
   -----------

   procedure Write
    (Self : in out JSON_Stream'Class;
     Item : League.JSON.Values.JSON_Value) is
   begin
      Self.Update (Item);
      Self.Current.Modified := True;
   end Write;

   -----------------------
   -- Set_JSON_Document --
   -----------------------

   procedure Set_JSON_Document
    (Self : not null access JSON_Stream'Class;
     Data : League.JSON.Documents.JSON_Document) is
   begin
      if not Data.Is_Array then
         raise Program_Error with "JSON document must contain array";
      end if;

      Self.Current := (Array_State, False, Data.To_JSON_Array, 1);
   end Set_JSON_Document;

   -----------------
   -- Start_Array --
   -----------------

   procedure Start_Array (Self : not null access JSON_Stream'Class) is
   begin
      case Self.Current.Kind is
         when Array_State =>
            if Self.Current.Index <= Self.Current.Current_Array.Length then
               Self.Push
                (Self.Current.Current_Array (Self.Current.Index).To_Array);

            else
               Self.Push (Array_State);
            end if;

         when Object_State =>
            if Self.Current.Current_Object.Contains (Self.Current.Key) then
               Self.Push
                (Self.Current.Current_Object (Self.Current.Key).To_Array);

            else
               Self.Push (Array_State);
            end if;
      end case;
   end Start_Array;

   ------------------
   -- Start_Object --
   ------------------

   procedure Start_Object (Self : not null access JSON_Stream'Class) is
   begin
      case Self.Current.Kind is
         when Array_State =>
            if Self.Current.Index <= Self.Current.Current_Array.Length then
               Self.Push
                (Self.Current.Current_Array (Self.Current.Index).To_Object);

            else
               Self.Push (Object_State);
            end if;

         when Object_State =>
            if Self.Current.Current_Object.Contains (Self.Current.Key) then
               Self.Push
                (Self.Current.Current_Object (Self.Current.Key).To_Object);

            else
               Self.Push (Object_State);
            end if;
      end case;
   end Start_Object;

   ------------
   -- Update --
   ------------

   procedure Update
    (Self  : not null access JSON_Stream'Class;
     Value : League.JSON.Values.JSON_Value) is
   begin
      case Self.Current.Kind is
         when Array_State =>
            if Self.Current.Index <= Self.Current.Current_Array.Length then
               Self.Current.Current_Array.Replace (Self.Current.Index, Value);

            else
               Self.Current.Current_Array.Append (Value);
            end if;

            if Self.Current.Kind = Array_State then
               Self.Current.Index := Self.Current.Index + 1;
            end if;

         when Object_State =>
            Self.Current.Current_Object.Insert
             (Self.Current.Key, Value);
      end case;

      Self.Current.Modified := True;
   end Update;

   -----------
   -- Write --
   -----------

   overriding procedure Write
     (Stream : in out JSON_Stream;
      Item   : Ada.Streams.Stream_Element_Array) is
   begin
      raise Program_Error;
   end Write;

end League.JSON.Streams;
