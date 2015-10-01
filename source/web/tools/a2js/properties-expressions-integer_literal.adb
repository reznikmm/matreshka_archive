------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Wide_Wide_Text_IO;
with Interfaces;
with Asis.Expressions;
with League.String_Vectors;

package body Properties.Expressions.Integer_Literal is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Engine, Name);
      Image  : constant Wide_String := Asis.Expressions.Value_Image (Element);
      Result : League.Strings.Universal_String :=
        League.Strings.From_UTF_16_Wide_String (Image);
   begin
      if Result.Index ('.') > 0 then
         declare
            Value : constant Long_Long_Float :=
              Long_Long_Float'Wide_Value (Image);
            Text : constant Wide_Wide_String :=
              Long_Long_Float'Wide_Wide_Image (Value);
         begin
            Result :=
              League.Strings.To_Universal_String (Text (2 .. Text'Last));
         end;
      elsif Result.Starts_With ("16#") then
         declare
            package IO is
              new Ada.Wide_Wide_Text_IO.Modular_IO (Interfaces.Unsigned_32);
            Value : constant Interfaces.Unsigned_32 :=
              Interfaces.Unsigned_32'Wide_Value (Image);
            Text : Wide_Wide_String (1 .. 19);
            List : League.String_Vectors.Universal_String_Vector;
         begin
            IO.Put (Text, Value, 16);
            Result := League.Strings.To_Universal_String (Text);
            List := Result.Split ('#');
            Result.Clear;
            Result.Append ("0x");
            Result.Append (List.Element (2));
         end;
      else
         declare
            Value : constant Interfaces.Unsigned_32 :=
              Interfaces.Unsigned_32'Wide_Value (Image);
            Text : constant Wide_Wide_String :=
              Interfaces.Unsigned_32'Wide_Wide_Image (Value);
         begin
            Result :=
              League.Strings.To_Universal_String (Text (2 .. Text'Last));
         end;
      end if;

      return Result;
   end Code;

end Properties.Expressions.Integer_Literal;
