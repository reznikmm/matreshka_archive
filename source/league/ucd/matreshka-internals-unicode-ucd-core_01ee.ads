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

package Matreshka.Internals.Unicode.Ucd.Core_01EE is

   pragma Preelaborate;

   Group_01EE : aliased constant Core_Second_Stage
     := (16#04#           =>  --  01EE04
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#20#           =>  --  01EE20
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#23#           =>  --  01EE23
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#25# .. 16#26# =>  --  01EE25 .. 01EE26
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#28#           =>  --  01EE28
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#33#           =>  --  01EE33
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#38#           =>  --  01EE38
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3A#           =>  --  01EE3A
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3C# .. 16#41# =>  --  01EE3C .. 01EE41
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#43# .. 16#46# =>  --  01EE43 .. 01EE46
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#48#           =>  --  01EE48
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#4A#           =>  --  01EE4A
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#4C#           =>  --  01EE4C
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#50#           =>  --  01EE50
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#53#           =>  --  01EE53
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#55# .. 16#56# =>  --  01EE55 .. 01EE56
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#58#           =>  --  01EE58
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5A#           =>  --  01EE5A
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5C#           =>  --  01EE5C
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5E#           =>  --  01EE5E
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#60#           =>  --  01EE60
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#63#           =>  --  01EE63
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#65# .. 16#66# =>  --  01EE65 .. 01EE66
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#6B#           =>  --  01EE6B
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#73#           =>  --  01EE73
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#78#           =>  --  01EE78
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#7D#           =>  --  01EE7D
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#7F#           =>  --  01EE7F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#8A#           =>  --  01EE8A
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#9C# .. 16#A0# =>  --  01EE9C .. 01EEA0
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#A4#           =>  --  01EEA4
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#AA#           =>  --  01EEAA
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#BC# .. 16#EF# =>  --  01EEBC .. 01EEEF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F1# =>  --  01EEF0 .. 01EEF1
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#F2# .. 16#FF# =>  --  01EEF2 .. 01EEFF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_01EE;
