------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013-2021, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Characters.Latin;
with League.Holders.Booleans;
with League.Holders.JSON_Objects;
with League.JSON.Objects;
with League.JSON.Values;

package body XML.Templates.Processors.Parser is

   type Token_Kinds is
    (Token_Identifier,
     Token_Full_Stop,
     Token_Equals,
     Token_Not_Equals,
     Token_Is,
     Token_Of,
     Token_Not,
     Token_Null,
     Token_End_Of_Expression);
   subtype Keyword_Token is Token_Kinds range Token_Is .. Token_Null;

   type Scanner_Type is tagged record
      Text    : League.Strings.Universal_String;
      Current : Positive := 1;
      Token   : Token_Kinds;
      First   : Positive;
      Last    : Natural;
   end record;

   function Next_Token (Self : in out Scanner_Type'Class) return Token_Kinds;

   function Token_Image
    (Self : Scanner_Type'Class) return League.Strings.Universal_String;

   procedure Evaluate_Simple_Expression
    (Scanner : in out Scanner_Type'Class;
     Context : String_Holder_Maps.Map;
     Value   : out League.Holders.Holder;
     Success : out Boolean);

   Keywords : constant array (Keyword_Token)
     of League.Strings.Universal_String
       := (Token_Is   => League.Strings.To_Universal_String ("is"),
           Token_Of   => League.Strings.To_Universal_String ("of"),
           Token_Not  => League.Strings.To_Universal_String ("not"),
           Token_Null => League.Strings.To_Universal_String ("null"));

   ---------------------------------
   -- Evaluate_Boolean_Expression --
   ---------------------------------

   procedure Evaluate_Boolean_Expression
    (Text    : League.Strings.Universal_String;
     Context : String_Holder_Maps.Map;
     Value   : out Boolean;
     Success : out Boolean)
   is
      Scanner : Scanner_Type;
      Left    : League.Holders.Holder;
      Holder  : League.Holders.Holder;
      Invert  : Boolean := False;
      Save    : Positive := 1;  --  Position of scanner after last 'not'

   begin
      Scanner.Text := Text;

      --  Process leading 'not' keywords

      loop
         case Scanner.Next_Token is
            when Token_Not =>
               Invert := not Invert;
               Save := Scanner.Current;

            when others =>
               --  Rewind scanner to the beginning of text
               Scanner.Current := Save;
               exit;

         end case;
      end loop;

      Scanner.Evaluate_Simple_Expression (Context, Holder, Success);

      if Success then
         case Scanner.Token is
            when Token_End_Of_Expression =>
               if League.Holders.Has_Tag
                 (Holder, League.Holders.Booleans.Value_Tag)
               then
                  Value := League.Holders.Booleans.Element (Holder);

               else
                  --  Only Boolean result is allowed in boolean expression
                  Success := False;
               end if;

            when Token_Is =>
               case Scanner.Next_Token is
                  when Token_Null =>
                     Value := League.Holders.Is_Empty (Holder);

                  when Token_Not =>
                     Value := not League.Holders.Is_Empty (Holder);

                     if Scanner.Next_Token /= Token_Null then
                        Success := False;
                     end if;

                  when others =>
                     Success := False;
               end case;

               if Scanner.Next_Token /= Token_End_Of_Expression then
                  Success := False;
               end if;

            when Token_Equals | Token_Not_Equals =>
               Left := Holder;

               if Scanner.Token = Token_Not_Equals then
                  Invert := True;
               end if;

               Scanner.Evaluate_Simple_Expression (Context, Holder, Success);

               if Success then
                  if League.Holders.Is_Abstract_Integer (Left)
                    and then League.Holders.Is_Abstract_Integer (Holder)
                  then
                     declare
                        use type League.Holders.Universal_Integer;

                        L : constant League.Holders.Universal_Integer
                          := League.Holders.Element (Left);
                        R : constant League.Holders.Universal_Integer
                          := League.Holders.Element (Holder);

                     begin
                        Value := L = R;
                     end;

                  else
                     Success := False;
                  end if;
               end if;

            when others =>
               Success := False;
         end case;

         Value := Value xor Invert;
      end if;
   end Evaluate_Boolean_Expression;

   -----------------------------
   -- Evaluate_For_Expression --
   -----------------------------

   procedure Evaluate_For_Expression
    (Text     : League.Strings.Universal_String;
     Context  : String_Holder_Maps.Map;
     Variable : out League.Strings.Universal_String;
     Value    : out League.Holders.Holder;
     Success  : out Boolean)
   is
      Scanner : Scanner_Type;

   begin
      Scanner.Text := Text;

      --  Lookup for identifier.

      case Scanner.Next_Token is
         when Token_Identifier =>
            Variable := Scanner.Token_Image.To_Casefold;
            Success := True;

         when others =>
            League.Holders.Clear (Value);
            Success := False;

            return;
      end case;

      --  Lookup for 'Of' keyword.

      case Scanner.Next_Token is
         when Token_Of =>
            null;

         when others =>
            League.Holders.Clear (Value);
            Success := False;

            return;
      end case;

      --  Evaluate rest of expression.

      Scanner.Evaluate_Simple_Expression (Context, Value, Success);
      Success := Success and then Scanner.Token = Token_End_Of_Expression;
   end Evaluate_For_Expression;

   --------------------------------
   -- Evaluate_Simple_Expression --
   --------------------------------

   procedure Evaluate_Simple_Expression
    (Text    : League.Strings.Universal_String;
     Context : String_Holder_Maps.Map;
     Value   : out League.Holders.Holder;
     Success : out Boolean)
   is
      Scanner   : Scanner_Type;
   begin
      Scanner.Text := Text;
      Scanner.Evaluate_Simple_Expression (Context, Value, Success);
      Success := Success and then Scanner.Token = Token_End_Of_Expression;
   end Evaluate_Simple_Expression;

   --------------------------------
   -- Evaluate_Simple_Expression --
   --------------------------------

   procedure Evaluate_Simple_Expression
    (Scanner : in out Scanner_Type'Class;
     Context : String_Holder_Maps.Map;
     Value   : out League.Holders.Holder;
     Success : out Boolean) is
   begin

      --  Lookup for identifier

      loop
         case Scanner.Next_Token is
            when Token_Identifier =>
               Value := Context (Scanner.Token_Image.To_Casefold);
               Success := True;
               exit;

            when others =>
               League.Holders.Clear (Value);
               Success := False;

               return;
         end case;
      end loop;

      loop
         --  Lookup for full stop or end of expression.

         case Scanner.Next_Token is
            when Token_End_Of_Expression =>
               exit;

            when Token_Full_Stop =>
               null;

            when others =>
               --  Return on end of expression or any other token
               return;
         end case;

         --  Lookup for identifier.

         case Scanner.Next_Token is
            when Token_Identifier =>
               if League.Holders.Has_Tag
                   (Value, League.Holders.JSON_Objects.Value_Tag)
               then
                  declare
                     JS_Object : constant League.JSON.Objects.JSON_Object
                       := League.Holders.JSON_Objects.Element (Value);
                  begin
                     if not JS_Object.Contains (Scanner.Token_Image) then
                        League.Holders.Clear (Value);
                        Success := False;

                        return;
                     end if;

                     Value := League.JSON.Values.To_Holder
                       (JS_Object.Value (Scanner.Token_Image));
                  end;
               else
                  League.Holders.Component
                    (Value, Scanner.Token_Image, Value, Success);

                  if not Success then
                     return;
                  end if;
               end if;

            when others =>
               League.Holders.Clear (Value);
               Success := False;

               return;
         end case;
      end loop;
   end Evaluate_Simple_Expression;

   ----------------
   -- Next_Token --
   ----------------

   function Next_Token (Self : in out Scanner_Type'Class) return Token_Kinds is
      use type League.Characters.Universal_Character;
      use type League.Strings.Universal_String;

   begin
      Self.First := Self.Current;

      --  Skip white spaces

      while Self.Current <= Self.Text.Length loop
         exit when not Self.Text (Self.Current).Is_White_Space;

         Self.Current := Self.Current + 1;
         Self.First   := Self.Current;
      end loop;

      if Self.First > Self.Text.Length then
         Self.Token := Token_End_Of_Expression;

      --  Extract identifier

      elsif Self.Text (Self.First).Is_ID_Start then
         Self.Current := Self.Current + 1;

         while Self.Current <= Self.Text.Length loop
            exit when not Self.Text (Self.Current).Is_ID_Continue;

            Self.Current := Self.Current + 1;
         end loop;

         Self.Last := Self.Current - 1;
         Self.Token := Token_Identifier;

         for J in Keywords'Range loop
            if Self.Last - Self.First + 1 = Keywords (J).Length
              and then Self.Token_Image = Keywords (J)
            then
               Self.Token := J;

               exit;
            end if;
         end loop;

      elsif Self.Text (Self.First) = League.Characters.Latin.Full_Stop then
         Self.Current := Self.Current + 1;
         Self.Token := Token_Full_Stop;

      elsif Self.Text (Self.First) = League.Characters.Latin.Equals_Sign then
         Self.Current := Self.Current + 1;
         Self.Token := Token_Equals;

      elsif Self.Text (Self.First) = League.Characters.Latin.Solidus then
         Self.Current := Self.Current + 1;

         if Self.Text (Self.Current) = League.Characters.Latin.Equals_Sign then
            Self.Current := Self.Current + 1;
            Self.Token := Token_Not_Equals;

         else
            raise Constraint_Error with "Syntax error";
         end if;

      else

         raise Constraint_Error with "Syntax error";
      end if;

      return Self.Token;
   end Next_Token;

   -----------------
   -- Token_Image --
   -----------------

   function Token_Image
    (Self : Scanner_Type'Class) return League.Strings.Universal_String is
   begin
      return Self.Text.Slice (Self.First, Self.Last);
   end Token_Image;

end XML.Templates.Processors.Parser;
