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

package Matreshka.Internals.Unicode.Ucd.Core_0001 is

   pragma Preelaborate;

   Group_0001 : aliased constant Core_Second_Stage
     := (16#01#           =>  --  0101
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#03#           =>  --  0103
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#05#           =>  --  0105
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#07#           =>  --  0107
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#09#           =>  --  0109
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#0B#           =>  --  010B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#0D#           =>  --  010D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#0F#           =>  --  010F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#10#           =>  --  0110
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#11#           =>  --  0111
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
         16#13#           =>  --  0113
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#15#           =>  --  0115
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#17#           =>  --  0117
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#19#           =>  --  0119
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#1B#           =>  --  011B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#1D#           =>  --  011D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#1F#           =>  --  011F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#21#           =>  --  0121
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#23#           =>  --  0123
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#25#           =>  --  0125
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#26#           =>  --  0126
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#27#           =>  --  0127
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
         16#29#           =>  --  0129
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#2B#           =>  --  012B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#2D#           =>  --  012D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#2F#           =>  --  012F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Soft_Dotted
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#31#           =>  --  0131
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
         16#32#           =>  --  0132
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#33#           =>  --  0133
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#35#           =>  --  0135
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#37#           =>  --  0137
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#38#           =>  --  0138
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
            others => False)),
         16#3A#           =>  --  013A
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#3C#           =>  --  013C
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#3E#           =>  --  013E
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#3F#           =>  --  013F
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#40#           =>  --  0140
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#41#           =>  --  0141
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#42#           =>  --  0142
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
         16#44#           =>  --  0144
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#46#           =>  --  0146
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#48#           =>  --  0148
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#49#           =>  --  0149
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Deprecated
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4A#           =>  --  014A
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4B#           =>  --  014B
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
         16#4D#           =>  --  014D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#4F#           =>  --  014F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#51#           =>  --  0151
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#52#           =>  --  0152
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#53#           =>  --  0153
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
         16#55#           =>  --  0155
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#57#           =>  --  0157
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#59#           =>  --  0159
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#5B#           =>  --  015B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#5D#           =>  --  015D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#5F#           =>  --  015F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#61#           =>  --  0161
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#63#           =>  --  0163
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#65#           =>  --  0165
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#66#           =>  --  0166
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#67#           =>  --  0167
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
         16#69#           =>  --  0169
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#6B#           =>  --  016B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#6D#           =>  --  016D
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#6F#           =>  --  016F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#71#           =>  --  0171
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#73#           =>  --  0173
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#75#           =>  --  0175
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#77#           =>  --  0177
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#7A#           =>  --  017A
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#7C#           =>  --  017C
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#7E#           =>  --  017E
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#7F#           =>  --  017F
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#80#           =>  --  0180
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
         16#81# .. 16#82# =>  --  0181 .. 0182
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#83#           =>  --  0183
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
         16#84#           =>  --  0184
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#85#           =>  --  0185
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
         16#86# .. 16#87# =>  --  0186 .. 0187
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#88#           =>  --  0188
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
         16#89# .. 16#8B# =>  --  0189 .. 018B
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8C#           =>  --  018C
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
         16#8D#           =>  --  018D
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
            others => False)),
         16#8E# .. 16#91# =>  --  018E .. 0191
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#92#           =>  --  0192
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
         16#93# .. 16#94# =>  --  0193 .. 0194
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#95#           =>  --  0195
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
         16#96# .. 16#98# =>  --  0196 .. 0198
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#99# .. 16#9A# =>  --  0199 .. 019A
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
         16#9B#           =>  --  019B
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
            others => False)),
         16#9C# .. 16#9D# =>  --  019C .. 019D
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9E#           =>  --  019E
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
         16#9F#           =>  --  019F
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A1#           =>  --  01A1
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#A2#           =>  --  01A2
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A3#           =>  --  01A3
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
         16#A4#           =>  --  01A4
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A5#           =>  --  01A5
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
         16#A6# .. 16#A7# =>  --  01A6 .. 01A7
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A8#           =>  --  01A8
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
         16#A9#           =>  --  01A9
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AA# .. 16#AB# =>  --  01AA .. 01AB
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
            others => False)),
         16#AC#           =>  --  01AC
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AD#           =>  --  01AD
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
         16#AE#           =>  --  01AE
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B0#           =>  --  01B0
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#B1# .. 16#B3# =>  --  01B1 .. 01B3
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B4#           =>  --  01B4
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
         16#B5#           =>  --  01B5
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B6#           =>  --  01B6
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
         16#B7# .. 16#B8# =>  --  01B7 .. 01B8
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B9#           =>  --  01B9
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
         16#BA#           =>  --  01BA
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
            others => False)),
         16#BB#           =>  --  01BB
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BC#           =>  --  01BC
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BD#           =>  --  01BD
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
         16#BE#           =>  --  01BE
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
            others => False)),
         16#BF#           =>  --  01BF
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
         16#C0# .. 16#C3# =>  --  01C0 .. 01C3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>  --  01C4
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C5#           =>  --  01C5
          (Titlecase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C6#           =>  --  01C6
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C7#           =>  --  01C7
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C8#           =>  --  01C8
          (Titlecase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C9#           =>  --  01C9
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CA#           =>  --  01CA
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CB#           =>  --  01CB
          (Titlecase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CC#           =>  --  01CC
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CE#           =>  --  01CE
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#D0#           =>  --  01D0
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#D2#           =>  --  01D2
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#D4#           =>  --  01D4
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#D6#           =>  --  01D6
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#D8#           =>  --  01D8
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#DA#           =>  --  01DA
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#DC#           =>  --  01DC
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#DD#           =>  --  01DD
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
         16#DF#           =>  --  01DF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#E1#           =>  --  01E1
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#E3#           =>  --  01E3
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#E4#           =>  --  01E4
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E5#           =>  --  01E5
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
         16#E7#           =>  --  01E7
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#E9#           =>  --  01E9
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#EB#           =>  --  01EB
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#ED#           =>  --  01ED
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#EF# .. 16#F0# =>  --  01EF .. 01F0
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#F1#           =>  --  01F1
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F2#           =>  --  01F2
          (Titlecase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F3#           =>  --  01F3
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F5#           =>  --  01F5
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#F6# .. 16#F7# =>  --  01F6 .. 01F7
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F9#           =>  --  01F9
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#FB#           =>  --  01FB
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#FD#           =>  --  01FD
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#FF#           =>  --  01FF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0001;
