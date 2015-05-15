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

package Matreshka.Internals.Unicode.Ucd.Core_00FB is

   pragma Preelaborate;

   Group_00FB : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>  --  FB00 .. FB06
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
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
         16#07# .. 16#12# =>  --  FB07 .. FB12
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#13# .. 16#17# =>  --  FB13 .. FB17
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
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
         16#18# .. 16#1C# =>  --  FB18 .. FB1C
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#1D#           =>  --  FB1D
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1E#           =>  --  FB1E
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1F# .. 16#28# =>  --  FB1F .. FB28
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#29#           =>  --  FB29
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2A# .. 16#36# =>  --  FB2A .. FB36
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#37#           =>  --  FB37
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#38# .. 16#3C# =>  --  FB38 .. FB3C
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3D#           =>  --  FB3D
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3E#           =>  --  FB3E
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3F#           =>  --  FB3F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#40# .. 16#41# =>  --  FB40 .. FB41
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#42#           =>  --  FB42
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#43# .. 16#44# =>  --  FB43 .. FB44
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#45#           =>  --  FB45
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#46# .. 16#4F# =>  --  FB46 .. FB4F
          (Other_Letter, Neutral,
           Other, Hebrew_Letter, O_Letter, Hebrew_Letter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B2# .. 16#C1# =>  --  FBB2 .. FBC1
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#C2# .. 16#D2# =>  --  FBC2 .. FBD2
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
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00FB;
