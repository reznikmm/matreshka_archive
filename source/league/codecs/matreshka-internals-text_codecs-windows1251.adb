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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Unicode.Characters.Latin;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.Windows1251 is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   Decode_Table : constant
     array (Ada.Streams.Stream_Element range 16#80# .. 16#BF#)
       of Matreshka.Internals.Unicode.Code_Point
         := (16#80# => 16#0402#,   --  CYRILLIC CAPITAL LETTER DJE
             16#81# => 16#0403#,   --  CYRILLIC CAPITAL LETTER GJE
             16#82# => 16#201A#,   --  SINGLE LOW-9 QUOTATION MARK
             16#83# => 16#0453#,   --  CYRILLIC SMALL LETTER GJE
             16#84# => 16#201E#,   --  DOUBLE LOW-9 QUOTATION MARK
             16#85# => 16#2026#,   --  HORIZONTAL ELLIPSIS
             16#86# => 16#2020#,   --  DAGGER
             16#87# => 16#2021#,   --  DOUBLE DAGGER
             16#88# => 16#20AC#,   --  EURO SIGN
             16#89# => 16#2030#,   --  PER MILLE SIGN
             16#8A# => 16#0409#,   --  CYRILLIC CAPITAL LETTER LJE
             16#8B# => 16#2039#,   --  SINGLE LEFT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#8C# => 16#040A#,   --  CYRILLIC CAPITAL LETTER NJE
             16#8D# => 16#040C#,   --  CYRILLIC CAPITAL LETTER KJE
             16#8E# => 16#040B#,   --  CYRILLIC CAPITAL LETTER TSHE
             16#8F# => 16#040F#,   --  CYRILLIC CAPITAL LETTER DZHE

             16#90# => 16#0452#,   --  CYRILLIC SMALL LETTER DJE
             16#91# => 16#2018#,   --  LEFT SINGLE QUOTATION MARK
             16#92# => 16#2019#,   --  RIGHT SINGLE QUOTATION MARK
             16#93# => 16#201C#,   --  LEFT DOUBLE QUOTATION MARK
             16#94# => 16#201D#,   --  RIGHT DOUBLE QUOTATION MARK
             16#95# => 16#2022#,   --  BULLET
             16#96# => 16#2013#,   --  EN DASH
             16#97# => 16#2014#,   --  EM DASH
             16#98# => Question_Mark,
             16#99# => 16#2122#,   --  TRADE MARK SIGN
             16#9A# => 16#0459#,   --  CYRILLIC SMALL LETTER LJE
             16#9B# => 16#203A#,   --  SINGLE RIGHT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#9C# => 16#045A#,   --  CYRILLIC SMALL LETTER NJE
             16#9D# => 16#045C#,   --  CYRILLIC SMALL LETTER KJE
             16#9E# => 16#045B#,   --  CYRILLIC SMALL LETTER TSHE
             16#9F# => 16#045F#,   --  CYRILLIC SMALL LETTER DZHE

             16#A0# => 16#00A0#,   --  NO-BREAK SPACE
             16#A1# => 16#040E#,   --  CYRILLIC CAPITAL LETTER SHORT U
             16#A2# => 16#045E#,   --  CYRILLIC SMALL LETTER SHORT U
             16#A3# => 16#0408#,   --  CYRILLIC CAPITAL LETTER JE
             16#A4# => 16#00A4#,   --  CURRENCY SIGN
             16#A5# => 16#0490#,   --  CYRILLIC CAPITAL LETTER GHE WITH UPTURN
             16#A6# => 16#00A6#,   --  BROKEN BAR
             16#A7# => 16#00A7#,   --  SECTION SIGN
             16#A8# => 16#0401#,   --  CYRILLIC CAPITAL LETTER IO
             16#A9# => 16#00A9#,   --  COPYRIGHT SIGN
             16#AA# => 16#0404#,   --  CYRILLIC CAPITAL LETTER UKRAINIAN IE
             16#AB# => 16#00AB#,   --  LEFT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#AC# => 16#00AC#,   --  NOT SIGN
             16#AD# => 16#00AD#,   --  SOFT HYPHEN
             16#AE# => 16#00AE#,   --  REGISTERED SIGN
             16#AF# => 16#0407#,   --  CYRILLIC CAPITAL LETTER YI

             16#B0# => 16#00B0#,   --  DEGREE SIGN
             16#B1# => 16#00B1#,   --  PLUS-MINUS SIGN
             16#B2# => 16#0406#,   --  CYRILLIC CAPITAL LETTER
                                   --  BYELORUSSIAN-UKRAINIAN I
             16#B3# => 16#0456#,   --  CYRILLIC SMALL LETTER
                                   --  BYELORUSSIAN-UKRAINIAN I
             16#B4# => 16#0491#,   --  CYRILLIC SMALL LETTER GHE WITH UPTURN
             16#B5# => 16#00B5#,   --  MICRO SIGN
             16#B6# => 16#00B6#,   --  PILCROW SIGN
             16#B7# => 16#00B7#,   --  MIDDLE DOT
             16#B8# => 16#0451#,   --  CYRILLIC SMALL LETTER IO
             16#B9# => 16#2116#,   --  NUMERO SIGN
             16#BA# => 16#0454#,   --  CYRILLIC SMALL LETTER UKRAINIAN IE
             16#BB# => 16#00BB#,   --  RIGHT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#BC# => 16#0458#,   --  CYRILLIC SMALL LETTER JE
             16#BD# => 16#0405#,   --  CYRILLIC CAPITAL LETTER DZE
             16#BE# => 16#0455#,   --  CYRILLIC SMALL LETTER DZE
             16#BF# => 16#0457#);  --  CYRILLIC SMALL LETTER YI

   Encode_Table_00 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#00A0# .. 16#00BF#)
       of Ada.Streams.Stream_Element
         := (16#00A0# => 16#A0#,   --  NO-BREAK SPACE
             16#00A4# => 16#A4#,   --  CURRENCY SIGN
             16#00A6# => 16#A6#,   --  BROKEN BAR
             16#00A7# => 16#A7#,   --  SECTION SIGN
             16#00A9# => 16#A9#,   --  COPYRIGHT SIGN
             16#00AB# => 16#AB#,   --  LEFT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#00AC# => 16#AC#,   --  NOT SIGN
             16#00AD# => 16#AD#,   --  SOFT HYPHEN
             16#00AE# => 16#AE#,   --  REGISTERED SIGN
             16#00B0# => 16#B0#,   --  DEGREE SIGN
             16#00B1# => 16#B1#,   --  PLUS-MINUS SIGN
             16#00B5# => 16#B5#,   --  MICRO SIGN
             16#00B6# => 16#B6#,   --  PILCROW SIGN
             16#00B7# => 16#B7#,   --  MIDDLE DOT
             16#00BB# => 16#BB#,   --  RIGHT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             others   => Question_Mark);

   Encode_Table_04a : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#0400# .. 16#040F#)
       of Ada.Streams.Stream_Element
         := (16#0401# => 16#A8#,   --  CYRILLIC CAPITAL LETTER IO
             16#0402# => 16#80#,   --  CYRILLIC CAPITAL LETTER DJE
             16#0403# => 16#81#,   --  CYRILLIC CAPITAL LETTER GJE
             16#0404# => 16#AA#,   --  CYRILLIC CAPITAL LETTER UKRAINIAN IE
             16#0405# => 16#BD#,   --  CYRILLIC CAPITAL LETTER DZE
             16#0406# => 16#B2#,   --  CYRILLIC CAPITAL LETTER
                                   --  BYELORUSSIAN-UKRAINIAN I
             16#0407# => 16#AF#,   --  CYRILLIC CAPITAL LETTER YI
             16#0408# => 16#A3#,   --  CYRILLIC CAPITAL LETTER JE
             16#0409# => 16#8A#,   --  CYRILLIC CAPITAL LETTER LJE
             16#040A# => 16#8C#,   --  CYRILLIC CAPITAL LETTER NJE
             16#040B# => 16#8E#,   --  CYRILLIC CAPITAL LETTER TSHE
             16#040C# => 16#8D#,   --  CYRILLIC CAPITAL LETTER KJE
             16#040E# => 16#A1#,   --  CYRILLIC CAPITAL LETTER SHORT U
             16#040F# => 16#8F#,   --  CYRILLIC CAPITAL LETTER DZHE
             others   => Question_Mark);

   Encode_Table_04b : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#0450# .. 16#049F#)
       of Ada.Streams.Stream_Element
         := (16#0451# => 16#B8#,   --  CYRILLIC SMALL LETTER IO
             16#0452# => 16#90#,   --  CYRILLIC SMALL LETTER DJE
             16#0453# => 16#83#,   --  CYRILLIC SMALL LETTER GJE
             16#0454# => 16#BA#,   --  CYRILLIC SMALL LETTER UKRAINIAN IE
             16#0455# => 16#BE#,   --  CYRILLIC SMALL LETTER DZE
             16#0456# => 16#B3#,   --  CYRILLIC SMALL LETTER
                                   --  BYELORUSSIAN-UKRAINIAN I
             16#0457# => 16#BF#,   --  CYRILLIC SMALL LETTER YI
             16#0458# => 16#BC#,   --  CYRILLIC SMALL LETTER JE
             16#0459# => 16#9A#,   --  CYRILLIC SMALL LETTER LJE
             16#045A# => 16#9C#,   --  CYRILLIC SMALL LETTER NJE
             16#045B# => 16#9E#,   --  CYRILLIC SMALL LETTER TSHE
             16#045C# => 16#9D#,   --  CYRILLIC SMALL LETTER KJE
             16#045E# => 16#A2#,   --  CYRILLIC SMALL LETTER SHORT U
             16#045F# => 16#9F#,   --  CYRILLIC SMALL LETTER DZHE
             16#0490# => 16#A5#,   --  CYRILLIC CAPITAL LETTER GHE WITH UPTURN
             16#0491# => 16#B4#,   --  CYRILLIC SMALL LETTER GHE WITH UPTURN
             others   => Question_Mark);

   Encode_Table_20 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#2010# .. 16#203F#)
       of Ada.Streams.Stream_Element
         := (16#2013# => 16#96#,   --  EN DASH
             16#2014# => 16#97#,   --  EM DASH
             16#2018# => 16#91#,   --  LEFT SINGLE QUOTATION MARK
             16#2019# => 16#92#,   --  RIGHT SINGLE QUOTATION MARK
             16#201A# => 16#82#,   --  SINGLE LOW-9 QUOTATION MARK
             16#201C# => 16#93#,   --  LEFT DOUBLE QUOTATION MARK
             16#201D# => 16#94#,   --  RIGHT DOUBLE QUOTATION MARK
             16#201E# => 16#84#,   --  DOUBLE LOW-9 QUOTATION MARK
             16#2020# => 16#86#,   --  DAGGER
             16#2021# => 16#87#,   --  DOUBLE DAGGER
             16#2022# => 16#95#,   --  BULLET
             16#2026# => 16#85#,   --  HORIZONTAL ELLIPSIS
             16#2030# => 16#89#,   --  PER MILLE SIGN
             16#2039# => 16#8B#,   --  SINGLE LEFT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#203A# => 16#9B#,   --  SINGLE RIGHT-POINTING ANGLE QUOTATION
                                   --  MARK
             others   => Question_Mark);

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out Windows1251_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     String : in out Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Matreshka.Internals.Strings.Mutate (String, String.Unused + Data'Length);

      for J in Data'Range loop
         case Data (J) is
            when 16#00# .. 16#7F# =>
               --  Directly mapped.

               Self.Unchecked_Append
                (Self,
                 String,
                 Matreshka.Internals.Unicode.Code_Point (Data (J)));

            when 16#80# .. 16#BF# =>
               --  Table translated.

               Self.Unchecked_Append (Self, String, Decode_Table (Data (J)));

            when 16#C0# .. 16#FF# =>
               --  Computed.

               Self.Unchecked_Append
                (Self,
                 String,
                 Matreshka.Internals.Unicode.Code_Point (Data (J))
                   - 16#C0# + 16#0410#);
         end case;
      end loop;

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
              Windows1251_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access);

         when XML_1_0 =>
            return
              Windows1251_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access);

         when XML_1_1 =>
            return
              Windows1251_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access);
      end case;
   end Decoder;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : in out Windows1251_Encoder;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     Buffer : out MISEV.Shared_Stream_Element_Vector_Access)
   is
      pragma Unreferenced (Self);

      use Matreshka.Internals.Stream_Element_Vectors;
      use Ada.Streams;

      Code     : Matreshka.Internals.Unicode.Code_Point;
      Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Element  : Ada.Streams.Stream_Element;

   begin
      if String.Unused = 0 then
         Buffer := Empty_Shared_Stream_Element_Vector'Access;

      else
         Buffer :=
           Allocate (Ada.Streams.Stream_Element_Offset (String.Unused));

         while Position < String.Unused loop
            Matreshka.Internals.Utf16.Unchecked_Next
             (String.Value, Position, Code);

            if Code in 16#0000# .. 16#007F# then
               --  Direct mapping.

               Element := Stream_Element (Code);

            elsif Code in 16#0410# .. 16#044F# then
              --  Computable mapping.

               Element := Stream_Element (Code - 16#0410#) + 16#C0#;

            elsif Code in 16#00A0# .. 16#00BF# then
               --  Table translation, range 00A0 .. 00BF.

               Element := Encode_Table_00 (Code);

            elsif Code in 16#0400# .. 16#040F# then
               --  Table translation, range 0400 .. 040F.

               Element := Encode_Table_04a (Code);

            elsif Code in 16#0450# .. 16#049F# then
               --  Table translation, range 0450 .. 049F.

               Element := Encode_Table_04b (Code);

            elsif Code in 16#2010# .. 16#203F# then
               --  Table translation, range 2010 .. 203F.

               Element := Encode_Table_20 (Code);

            elsif Code = 16#20AC# then
               --  16#20AC# => 16#88#  --  EURO SIGN

               Element := 16#88#;

            elsif Code = 16#2116# then
               --  16#2116# => 16#B9#  --  NUMERO SIGN

               Element := 16#B9#;

            elsif Code = 16#2122# then
               --  16#2122# => 16#99#  --  TRADE MARK SIGN

               Element := 16#99#;

            else
               Element := Question_Mark;
            end if;

            Buffer.Value (Buffer.Length) := Element;
            Buffer.Length := Buffer.Length + 1;
         end loop;
      end if;
   end Encode;

   -------------
   -- Encoder --
   -------------

   function Encoder return Abstract_Encoder'Class is
   begin
      return Windows1251_Encoder'(null record);
   end Encoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : Windows1251_Decoder) return Boolean is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : Windows1251_Decoder) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.Windows1251;
