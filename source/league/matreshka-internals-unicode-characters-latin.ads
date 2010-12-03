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

package Matreshka.Internals.Unicode.Characters.Latin is

   pragma Pure;

   --  C0 Controls and Basic Latin

   Character_Tabulation   : constant := 16#0009#;
   Line_Feed              : constant := 16#000A#;

   Carriage_Return        : constant := 16#000D#;

   Space                  : constant := 16#0020#;
   Exclamation_Mark       : constant := 16#0021#;
   Quotation_Mark         : constant := 16#0022#;
   Number_Sign            : constant := 16#0023#;

   Ampersand              : constant := 16#0026#;
   Apostrophe             : constant := 16#0027#;

   Hyphen_Minus           : constant := 16#002D#;
   Full_Stop              : constant := 16#002E#;
   Solidus                : constant := 16#002F#;
   Digit_Zero             : constant := 16#0030#;
   Digit_One              : constant := 16#0031#;
   Digit_Two              : constant := 16#0032#;

   Digit_Nine             : constant := 16#0039#;
   Colon                  : constant := 16#003A#;
   Semicolon              : constant := 16#003B#;
   Less_Than_Sign         : constant := 16#003C#;
   Equals_Sign            : constant := 16#003D#;
   Greater_Than_Sign      : constant := 16#003E#;
   Question_Mark          : constant := 16#003F#;

   Latin_Capital_Letter_A : constant := 16#0041#;

   Latin_Capital_Letter_F : constant := 16#0046#;

   Latin_Capital_Letter_Z : constant := 16#005A#;

   Right_Square_Bracket   : constant := 16#005D#;

   Low_Line               : constant := 16#005F#;

   Latin_Small_Letter_A   : constant := 16#0061#;

   Latin_Small_Letter_F   : constant := 16#0066#;

   Latin_Small_Letter_X   : constant := 16#0078#;

   Latin_Small_Letter_Z   : constant := 16#007A#;

   --  C1 Controls and Latin-1 Supplement

   Next_Line              : constant := 16#0085#;

end Matreshka.Internals.Unicode.Characters.Latin;
