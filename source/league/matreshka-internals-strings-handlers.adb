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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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

package body Matreshka.Internals.Strings.Handlers is

   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.Unicode;

   -----------
   -- Count --
   -----------

   not overriding function Count
    (Self : Abstract_String_Handler;
     Item : Matreshka.Internals.Strings.Shared_String_Access;
     Code : Matreshka.Internals.Unicode.Code_Point)
       return Natural
   is
      pragma Unreferenced (Self);

      Position : Utf16_String_Index := 0;
      Count    : Natural            := 0;
      C        : Code_Point;

   begin
      while Position < Item.Unused loop
         Unchecked_Next (Item.Value, Position, C);

         if C = Code then
            Count := Count + 1;
         end if;
      end loop;

      return Count;
   end Count;

   -----------
   -- Index --
   -----------

   not overriding function Index
    (Self          : Abstract_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Index    : Positive;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Code          : Matreshka.Internals.Unicode.Code_Point) return Natural
   is
      pragma Unreferenced (Self);

      Position : Utf16_String_Index := From_Position;
      Index    : Natural            := From_Index;
      C        : Code_Point;

   begin
      while Position < To_Position loop
         Unchecked_Next (Item.Value, Position, C);

         if C = Code then
            return Index;
         end if;

         Index := Index + 1;
      end loop;

      return 0;
   end Index;

   -----------
   -- Index --
   -----------

   not overriding function Index
    (Self          : Abstract_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Index    : Positive;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Pattern       : Matreshka.Internals.Strings.Shared_String_Access)
       return Natural
   is
      pragma Unreferenced (Self);

      Position : Utf16_String_Index;
      Index    : Positive;
      Last     : Utf16_String_Index;
      C        : Code_Point;

   begin
      if Pattern.Length = 0 then
         return 0;

      elsif Pattern.Length = 1 then
         Position := 0;
         Unchecked_Next (Pattern.Value, Position, C);

         return
           Abstract_String_Handler'Class
            (Self).Index (Item, From_Index, From_Position, To_Position, C);

      elsif To_Position - From_Position < Item.Unused then
         return 0;

      else
         Position := From_Position;
         Index    := From_Index;
         Last     := To_Position - Pattern.Unused;

         while Position <= Last loop
            if Item.Value (Position .. Position + Pattern.Unused - 1)
                 = Pattern.Value (0 .. Pattern.Unused - 1)
            then
               return Index;
            end if;

            Unchecked_Next (Item.Value, Position);
            Index := Index + 1;
         end loop;

         return 0;
      end if;
   end Index;

   ----------------
   -- Last_Index --
   ----------------

   not overriding function Last_Index
    (Self          : Abstract_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Index      : Positive;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Code          : Matreshka.Internals.Unicode.Code_Point) return Natural
   is
      pragma Unreferenced (Self);

      Position : Utf16_String_Index := To_Position;
      Index    : Natural            := To_Index;
      C        : Code_Point;

   begin
      while Position > From_Position loop
         Unchecked_Previous (Item.Value, Position, C);

         if C = Code then
            return Index;
         end if;

         Index := Index - 1;
      end loop;

      return 0;
   end Last_Index;

   -----------------
   -- Starts_With --
   -----------------

   not overriding function Starts_With
    (Self    : Abstract_String_Handler;
     Item    : not null Shared_String_Access;
     Pattern : not null Shared_String_Access) return Boolean
   is
      pragma Unreferenced (Self);

      I_Position : Utf16_String_Index := 0;
      P_Position : Utf16_String_Index := 0;
      IC         : Code_Point;
      PC         : Code_Point;

   begin
      if Item = Pattern then
         --  Item and Pattern are same strings.

         return True;
      end if;

      if Item.Unused < Pattern.Unused then
         --  Item is shorter than Pattern, no match possible.

         return False;
      end if;

      while P_Position < Pattern.Unused loop
         Unchecked_Next (Item.Value, I_Position, IC);
         Unchecked_Next (Pattern.Value, P_Position, PC);

         if IC /= PC then
            return False;
         end if;
      end loop;

      return True;
   end Starts_With;

end Matreshka.Internals.Strings.Handlers;
