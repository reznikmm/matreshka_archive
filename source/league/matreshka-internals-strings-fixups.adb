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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Strings.COnfiguration;

package body Matreshka.Internals.Strings.Fixups is

   use Matreshka.Internals.Strings.COnfiguration;

   ------------------------
   -- Validate_And_Fixup --
   ------------------------

   procedure Validate_And_Fixup
    (String : in out Shared_String_Access;
     Valid  : out Boolean)
   is
      use type Matreshka.Internals.Utf16.Utf16_Code_Unit;

      pragma Assert (String /= null);
      pragma Suppress (Access_Check);

   begin
      String.Unused := 0;
      String.Length := 0;
      Valid         := True;

      --  Look for null terminator and validate data. Note, last code unit is
      --  not checked (it assumed to be null if reached), but this allows to
      --  suppress range check for surrogate pair. Check for unterminated
      --  string which ends by surrogate pair is done after loop below.

      while Valid and String.Unused < String.Size loop
         exit when String.Value (String.Unused) = 0;

         Matreshka.Internals.Utf16.Unchecked_Validate_Next
          (String.Value, String.Unused, Valid);
         String.Length := String.Length + 1;
      end loop;

      --  Check whether string is properly terminated.

      if String.Unused > String.Size then
         --  String is not terminated properly and last character is
         --  represented by surrogate pair.

         String.Length := String.Length - 1;
         String.Unused := String.Unused - 2;
         Valid         := False;

      elsif String.Value (String.Unused) /= 0 then
         --  This covers two cases: invalid surrogate pair inside the string
         --  and incorrectly terminated string. In both cases data it truncated
         --  to pointed position (so, invalid surrogate pair or last code unit
         --  is filled by terminator).

         Valid := False;
      end if;

      --  Check whether result string is empty or not.

      if String.Unused = 0 then
         --  Dereference existing string and replace it by shared empty object.

         Dereference (String);
         String := Shared_Empty'Access;

      else
         --  Fill null terminator for not empty string.

         String_Handler.Fill_Null_Terminator (String);
      end if;
   end Validate_And_Fixup;

   ------------------------
   -- Validate_And_Fixup --
   ------------------------

   procedure Validate_And_Fixup
    (String : in out Shared_String_Access;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Valid  : out Boolean)
   is
      pragma Assert (String.Size < Size);
      pragma Assert (String /= null);
      pragma Suppress (Access_Check);

   begin
      --  Fill null terminator, this allows to suppress additional checks for
      --  invalid surrogate pair at the end of string, because ordinary check
      --  fails on null terminator.

      String.Unused := Size;
      String_Handler.Fill_Null_Terminator (String);

      --  Reset state.

      String.Unused := 0;
      String.Length := 0;
      Valid         := True;

      --  Validate data.

      while Valid and String.Unused < Size loop
         Matreshka.Internals.Utf16.Unchecked_Validate_Next
          (String.Value, String.Unused, Valid);
         String.Length := String.Length + 1;
      end loop;

      --  Check whether result string is empty or not.

      if String.Unused = 0 then
         --  Dereference existing string and replace it by shared empty object.

         Dereference (String);
         String := Shared_Empty'Access;

      else
         --  Fill null terminator for not empty string.

         String_Handler.Fill_Null_Terminator (String);
      end if;
   end Validate_And_Fixup;

end Matreshka.Internals.Strings.Fixups;
