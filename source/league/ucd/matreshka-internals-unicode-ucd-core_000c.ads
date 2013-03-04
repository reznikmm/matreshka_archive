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

package Matreshka.Internals.Unicode.Ucd.Core_000C is

   pragma Preelaborate;

   Group_000C : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0C00
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#01# .. 16#03# =>  --  0C01 .. 0C03
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>  --  0C04
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#0D#           =>  --  0C0D
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#11#           =>  --  0C11
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#29#           =>  --  0C29
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#34#           =>  --  0C34
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#3A# .. 16#3C# =>  --  0C3A .. 0C3C
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#3E# .. 16#40# =>  --  0C3E .. 0C40
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>  --  0C41 .. 0C44
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>  --  0C45
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#46# .. 16#47# =>  --  0C46 .. 0C47
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#48#           =>  --  0C48
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, No, Yes, No), Canonical,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#49#           =>  --  0C49
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#4A# .. 16#4C# =>  --  0C4A .. 0C4C
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  0C4D
          (Nonspacing_Mark, 9,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#54# =>  --  0C4E .. 0C54
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#55#           =>  --  0C55
          (Nonspacing_Mark, 84,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#56#           =>  --  0C56
          (Nonspacing_Mark, 91,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>  --  0C57
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#5A# .. 16#5F# =>  --  0C5A .. 0C5F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#62# .. 16#63# =>  --  0C62 .. 0C63
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#64# .. 16#65# =>  --  0C64 .. 0C65
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#66# .. 16#6F# =>  --  0C66 .. 0C6F
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#77# =>  --  0C70 .. 0C77
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#78# .. 16#7E# =>  --  0C78 .. 0C7E
          (Other_Number, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#7F#           =>  --  0C7F
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#81# =>  --  0C80 .. 0C81
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#82# .. 16#83# =>  --  0C82 .. 0C83
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0C84
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#8D#           =>  --  0C8D
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#91#           =>  --  0C91
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A9#           =>  --  0CA9
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#B4#           =>  --  0CB4
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BA# .. 16#BB# =>  --  0CBA .. 0CBB
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BC#           =>  --  0CBC
          (Nonspacing_Mark, 7,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE#           =>  --  0CBE
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF#           =>  --  0CBF
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0#           =>  --  0CC0
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, No, Yes, No), Canonical,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#C1#           =>  --  0CC1
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>  --  0CC2
          (Spacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C3# .. 16#C4# =>  --  0CC3 .. 0CC4
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5#           =>  --  0CC5
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#C6#           =>  --  0CC6
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C7# .. 16#C8# =>  --  0CC7 .. 0CC8
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, No, Yes, No), Canonical,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#C9#           =>  --  0CC9
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#CA# .. 16#CB# =>  --  0CCA .. 0CCB
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, No, Yes, No), Canonical,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#CC#           =>  --  0CCC
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>  --  0CCD
          (Nonspacing_Mark, 9,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CE# .. 16#D4# =>  --  0CCE .. 0CD4
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#D5# .. 16#D6# =>  --  0CD5 .. 0CD6
          (Spacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D7# .. 16#DD# =>  --  0CD7 .. 0CDD
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#DF#           =>  --  0CDF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#E2# .. 16#E3# =>  --  0CE2 .. 0CE3
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4# .. 16#E5# =>  --  0CE4 .. 0CE5
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#E6# .. 16#EF# =>  --  0CE6 .. 0CEF
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0#           =>  --  0CF0
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#F3# .. 16#FF# =>  --  0CF3 .. 0CFF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         others           =>
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_000C;
