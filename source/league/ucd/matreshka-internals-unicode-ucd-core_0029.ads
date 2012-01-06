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

package Matreshka.Internals.Unicode.Ucd.Core_0029 is

   pragma Preelaborate;

   Group_0029 : aliased constant Core_Second_Stage
     := (16#83#           =>  --  2983
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#84#           =>  --  2984
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>  --  2985
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#86#           =>  --  2986
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#87#           =>  --  2987
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#88#           =>  --  2988
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#89#           =>  --  2989
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8A#           =>  --  298A
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8B#           =>  --  298B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8C#           =>  --  298C
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8D#           =>  --  298D
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8E#           =>  --  298E
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8F#           =>  --  298F
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#90#           =>  --  2990
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#91#           =>  --  2991
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#92#           =>  --  2992
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#93#           =>  --  2993
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#94#           =>  --  2994
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95#           =>  --  2995
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#96#           =>  --  2996
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#97#           =>  --  2997
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#98#           =>  --  2998
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8#           =>  --  29D8
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D9#           =>  --  29D9
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DA#           =>  --  29DA
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DB#           =>  --  29DB
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#FC#           =>  --  29FC
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#FD#           =>  --  29FD
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0029;
