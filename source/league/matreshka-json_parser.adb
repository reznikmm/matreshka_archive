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
--  $Revision: 3824 $ $Date: 2013-03-28 20:15:46 +0200 (Чт., 28 марта 2013) $
------------------------------------------------------------------------------
with League.Holders;
with League.JSON.Arrays;
with League.JSON.Objects;
with League.JSON.Values;
with Matreshka.Internals.Utf16;

package body Matreshka.JSON_Parser is

   -----------
   -- Parse --
   -----------

   procedure Parse
    (Text    : League.Strings.Universal_String;
     Value   : out League.JSON.Documents.JSON_Document;
     Success : out Boolean)
   is
      Index  : Natural;
      Char   : Wide_Wide_Character;

      function Next_Character return Boolean;

      function Match_Character (Result : Wide_Wide_Character) return Boolean;

      function Parse_JSON_Text
       (Result : out League.JSON.Documents.JSON_Document) return Boolean;

      function WS return Boolean;

      function Parse_Value
       (Result : out League.JSON.Values.JSON_Value) return Boolean;

      function Parse_False_Value return Boolean;

      function Parse_Null_Value return Boolean;

      function Parse_True_Value return Boolean;

      function Parse_Object_Value
       (Result : out League.JSON.Objects.JSON_Object) return Boolean;

      function Parse_Member
       (Key    : out League.Strings.Universal_String;
        Value  : out League.JSON.Values.JSON_Value) return Boolean;

      function Parse_Array_Value
       (Result : out League.JSON.Arrays.JSON_Array) return Boolean;

      function Parse_Number_Value
       (Result : out League.Holders.Universal_Float) return Boolean;

      function Parse_String_Value
       (Result : out League.Strings.Universal_String) return Boolean;

      function Parse_Escaped (Result : out Wide_Wide_Character) return Boolean;

      function Parse_Hex_Digit (Result : out Natural) return Boolean;

      ---------------------
      -- Match_Character --
      ---------------------

      function Match_Character (Result : Wide_Wide_Character) return Boolean is
      begin
         return Char = Result and then Next_Character;
      end Match_Character;

      --------------------
      -- Next_Character --
      --------------------

      function Next_Character return Boolean is
      begin
         Index := Index + 1;

         if Index <= Text.Length then
            Char := Text.Element (Index).To_Wide_Wide_Character;
            return True;
         else
            return False;
         end if;
      end Next_Character;

      -----------------------
      -- Parse_Array_Value --
      -----------------------

      function Parse_Array_Value
       (Result : out League.JSON.Arrays.JSON_Array) return Boolean
      is
         Next_Value : League.JSON.Values.JSON_Value;

      begin
         if Match_Character ('[') and then WS then
            Result := League.JSON.Arrays.Empty_JSON_Array;

            if Char /= ']' then
               if Parse_Value (Next_Value) then
                  Result.Append (Next_Value);

                  loop
                     if not WS then
                        --  Unexpected EOF after value in array

                        return False;
                     end if;

                     exit when not Match_Character (',');

                     if WS and then Parse_Value (Next_Value) then
                        Result.Append (Next_Value);

                     else
                        --  Value expected after ','

                        return False;
                     end if;
                  end loop;

               else
                  --  Value expected after '['

                  return False;
               end if;
            end if;

            if Match_Character (']') and then WS then
               return True;
            else
               --  ']' expected
               return False;
            end if;
         else
            --  Unexpected EOF after '['
            return False;
         end if;
      end Parse_Array_Value;

      -------------------
      -- Parse_Escaped --
      -------------------

      function Parse_Escaped (Result : out Wide_Wide_Character) return Boolean is
         use Matreshka.Internals.Utf16;
         use type Utf16_Code_Unit;

         Hex_1 : Utf16_Code_Unit;
         Hex_2 : Utf16_Code_Unit;
         Hex_3 : Utf16_Code_Unit;
         Hex_4 : Utf16_Code_Unit;

      begin
         case Char is
            when '"' | '/' | '\' =>
               Result := Char;

            when 'b' =>
               Result := Wide_Wide_Character'Val (8);

            when 'f' =>
               Result := Wide_Wide_Character'Val (12);

            when 'n' =>
               Result := Wide_Wide_Character'Val (10);

            when 'r' =>
               Result := Wide_Wide_Character'Val (13);

            when 't' =>
               Result := Wide_Wide_Character'Val (9);

            when 'u' =>
               if Parse_Hex_Digit (Natural (Hex_1))
                 and then Parse_Hex_Digit (Natural (Hex_2))
                 and then Parse_Hex_Digit (Natural (Hex_3))
                 and then Parse_Hex_Digit (Natural (Hex_4))
               then
                  Result :=
                    Wide_Wide_Character'Val
                     (16 * (16 * (16 * Hex_1 + Hex_2) + Hex_3) + Hex_4);

               else
                  -- Wrong \uXXXX

                  return False;
               end if;

            when others =>
               -- Unknown escaped

               return False;
         end case;

         return True;
      end Parse_Escaped;

      -----------------------
      -- Parse_False_Value --
      -----------------------

      function Parse_False_Value return Boolean is
      begin
         return Match_Character ('f')
           and then Match_Character ('a')
           and then Match_Character ('l')
           and then Match_Character ('s')
           and then Match_Character ('e');
      end Parse_False_Value;

      ---------------------
      -- Parse_Hex_Digit --
      ---------------------

      function Parse_Hex_Digit (Result : out Natural) return Boolean is
      begin
         case Char is
            when '0' .. '9' =>
               Result :=
                 Wide_Wide_Character'Pos (Char)
                   - Wide_Wide_Character'Pos ('0');

            when 'a' .. 'f' =>
               Result :=
                 Wide_Wide_Character'Pos (Char)
                   - Wide_Wide_Character'Pos ('a') + 10;

            when 'A' .. 'F' =>
               Result :=
                 Wide_Wide_Character'Pos (Char)
                   - Wide_Wide_Character'Pos ('F') + 10;

            when others =>
               --  Unexpected hex digit

               return False;
         end case;

         if not Next_Character then
            --  Unexpected EOF after hex

            return False;
         end if;

         return True;
      end Parse_Hex_Digit;

      ---------------------
      -- Parse_JSON_Text --
      ---------------------

      function Parse_JSON_Text
       (Result : out League.JSON.Documents.JSON_Document) return Boolean
      is
         Array_Value  : League.JSON.Arrays.JSON_Array;
         Object_Value : League.JSON.Objects.JSON_Object;

      begin
         if WS then
            if Char = '[' then
               if Parse_Array_Value (Array_Value) then
                  Result.Set_Array (Array_Value);

                  return True;

               else
                  return False;
               end if;

            elsif Char = '{' then
               if Parse_Object_Value (Object_Value) then
                  Result.Set_Object (Object_Value);

                  return True;

               else
                  return False;
               end if;
            end if;
         end if;

         return False;
      end Parse_JSON_Text;

      ------------------
      -- Parse_Member --
      ------------------

      function Parse_Member
        (Key    : out League.Strings.Universal_String;
         Value  : out League.JSON.Values.JSON_Value) return Boolean is
      begin
         if Parse_String_Value (Key) then
            if not WS then
               --  Unexpected EOF after name

               return False;
            end if;

            if Char /= ':' then
               --  Expected ':'

               return False;
            end if;

            if not WS then
               --  Unexpected EOF after ':'

               return False;
            end if;

            return Parse_Value (Value);

         else
            --  String expected

            return False;
         end if;
      end Parse_Member;

      ----------------------
      -- Parse_Null_Value --
      ----------------------

      function Parse_Null_Value return Boolean is
      begin
         if Match_Character ('n')
           and then Match_Character ('u')
           and then Match_Character ('l')
           and then Match_Character ('l')
         then
            return True;

         else
            return False;
         end if;
      end Parse_Null_Value;

      ------------------------
      -- Parse_Number_Value --
      ------------------------

      function Parse_Number_Value
       (Result : out League.Holders.Universal_Float) return Boolean
      is
         Old_Index : constant Positive := Index;

      begin
         --  [minus]

         if Char = '-' then
            if not Next_Character then
               --  unexpected EOF after '-'

               return False;
            end if;
         end if;

         --  int

         case Char is
            when '0' =>
               if not Next_Character then
                  --  unexpected EOF after '0'

                  return False;
               end if;

            when '1' .. '9' =>
               loop
                  if not Next_Character then
                     --  unexpected EOF after digit

                     return False;
                  end if;

                  exit when Char not in '0' .. '9';
               end loop;

            when others =>
               --  Non digit character in int
               return False;
         end case;

         --  [frac]

         if Char = '.' then
            if not Next_Character then
               --  unexpected EOF after '.'

               return False;
            end if;

            if Char not in '0' .. '9' then
               --  Expected digit after '.'

               return False;
            end if;

            loop
               if not Next_Character then
                  --  unexpected EOF after digit

                  return False;
               end if;

               exit when Char not in '0' .. '9';
            end loop;
         end if;

         --  [exp]

         if Char in 'e' | 'E' then
            if not Next_Character then
               --  unexpected EOF after 'e'

               return False;
            end if;

            --  [minus/plus]

            if Char in '+' | '-' then
               if not Next_Character then
                  --  unexpected EOF after [minus/plus]

                  return False;
               end if;
            end if;

            if Char not in '0' .. '9' then
               --  Expected digit after 'e'

               return False;
            end if;

            loop
               if not Next_Character then
                  --  unexpected EOF after digit in exp

                  return False;
               end if;

               exit when Char not in '0' .. '9';
            end loop;
         end if;

         Result :=
           League.Holders.Universal_Float'Wide_Wide_Value
            (Text.Slice (Old_Index, Index - 1).To_Wide_Wide_String);

         return True;
      end Parse_Number_Value;

      ------------------------
      -- Parse_Object_Value --
      ------------------------

      function Parse_Object_Value
       (Result : out League.JSON.Objects.JSON_Object) return Boolean
      is
         Key        : League.Strings.Universal_String;
         Next_Value : League.JSON.Values.JSON_Value;

      begin
         if Next_Character   --  Skip '{'
           and then WS
         then
            Result := League.JSON.Objects.Empty_JSON_Object;

            if Char /= '}' then
               if Parse_Member (Key, Next_Value) then
                  Result.Insert (Key, Next_Value);

                  loop
                     if not WS then
                        --  Unexpected EOF after member in object

                        return False;
                     end if;

                     exit when not Match_Character (',');

                     if WS and then Parse_Member (Key, Next_Value) then
                        Result.Insert (Key, Next_Value);

                     else
                        --  Member expected after ','

                        return False;
                     end if;
                  end loop;

               else
                  --  Member expected after '{'

                  return False;
               end if;
            end if;

            if Match_Character ('}') and then WS then
               return True;

            else
               --  '}' expected

               return False;
            end if;

         else
            --  Unexpected EOF after '{'

            return False;
         end if;
      end Parse_Object_Value;

      ------------------------
      -- Parse_String_Value --
      ------------------------

      function Parse_String_Value
       (Result : out League.Strings.Universal_String) return Boolean
      is
         O10_FFFF  : constant Wide_Wide_Character
           := Wide_Wide_Character'Val (16#10_FFFF#);
         Old_Index : Positive := Index + 1;
         Escape    : Wide_Wide_Character;

      begin
         if Match_Character ('"') then
            Result.Clear;

            loop
               case Char is
                  when '"' =>
                     if Old_Index < Index then
                        Result.Append (Text.Slice (Old_Index, Index - 1));
                     end if;

                     exit;

                  when '\' =>
                     if Old_Index < Index then
                        Result.Append (Text.Slice (Old_Index, Index - 1));
                     end if;

                     if not Parse_Escaped (Escape) then
                        --  Unknown escaped character

                        return False;
                     end if;

                     Result.Append (Escape);
                     Old_Index := Index;

                  when --  %x20-21 / %x23-5B / %x5D-10FFFF
                     ' ' | '!' | '#' .. '[' | ']' .. O10_FFFF
                  =>
                     if not Next_Character then
                        --  Unexpected EOF in string

                        return False;
                     end if;

                  when others =>
                     --  Unexpected character in string

                     return False;
               end case;
            end loop;

            if not Next_Character then
               --  Unexpected EOF after string

               return False;
            end if;

            return True;

         else
            --  quotation mark expected

            return False;
         end if;
      end Parse_String_Value;

      ----------------------
      -- Parse_True_Value --
      ----------------------

      function Parse_True_Value return Boolean is
      begin
         if Match_Character ('t')
           and then Match_Character ('r')
           and then Match_Character ('u')
           and then Match_Character ('e')
         then
            return True;

         else
            return False;
         end if;
      end Parse_True_Value;

      -----------------
      -- Parse_Value --
      -----------------

      function Parse_Value
       (Result : out League.JSON.Values.JSON_Value) return Boolean
      is
         Aux_Array  : League.JSON.Arrays.JSON_Array;
         Aux_Object : League.JSON.Objects.JSON_Object;
         Aux_String : League.Strings.Universal_String;
         Aux_Float  : League.Holders.Universal_Float;

      begin
         case Char is
            when 'f' =>
               if Parse_False_Value then
                  Result := League.JSON.Values.To_JSON_Value (False);

                  return True;

               else
                  return False;
               end if;

            when 'n' =>
               if Parse_Null_Value then
                  Result := League.JSON.Values.Null_JSON_Value;

                  return True;

               else
                  return False;
               end if;

            when 't' =>
               if Parse_True_Value then
                  Result := League.JSON.Values.To_JSON_Value (True);

                  return True;

               else
                  return False;
               end if;

            when '{' =>
               if Parse_Object_Value (Aux_Object) then
                  Result := League.JSON.Values.To_JSON_Value (Aux_Object);

                  return True;

               else
                  return False;
               end if;

            when '[' =>
               if Parse_Array_Value (Aux_Array) then
                  Result := League.JSON.Values.To_JSON_Value (Aux_Array);

                  return True;

               else
                  return False;
               end if;

            when '"' =>
               if Parse_String_Value (Aux_String) then
                  Result := League.JSON.Values.To_JSON_Value (Aux_String);

                  return True;

               else
                  return False;
               end if;

            when others =>
               if Parse_Number_Value (Aux_Float) then
                  Result := League.JSON.Values.To_JSON_Value (Aux_Float);

                  return True;

               else
                  return False;
               end if;
         end case;
      end Parse_Value;

      --------
      -- WS --
      --------

      function WS return Boolean is
         O9 : constant Wide_Wide_Character := Wide_Wide_Character'Val (9);
         OA : constant Wide_Wide_Character := Wide_Wide_Character'Val (10);
         OD : constant Wide_Wide_Character := Wide_Wide_Character'Val (13);
      begin
         while Char in O9 | OA | OD | ' ' loop
            if not Next_Character then
               return False;
            end if;
         end loop;

         return True;
      end WS;

   begin
      Index := 0;

      Success := Next_Character and then Parse_JSON_Text (Value);
   end Parse;

end Matreshka.JSON_Parser;
