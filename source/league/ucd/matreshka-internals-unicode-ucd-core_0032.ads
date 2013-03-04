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

package Matreshka.Internals.Unicode.Ucd.Core_0032 is

   pragma Preelaborate;

   Group_0032 : aliased constant Core_Second_Stage
     := (16#1F#           =>  --  321F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#20# .. 16#29# =>  --  3220 .. 3229
          (Other_Number, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#44# .. 16#47# =>  --  3244 .. 3247
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#48# .. 16#4F# =>  --  3248 .. 324F
          (Other_Number, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#50#           =>  --  3250
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Square,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#51# .. 16#5F# =>  --  3251 .. 325F
          (Other_Number, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#60# .. 16#6D# =>  --  3260 .. 326D
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6E# .. 16#7E# =>  --  326E .. 327E
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7F#           =>  --  327F
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#89# =>  --  3280 .. 3289
          (Other_Number, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8A# .. 16#B0# =>  --  328A .. 32B0
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B1# .. 16#BF# =>  --  32B1 .. 32BF
          (Other_Number, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CC# .. 16#CF# =>  --  32CC .. 32CF
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Square,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D0# .. 16#FE# =>  --  32D0 .. 32FE
          (Other_Symbol, 0,
           Other, Katakana, Other, Ideographic,
           (Yes, Yes, No, No), Circle,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FF#           =>  --  32FF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         others           =>
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0032;
