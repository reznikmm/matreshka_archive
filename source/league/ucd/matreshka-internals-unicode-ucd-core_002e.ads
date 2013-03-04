------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--        Localization, Internationalization, Globalization for Ada         --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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

pragma Restrictions (No_Elaboration_Code);
--  GNAT: enforce generation of preinitialized data section instead of
--  generation of elaboration code.

package Matreshka.Internals.Unicode.Ucd.Core_002E is

   pragma Preelaborate;

   Group_002E : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  2E00 .. 2E01
          (Other_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  2E02
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  2E03
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  2E04
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  2E05
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#06# .. 16#08# =>  --  2E06 .. 2E08
          (Other_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  2E09
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  2E0A
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  2E0B
          (Other_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  2E0C
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  2E0D
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#15# =>  --  2E0E .. 2E15
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  2E16
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  2E17
          (Dash_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  2E18
          (Other_Punctuation, 0,
           Other, Other, Other, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  2E19
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  2E1A
          (Dash_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>  --  2E1B
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  2E1C
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  2E1D
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  2E1E .. 2E1F
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  2E20
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>  --  2E21
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>  --  2E22
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  2E23
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  2E24
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>  --  2E25
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  2E26
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>  --  2E27
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  2E28
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>  --  2E29
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A# .. 16#2D# =>  --  2E2A .. 2E2D
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>  --  2E2E
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  2E2F
          (Modifier_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Pattern_Syntax
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#31# =>  --  2E30 .. 2E31
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#32#           =>  --  2E32
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#33# .. 16#34# =>  --  2E33 .. 2E34
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#35# .. 16#39# =>  --  2E35 .. 2E39
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3A# .. 16#3B# =>  --  2E3A .. 2E3B
          (Dash_Punctuation, 0,
           Other, Other, Other, Break_Both,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#7F# =>  --  2E3C .. 2E7F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax => True,
            others => False)),
         16#9A#           =>  --  2E9A
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#9F#           =>  --  2E9F
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Radical
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F3#           =>  --  2EF3
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Radical
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F4# .. 16#FF# =>  --  2EF4 .. 2EFF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         others           =>
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Radical
              | Grapheme_Base => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_002E;
