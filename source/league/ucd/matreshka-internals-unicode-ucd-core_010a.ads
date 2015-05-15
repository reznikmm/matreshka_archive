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

package Matreshka.Internals.Unicode.Ucd.Core_010A is

   pragma Preelaborate;

   Group_010A : aliased constant Core_Second_Stage
     := (16#01# .. 16#03# =>  --  010A01 .. 010A03
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>  --  010A04
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#05# .. 16#06# =>  --  010A05 .. 010A06
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#07# .. 16#0B# =>  --  010A07 .. 010A0B
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#0C# .. 16#0F# =>  --  010A0C .. 010A0F
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#14#           =>  --  010A14
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#18#           =>  --  010A18
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#34# .. 16#37# =>  --  010A34 .. 010A37
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#38# .. 16#3A# =>  --  010A38 .. 010A3A
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B# .. 16#3E# =>  --  010A3B .. 010A3E
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3F#           =>  --  010A3F
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#47# =>  --  010A40 .. 010A47
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#48# .. 16#4F# =>  --  010A48 .. 010A4F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#50# .. 16#55# =>  --  010A50 .. 010A55
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#56# .. 16#57# =>  --  010A56 .. 010A57
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#58#           =>  --  010A58
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#59# .. 16#5F# =>  --  010A59 .. 010A5F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#7D# .. 16#7E# =>  --  010A7D .. 010A7E
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7F#           =>  --  010A7F
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#9D# .. 16#9F# =>  --  010A9D .. 010A9F
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#A0# .. 16#BF# =>  --  010AA0 .. 010ABF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#C8#           =>  --  010AC8
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  010AE5 .. 010AE6
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E7# .. 16#EA# =>  --  010AE7 .. 010AEA
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#EB# .. 16#EF# =>  --  010AEB .. 010AEF
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F0# .. 16#F5# =>  --  010AF0 .. 010AF5
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#F6#           =>  --  010AF6
          (Other_Punctuation, Neutral,
           Other, Other, Other, Inseparable,
           (Grapheme_Base => True,
            others => False)),
         16#F7# .. 16#FF# =>  --  010AF7 .. 010AFF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_010A;
