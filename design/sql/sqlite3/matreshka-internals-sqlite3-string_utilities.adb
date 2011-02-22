------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
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
with Matreshka.Internals.Strings;
with Matreshka.Internals.Unicode;

package body Matreshka.Internals.SQLite3.String_Utilities is

   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   package Utf16_Code_Unit_Pointers is
     new Interfaces.C.Pointers
          (Matreshka.Internals.Utf16.Utf16_String_Index,
           Matreshka.Internals.Utf16.Utf16_Code_Unit,
           Matreshka.Internals.Utf16.Unaligned_Utf16_String,
           0);

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String
    (Text : Matreshka.Internals.SQLite3.Utf16_Code_Unit_Access)
       return League.Strings.Universal_String
   is
      Length   : Matreshka.Internals.Utf16.Utf16_String_Index
        := Matreshka.Internals.Utf16.Utf16_String_Index
            (Utf16_Code_Unit_Pointers.Virtual_Length
              (Utf16_Code_Unit_Pointers.Pointer (Text)));
      Source   :
        Matreshka.Internals.Utf16.Unaligned_Utf16_String (0 .. Length - 1);
      for Source'Address use Text.all'Address;
      pragma Import (Ada, Source);
      Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Code     : Matreshka.Internals.Unicode.Code_Point;
      Aux      : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Allocate (Length);

   begin
      while Position <= Source'Last loop
         Matreshka.Internals.Utf16.Unchecked_Next (Source, Position, Code);
         Matreshka.Internals.Utf16.Unchecked_Store
          (Aux.Value, Aux.Unused, Code);
         Aux.Length := Aux.Length + 1;
      end loop;

      return League.Strings.Internals.Wrap (Aux);
   end To_Universal_String;

end Matreshka.Internals.SQLite3.String_Utilities;
