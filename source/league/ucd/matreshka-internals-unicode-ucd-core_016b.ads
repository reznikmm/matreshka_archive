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

package Matreshka.Internals.Unicode.Ucd.Core_016B is

   pragma Preelaborate;

   Group_016B : aliased constant Core_Second_Stage
     := (16#00# .. 16#2F# =>  --  016B00 .. 016B2F
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30# .. 16#36# =>  --  016B30 .. 016B36
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#37# .. 16#38# =>  --  016B37 .. 016B38
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#39#           =>  --  016B39
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3A# .. 16#3B# =>  --  016B3A .. 016B3B
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3F# =>  --  016B3C .. 016B3F
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#40# .. 16#41# =>  --  016B40 .. 016B41
          (Modifier_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#42# .. 16#43# =>  --  016B42 .. 016B43
          (Modifier_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#44#           =>  --  016B44
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#45#           =>  --  016B45
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#59# =>  --  016B50 .. 016B59
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5B# .. 16#61# =>  --  016B5B .. 016B61
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#63# .. 16#77# =>  --  016B63 .. 016B77
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7D# .. 16#8F# =>  --  016B7D .. 016B8F
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_016B;
