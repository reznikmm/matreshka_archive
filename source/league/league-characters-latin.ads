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
-- Copyright © 2011-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides constants for characters of Latin script:
--   - C0 Controls and Basic Latin
--   - C1 Controls and Latin 1 Supplement
------------------------------------------------------------------------------

package League.Characters.Latin is

   pragma Preelaborate;

   --  C0 Controls and Basic Latin

   Character_Tabulation   : constant Universal_Character;  --  0009
   Line_Feed              : constant Universal_Character;  --  000A

   Form_Feed              : constant Universal_Character;  --  000C
   Carriage_Return        : constant Universal_Character;  --  000D

   Space                  : constant Universal_Character;  --  0020
   Exclamation_Mark       : constant Universal_Character;  --  0021
   Quotation_Mark         : constant Universal_Character;  --  0022
   Number_Sign            : constant Universal_Character;  --  0023
   Dollar_Sign            : constant Universal_Character;  --  0024
   Percent_Sign           : constant Universal_Character;  --  0025
   Ampersand              : constant Universal_Character;  --  0026
   Apostrophe             : constant Universal_Character;  --  0027
   Left_Parenthesis       : constant Universal_Character;  --  0028
   Right_Parenthesis      : constant Universal_Character;  --  0029
   Asterisk               : constant Universal_Character;  --  002A
   Plus_Sign              : constant Universal_Character;  --  002B
   Comma                  : constant Universal_Character;  --  002C
   Hyphen_Minus           : constant Universal_Character;  --  002D
   Full_Stop              : constant Universal_Character;  --  002E
   Solidus                : constant Universal_Character;  --  002F

   Digit_Zero             : constant Universal_Character;  --  0030

   Digit_Two              : constant Universal_Character;  --  0032
   Digit_Three            : constant Universal_Character;  --  0033

   Digit_Five             : constant Universal_Character;  --  0035

   Digit_Seven            : constant Universal_Character;  --  0037

   Digit_Nine             : constant Universal_Character;  --  0039
   Colon                  : constant Universal_Character;  --  003A
   Semicolon              : constant Universal_Character;  --  003B
   Less_Than_Sign         : constant Universal_Character;  --  003C
   Equals_Sign            : constant Universal_Character;  --  003D
   Greater_Than_Sign      : constant Universal_Character;  --  003E
   Question_Mark          : constant Universal_Character;  --  003F

   Commercial_At          : constant Universal_Character;  --  0040
   Latin_Capital_Letter_A : constant Universal_Character;  --  0041
   Latin_Capital_Letter_B : constant Universal_Character;  --  0042

   Latin_Capital_Letter_F : constant Universal_Character;

   Latin_Capital_Letter_Z : constant Universal_Character;
   Left_Square_Bracket    : constant Universal_Character;  --  005B

   Right_Square_Bracket   : constant Universal_Character;  --  005D

   Low_Line               : constant Universal_Character;  --  005F
   Grave_Accent           : constant Universal_Character;  --  0060
   Latin_Small_Letter_A   : constant Universal_Character;  --  0061

   Latin_Small_Letter_F   : constant Universal_Character;

   Latin_Small_Letter_Z   : constant Universal_Character;

   Tilde                  : constant Universal_Character;

   --  C1 Controls and Latin 1 Supplement

   No_Break_Space         : constant Universal_Character;  --  00A0

private

   Character_Tabulation   : constant Universal_Character := (Code => 16#0009#);
   Line_Feed              : constant Universal_Character := (Code => 16#000A#);

   Form_Feed              : constant Universal_Character := (Code => 16#000C#);
   Carriage_Return        : constant Universal_Character := (Code => 16#000D#);

   Space                  : constant Universal_Character := (Code => 16#0020#);
   Exclamation_Mark       : constant Universal_Character := (Code => 16#0021#);
   Quotation_Mark         : constant Universal_Character := (Code => 16#0022#);
   Number_Sign            : constant Universal_Character := (Code => 16#0023#);
   Dollar_Sign            : constant Universal_Character := (Code => 16#0024#);
   Percent_Sign           : constant Universal_Character := (Code => 16#0025#);
   Ampersand              : constant Universal_Character := (Code => 16#0026#);
   Apostrophe             : constant Universal_Character := (Code => 16#0027#);
   Left_Parenthesis       : constant Universal_Character := (Code => 16#0028#);
   Right_Parenthesis      : constant Universal_Character := (Code => 16#0029#);
   Asterisk               : constant Universal_Character := (Code => 16#002A#);
   Plus_Sign              : constant Universal_Character := (Code => 16#002B#);
   Comma                  : constant Universal_Character := (Code => 16#002C#);
   Hyphen_Minus           : constant Universal_Character := (Code => 16#002D#);
   Full_Stop              : constant Universal_Character := (Code => 16#002E#);
   Solidus                : constant Universal_Character := (Code => 16#002F#);
   Digit_Zero             : constant Universal_Character := (Code => 16#0030#);

   Digit_Two              : constant Universal_Character := (Code => 16#0032#);
   Digit_Three            : constant Universal_Character := (Code => 16#0033#);

   Digit_Five             : constant Universal_Character := (Code => 16#0035#);

   Digit_Seven            : constant Universal_Character := (Code => 16#0037#);

   Digit_Nine             : constant Universal_Character := (Code => 16#0039#);

   Colon                  : constant Universal_Character := (Code => 16#003A#);
   Semicolon              : constant Universal_Character := (Code => 16#003B#);
   Less_Than_Sign         : constant Universal_Character := (Code => 16#003C#);
   Equals_Sign            : constant Universal_Character := (Code => 16#003D#);
   Greater_Than_Sign      : constant Universal_Character := (Code => 16#003E#);
   Question_Mark          : constant Universal_Character := (Code => 16#003F#);
   Commercial_At          : constant Universal_Character := (Code => 16#0040#);
   Latin_Capital_Letter_A : constant Universal_Character := (Code => 16#0041#);
   Latin_Capital_Letter_B : constant Universal_Character := (Code => 16#0042#);

   Latin_Capital_Letter_F : constant Universal_Character := (Code => 16#0046#);

   Latin_Capital_Letter_Z : constant Universal_Character := (Code => 16#005A#);
   Left_Square_Bracket    : constant Universal_Character := (Code => 16#005B#);

   Right_Square_Bracket   : constant Universal_Character := (Code => 16#005D#);

   Low_Line               : constant Universal_Character := (Code => 16#005F#);
   Grave_Accent           : constant Universal_Character := (Code => 16#0060#);
   Latin_Small_Letter_A   : constant Universal_Character := (Code => 16#0061#);

   Latin_Small_Letter_F   : constant Universal_Character := (Code => 16#0066#);

   Latin_Small_Letter_Z   : constant Universal_Character := (Code => 16#007A#);

   Tilde                  : constant Universal_Character := (Code => 16#007E#);

   No_Break_Space         : constant Universal_Character := (Code => 16#00A0#);

end League.Characters.Latin;
