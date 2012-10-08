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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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

package Matreshka.Internals.Unicode.Ucd.Core_000E is

   pragma Preelaborate;

   Group_000E : aliased constant Core_Second_Stage
     := (16#01# .. 16#30# =>  --  0E01 .. 0E30
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#31#           =>  --  0E31
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32#           =>  --  0E32
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#33#           =>  --  0E33
          (Other_Letter, 0,
           Spacing_Mark, Other, O_Letter, Complex_Context,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#34# .. 16#37# =>  --  0E34 .. 0E37
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#38# .. 16#39# =>  --  0E38 .. 0E39
          (Nonspacing_Mark, 103,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>  --  0E3A
          (Nonspacing_Mark, 9,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F#           =>  --  0E3F
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#40# .. 16#44# =>  --  0E40 .. 0E44
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>  --  0E45
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46#           =>  --  0E46
          (Modifier_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47#           =>  --  0E47
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#48# .. 16#4B# =>  --  0E48 .. 0E4B
          (Nonspacing_Mark, 107,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4C#           =>  --  0E4C
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  0E4D
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E#           =>  --  0E4E
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4F#           =>  --  0E4F
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#59# =>  --  0E50 .. 0E59
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#5B# =>  --  0E5A .. 0E5B
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#81# .. 16#82# =>  --  0E81 .. 0E82
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>  --  0E84
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87# .. 16#88# =>  --  0E87 .. 0E88
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8A#           =>  --  0E8A
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8D#           =>  --  0E8D
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94# .. 16#97# =>  --  0E94 .. 0E97
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#99# .. 16#9F# =>  --  0E99 .. 0E9F
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A1# .. 16#A3# =>  --  0EA1 .. 0EA3
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>  --  0EA5
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>  --  0EA7
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AA# .. 16#AB# =>  --  0EAA .. 0EAB
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AD# .. 16#B0# =>  --  0EAD .. 0EB0
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B1#           =>  --  0EB1
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B2#           =>  --  0EB2
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B3#           =>  --  0EB3
          (Other_Letter, 0,
           Spacing_Mark, Other, O_Letter, Complex_Context,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B4# .. 16#B7# =>  --  0EB4 .. 0EB7
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8# .. 16#B9# =>  --  0EB8 .. 0EB9
          (Nonspacing_Mark, 118,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BB# .. 16#BC# =>  --  0EBB .. 0EBC
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BD#           =>  --  0EBD
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0# .. 16#C4# =>  --  0EC0 .. 0EC4
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C6#           =>  --  0EC6
          (Modifier_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C8# .. 16#CB# =>  --  0EC8 .. 0ECB
          (Nonspacing_Mark, 122,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CC#           =>  --  0ECC
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>  --  0ECD
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0# .. 16#D9# =>  --  0ED0 .. 0ED9
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DC# .. 16#DD# =>  --  0EDC .. 0EDD
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DE# .. 16#DF# =>  --  0EDE .. 0EDF
          (Other_Letter, 0,
           Other, Other, O_Letter, Complex_Context,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_000E;
