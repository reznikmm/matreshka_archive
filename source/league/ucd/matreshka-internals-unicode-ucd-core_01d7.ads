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

package Matreshka.Internals.Unicode.Ucd.Core_01D7 is

   pragma Preelaborate;

   Group_01D7 : aliased constant Core_Second_Stage
     := (16#15#           =>  --  01D715
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1C# .. 16#34# =>  --  01D71C .. 01D734
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
            others => False)),
         16#35#           =>  --  01D735
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4F#           =>  --  01D74F
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#56# .. 16#6E# =>  --  01D756 .. 01D76E
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
            others => False)),
         16#6F#           =>  --  01D76F
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#89#           =>  --  01D789
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#90# .. 16#A8# =>  --  01D790 .. 01D7A8
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
            others => False)),
         16#A9#           =>  --  01D7A9
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C3#           =>  --  01D7C3
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Font,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CA#           =>  --  01D7CA
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
            others => False)),
         16#CC# .. 16#CD# =>  --  01D7CC .. 01D7CD
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#CE# .. 16#FF# =>  --  01D7CE .. 01D7FF
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, No, No), Font,
           (Other_Math
              | Grapheme_Base
              | ID_Continue
              | Math
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
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
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_01D7;
