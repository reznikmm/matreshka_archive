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

package Matreshka.Internals.Unicode.Ucd.Core_001E is

   pragma Preelaborate;

   Group_001E : aliased constant Core_Second_Stage
     := (16#01#           =>  --  1E01
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#03#           =>  --  1E03
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#05#           =>  --  1E05
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#07#           =>  --  1E07
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#09#           =>  --  1E09
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0B#           =>  --  1E0B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0D#           =>  --  1E0D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0F#           =>  --  1E0F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#11#           =>  --  1E11
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#13#           =>  --  1E13
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#15#           =>  --  1E15
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#17#           =>  --  1E17
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#19#           =>  --  1E19
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1B#           =>  --  1E1B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1D#           =>  --  1E1D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1F#           =>  --  1E1F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#21#           =>  --  1E21
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#23#           =>  --  1E23
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#25#           =>  --  1E25
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#27#           =>  --  1E27
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#29#           =>  --  1E29
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2B#           =>  --  1E2B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2D#           =>  --  1E2D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2F#           =>  --  1E2F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#31#           =>  --  1E31
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#33#           =>  --  1E33
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#35#           =>  --  1E35
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#37#           =>  --  1E37
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#39#           =>  --  1E39
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3B#           =>  --  1E3B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3D#           =>  --  1E3D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3F#           =>  --  1E3F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#41#           =>  --  1E41
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#43#           =>  --  1E43
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#45#           =>  --  1E45
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#47#           =>  --  1E47
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#49#           =>  --  1E49
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4B#           =>  --  1E4B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4D#           =>  --  1E4D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4F#           =>  --  1E4F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#51#           =>  --  1E51
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#53#           =>  --  1E53
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#55#           =>  --  1E55
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#57#           =>  --  1E57
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59#           =>  --  1E59
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>  --  1E5B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5D#           =>  --  1E5D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5F#           =>  --  1E5F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#61#           =>  --  1E61
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>  --  1E63
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65#           =>  --  1E65
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67#           =>  --  1E67
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>  --  1E69
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>  --  1E6B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6D#           =>  --  1E6D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>  --  1E6F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71#           =>  --  1E71
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#73#           =>  --  1E73
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>  --  1E75
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77#           =>  --  1E77
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#79#           =>  --  1E79
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>  --  1E7B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>  --  1E7D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7F#           =>  --  1E7F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#81#           =>  --  1E81
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>  --  1E83
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85#           =>  --  1E85
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#87#           =>  --  1E87
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#89#           =>  --  1E89
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8B#           =>  --  1E8B
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>  --  1E8D
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8F#           =>  --  1E8F
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#91#           =>  --  1E91
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#93#           =>  --  1E93
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>  --  1E95
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#96# .. 16#99# =>  --  1E96 .. 1E99
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#9A#           =>  --  1E9A
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
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#9B#           =>  --  1E9B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, No, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#9C# .. 16#9D# =>  --  1E9C .. 1E9D
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
         16#9E#           =>  --  1E9E
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#9F#           =>  --  1E9F
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
         16#A1#           =>  --  1EA1
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>  --  1EA3
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>  --  1EA5
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A7#           =>  --  1EA7
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A9#           =>  --  1EA9
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AB#           =>  --  1EAB
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AD#           =>  --  1EAD
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AF#           =>  --  1EAF
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B1#           =>  --  1EB1
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B3#           =>  --  1EB3
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>  --  1EB5
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B7#           =>  --  1EB7
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>  --  1EB9
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BB#           =>  --  1EBB
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>  --  1EBD
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BF#           =>  --  1EBF
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C1#           =>  --  1EC1
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C3#           =>  --  1EC3
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C5#           =>  --  1EC5
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C7#           =>  --  1EC7
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C9#           =>  --  1EC9
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CB#           =>  --  1ECB
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CD#           =>  --  1ECD
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CF#           =>  --  1ECF
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D1#           =>  --  1ED1
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D3#           =>  --  1ED3
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D5#           =>  --  1ED5
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D7#           =>  --  1ED7
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D9#           =>  --  1ED9
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DB#           =>  --  1EDB
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DD#           =>  --  1EDD
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>  --  1EDF
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>  --  1EE1
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>  --  1EE3
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E5#           =>  --  1EE5
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7#           =>  --  1EE7
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E9#           =>  --  1EE9
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EB#           =>  --  1EEB
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#ED#           =>  --  1EED
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EF#           =>  --  1EEF
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F1#           =>  --  1EF1
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>  --  1EF3
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F5#           =>  --  1EF5
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>  --  1EF7
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9#           =>  --  1EF9
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
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FA#           =>  --  1EFA
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#FB#           =>  --  1EFB
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
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FC#           =>  --  1EFC
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#FD#           =>  --  1EFD
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
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FE#           =>  --  1EFE
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#FF#           =>  --  1EFF
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
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_001E;
