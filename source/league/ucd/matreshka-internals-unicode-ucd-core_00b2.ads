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

package Matreshka.Internals.Unicode.Ucd.Core_00B2 is

   pragma Preelaborate;

   Group_00B2 : aliased constant Core_Second_Stage
     := (16#04#           =>  --  B204
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#20#           =>  --  B220
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#3C#           =>  --  B23C
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#58#           =>  --  B258
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#74#           =>  --  B274
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#90#           =>  --  B290
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#AC#           =>  --  B2AC
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#C8#           =>  --  B2C8
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#E4#           =>  --  B2E4
          (Other_Letter, 0,
           LV, A_Letter, O_Letter, H2,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         others           =>
          (Other_Letter, 0,
           LVT, A_Letter, O_Letter, H3,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00B2;
