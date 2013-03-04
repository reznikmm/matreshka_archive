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

package Matreshka.Internals.Unicode.Ucd.Core_002F is

   pragma Preelaborate;

   Group_002F : aliased constant Core_Second_Stage
     := (16#D6# .. 16#EF# =>  --  2FD6 .. 2FEF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#F0# .. 16#F1# =>  --  2FF0 .. 2FF1
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (IDS_Binary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#F2# .. 16#F3# =>  --  2FF2 .. 2FF3
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (IDS_Trinary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#FB# =>  --  2FF4 .. 2FFB
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (IDS_Binary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#FC# .. 16#FF# =>  --  2FFC .. 2FFF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         others           =>
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Radical
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_002F;
