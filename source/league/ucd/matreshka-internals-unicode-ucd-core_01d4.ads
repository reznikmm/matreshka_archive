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

package Matreshka.Internals.Unicode.Ucd.Core_01D4 is

   pragma Preelaborate;

   Group_01D4 : aliased constant Core_Second_Stage
     := (16#1A# .. 16#21# =>  --  01D41A .. 01D421
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#22# .. 16#23# =>  --  01D422 .. 01D423
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#24# .. 16#33# =>  --  01D424 .. 01D433
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4E# .. 16#54# =>  --  01D44E .. 01D454
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#55#           =>  --  01D455
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#56# .. 16#57# =>  --  01D456 .. 01D457
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#58# .. 16#67# =>  --  01D458 .. 01D467
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#82# .. 16#89# =>  --  01D482 .. 01D489
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8A# .. 16#8B# =>  --  01D48A .. 01D48B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8C# .. 16#9B# =>  --  01D48C .. 01D49B
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9D#           =>  --  01D49D
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A0# .. 16#A1# =>  --  01D4A0 .. 01D4A1
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A3# .. 16#A4# =>  --  01D4A3 .. 01D4A4
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A7# .. 16#A8# =>  --  01D4A7 .. 01D4A8
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#AD#           =>  --  01D4AD
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#B6# .. 16#B9# =>  --  01D4B6 .. 01D4B9
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BA#           =>  --  01D4BA
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BB#           =>  --  01D4BB
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BC#           =>  --  01D4BC
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BD#           =>  --  01D4BD
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BE# .. 16#BF# =>  --  01D4BE .. 01D4BF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C0# .. 16#C3# =>  --  01D4C0 .. 01D4C3
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C4#           =>  --  01D4C4
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#C5# .. 16#CF# =>  --  01D4C5 .. 01D4CF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EA# .. 16#F1# =>  --  01D4EA .. 01D4F1
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F2# .. 16#F3# =>  --  01D4F2 .. 01D4F3
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F4# .. 16#FF# =>  --  01D4F4 .. 01D4FF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_01D4;
