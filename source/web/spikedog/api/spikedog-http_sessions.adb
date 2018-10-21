------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2018, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Streams;
with Ada.Unchecked_Conversion;

with League.Base_Codecs;
with League.Strings.Hash;
with League.Stream_Element_Vectors;

package body Spikedog.HTTP_Sessions is

   type Session_Identifier_Buffer is
     new Ada.Streams.Stream_Element_Array (1 .. 32);

   ------------
   -- Decode --
   ------------

   procedure Decode
    (Image      : League.Strings.Universal_String;
     Identifier : out Session_Identifier;
     Success    : out Boolean)
   is
      use type Ada.Streams.Stream_Element_Offset;

      function To_Session_Identifier is
        new Ada.Unchecked_Conversion
             (Session_Identifier_Buffer, Session_Identifier);

      Aux : League.Stream_Element_Vectors.Stream_Element_Vector;

   begin
      --  Декодирование строки в бинарный массив.

      League.Base_Codecs.From_Base_64_URL (Image, Aux, Success);

      if not Success then
         return;
      end if;

      --  Проверка длины декодированных данных.

      if Aux.Length /= 32 then
         Success := False;

         return;
      end if;

      --  Преобразование во внутреннее представление идентификатора.

      Identifier :=
        To_Session_Identifier
         (Session_Identifier_Buffer (Aux.To_Stream_Element_Array));
   end Decode;

   ------------
   -- Encode --
   ------------

   function Encode
    (Value : Session_Identifier) return League.Strings.Universal_String
   is
      function To_Session_Identifier_Buffer is
        new Ada.Unchecked_Conversion
             (Session_Identifier, Session_Identifier_Buffer);

   begin
      return
        League.Base_Codecs.To_Base_64_URL
         (League.Stream_Element_Vectors.To_Stream_Element_Vector
           (Ada.Streams.Stream_Element_Array
             (To_Session_Identifier_Buffer (Value))));
   end Encode;

   -----------------------
   -- Get_Creation_Time --
   -----------------------

   overriding function Get_Creation_Time
    (Self : Spikedog_HTTP_Session) return League.Calendars.Date_Time is
   begin
      if Self.Valid then
         return Self.Creation_Time;

      else
         raise Program_Error;
      end if;
   end Get_Creation_Time;

   ------------
   -- Get_Id --
   ------------

   overriding function Get_Id
    (Self : Spikedog_HTTP_Session) return League.Strings.Universal_String is
   begin
      return Encode (Self.Identifier);
   end Get_Id;

   ----------------------------
   -- Get_Last_Accessed_Time --
   ----------------------------

   overriding function Get_Last_Accessed_Time
    (Self : Spikedog_HTTP_Session) return League.Calendars.Date_Time is
   begin
      if Self.Valid then
         return Self.Last_Accessed_Time;

      else
         raise Program_Error;
      end if;
   end Get_Last_Accessed_Time;

   ----------
   -- Hash --
   ----------

   function Hash (Value : Session_Identifier) return Ada.Containers.Hash_Type is
   begin
      return League.Strings.Hash (Encode (Value));
   end Hash;

   ------------
   -- Is_New --
   ------------

   overriding function Is_New (Self : Spikedog_HTTP_Session) return Boolean is
   begin
      if Self.Valid then
         return Self.Is_New;

      else
         raise Program_Error;
      end if;
   end Is_New;

end Spikedog.HTTP_Sessions;
