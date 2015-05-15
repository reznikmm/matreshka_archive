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

package Matreshka.Internals.Unicode.Ucd.Core_0027 is

   pragma Preelaborate;

   Group_0027 : aliased constant Core_Second_Stage
     := (16#00# .. 16#04# =>  --  2700 .. 2704
          (Other_Symbol, Neutral,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#08# .. 16#0D# =>  --  2708 .. 270D
          (Other_Symbol, Neutral,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3D#           =>  --  273D
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#57#           =>  --  2757
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5B# .. 16#60# =>  --  275B .. 2760
          (Other_Symbol, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#62# .. 16#63# =>  --  2762 .. 2763
          (Other_Symbol, Neutral,
           Other, Other, Other, Exclamation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#68#           =>  --  2768
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#69#           =>  --  2769
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6A#           =>  --  276A
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6B#           =>  --  276B
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6C#           =>  --  276C
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6D#           =>  --  276D
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6E#           =>  --  276E
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6F#           =>  --  276F
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#70#           =>  --  2770
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#71#           =>  --  2771
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#72#           =>  --  2772
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#73#           =>  --  2773
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#74#           =>  --  2774
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#75#           =>  --  2775
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#76# .. 16#7F# =>  --  2776 .. 277F
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#93# =>  --  2780 .. 2793
          (Other_Number, Neutral,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#C4# =>  --  27C0 .. 27C4
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C5#           =>  --  27C5
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C6#           =>  --  27C6
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C7# .. 16#E5# =>  --  27C7 .. 27E5
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E6#           =>  --  27E6
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E7#           =>  --  27E7
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E8#           =>  --  27E8
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E9#           =>  --  27E9
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EA#           =>  --  27EA
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EB#           =>  --  27EB
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EC#           =>  --  27EC
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#ED#           =>  --  27ED
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EE#           =>  --  27EE
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EF#           =>  --  27EF
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#F0# .. 16#FF# =>  --  27F0 .. 27FF
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0027;
