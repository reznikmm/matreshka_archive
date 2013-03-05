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
-- Copyright © 2009-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Unicode.Casing is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Strings.Operations;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Matreshka.Internals.Utf16;

   ------------------
   -- Convert_Case --
   ------------------

   procedure Convert_Case
    (Locale      : not null Matreshka.Internals.Locales.Locale_Data_Access;
     Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Kind        : Matreshka.Internals.Unicode.Ucd.Case_Mapping_Kinds;
     Property    : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      Source_Current : Utf16_String_Index := 0;
      Source_Code    : Code_Point;
      Converted      : Boolean;

      function Is_Preceded_By_Final_Sigma_Context return Boolean;

      function Is_Followed_By_Final_Sigma_Context return Boolean;

      function Is_Preceded_By_After_Soft_Dotted_Context return Boolean;

      function Is_Followed_By_More_Above_Context return Boolean;

      function Is_Followed_By_Before_Dot_Context return Boolean;

      function Is_Preceded_By_After_I_Context return Boolean;

      ---------------------------------------
      -- Is_Followed_By_Before_Dot_Context --
      ---------------------------------------

      function Is_Followed_By_Before_Dot_Context return Boolean is
         Current : Utf16_String_Index := Source_Current;
         Code    : Code_Point;

      begin
         while Current < Source.Unused loop
            Unchecked_Next (Source.Value, Current, Code);

            declare
               R : constant Core_Values := Locale.Get_Core (Code);

            begin
               if R.CCC = 0 or else R.CCC = 230 then
                  return False;

               elsif Code = 16#0307# then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Followed_By_Before_Dot_Context;

      ----------------------------------------
      -- Is_Followed_By_Final_Sigma_Context --
      ----------------------------------------

      function Is_Followed_By_Final_Sigma_Context return Boolean is
         Current : Utf16_String_Index := Source_Current;
         Code    : Code_Point;

      begin
         while Current < Source.Unused loop
            Unchecked_Next (Source.Value, Current, Code);

            declare
               R : constant Core_Values := Locale.Get_Core (Code);

            begin
               if not R.B (Case_Ignorable) then
                  return not R.B (Cased);
               end if;
            end;
         end loop;

         return True;
      end Is_Followed_By_Final_Sigma_Context;

      ---------------------------------------
      -- Is_Followed_By_More_Above_Context --
      ---------------------------------------

      function Is_Followed_By_More_Above_Context return Boolean is
         Current : Utf16_String_Index := Source_Current;
         Code    : Code_Point;

      begin
         while Current < Source.Unused loop
            Unchecked_Next (Source.Value, Current, Code);

            declare
               R : constant Core_Values := Locale.Get_Core (Code);

            begin
               if R.CCC = 0 then
                  return False;

               elsif R.CCC = 230 then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Followed_By_More_Above_Context;

      ------------------------------------
      -- Is_Preceded_By_After_I_Context --
      ------------------------------------

      function Is_Preceded_By_After_I_Context return Boolean is
         Current : Utf16_String_Index := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Previous (Source.Value, Current, Code);

         while Current /= 0 loop
            Unchecked_Previous (Source.Value, Current, Code);

            declare
               R : constant Core_Values := Locale.Get_Core (Code);

            begin
               if R.CCC = 0 or else R.CCC = 230 then
                  return False;

               elsif Code = Wide_Wide_Character'Pos ('I') then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Preceded_By_After_I_Context;

      ----------------------------------------------
      -- Is_Preceded_By_After_Soft_Dotted_Context --
      ----------------------------------------------

      function Is_Preceded_By_After_Soft_Dotted_Context return Boolean is
         Current : Utf16_String_Index := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Previous (Source.Value, Current, Code);

         while Current /= 0 loop
            Unchecked_Previous (Source.Value, Current, Code);

            declare
               R : constant Core_Values := Locale.Get_Core (Code);

            begin
               if R.CCC = 0 or else R.CCC = 230 then
                  return False;

               elsif R.B (Soft_Dotted) then
                  return True;
               end if;
            end;
         end loop;

         return False;
      end Is_Preceded_By_After_Soft_Dotted_Context;

      ----------------------------------------
      -- Is_Preceded_By_Final_Sigma_Context --
      ----------------------------------------

      function Is_Preceded_By_Final_Sigma_Context return Boolean is
         Current : Utf16_String_Index := Source_Current;
         Code    : Code_Point;

      begin
         Unchecked_Previous (Source.Value, Current, Code);

         while Current /= 0 loop
            Unchecked_Previous (Source.Value, Current, Code);

            declare
               R : constant Core_Values := Locale.Get_Core (Code);

            begin
               if not R.B (Case_Ignorable) then
                  return R.B (Cased);
               end if;
            end;
         end loop;

         return False;
      end Is_Preceded_By_Final_Sigma_Context;

   begin
      Destination.Unused := 0;
      Destination.Length := 0;

      while Source_Current < Source.Unused loop
         Unchecked_Next (Source.Value, Source_Current, Source_Code);

         if Locale.Get_Core (Source_Code).B (Property) then
            declare
               Mapping : constant Case_Mapping
                 := Locale.Casing.Mapping
                     (First_Stage_Index (Source_Code / 16#100#))
                     (Second_Stage_Index (Source_Code mod 16#100#));

            begin
               Converted := False;

               if Kind /= Folding
                 --  Ignore casing context mappings in the case folding mode.
                 and then Mapping.Context_First /= 0
               then
                  --  Character is casing context sensitive.

                  for J in Mapping.Context_First .. Mapping.Context_Last loop
                     declare
                        Context : constant Casing_Context_Mapping
                          := Locale.Casing.Context (J);

                     begin
                        if Context.Ranges (Kind).First /= 0 then
                           case Context.Context is
                              when Final_Sigma =>
                                 if (Is_Preceded_By_Final_Sigma_Context
                                       and then
                                         Is_Followed_By_Final_Sigma_Context)
                                   xor Context.Negative
                                 then
                                    for J in Context.Ranges (Kind).First
                                               .. Context.Ranges (Kind).Last
                                    loop
                                       Append
                                        (Destination,
                                         Locale.Casing.Expansion (J));
                                    end loop;

                                    Converted := True;

                                    exit;
                                 end if;

                              when After_Soft_Dotted =>
                                 if Is_Preceded_By_After_Soft_Dotted_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;

                              when More_Above =>
                                 if Is_Followed_By_More_Above_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;

                              when Before_Dot =>
                                 if Is_Followed_By_Before_Dot_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;

                              when After_I =>
                                 if Is_Preceded_By_After_I_Context
                                   xor Context.Negative
                                 then
                                    null;
                                 end if;
                           end case;
                        end if;
                     end;
                  end loop;
               end if;

               if not Converted then
                  for J in Mapping.Ranges (Kind).First
                             .. Mapping.Ranges (Kind).Last
                  loop
                     Append (Destination, Locale.Casing.Expansion (J));
                  end loop;
               end if;
            end;

         else
            Append (Destination, Source_Code);
         end if;
      end loop;

      String_Handler.Fill_Null_Terminator (Destination);
   end Convert_Case;

   -------------------------
   -- Simple_Convert_Case --
   -------------------------

   procedure Simple_Convert_Case
    (Locale      : not null Matreshka.Internals.Locales.Locale_Data_Access;
     Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Kind        : Matreshka.Internals.Unicode.Ucd.Case_Mapping_Kinds;
     Property    : Matreshka.Internals.Unicode.Ucd.Boolean_Properties;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      Source_Current : Utf16_String_Index := 0;
      Source_Code    : Code_Point;

   begin
      Destination.Unused := 0;
      Destination.Length := 0;

      while Source_Current < Source.Unused loop
         Unchecked_Next (Source.Value, Source_Current, Source_Code);

         if Locale.Get_Core (Source_Code).B (Property) then
            declare
               Mapping : constant Case_Mapping
                 := Locale.Casing.Mapping
                     (First_Stage_Index (Source_Code / 16#100#))
                     (Second_Stage_Index (Source_Code mod 16#100#));

            begin
               if Mapping.Simple (Kind) /= 0 then
                  Append (Destination, Mapping.Simple (Kind));

               else
                  Append (Destination, Source_Code);
               end if;
            end;

         else
            Append (Destination, Source_Code);
         end if;
      end loop;

      String_Handler.Fill_Null_Terminator (Destination);
   end Simple_Convert_Case;

end Matreshka.Internals.Unicode.Casing;
