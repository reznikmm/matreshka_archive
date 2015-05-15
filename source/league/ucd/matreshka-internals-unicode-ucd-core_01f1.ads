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

pragma Restrictions (No_Elaboration_Code);
--  GNAT: enforce generation of preinitialized data section instead of
--  generation of elaboration code.

package Matreshka.Internals.Unicode.Ucd.Core_01F1 is

   pragma Preelaborate;

   Group_01F1 : aliased constant Core_Second_Stage
     := (16#00# .. 16#0A# =>  --  01F100 .. 01F10A
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0B# .. 16#0C# =>  --  01F10B .. 01F10C
          (Other_Number, Neutral,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#10# .. 16#2D# =>  --  01F110 .. 01F12D
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2E#           =>  --  01F12E
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#30# .. 16#49# =>  --  01F130 .. 01F149
          (Other_Symbol, Ambiguous,
           Other, A_Letter, Upper, Ambiguous,
           (Other_Alphabetic
              | Other_Uppercase
              | Alphabetic
              | Cased
              | Grapheme_Base
              | Uppercase
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4A# .. 16#4F# =>  --  01F14A .. 01F14F
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#50# .. 16#69# =>  --  01F150 .. 01F169
          (Other_Symbol, Ambiguous,
           Other, A_Letter, Upper, Ambiguous,
           (Other_Alphabetic
              | Other_Uppercase
              | Alphabetic
              | Cased
              | Grapheme_Base
              | Uppercase => True,
            others => False)),
         16#6A# .. 16#6B# =>  --  01F16A .. 01F16B
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#70# .. 16#89# =>  --  01F170 .. 01F189
          (Other_Symbol, Ambiguous,
           Other, A_Letter, Upper, Ambiguous,
           (Other_Alphabetic
              | Other_Uppercase
              | Alphabetic
              | Cased
              | Grapheme_Base
              | Uppercase => True,
            others => False)),
         16#8A# .. 16#8F# =>  --  01F18A .. 01F18F
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#90#           =>  --  01F190
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#91# .. 16#9A# =>  --  01F191 .. 01F19A
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#E6# .. 16#FF# =>  --  01F1E6 .. 01F1FF
          (Other_Symbol, Neutral,
           Regional_Indicator, Regional_Indicator, Other, Regional_Indicator,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_01F1;
