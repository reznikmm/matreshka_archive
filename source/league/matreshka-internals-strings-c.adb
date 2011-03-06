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
with Interfaces.C.Pointers;

with League.Strings.Internals;
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Unicode;

package body Matreshka.Internals.Strings.C is

   use Matreshka.Internals.Strings.Configuration;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   package Utf16_Code_Unit_Pointers is
     new Interfaces.C.Pointers
          (Matreshka.Internals.Utf16.Utf16_String_Index,
           Matreshka.Internals.Utf16.Utf16_Code_Unit,
           Matreshka.Internals.Utf16.Unaligned_Utf16_String,
           0);

   -------------------------------
   -- To_Valid_Universal_String --
   -------------------------------

   function To_Valid_Universal_String
    (Text : Utf16_Code_Unit_Access) return League.Strings.Universal_String
   is
      Size        : Matreshka.Internals.Utf16.Utf16_String_Index
        := Matreshka.Internals.Utf16.Utf16_String_Index
            (Utf16_Code_Unit_Pointers.Virtual_Length
              (Utf16_Code_Unit_Pointers.Pointer (Text)));
      Source      :
        Matreshka.Internals.Utf16.Unaligned_Utf16_String (0 .. Size);
      for Source'Address use Text.all'Address;
      pragma Import (Ada, Source);
      --  Map Source to Text. Note, null terminator is part of the array.
      Position    : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Code        : Matreshka.Internals.Unicode.Code_Point;
      Destination : Matreshka.Internals.Strings.Shared_String_Access;
      Valid       : Boolean;

   begin
      if Size = 0 then
         Destination := Shared_Empty'Access;

      else
         Destination := Matreshka.Internals.Strings.Allocate (Size);

         --  Look for null terminator and validate data. Note, last code unit
         --  is not checked (it is null by convention), but this allows to
         --  suppress range check for surrogate pair. Check just fail when
         --  string ends by unpaired surrogate character.

         while Destination.Unused < Size loop
            Matreshka.Internals.Utf16.Unchecked_Validate_Next
             (Source, Position, Code, Valid);

            exit when not Valid;

            Matreshka.Internals.Utf16.Unchecked_Store
             (Destination.Value, Destination.Unused, Code);
            Destination.Length := Destination.Length + 1;
         end loop;

         --  Check whether result string is empty or not.

         if Destination.Unused = 0 then
            --  Dereference existing string and replace it by shared empty
            --  object.

            Dereference (Destination);
            Destination := Shared_Empty'Access;

         else
            --  Fill null terminator for not empty string.

            String_Handler.Fill_Null_Terminator (Destination);
         end if;
      end if;

      return League.Strings.Internals.Wrap (Destination);
   end To_Valid_Universal_String;

end Matreshka.Internals.Strings.C;
