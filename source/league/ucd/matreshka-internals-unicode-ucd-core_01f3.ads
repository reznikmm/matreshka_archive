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

package Matreshka.Internals.Unicode.Ucd.Core_01F3 is

   pragma Preelaborate;

   Group_01F3 : aliased constant Core_Second_Stage
     := (16#2D# .. 16#2F# =>  --  01F32D .. 01F32F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#7E# .. 16#7F# =>  --  01F37E .. 01F37F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#9C# .. 16#9D# =>  --  01F39C .. 01F39D
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#B5# .. 16#B6# =>  --  01F3B5 .. 01F3B6
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#BC#           =>  --  01F3BC
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#CF# .. 16#D3# =>  --  01F3CF .. 01F3D3
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F8# .. 16#FF# =>  --  01F3F8 .. 01F3FF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Symbol, Neutral,
           Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_01F3;
