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
private with Ada.Containers.Vectors;
with Ada.Streams;

private with League.JSON.Arrays;
with League.JSON.Documents;
private with League.JSON.Objects;
with League.JSON.Values;
with League.Strings;

package League.JSON.Streams is

   pragma Preelaborate;

   type JSON_Stream is new Ada.Streams.Root_Stream_Type with private;

   procedure Start_Object (Self : not null access JSON_Stream'Class);

   procedure End_Object (Self : not null access JSON_Stream'Class);

   procedure Start_Array (Self : not null access JSON_Stream'Class);

   procedure End_Array (Self : not null access JSON_Stream'Class);

   procedure Key
    (Self : not null access JSON_Stream'Class;
     Key  : League.Strings.Universal_String);

   function Get_JSON_Document
    (Self : not null access JSON_Stream'Class)
       return League.JSON.Documents.JSON_Document;

   procedure Set_JSON_Document
    (Self : not null access JSON_Stream'Class;
     Data : League.JSON.Documents.JSON_Document);

   function Read
    (Self : in out JSON_Stream'Class)
       return League.JSON.Values.JSON_Value;
   --  Reads current value and updates stream's position.

   procedure Write
    (Self : in out JSON_Stream'Class;
     Item : League.JSON.Values.JSON_Value);
   --  Writes value into the stream and updates stream's position.

private

   type State_Kinds is (Array_State, Object_State);

   type State (Kind : State_Kinds := Array_State) is record
      Modified : Boolean := False;

      case Kind is
         when Array_State =>
            Current_Array : League.JSON.Arrays.JSON_Array;
            Index         : Positive := 1;

         when Object_State =>
            Current_Object : League.JSON.Objects.JSON_Object;
            Key            : League.Strings.Universal_String;
      end case;
   end record;

   package State_Vectors is new Ada.Containers.Vectors (Positive, State);

   type JSON_Stream is new Ada.Streams.Root_Stream_Type with record
      Current : State;
      Stack   : State_Vectors.Vector;
   end record;

   overriding procedure Read
     (Stream : in out JSON_Stream;
      Item   : out Ada.Streams.Stream_Element_Array;
      Last   : out Ada.Streams.Stream_Element_Offset);

   overriding procedure Write
     (Stream : in out JSON_Stream;
      Item   : Ada.Streams.Stream_Element_Array);

end League.JSON.Streams;
