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
-- Copyright © 2012-2015, Vadim Godunko <vgodunko@gmail.com>                --
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

with League.Stream_Element_Vectors.Internals;
with League.Strings.Internals;
with Matreshka.Internals.Stream_Element_Vectors;
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Utf16;

package body League.Base_Codecs is

   use type Ada.Streams.Stream_Element;
   use type Ada.Streams.Stream_Element_Offset;
   use type Matreshka.Internals.Utf16.Utf16_Code_Unit;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   procedure Decode_64
    (Item    : Matreshka.Internals.Utf16.Utf16_Code_Unit;
     Value   : out Ada.Streams.Stream_Element;
     Success : out Boolean);

   procedure Decode_64_URL
    (Item    : Matreshka.Internals.Utf16.Utf16_Code_Unit;
     Value   : out Ada.Streams.Stream_Element;
     Success : out Boolean);

   Encode_64 : constant
     array (Ada.Streams.Stream_Element range 0 .. 63)
       of Matreshka.Internals.Utf16.Utf16_Code_Unit
         := (Character'Pos ('A'), Character'Pos ('B'), Character'Pos ('C'),
             Character'Pos ('D'), Character'Pos ('E'), Character'Pos ('F'),
             Character'Pos ('G'), Character'Pos ('H'), Character'Pos ('I'),
             Character'Pos ('J'), Character'Pos ('K'), Character'Pos ('L'),
             Character'Pos ('M'), Character'Pos ('N'), Character'Pos ('O'),
             Character'Pos ('P'), Character'Pos ('Q'), Character'Pos ('R'),
             Character'Pos ('S'), Character'Pos ('T'), Character'Pos ('U'),
             Character'Pos ('V'), Character'Pos ('W'), Character'Pos ('X'),
             Character'Pos ('Y'), Character'Pos ('Z'), Character'Pos ('a'),
             Character'Pos ('b'), Character'Pos ('c'), Character'Pos ('d'),
             Character'Pos ('e'), Character'Pos ('f'), Character'Pos ('g'),
             Character'Pos ('h'), Character'Pos ('i'), Character'Pos ('j'),
             Character'Pos ('k'), Character'Pos ('l'), Character'Pos ('m'),
             Character'Pos ('n'), Character'Pos ('o'), Character'Pos ('p'),
             Character'Pos ('q'), Character'Pos ('r'), Character'Pos ('s'),
             Character'Pos ('t'), Character'Pos ('u'), Character'Pos ('v'),
             Character'Pos ('w'), Character'Pos ('x'), Character'Pos ('y'),
             Character'Pos ('z'), Character'Pos ('0'), Character'Pos ('1'),
             Character'Pos ('2'), Character'Pos ('3'), Character'Pos ('4'),
             Character'Pos ('5'), Character'Pos ('6'), Character'Pos ('7'),
             Character'Pos ('8'), Character'Pos ('9'), Character'Pos ('+'),
             Character'Pos ('/'));

   Encode_64_URL : constant
     array (Ada.Streams.Stream_Element range 0 .. 63)
       of Matreshka.Internals.Utf16.Utf16_Code_Unit
         := (Character'Pos ('A'), Character'Pos ('B'), Character'Pos ('C'),
             Character'Pos ('D'), Character'Pos ('E'), Character'Pos ('F'),
             Character'Pos ('G'), Character'Pos ('H'), Character'Pos ('I'),
             Character'Pos ('J'), Character'Pos ('K'), Character'Pos ('L'),
             Character'Pos ('M'), Character'Pos ('N'), Character'Pos ('O'),
             Character'Pos ('P'), Character'Pos ('Q'), Character'Pos ('R'),
             Character'Pos ('S'), Character'Pos ('T'), Character'Pos ('U'),
             Character'Pos ('V'), Character'Pos ('W'), Character'Pos ('X'),
             Character'Pos ('Y'), Character'Pos ('Z'), Character'Pos ('a'),
             Character'Pos ('b'), Character'Pos ('c'), Character'Pos ('d'),
             Character'Pos ('e'), Character'Pos ('f'), Character'Pos ('g'),
             Character'Pos ('h'), Character'Pos ('i'), Character'Pos ('j'),
             Character'Pos ('k'), Character'Pos ('l'), Character'Pos ('m'),
             Character'Pos ('n'), Character'Pos ('o'), Character'Pos ('p'),
             Character'Pos ('q'), Character'Pos ('r'), Character'Pos ('s'),
             Character'Pos ('t'), Character'Pos ('u'), Character'Pos ('v'),
             Character'Pos ('w'), Character'Pos ('x'), Character'Pos ('y'),
             Character'Pos ('z'), Character'Pos ('0'), Character'Pos ('1'),
             Character'Pos ('2'), Character'Pos ('3'), Character'Pos ('4'),
             Character'Pos ('5'), Character'Pos ('6'), Character'Pos ('7'),
             Character'Pos ('8'), Character'Pos ('9'), Character'Pos ('-'),
             Character'Pos ('_'));

   ---------------
   -- Decode_64 --
   ---------------

   procedure Decode_64
    (Item    : Matreshka.Internals.Utf16.Utf16_Code_Unit;
     Value   : out Ada.Streams.Stream_Element;
     Success : out Boolean) is
   begin
      Success := True;

      case Item is
         when Character'Pos ('A') .. Character'Pos ('Z') =>
            Value :=
              Ada.Streams.Stream_Element (Item) - Character'Pos ('A');

         when Character'Pos ('a') .. Character'Pos ('z') =>
            Value :=
              Ada.Streams.Stream_Element (Item) - Character'Pos ('a') + 26;

         when Character'Pos ('0') .. Character'Pos ('9') =>
            Value :=
              Ada.Streams.Stream_Element (Item) - Character'Pos ('0') + 52;

         when Character'Pos ('+') =>
            Value := 62;

         when Character'Pos ('/') =>
            Value := 63;

         when Character'Pos ('=') =>
            Value := 0;

         when others =>
            Success := False;
      end case;
   end Decode_64;

   -------------------
   -- Decode_64_URL --
   -------------------

   procedure Decode_64_URL
    (Item    : Matreshka.Internals.Utf16.Utf16_Code_Unit;
     Value   : out Ada.Streams.Stream_Element;
     Success : out Boolean) is
   begin
      Success := True;

      case Item is
         when Character'Pos ('A') .. Character'Pos ('Z') =>
            Value :=
              Ada.Streams.Stream_Element (Item) - Character'Pos ('A');

         when Character'Pos ('a') .. Character'Pos ('z') =>
            Value :=
              Ada.Streams.Stream_Element (Item) - Character'Pos ('a') + 26;

         when Character'Pos ('0') .. Character'Pos ('9') =>
            Value :=
              Ada.Streams.Stream_Element (Item) - Character'Pos ('0') + 52;

         when Character'Pos ('-') =>
            Value := 62;

         when Character'Pos ('_') =>
            Value := 63;

         when Character'Pos ('=') =>
            Value := 0;

         when others =>
            Success := False;
      end case;
   end Decode_64_URL;

   ------------------
   -- From_Base_64 --
   ------------------

   function From_Base_64
    (Data : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      Aux     : League.Stream_Element_Vectors.Stream_Element_Vector;
      Success : Boolean;

   begin
      From_Base_64 (Data, Aux, Success);

      if Success then
         return Aux;

      else
         raise Constraint_Error with "Mailformed base64 data";
      end if;
   end From_Base_64;

   ------------------
   -- From_Base_64 --
   ------------------

   procedure From_Base_64
    (Data    : League.Strings.Universal_String;
     Value   : in out League.Stream_Element_Vectors.Stream_Element_Vector;
     Success : out Boolean)
   is
      Source : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (Data);
      Size   : constant Ada.Streams.Stream_Element_Offset
        := Ada.Streams.Stream_Element_Offset (Source.Length) / 4 * 3;
      Target :
        Matreshka.Internals.Stream_Element_Vectors
          .Shared_Stream_Element_Vector_Access
          := League.Stream_Element_Vectors.Internals.Internal (Value);
      Unused : Ada.Streams.Stream_Element_Offset := 0;
      First  : Matreshka.Internals.Utf16.Utf16_String_Index := 0;

   begin
      if Source.Length = 0 then
         Value.Clear;
         Success := True;

         return;
      end if;

      if Source.Length mod 4 /= 0 then
         Value.Clear;
         Success := False;

         return;
      end if;

      --  Check whether storage of passed internal object can be reused, and
      --  create new shared object if can't.

      if not Matreshka.Internals.Stream_Element_Vectors.Can_Be_Reused
          (Target, Size)
      then
         Target :=
           Matreshka.Internals.Stream_Element_Vectors.Allocate (Size);
         League.Stream_Element_Vectors.Internals.Replace (Value, Target);
      end if;

      while Source.Unused > First loop
         declare
            S1 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
              := Source.Value (First);
            S2 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
              := Source.Value (First + 1);
            S3 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
              := Source.Value (First + 2);
            S4 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
              := Source.Value (First + 3);
            A1 : Ada.Streams.Stream_Element;
            A2 : Ada.Streams.Stream_Element;
            A3 : Ada.Streams.Stream_Element;
            A4 : Ada.Streams.Stream_Element;

         begin
            Decode_64 (S1, A1, Success);

            exit when not Success;

            Decode_64 (S2, A2, Success);

            exit when not Success;

            Target.Value (Unused) := (A1 * 4) or ((A2 and 2#0011_0000#) / 16);
            Unused := Unused + 1;

            if S3 /= Character'Pos ('=') then
               Decode_64 (S3, A3, Success);

               exit when not Success;

               Target.Value (Unused) :=
                ((A2 and 2#0000_1111#) * 16) or ((A3 and 2#0011_1100#) / 4);
               Unused := Unused + 1;

               if S4 /= Character'Pos ('=') then
                  Decode_64 (S4, A4, Success);

                  exit when not Success;

                  Target.Value (Unused) := ((A3 and 2#0000_0011#) * 64) or A4;
                  Unused := Unused + 1;
               end if;
            end if;

            First := First + 4;
         end;
      end loop;

      Target.Length := Unused;
   end From_Base_64;

   ----------------------
   -- From_Base_64_URL --
   ----------------------

   function From_Base_64_URL
    (Data : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      Aux     : League.Stream_Element_Vectors.Stream_Element_Vector;
      Success : Boolean;

   begin
      From_Base_64_URL (Data, Aux, Success);

      if Success then
         return Aux;

      else
         raise Constraint_Error with "Mailformed base64url data";
      end if;
   end From_Base_64_URL;

   ----------------------
   -- From_Base_64_URL --
   ----------------------

   procedure From_Base_64_URL
    (Data    : League.Strings.Universal_String;
     Value   : in out League.Stream_Element_Vectors.Stream_Element_Vector;
     Success : out Boolean)
   is
      Source : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (Data);
      Size   : constant Ada.Streams.Stream_Element_Offset
        := Ada.Streams.Stream_Element_Offset (Source.Length) / 4 * 3;
      Target :
        Matreshka.Internals.Stream_Element_Vectors
          .Shared_Stream_Element_Vector_Access
          := League.Stream_Element_Vectors.Internals.Internal (Value);
      Unused : Ada.Streams.Stream_Element_Offset := 0;
      First  : Matreshka.Internals.Utf16.Utf16_String_Index := 0;

   begin
      if Source.Length = 0 then
         Value.Clear;
         Success := True;

         return;
      end if;

      if Source.Length mod 4 = 0 then
         --  Check whether storage of passed internal object can be reused, and
         --  create new shared object if can't.

         if not Matreshka.Internals.Stream_Element_Vectors.Can_Be_Reused
             (Target, Size)
         then
            Target :=
              Matreshka.Internals.Stream_Element_Vectors.Allocate (Size);
            League.Stream_Element_Vectors.Internals.Replace (Value, Target);
         end if;

         while Source.Unused > First loop
            declare
               S1 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
                 := Source.Value (First);
               S2 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
                 := Source.Value (First + 1);
               S3 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
                 := Source.Value (First + 2);
               S4 : constant Matreshka.Internals.Utf16.Utf16_Code_Unit
                 := Source.Value (First + 3);
               A1 : Ada.Streams.Stream_Element;
               A2 : Ada.Streams.Stream_Element;
               A3 : Ada.Streams.Stream_Element;
               A4 : Ada.Streams.Stream_Element;

            begin
               Decode_64_URL (S1, A1, Success);

               exit when not Success;

               Decode_64_URL (S2, A2, Success);

               exit when not Success;

               Target.Value (Unused) :=
                (A1 * 4) or ((A2 and 2#0011_0000#) / 16);
               Unused := Unused + 1;

               if S3 /= Character'Pos ('=') then
                  Decode_64_URL (S3, A3, Success);

                  exit when not Success;

                  Target.Value (Unused) :=
                   ((A2 and 2#0000_1111#) * 16) or ((A3 and 2#0011_1100#) / 4);
                  Unused := Unused + 1;

                  if S4 /= Character'Pos ('=') then
                     Decode_64_URL (S4, A4, Success);

                     exit when not Success;

                     Target.Value (Unused) :=
                      ((A3 and 2#0000_0011#) * 64) or A4;
                     Unused := Unused + 1;
                  end if;
               end if;

               First := First + 4;
            end;
         end loop;

         Target.Length := Unused;

         if Target.Length = 0 then
            Value.Clear;
         end if;

      else
         Value.Clear;
         Success := False;
      end if;
   end From_Base_64_URL;

   ----------------
   -- To_Base_64 --
   ----------------

   function To_Base_64
    (Data : League.Stream_Element_Vectors.Stream_Element_Vector)
       return League.Strings.Universal_String
   is
      Source : constant
        Matreshka.Internals.Stream_Element_Vectors
          .Shared_Stream_Element_Vector_Access
            := League.Stream_Element_Vectors.Internals.Internal (Data);
      Target : Matreshka.Internals.Strings.Shared_String_Access;
      First  : Ada.Streams.Stream_Element_Offset := 0;
      Unused : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Aux    : Ada.Streams.Stream_Element;

   begin
      --  Return empty string when data is empty.

      if Source.Length = 0 then
         return League.Strings.Empty_Universal_String;
      end if;

      --  Allocate string for result. (Length + 2) / 3 * 4 is exact required
      --  length for the result.

      Target :=
        Matreshka.Internals.Strings.Allocate
         (Matreshka.Internals.Utf16.Utf16_String_Index
           ((Source.Length + 2) / 3 * 4));

      --  Encode each triplet of bytes when available.

      while Source.Length - First >= 3 loop
         declare
            S1 : constant Ada.Streams.Stream_Element := Source.Value (First);
            S2 : constant Ada.Streams.Stream_Element
              := Source.Value (First + 1);
            S3 : constant Ada.Streams.Stream_Element
              := Source.Value (First + 2);

         begin
            Aux := (S1 and 2#1111_1100#) / 4;
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Aux :=
             ((S1 and 2#0000_0011#) * 16) or ((S2 and 2#1111_0000#) / 16);
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Aux :=
             ((S2 and 2#0000_1111#) * 4) or ((S3 and 2#1100_0000#) / 64);
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Aux := S3 and 2#0011_1111#;
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;
         end;

         First := First + 3;
      end loop;

      if Source.Length - First = 1 then
         declare
            S1 : constant Ada.Streams.Stream_Element := Source.Value (First);

         begin
            Aux := (S1 and 2#1111_1100#) / 4;
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Aux := (S1 and 2#0000_0011#) * 16;
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Target.Value (Unused) := Character'Pos ('=');
            Unused := Unused + 1;

            Target.Value (Unused) := Character'Pos ('=');
            Unused := Unused + 1;
         end;

      elsif Source.Length - First = 2 then
         declare
            S1 : constant Ada.Streams.Stream_Element := Source.Value (First);
            S2 : constant Ada.Streams.Stream_Element
              := Source.Value (First + 1);

         begin
            Aux := (S1 and 2#1111_1100#) / 4;
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Aux :=
             ((S1 and 2#0000_0011#) * 16) or ((S2 and 2#1111_0000#) / 16);
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Aux := (S2 and 2#0000_1111#) * 4;
            Target.Value (Unused) := Encode_64 (Aux);
            Unused := Unused + 1;

            Target.Value (Unused) := Character'Pos ('=');
            Unused := Unused + 1;
         end;
      end if;

      Target.Unused := Unused;
      Target.Length := Integer (Target.Unused);
      --  All characters of base64 character set occupy one code unit, thus
      --  length of the string is always equal to the number of used code
      --  units.

      Matreshka.Internals.Strings.Configuration.String_Handler
        .Fill_Null_Terminator (Target);

      return League.Strings.Internals.Wrap (Target);

   exception
      when others =>
         Matreshka.Internals.Strings.Dereference (Target);

         raise;
   end To_Base_64;

   --------------------
   -- To_Base_64_URL --
   --------------------

   function To_Base_64_URL
    (Data : League.Stream_Element_Vectors.Stream_Element_Vector)
       return League.Strings.Universal_String
   is
      Source : constant
        Matreshka.Internals.Stream_Element_Vectors
          .Shared_Stream_Element_Vector_Access
            := League.Stream_Element_Vectors.Internals.Internal (Data);
      Target : Matreshka.Internals.Strings.Shared_String_Access;
      First  : Ada.Streams.Stream_Element_Offset := 0;
      Unused : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Aux    : Ada.Streams.Stream_Element;

   begin
      --  Return empty string when data is empty.

      if Source.Length = 0 then
         return League.Strings.Empty_Universal_String;
      end if;

      --  Allocate string for result. (Length + 2) / 3 * 4 is exact required
      --  length for the result.

      Target :=
        Matreshka.Internals.Strings.Allocate
         (Matreshka.Internals.Utf16.Utf16_String_Index
           ((Source.Length + 2) / 3 * 4));

      --  Encode each triplet of bytes when available.

      while Source.Length - First >= 3 loop
         declare
            S1 : constant Ada.Streams.Stream_Element := Source.Value (First);
            S2 : constant Ada.Streams.Stream_Element
              := Source.Value (First + 1);
            S3 : constant Ada.Streams.Stream_Element
              := Source.Value (First + 2);

         begin
            Aux := (S1 and 2#1111_1100#) / 4;
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Aux :=
             ((S1 and 2#0000_0011#) * 16) or ((S2 and 2#1111_0000#) / 16);
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Aux :=
             ((S2 and 2#0000_1111#) * 4) or ((S3 and 2#1100_0000#) / 64);
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Aux := S3 and 2#0011_1111#;
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;
         end;

         First := First + 3;
      end loop;

      if Source.Length - First = 1 then
         declare
            S1 : constant Ada.Streams.Stream_Element := Source.Value (First);

         begin
            Aux := (S1 and 2#1111_1100#) / 4;
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Aux := (S1 and 2#0000_0011#) * 16;
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Target.Value (Unused) := Character'Pos ('=');
            Unused := Unused + 1;

            Target.Value (Unused) := Character'Pos ('=');
            Unused := Unused + 1;
         end;

      elsif Source.Length - First = 2 then
         declare
            S1 : constant Ada.Streams.Stream_Element := Source.Value (First);
            S2 : constant Ada.Streams.Stream_Element
              := Source.Value (First + 1);

         begin
            Aux := (S1 and 2#1111_1100#) / 4;
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Aux :=
             ((S1 and 2#0000_0011#) * 16) or ((S2 and 2#1111_0000#) / 16);
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Aux := (S2 and 2#0000_1111#) * 4;
            Target.Value (Unused) := Encode_64_URL (Aux);
            Unused := Unused + 1;

            Target.Value (Unused) := Character'Pos ('=');
            Unused := Unused + 1;
         end;
      end if;

      Target.Unused := Unused;
      Target.Length := Integer (Target.Unused);
      --  All characters of base64 character set occupy one code unit, thus
      --  length of the string is always equal to the number of used code
      --  units.

      Matreshka.Internals.Strings.Configuration.String_Handler
        .Fill_Null_Terminator (Target);

      return League.Strings.Internals.Wrap (Target);

   exception
      when others =>
         Matreshka.Internals.Strings.Dereference (Target);

         raise;
   end To_Base_64_URL;

end League.Base_Codecs;
