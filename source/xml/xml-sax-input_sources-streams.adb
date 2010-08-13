------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Text_Codecs.UTF16;
with Matreshka.Internals.Text_Codecs.UTF8;

package body XML.SAX.Input_Sources.Streams is

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Ada.Streams.Stream_Element_Array, Stream_Element_Array_Access);

--   not overriding function Encoding
--    (Self : SAX_Input_Source) return League.Strings.Universal_String;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Stream_Input_Source) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Matreshka.Internals.Text_Codecs.Abstract_Decoder'Class,
              Matreshka.Internals.Text_Codecs.Decoder_Access);

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Matreshka.Internals.Text_Codecs.Abstract_Decoder_State'Class,
              Matreshka.Internals.Text_Codecs.Decoder_State_Access);

   begin
      Free (Self.Buffer);
      Free (Self.Decoder);
      Free (Self.State);
   end Finalize;

   ----------
   -- Next --
   ----------

   overriding procedure Next
    (Self        : in out Stream_Input_Source;
     Buffer      : in out
       not null Matreshka.Internals.Strings.Shared_String_Access;
     End_Of_Data : out Boolean)
   is
      use type Ada.Streams.Stream_Element;
      use type Matreshka.Internals.Text_Codecs.Decoder_Access;

      type Encodings is
       (UCS4LE, UCS4BE, UCS42143, UCS43412, UTF16LE, UTF16BE, EBCDIC, UTF8);

      First    : Ada.Streams.Stream_Element_Offset := Self.Last + 1;
      Encoding : Encodings;

   begin
      --  Reallocate buffer when necessary.

      if First > Self.Buffer'Last then
         declare
            Old : Stream_Element_Array_Access := Self.Buffer;

         begin
            Self.Buffer :=
              new Ada.Streams.Stream_Element_Array
                   (Old'First .. Old'Last + 1024);
            Self.Buffer (Old'Range) := Old.all;
            Free (Old);
         end;
      end if;

      --  Read next portion of data from the source.

      Stream_Input_Source'Class (Self).Read
       (Self.Buffer (First .. Self.Buffer'Last), Self.Last, End_Of_Data);

      --  Detect encoding automatically when four first bytes are readed.

      if Self.Decoder = null then
         if Self.Last >= 3 then
            First := 0;

            --  Try to recognize Byte Order Mark.

            if Self.Buffer (0) = 16#00#
              and Self.Buffer (1) = 16#00#
              and Self.Buffer (2) = 16#FE#
              and Self.Buffer (3) = 16#FF#
            then
               --  UCS-4, big-endian machine (1234 order)

               Encoding := UCS4BE;
               First    := 4;

            elsif Self.Buffer (0) = 16#FF#
              and Self.Buffer (1) = 16#FE#
              and Self.Buffer (2) = 16#00#
              and Self.Buffer (3) = 16#00#
            then
               --  UCS-4, little-endian machine (4321 order)

               Encoding := UCS4LE;
               First    := 4;

            elsif Self.Buffer (0) = 16#00#
              and Self.Buffer (1) = 16#00#
              and Self.Buffer (2) = 16#FF#
              and Self.Buffer (3) = 16#FE#
            then
               --  UCS-4, unusual octet order (2143)

               Encoding := UCS42143;
               First    := 4;

            elsif Self.Buffer (0) = 16#FE#
              and Self.Buffer (1) = 16#FF#
              and Self.Buffer (2) = 16#00#
              and Self.Buffer (3) = 16#00#
            then
               --  UCS-4, unusual octet order (3412)

               Encoding := UCS43412;
               First    := 4;

            elsif Self.Buffer (0) = 16#FE#
              and Self.Buffer (1) = 16#FF#
              and (Self.Buffer (2) /= 16#00#
                     or Self.Buffer (3) /= 16#00#)
            then
               --  UTF-16, big-endian

               Encoding := UTF16BE;
               First    := 2;

            elsif Self.Buffer (0) = 16#FF#
              and Self.Buffer (1) = 16#FE#
              and (Self.Buffer (2) /= 16#00#
                     or Self.Buffer (3) /= 16#00#)
            then
               --  UTF-16, little-endian

               Encoding := UTF16LE;
               First    := 2;

            elsif Self.Buffer (0) = 16#EF#
              and Self.Buffer (1) = 16#BB#
              and Self.Buffer (2) = 16#BF#
            then
               --  UTF-8

               Encoding := UTF8;
               First    := 3;

            --  Byte Order Mark is not recognized, try to detect encoding
            --  without Byte Order Mark.

            elsif Self.Buffer (0) = 16#00#
              and Self.Buffer (1) = 16#00#
              and Self.Buffer (2) = 16#00#
              and Self.Buffer (3) = 16#3C#
            then
               --  UCS-4 or other encoding with a 32-bit code unit and ASCII
               --  characters encoded as ASCII values, big-endian (1234).

               Encoding := UCS4BE;

            elsif Self.Buffer (0) = 16#3C#
              and Self.Buffer (1) = 16#00#
              and Self.Buffer (2) = 16#00#
              and Self.Buffer (3) = 16#00#
            then
               --  UCS-4 or other encoding with a 32-bit code unit and ASCII
               --  characters encoded as ASCII values, little-endian (4321).

               Encoding := UCS4LE;

            elsif Self.Buffer (0) = 16#00#
              and Self.Buffer (1) = 16#00#
              and Self.Buffer (2) = 16#3C#
              and Self.Buffer (3) = 16#00#
            then
               --  UCS-4 or other encoding with a 32-bit code unit and ASCII
               --  characters encoded as ASCII values, unusual byte order
               --  (2143).

               Encoding := UCS42143;

            elsif Self.Buffer (0) = 16#00#
              and Self.Buffer (1) = 16#3C#
              and Self.Buffer (2) = 16#00#
              and Self.Buffer (3) = 16#00#
            then
               --  UCS-4 or other encoding with a 32-bit code unit and ASCII
               --  characters encoded as ASCII values, unusual byte order
               --  (3412).

               Encoding := UCS43412;

            elsif Self.Buffer (0) = 16#00#
              and Self.Buffer (1) = 16#3C#
              and Self.Buffer (2) = 16#00#
              and Self.Buffer (3) = 16#3F#
            then
               --  UTF-16BE or big-endian ISO-10646-UCS-2 or other encoding
               --  with a 16-bit code unit in big-endian order and ASCII
               --  characters encoded as ASCII values.

               Encoding := UTF16BE;

            elsif Self.Buffer (0) = 16#3C#
              and Self.Buffer (1) = 16#00#
              and Self.Buffer (2) = 16#3F#
              and Self.Buffer (3) = 16#00#
            then
               --  UTF-16LE or little-endian ISO-10646-UCS-2 or other encoding
               --  with a 16-bit code unit in little-endian order and ASCII
               --  characters encoded as ASCII values.

               Encoding := UTF16LE;

            elsif Self.Buffer (0) = 16#3C#
              and Self.Buffer (1) = 16#3F#
              and Self.Buffer (2) = 16#78#
              and Self.Buffer (3) = 16#6D#
            then
               --  UTF-8, ISO 646, ASCII, some part of ISO 8859, Shift-JIS,
               --  EUC, or any other 7-bit, 8-bit, or mixed-width encoding
               --  which ensures that the characters of ASCII have their normal
               --  positions, width, and values.

               Encoding := UTF8;

            elsif Self.Buffer (0) = 16#4C#
              and Self.Buffer (1) = 16#6F#
              and Self.Buffer (2) = 16#A7#
              and Self.Buffer (3) = 16#94#
            then
               --  EBCDIC (in some flavor).

               Encoding := EBCDIC;

            else
               --  UTF-8 without an encoding declaration, or else the data
               --  stream is mislabeled (lacking a required encoding
               --  declaration), corrupt, fragmentary, or enclosed in a wrapper
               --  of some kind.

               Encoding := UTF8;
            end if;

            --  Create appropriate decoder.

            case Encoding is
               when UCS4LE =>
                  raise Program_Error;

               when UCS4BE =>
                  raise Program_Error;

               when UCS42143 =>
                  raise Program_Error;

               when UCS43412 =>
                  raise Program_Error;

               when UTF16LE =>
                  Self.Encoding :=
                    League.Strings.To_Universal_String ("UTF-16");
                  Self.Decoder :=
                    new Matreshka.Internals.Text_Codecs.UTF16.UTF16LE_Decoder;

               when UTF16BE =>
                  Self.Encoding :=
                    League.Strings.To_Universal_String ("UTF-16");
                  Self.Decoder :=
                    new Matreshka.Internals.Text_Codecs.UTF16.UTF16BE_Decoder;

               when EBCDIC =>
                  raise Program_Error;

               when UTF8 =>
                  Self.Encoding :=
                    League.Strings.To_Universal_String ("UTF-8");
                  Self.Decoder :=
                    new Matreshka.Internals.Text_Codecs.UTF8.UTF8_Decoder;
            end case;

            --  Create decoder's state object.

            Self.State :=
              new Matreshka.Internals.Text_Codecs.Abstract_Decoder_State'Class'
                   (Self.Decoder.Create_State (Self.Version_Mode));

            --  Decode all readed data (not last chunk only).

            Self.Decoder.Decode_Append
             (Self.Buffer (First .. Self.Last), Self.State.all, Buffer);
            Self.First := First;
         end if;

      --  Decode received portion of data.

      elsif Self.Last >= First then
         Self.Decoder.Decode_Append
          (Self.Buffer (First .. Self.Last), Self.State.all, Buffer);

         if not Self.Accumulate then
            Self.Last := -1;

         else
            Self.First := Self.Last + 1;
         end if;
      end if;
   end Next;

   ---------------
   -- Public_Id --
   ---------------

   overriding function Public_Id
    (Self : Stream_Input_Source) return League.Strings.Universal_String is
   begin
      return Self.Public_Id;
   end Public_Id;

--   not overriding procedure Set_Encoding
--    (Self     : in out SAX_Input_Source;
--     Encoding : League.Strings.Universal_String);

   ----------
   -- Read --
   ----------

   not overriding procedure Read
    (Self        : in out Stream_Input_Source;
     Buffer      : out Ada.Streams.Stream_Element_Array;
     Last        : out Ada.Streams.Stream_Element_Offset;
     End_Of_Data : out Boolean) is
   begin
      Self.Stream.Read (Buffer, Last);

      if Last < Buffer'First then
         Last := Buffer'First - 1;
         End_Of_Data := True;

      else
         End_Of_Data := False;
      end if;
   end Read;

   -----------
   -- Reset --
   -----------

   overriding procedure Reset
    (Self     : in out Stream_Input_Source;
     Version  : League.Strings.Universal_String;
     Encoding : League.Strings.Universal_String;
     Rescan   : out Boolean;
     Success  : out Boolean)
   is
      use type Matreshka.Internals.Text_Codecs.Decoder_Mode;
      use type League.Strings.Universal_String;

      Old_Version_Mode : constant Matreshka.Internals.Text_Codecs.Decoder_Mode
        := Self.Version_Mode;
      Old_Encoding     : constant League.Strings.Universal_String
        := Self.Encoding;

   begin
      Self.Accumulate := False;

      if not Version.Is_Empty then
         Self.Set_Version (Version);
      end if;

      if not Encoding.Is_Empty then
         Self.Set_Encoding (Encoding);
      end if;

      Rescan :=
        Self.Version_Mode /= Old_Version_Mode
          or Self.Encoding /= Old_Encoding;

      if Rescan then
         Self.First := 0;

         raise Program_Error with "Version or encoding was changed";
--                  Self.Encoding := League.Strings.To_Universal_String ("UTF-16");
--                  Self.Decoder :=
--                    new Matreshka.Internals.Text_Codecs.UTF16.UTF16LE_Decoder;
--
--               when UTF16BE =>
--                  Self.Encoding := League.Strings.To_Universal_String ("UTF-16");
--                  Self.Decoder :=
--                    new Matreshka.Internals.Text_Codecs.UTF16.UTF16BE_Decoder;
--
--               when EBCDIC =>
--                  raise Program_Error;
--
--               when UTF8 =>
--                  Self.Encoding := League.Strings.To_Universal_String ("UTF-8");
--                  Self.Decoder :=
--                    new Matreshka.Internals.Text_Codecs.UTF8.UTF8_Decoder;
--            end case;
--
--            --  Create decoder's state object.
--
--            Self.State :=
--              new Matreshka.Internals.Text_Codecs.Abstract_Decoder_State'Class'
--                   (Self.Decoder.Create_State (Self.Version_Mode));
      end if;

      Success := True;
   end Reset;

   ------------------
   -- Set_Encoding --
   ------------------

   not overriding procedure Set_Encoding
    (Self     : in out Stream_Input_Source;
     Encoding : League.Strings.Universal_String) is
   begin
      Self.Encoding := Encoding;
   end Set_Encoding;

   -------------------
   -- Set_Public_Id --
   -------------------

   not overriding procedure Set_Public_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String) is
   begin
      Self.Public_Id := Id;
   end Set_Public_Id;

   ----------------
   -- Set_Stream --
   ----------------

   not overriding procedure Set_Stream
    (Self   : in out Stream_Input_Source;
     Stream : not null Stream_Access) is
   begin
      Self.Stream := Stream;
   end Set_Stream;

   -------------------
   -- Set_System_Id --
   -------------------

   not overriding procedure Set_System_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String) is
   begin
      Self.System_Id := Id;
   end Set_System_Id;

   -----------------
   -- Set_Version --
   -----------------

   overriding procedure Set_Version
    (Self    : in out Stream_Input_Source;
     Version : League.Strings.Universal_String)
   is
      use League.Strings;

   begin
      if Version = To_Universal_String ("1.0") then
         Self.Version_Mode := Matreshka.Internals.Text_Codecs.XML_1_0;

      elsif Version = To_Universal_String ("1.1") then
         Self.Version_Mode := Matreshka.Internals.Text_Codecs.XML_1_1;

      else
         raise Constraint_Error with "unsupported XML version";
      end if;
   end Set_Version;

   ---------------
   -- System_Id --
   ---------------

   overriding function System_Id
    (Self : Stream_Input_Source) return League.Strings.Universal_String is
   begin
      return Self.System_Id;
   end System_Id;

end XML.SAX.Input_Sources.Streams;
