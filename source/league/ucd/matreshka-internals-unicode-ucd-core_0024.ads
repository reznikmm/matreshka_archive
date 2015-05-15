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

package Matreshka.Internals.Unicode.Ucd.Core_0024 is

   pragma Preelaborate;

   Group_0024 : aliased constant Core_Second_Stage
     := (16#00# .. 16#26# =>  --  2400 .. 2426
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27# .. 16#3F# =>  --  2427 .. 243F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#40# .. 16#4A# =>  --  2440 .. 244A
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#4B# .. 16#5F# =>  --  244B .. 245F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#9C# .. 16#B5# =>  --  249C .. 24B5
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B6# .. 16#CF# =>  --  24B6 .. 24CF
          (Other_Symbol, Ambiguous,
           Other, A_Letter, Upper, Ambiguous,
           (Other_Alphabetic
              | Other_Uppercase
              | Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | Uppercase
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D0# .. 16#E9# =>  --  24D0 .. 24E9
          (Other_Symbol, Ambiguous,
           Other, A_Letter, Lower, Ambiguous,
           (Other_Alphabetic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | Lowercase
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EA#           =>  --  24EA
          (Other_Number, Neutral,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EB# .. 16#FE# =>  --  24EB .. 24FE
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#FF#           =>  --  24FF
          (Other_Number, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0024;
