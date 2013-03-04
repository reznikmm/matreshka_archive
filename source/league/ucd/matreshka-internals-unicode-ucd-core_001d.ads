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

package Matreshka.Internals.Unicode.Ucd.Core_001D is

   pragma Preelaborate;

   Group_001D : aliased constant Core_Second_Stage
     := (16#2C# .. 16#2E# =>  --  1D2C .. 1D2E
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2F#           =>  --  1D2F
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30# .. 16#3A# =>  --  1D30 .. 1D3A
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3B#           =>  --  1D3B
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C# .. 16#4D# =>  --  1D3C .. 1D4D
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4E#           =>  --  1D4E
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4F# .. 16#61# =>  --  1D4F .. 1D61
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#62#           =>  --  1D62
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Sub,
           (Diacritic
              | Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#63# .. 16#6A# =>  --  1D63 .. 1D6A
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Sub,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#78#           =>  --  1D78
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#79#           =>  --  1D79
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7D#           =>  --  1D7D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#96#           =>  --  1D96
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9B# .. 16#A3# =>  --  1D9B .. 1DA3
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A4#           =>  --  1DA4
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A5# .. 16#A7# =>  --  1DA5 .. 1DA7
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A8#           =>  --  1DA8
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A9# .. 16#BF# =>  --  1DA9 .. 1DBF
          (Modifier_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C0# .. 16#C1# =>  --  1DC0 .. 1DC1
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>  --  1DC2
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C3#           =>  --  1DC3
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C4# .. 16#C9# =>  --  1DC4 .. 1DC9
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA#           =>  --  1DCA
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CB# .. 16#CC# =>  --  1DCB .. 1DCC
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>  --  1DCD
          (Nonspacing_Mark, 234,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CE#           =>  --  1DCE
          (Nonspacing_Mark, 214,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CF#           =>  --  1DCF
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0#           =>  --  1DD0
          (Nonspacing_Mark, 202,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D1# .. 16#E6# =>  --  1DD1 .. 1DE6
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E7# .. 16#FB# =>  --  1DE7 .. 1DFB
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#FC#           =>  --  1DFC
          (Nonspacing_Mark, 233,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FD#           =>  --  1DFD
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FE#           =>  --  1DFE
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FF#           =>  --  1DFF
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           =>
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_001D;
