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
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.UTF8 is

   use Matreshka.Internals.Strings.Configuration;
   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out UTF8_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Ada.Streams.Stream_Element;
      use type Matreshka.Internals.Strings.Shared_String_Access;

      pragma Suppress (Access_Check);
      pragma Assert (String /= null);
      pragma Assert (String_Handler /= null);
      pragma Assert (Self.Unchecked_Append /= null);
      --  Compiler generates these check too often, so it is reasonable to do
      --  them only once.

      Current_State : UTF8_State                               := Self.State;
      Current_Code  : Matreshka.Internals.Unicode.Code_Unit_32 := Self.Code;

   begin
      if Current_State = UTF8_State'Last then
         --  Decoder is in error state, return.

         return;
      end if;

      Matreshka.Internals.Strings.Mutate (String, String.Unused + Data'Length);

      for J in Data'Range loop
         if Current_State = 0 then
            --  Decode current byte as single ASCII character or first byte of
            --  sequence of bytes.

            if (Data (J) and 2#1000_0000#) = 2#0000_0000# then
               --  Single ASCII character.

               Self.Unchecked_Append
                (Self,
                 String,
                 Matreshka.Internals.Unicode.Code_Unit_32 (Data (J)));

            elsif (Data (J) and 2#1110_0000#) = 2#1100_0000# then
               --  Two bytes sequence.

               Current_Code :=
                 Matreshka.Internals.Unicode.Code_Unit_32
                  (Data (J) and 2#0001_1111#);
               Current_State := 1;

            elsif (Data (J) and 2#1111_0000#) = 2#1110_0000# then
               --  Three bytes sequence.

               Current_Code :=
                 Matreshka.Internals.Unicode.Code_Unit_32
                  (Data (J) and 2#0000_1111#);
               Current_State := 2;

            elsif (Data (J) and 2#1111_1000#) = 2#1111_0000# then
               --  Four bytes sequence.

               Current_Code :=
                 Matreshka.Internals.Unicode.Code_Unit_32
                  (Data (J) and 2#0000_0111#);
               Current_State := 3;

            else
               --  Five and six bytes sequences represent codes outside of
               --  Unicode code point range or instances of not wellformed
               --  UTF-8 sequences.

               Current_State := UTF8_State'Last;

               exit;
            end if;

         else
            --  Decode current byte as continuation of of sequence.

            if (Data (J) and 2#1100_0000#) = 2#1000_0000# then
               --  Byte has sequence continuation code.

               Current_Code :=
                 Current_Code * (2 ** 6)
                   + Matreshka.Internals.Unicode.Code_Unit_32
                      (Data (J) and 2#0011_1111#);
               Current_State := Current_State - 1;

               if Current_State = 0 then
                  --  Current byte is last byte in sequnce, so characters code
                  --  is constructed completely, it should be validated and
                  --  stored to string.

                  if Matreshka.Internals.Unicode.Is_Valid (Current_Code) then
                     Self.Unchecked_Append (Self, String, Current_Code);

                  else
                     Current_State := UTF8_State'Last;

                     exit;
                  end if;
               end if;

            else
               --  Current byte is not a sequence continuation code, so UTF-8
               --  sequence is not wellformed.

               Current_State := UTF8_State'Last;

               exit;
            end if;
         end if;
      end loop;

      Self.State := Current_State;
      Self.Code  := Current_Code;
      String_Handler.Fill_Null_Terminator (String);
   end Decode_Append;

   -------------
   -- Decoder --
   -------------

   function Decoder (Mode : Decoder_Mode) return Abstract_Decoder'Class is
   begin
      case Mode is
         when Raw =>
            return
              UTF8_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access,
                State            => 0,
                Code             => 0);

         when XML_1_0 =>
            return
              UTF8_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access,
                State            => 0,
                Code             => 0);

         when XML_1_1 =>
            return
              UTF8_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access,
                State            => 0,
                Code             => 0);
      end case;
   end Decoder;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : in out UTF8_Encoder;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     Buffer : out MISEV.Shared_Stream_Element_Vector_Access)
   is
      use Matreshka.Internals.Stream_Element_Vectors;
      use type Ada.Streams.Stream_Element_Offset;

      Code     : Matreshka.Internals.Unicode.Code_Point;
      Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;

   begin
      if String.Unused = 0 then
         Buffer := Empty_Shared_Stream_Element_Vector'Access;

      else
         Buffer :=
           Allocate (Ada.Streams.Stream_Element_Offset (String.Unused * 3));

         while Position < String.Unused loop
            Matreshka.Internals.Utf16.Unchecked_Next
             (String.Value, Position, Code);

            if Code <= 16#00_007F# then
               --  One byte sequence: 0xxxxxxx

               Buffer.Value (Buffer.Length) := Ada.Streams.Stream_Element (Code);
               Buffer.Length := Buffer.Length + 1;

            elsif Code <= 16#00_07FF# then
               --  Two bytes sequence: 110xxxxx 10xxxxxx

               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element (2#11000000# or (Code / 16#40#));
               Buffer.Length := Buffer.Length + 1;
               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element
                  (2#10000000# or (Code and 2#00111111#));
               Buffer.Length := Buffer.Length + 1;

            elsif Code <= 16#00_FFFF# then
               --  Three bytes sequence: 1110xxxx 10xxxxxx 10xxxxxx

               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element (2#11100000# or (Code / 16#1000#));
               Buffer.Length := Buffer.Length + 1;
               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element
                  (2#10000000# or ((Code / 16#40#) and 2#00111111#));
               Buffer.Length := Buffer.Length + 1;
               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element
                  (2#10000000# or (Code and 2#00111111#));
               Buffer.Length := Buffer.Length + 1;

            else
               --  Four bytes sequence: 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx

               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element (2#11110000# or (Code / 16#40000#));
               Buffer.Length := Buffer.Length + 1;
               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element
                  (2#11000000# or ((Code / 16#1000#) and 2#00111111#));
               Buffer.Length := Buffer.Length + 1;
               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element
                  (2#10000000# or ((Code / 16#40#) and 2#00111111#));
               Buffer.Length := Buffer.Length + 1;
               Buffer.Value (Buffer.Length) :=
                 Ada.Streams.Stream_Element
                  (2#10000000# or (Code and 2#00111111#));
               Buffer.Length := Buffer.Length + 1;
            end if;
         end loop;
      end if;
   end Encode;

   -------------
   -- Encoder --
   -------------

   function Encoder (Dummy : Boolean) return Abstract_Encoder'Class is
   begin
      return UTF8_Encoder'(null record);
   end Encoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : UTF8_Decoder) return Boolean is
   begin
      return Self.State = UTF8_State'Last;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed (Self : UTF8_Decoder) return Boolean is
   begin
      return Self.State /= 0;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.UTF8;
