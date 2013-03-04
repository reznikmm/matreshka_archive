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

package Matreshka.Internals.Unicode.Ucd.Core_002D is

   pragma Preelaborate;

   Group_002D : aliased constant Core_Second_Stage
     := (16#00# .. 16#25# =>  --  2D00 .. 2D25
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
         16#26#           =>  --  2D26
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#27#           =>  --  2D27
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
         16#28# .. 16#2C# =>  --  2D28 .. 2D2C
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#2D#           =>  --  2D2D
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
         16#2E# .. 16#2F# =>  --  2D2E .. 2D2F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#68# .. 16#6E# =>  --  2D68 .. 2D6E
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#6F#           =>  --  2D6F
          (Modifier_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Super,
           (Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#70#           =>  --  2D70
          (Other_Punctuation, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#71# .. 16#7E# =>  --  2D71 .. 2D7E
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#7F#           =>  --  2D7F
          (Nonspacing_Mark, 9,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#97# .. 16#9F# =>  --  2D97 .. 2D9F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A7#           =>  --  2DA7
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#AF#           =>  --  2DAF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#B7#           =>  --  2DB7
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BF#           =>  --  2DBF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#C7#           =>  --  2DC7
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#CF#           =>  --  2DCF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#D7#           =>  --  2DD7
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#DF#           =>  --  2DDF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#E0# .. 16#FF# =>  --  2DE0 .. 2DFF
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
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

end Matreshka.Internals.Unicode.Ucd.Core_002D;
