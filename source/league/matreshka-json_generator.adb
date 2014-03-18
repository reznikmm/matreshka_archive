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
-- Copyright © 2013-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Holders;
with League.JSON.Arrays;
with League.JSON.Objects;
with League.JSON.Values;
with League.String_Vectors;

package body Matreshka.JSON_Generator is

   --------------
   -- Generate --
   --------------

   function Generate
    (Document : League.JSON.Documents.JSON_Document'Class)
       return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;

      procedure Generate_Array (Value : League.JSON.Arrays.JSON_Array);

      procedure Generate_Object (Value : League.JSON.Objects.JSON_Object);

      procedure Generate_Value (Value : League.JSON.Values.JSON_Value);

      procedure Generate_String (Value : League.Strings.Universal_String);

      --------------------
      -- Generate_Array --
      --------------------

      procedure Generate_Array (Value : League.JSON.Arrays.JSON_Array) is
      begin
         Result.Append ('[');

         for J in 1 .. Value.Length loop
            if J /= 1 then
               Result.Append (',');
            end if;

            Generate_Value (Value.Element (J));
         end loop;

         Result.Append (']');
      end Generate_Array;

      ---------------------
      -- Generate_Object --
      ---------------------

      procedure Generate_Object (Value : League.JSON.Objects.JSON_Object) is
         Members : constant League.String_Vectors.Universal_String_Vector
           := Value.Keys;

      begin
         Result.Append ('{');

         for J in 1 .. Members.Length loop
            if J /= 1 then
               Result.Append (',');
            end if;

            Generate_String (Members.Element (J));
            Result.Append (':');
            Generate_Value (Value.Value (Members.Element (J)));
         end loop;

         Result.Append ('}');
      end Generate_Object;

      ---------------------
      -- Generate_String --
      ---------------------

      procedure Generate_String (Value : League.Strings.Universal_String) is
         To_Hex : constant array (Natural range 0 .. 15) of Wide_Wide_Character
           := "0123456789ABCDEF";
         Code   : Natural;

      begin
         Result.Append ('"');

         for J in 1 .. Value.Length loop
            case Value.Element (J).To_Wide_Wide_Character is
               when Wide_Wide_Character'Val (16#0000#)
                      .. Wide_Wide_Character'Val (16#0007#)
                 | Wide_Wide_Character'Val (16#000B#)
                 | Wide_Wide_Character'Val (16#000E#)
                     .. Wide_Wide_Character'Val (16#001F#)
               =>
                  Code :=
                    Wide_Wide_Character'Pos
                     (Value.Element (J).To_Wide_Wide_Character);
                  Result.Append ("\u00");
                  Result.Append (To_Hex ((Code / 16) mod 16));
                  Result.Append (To_Hex (Code mod 16));

               when Wide_Wide_Character'Val (16#0008#) =>  --  backspace
                  Result.Append ("\b");

               when Wide_Wide_Character'Val (16#0009#) =>  --  carriage return
                  Result.Append ("\r");

               when Wide_Wide_Character'Val (16#000A#) =>  --  line feed
                  Result.Append ("\n");

               when Wide_Wide_Character'Val (16#000C#) =>  --  form feed
                  Result.Append ("\f");

               when Wide_Wide_Character'Val (16#000D#) =>  --  tab
                  Result.Append ("\t");

               when '"' =>
                  Result.Append ("\""");

               when '\' =>
                  Result.Append ("\\");

               when others =>
                  Result.Append (Value.Element (J));
            end case;
         end loop;

         Result.Append ('"');
      end Generate_String;

      --------------------
      -- Generate_Value --
      --------------------

      procedure Generate_Value (Value : League.JSON.Values.JSON_Value) is
      begin
         case Value.Kind is
            when League.JSON.Values.Empty_Value =>
               null;

            when League.JSON.Values.Boolean_Value =>
               case Value.To_Boolean is
                  when False =>
                     Result.Append ("false");

                  when True =>
                     Result.Append ("true");
               end case;

            when League.JSON.Values.Number_Value =>
               if Value.Is_Integer_Number then
                  declare
                     Image : constant Wide_Wide_String
                       := League.Holders.Universal_Integer'Wide_Wide_Image
                           (Value.To_Integer);

                  begin
                     if Image (Image'First) /= ' ' then
                        Result.Append (Image);

                     else
                        Result.Append (Image (Image'First + 1 .. Image'Last));
                     end if;
                  end;

               else
                  declare
                     Image : constant Wide_Wide_String
                       := League.Holders.Universal_Float'Wide_Wide_Image
                           (Value.To_Float);

                  begin
                     if Image (Image'First) /= ' ' then
                        Result.Append (Image);

                     else
                        Result.Append (Image (Image'First + 1 .. Image'Last));
                     end if;
                  end;
               end if;

            when League.JSON.Values.String_Value =>
               Generate_String (Value.To_String);

            when League.JSON.Values.Array_Value =>
               Generate_Array (Value.To_Array);

            when League.JSON.Values.Object_Value =>
               Generate_Object (Value.To_Object);

            when League.JSON.Values.Null_Value =>
               Result.Append ("null");
         end case;
      end Generate_Value;

   begin
      if Document.Is_Object then
         Generate_Object (Document.To_JSON_Object);

      elsif Document.Is_Array then
         Generate_Array (Document.To_JSON_Array);
      end if;

      return Result;
   end Generate;

end Matreshka.JSON_Generator;
