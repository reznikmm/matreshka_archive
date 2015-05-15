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

package Matreshka.Internals.Unicode.Ucd.Core_0108 is

   pragma Preelaborate;

   Group_0108 : aliased constant Core_Second_Stage
     := (16#06# .. 16#07# =>  --  010806 .. 010807
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#09#           =>  --  010809
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#36#           =>  --  010836
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#39# .. 16#3B# =>  --  010839 .. 01083B
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3D# .. 16#3E# =>  --  01083D .. 01083E
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#56#           =>  --  010856
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#57#           =>  --  010857
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#58# .. 16#5F# =>  --  010858 .. 01085F
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#77# .. 16#78# =>  --  010877 .. 010878
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#79# .. 16#7F# =>  --  010879 .. 01087F
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#9F# .. 16#A6# =>  --  01089F .. 0108A6
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#A7# .. 16#AF# =>  --  0108A7 .. 0108AF
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#B0# .. 16#FF# =>  --  0108B0 .. 0108FF
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
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0108;
