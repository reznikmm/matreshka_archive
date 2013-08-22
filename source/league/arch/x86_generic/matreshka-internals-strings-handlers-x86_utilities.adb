------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.Internals.Strings.Handlers.X86_Utilities is

   use type Interfaces.Unsigned_32;

   function popcount
    (X : Interfaces.Unsigned_32) return Interfaces.Unsigned_32;
   pragma Import (Intrinsic, popcount, "__builtin_popcount");

   --------------------------
   -- Update_Index_Generic --
   --------------------------

   procedure Update_Index_Generic
    (Mask  : Interfaces.Unsigned_32;
     Index : in out Positive) is
   begin
      if (Mask and 2#00000000_00000011#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#00000000_00001100#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#00000000_00110000#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#00000000_11000000#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#00000011_00000000#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#00001100_00000000#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#00110000_00000000#) = 0 then
         Index := Index + 1;
      end if;

      if (Mask and 2#11000000_00000000#) = 0 then
         Index := Index + 1;
      end if;
   end Update_Index_Generic;

   -------------------------
   -- Update_Index_POPCNT --
   -------------------------

   procedure Update_Index_POPCNT
    (Mask  : Interfaces.Unsigned_32;
     Index : in out Positive) is
   begin
      Index := Index + 8 - Integer (popcount (Mask) / 2);
   end Update_Index_POPCNT;

end Matreshka.Internals.Strings.Handlers.X86_Utilities;
