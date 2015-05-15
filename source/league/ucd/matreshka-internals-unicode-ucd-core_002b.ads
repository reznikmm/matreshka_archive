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

package Matreshka.Internals.Unicode.Ucd.Core_002B is

   pragma Preelaborate;

   Group_002B : aliased constant Core_Second_Stage
     := (16#30# .. 16#44# =>  --  2B30 .. 2B44
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#47# .. 16#4C# =>  --  2B47 .. 2B4C
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#55# .. 16#59# =>  --  2B55 .. 2B59
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#74# .. 16#75# =>  --  2B74 .. 2B75
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#96# .. 16#97# =>  --  2B96 .. 2B97
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#BA# .. 16#BC# =>  --  2BBA .. 2BBC
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#C9#           =>  --  2BC9
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#D2# .. 16#FF# =>  --  2BD2 .. 2BFF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         others           =>
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_002B;
