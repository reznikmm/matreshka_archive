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

package Matreshka.Internals.Unicode.Ucd.Core_01D5 is

   pragma Preelaborate;

   Group_01D5 : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>  --  01D500 .. 01D503
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
         16#06#           =>  --  01D506
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#0B# .. 16#0C# =>  --  01D50B .. 01D50C
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#15#           =>  --  01D515
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#1D#           =>  --  01D51D
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#1E# .. 16#25# =>  --  01D51E .. 01D525
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
         16#26# .. 16#27# =>  --  01D526 .. 01D527
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
         16#28# .. 16#37# =>  --  01D528 .. 01D537
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
         16#3A#           =>  --  01D53A
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#3F#           =>  --  01D53F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#45#           =>  --  01D545
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#47# .. 16#49# =>  --  01D547 .. 01D549
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#51#           =>  --  01D551
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#52# .. 16#59# =>  --  01D552 .. 01D559
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
         16#5A# .. 16#5B# =>  --  01D55A .. 01D55B
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
         16#5C# .. 16#6B# =>  --  01D55C .. 01D56B
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
         16#86# .. 16#8D# =>  --  01D586 .. 01D58D
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
         16#8E# .. 16#8F# =>  --  01D58E .. 01D58F
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
         16#90# .. 16#9F# =>  --  01D590 .. 01D59F
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
         16#BA# .. 16#C1# =>  --  01D5BA .. 01D5C1
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
         16#C2# .. 16#C3# =>  --  01D5C2 .. 01D5C3
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
         16#C4# .. 16#D3# =>  --  01D5C4 .. 01D5D3
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
         16#EE# .. 16#F5# =>  --  01D5EE .. 01D5F5
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
         16#F6# .. 16#F7# =>  --  01D5F6 .. 01D5F7
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
         16#F8# .. 16#FF# =>  --  01D5F8 .. 01D5FF
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

end Matreshka.Internals.Unicode.Ucd.Core_01D5;
