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
with Ada.Characters.Wide_Wide_Latin_1;

with League.Strings;

package body Matreshka.CLDR.Collation_Rules_Parser is

--   function Is_Collation_Syntax_Character
--    (Item : Wide_Wide_Character) return Boolean;
--   --  Returns True when given character is reserved for collation syntax.

   procedure Skip_Spaces
    (Buffer : Wide_Wide_String;
     Index  : in out Positive;
     Last   : Natural);

   procedure Parse_String
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out League.Strings.Universal_String;
     Success : out Boolean);
   --  Parses string.

   procedure Parse_Relation_Operator
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.CLDR.Collation_Data.Collation_Operator;
     Success : out Boolean);
   --  Parses string.

--   -----------------------------------
--   -- Is_Collation_Syntax_Character --
--   -----------------------------------
--   function Is_Collation_Syntax_Character
--    (Item : Wide_Wide_Character) return Boolean;
   ---------------------------
   -- Parse_Collation_Rules --
   ---------------------------

   procedure Parse_Collation_Rules
    (Data   : in out Matreshka.CLDR.Collation_Data.Collation_Information;
     Buffer : Wide_Wide_String)
   is
      Index    : Positive := Buffer'First;
      Reset    : League.Strings.Universal_String;
      Next     : League.Strings.Universal_String;
      Operator : Matreshka.CLDR.Collation_Data.Collation_Operator;
      Success  : Boolean;

   begin
      Skip_Spaces (Buffer, Index, Buffer'Last);

      while Index <= Buffer'Last loop
         if Buffer (Index) /= '&' then
            raise Program_Error;
         end if;

         Index := Index + 1;

         Parse_String (Buffer, Index, Buffer'Last, Reset, Success);

         if not Success then
            raise Program_Error;
         end if;

         while Index <= Buffer'Last loop
            Skip_Spaces (Buffer, Index, Buffer'Last);

            exit when Index > Buffer'Last;

            exit when Buffer (Index) = '&';

            Parse_Relation_Operator
             (Buffer, Index, Buffer'Last, Operator, Success);

            if not Success then
               raise Program_Error;
            end if;

            Parse_String (Buffer, Index, Buffer'Last, Next, Success);

            if not Success then
               raise Program_Error;
            end if;

            if Reset.Length /= 1 then
               raise Program_Error;

            elsif Next.Length /= 1 then
               raise Program_Error;

            else
               Matreshka.CLDR.Collation_Data.Reorder
                (Data,
                 Wide_Wide_Character'Pos (Reset (1).To_Wide_Wide_Character),
                 Operator,
                 Wide_Wide_Character'Pos (Next (1).To_Wide_Wide_Character));
            end if;

            Reset := Next;
         end loop;
      end loop;
   end Parse_Collation_Rules;

   -----------------------------
   -- Parse_Relation_Operator --
   -----------------------------

   procedure Parse_Relation_Operator
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out Matreshka.CLDR.Collation_Data.Collation_Operator;
     Success : out Boolean) is
   begin
      Value   := Matreshka.CLDR.Collation_Data.Identically;
      Success := False;

      Skip_Spaces (Buffer, Index, Last);

      if Index > Last then
         return;
      end if;

      while Index <= Last loop
         case Buffer (Index) is
            when '<' =>
               case Value is
                  when Matreshka.CLDR.Collation_Data.Identically =>
                     Success := True;
                     Value   := Matreshka.CLDR.Collation_Data.Primary;

                  when Matreshka.CLDR.Collation_Data.Primary =>
                     Success := True;
                     Value   := Matreshka.CLDR.Collation_Data.Secondary;

                  when Matreshka.CLDR.Collation_Data.Secondary =>
                     Success := True;
                     Value   := Matreshka.CLDR.Collation_Data.Trinary;

                  when Matreshka.CLDR.Collation_Data.Trinary =>
                     Success := True;

                     raise Program_Error;
               end case;

            when others =>
               return;
         end case;

         Index := Index + 1;
      end loop;
   end Parse_Relation_Operator;

   ------------------
   -- Parse_String --
   ------------------

   procedure Parse_String
    (Buffer  : Wide_Wide_String;
     Index   : in out Positive;
     Last    : Natural;
     Value   : out League.Strings.Universal_String;
     Success : out Boolean) is
   begin
      Value.Clear;
      Success := False;

      Skip_Spaces (Buffer, Index, Last);

      if Index > Last then
         return;
      end if;

      while Index <= Last loop
         case Buffer (Index) is
            when '<' =>
               return;

            when ' ' =>
               return;

            when Ada.Characters.Wide_Wide_Latin_1.LF =>
               return;

            when others =>
               Success := True;
               Value.Append (Buffer (Index));
         end case;

         Index := Index + 1;
      end loop;
   end Parse_String;

   -----------------
   -- Skip_Spaces --
   -----------------

   procedure Skip_Spaces
    (Buffer : Wide_Wide_String;
     Index  : in out Positive;
     Last   : Natural) is
   begin
      while Index <= Last loop
         case Buffer (Index) is
            when ' '
              | Ada.Characters.Wide_Wide_Latin_1.HT
              | Ada.Characters.Wide_Wide_Latin_1.LF
            =>
               Index := Index + 1;

            when '#' =>
               Index := Index + 1;

               while Index <= Last loop
                  case Buffer (Index) is
                     when Ada.Characters.Wide_Wide_Latin_1.LF =>
                        Index := Index + 1;

                        exit;

                     when others =>
                        Index := Index + 1;
                  end case;
               end loop;

            when others =>
               exit;
         end case;
      end loop;
   end Skip_Spaces;

end Matreshka.CLDR.Collation_Rules_Parser;
