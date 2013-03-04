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

package Matreshka.Internals.Unicode.Ucd.Core_01F5 is

   pragma Preelaborate;

   Group_01F5 : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>  --  01F500 .. 01F506
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#07# .. 16#16# =>  --  01F507 .. 01F516
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#17# .. 16#24# =>  --  01F517 .. 01F524
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#25# .. 16#31# =>  --  01F525 .. 01F531
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#32# .. 16#3D# =>  --  01F532 .. 01F53D
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#40# .. 16#43# =>  --  01F540 .. 01F543
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#67# =>  --  01F550 .. 01F567
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#FB# .. 16#FF# =>  --  01F5FB .. 01F5FF
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_01F5;
