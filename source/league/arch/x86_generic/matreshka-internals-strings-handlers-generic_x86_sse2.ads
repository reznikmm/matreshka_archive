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
-- Copyright © 2011-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides string handler optimized for SSE2 instructions set
--  on x86 and x86_64 processors.
------------------------------------------------------------------------------
with Interfaces;

generic
   type Base_String_Handler is
     abstract new Abstract_String_Handler with private;

   with procedure Update_Index_Forward
    (Mask  : Interfaces.Unsigned_32;
     Index : in out Positive);
   --  Update character index based on value of the exclusion mask. It
   --  increments Index by 8 excluding 1 for each pair of 1 bits in exclusion
   --  mask.

package Matreshka.Internals.Strings.Handlers.Generic_X86_SSE2 is

   pragma Preelaborate;

   type X86_SSE2_String_Handler is new Base_String_Handler with null record;

   overriding procedure Fill_Null_Terminator
    (Self : X86_SSE2_String_Handler;
     Item : not null Shared_String_Access);

   overriding function Is_Equal
    (Self  : X86_SSE2_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean;

   overriding function Is_Less
    (Self  : X86_SSE2_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean;

   overriding function Is_Greater
    (Self  : X86_SSE2_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean;

   overriding function Is_Less_Or_Equal
    (Self  : X86_SSE2_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean;

   overriding function Is_Greater_Or_Equal
    (Self  : X86_SSE2_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean;

   overriding function Index
    (Self          : X86_SSE2_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Index    : Positive;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Code          : Matreshka.Internals.Unicode.Code_Point)
       return Natural;

   Handler : aliased X86_SSE2_String_Handler;

end Matreshka.Internals.Strings.Handlers.Generic_X86_SSE2;
