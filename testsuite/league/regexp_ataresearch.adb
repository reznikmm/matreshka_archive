------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This test reads test data in AT&T Research regression tests format and
--  Matreshka's corrections for expressions; and execute them.
with Ada.Characters.Conversions;
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Command_Line;
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Vectors;
with Ada.Exceptions;
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Maps;
with Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Hash;
with Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with League.Regexps;
with League.Strings;

procedure Regexp_Ataresearch is

   use Ada.Characters.Conversions;
   use Ada.Characters.Wide_Wide_Latin_1;
   use Ada.Command_Line;
   use Ada.Exceptions;
   use Ada.Integer_Wide_Wide_Text_IO;
--   use Ada.Strings;
   use Ada.Strings.Wide_Wide_Maps;
   use Ada.Strings.Wide_Wide_Unbounded;
   use Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;
   use League.Regexps;
   use League.Strings;

   package Maps is
     new Ada.Containers.Hashed_Maps
          (Unbounded_Wide_Wide_String,
           Unbounded_Wide_Wide_String,
           Wide_Wide_Hash,
           "=");

   type Pair is record
      First : Integer;
      Last  : Integer;
   end record;

   package Vectors is new Ada.Containers.Vectors (Natural, Pair);

   procedure Do_Test
    (Pattern : Universal_String;
     Data    : Universal_String;
     Matches : Wide_Wide_String;
     Success : in out Boolean);

   function Unescape (Item : Wide_Wide_String) return Universal_String;

   procedure Load_Substitutions;

   function To_Pairs (Item : Wide_Wide_String) return Vectors.Vector;

   Substitutions : Maps.Map;

   -------------
   -- Do_Test --
   -------------

   procedure Do_Test
    (Pattern : Universal_String;
     Data    : Universal_String;
     Matches : Wide_Wide_String;
     Success : in out Boolean)
   is
      P : Regexp_Pattern;
      M : Regexp_Match;
      R : Vectors.Vector;

      procedure Output;

      procedure Output is
      begin
         New_Line;
         Put_Line ("Pattern: '" & To_Wide_Wide_String (Pattern) & ''');
         Put_Line ("String:  '" & To_Wide_Wide_String (Data) & ''');
         Put_Line ("Expected: " & Matches);
         Put ("Loaded:   ");

         for J in R.First_Index .. R.Last_Index loop
            Put ('(');
            Put (R.Element (J).First, 0);
            Put (',');
            Put (R.Element (J).Last, 0);
            Put (')');
         end loop;

         New_Line;

         Put ("Actual:   ");

         if M.Is_Matched then
            Put ('(');
            Put (M.First_Index - 1, 0);
            Put (',');
            Put (M.Last_Index, 0);
            Put (')');

            for J in 1 .. M.Capture_Count loop
               if M.First_Index (J) = 1 and then M.Last_Index (J) = 0 then
                  Put ("(?,?)");

               else
                  Put ('(');
                  Put (M.First_Index (J) - 1, 0);
                  Put (',');
                  Put (M.Last_Index (J), 0);
                  Put (')');
               end if;
            end loop;

            New_Line;

         else
            Put_Line ("not matched");
         end if;
      end Output;

   begin
      P := Compile (Pattern);
      M := P.Find_Match (Data);
      R := To_Pairs (Matches);

      if not M.Is_Matched then
         Output;

      else
         for J in R.First_Index .. R.Last_Index loop
            if J = 0 then
               if M.First_Index /= R.Element (J).First
                 or else M.Last_Index /= R.Element (J).Last
               then
                  Success := False;
                  Output;

                  exit;
               end if;

            else
               if M.First_Index (J) /= R.Element (J).First
                 or else M.Last_Index (J) /= R.Element (J).Last
               then
                  Success := False;
                  Output;

                  exit;
               end if;
            end if;
         end loop;
      end if;

   exception
      when E : others =>
         if Matches (Matches'First) = '(' then
            Output;
            Put_Line (To_Wide_Wide_String (Exception_Information (E)));
            Success := False;
         end if;
   end Do_Test;

   ------------------------
   -- Load_Substitutions --
   ------------------------

   procedure Load_Substitutions is
      Tab_Set      : constant Wide_Wide_Character_Set
        := To_Set (Wide_Wide_String'(1 => HT));
      File         : File_Type;
      Buffer       : Unbounded_Wide_Wide_String;
      Tab_Index    : Natural;
      Expression   : Unbounded_Wide_Wide_String;
      Substitution : Unbounded_Wide_Wide_String;

   begin
      Open (File, In_File, Argument (2), "wcem=8");

      while not End_Of_File (File) loop
         Get_Line (File, Buffer);

         Tab_Index := Index (Buffer, Tab_Set);
         Expression := Unbounded_Slice (Buffer, 1, Tab_Index - 1);
         Substitution :=
           Unbounded_Slice (Buffer, Tab_Index + 1, Length (Buffer));
         Trim (Substitution, Tab_Set, Tab_Set);

         Substitutions.Insert (Expression, Substitution);
      end loop;

      Close (File);
   end Load_Substitutions;

   --------------
   -- To_Pairs --
   --------------

   function To_Pairs (Item : Wide_Wide_String) return Vectors.Vector is
      Pairs       : Vectors.Vector;
      First       : Positive := Item'First + 1;
      Last        : Natural  := 0;
      Index_First : Positive;
      Index_Last  : Natural;

   begin
      loop
         Last := First;

         while Item (Last) /= ',' loop
            Last := Last + 1;
         end loop;

         Last := Last - 1;

         if Item (First .. Last) = "?" then
            Index_First := 1;

         else
            Index_First := Integer'Wide_Wide_Value (Item (First .. Last)) + 1;
         end if;

         First := Last + 2;
         Last  := First;

         while Item (Last) /= ')' loop
            Last := Last + 1;
         end loop;

         Last := Last - 1;

         if Item (First .. Last) = "?" then
            Index_Last := 0;

         else
            Index_Last := Integer'Wide_Wide_Value (Item (First .. Last));
         end if;

         First := Last + 3;
         Pairs.Append ((Index_First, Index_Last));

         exit when First > Item'Last;
      end loop;

      return Pairs;
   end To_Pairs;

   --------------
   -- Unescape --
   --------------

   function Unescape (Item : Wide_Wide_String) return Universal_String is
--      Result : Universal_String;
      Result : Unbounded_Wide_Wide_String;
      Index  : Positive := Item'First;

   begin
      if Item = "NULL" then
         return To_Universal_String (To_Wide_Wide_String (Result));
      end if;

      loop
         exit when Index > Item'Last;

         case Item (Index) is
            when '\' =>
               Index := Index + 1;

               case Item (Index) is
                  when 'n' =>
                     Append (Result, LF);

                  when 'x' =>
                     Append
                      (Result,
                       Wide_Wide_Character'Val
                        (Integer'Wide_Wide_Value
                          ("16#" & Item (Index + 1 .. Index + 2) & '#')));
                     Index := Index + 2;

                  when others =>
                     Append (Result, '\');
                     Append (Result, Item (Index));
               end case;

            when others =>
               Append (Result, Item (Index));
         end case;

         Index := Index + 1;
      end loop;

      return To_Universal_String (To_Wide_Wide_String (Result));
   end Unescape;

   File     : File_Type;
   Buffer   : Wide_Wide_String (1 .. 1024);
   Last     : Natural;
   F1_First : Positive;
   F1_Last  : Natural;
   F2_First : Positive;
   F2_Last  : Natural;
   F3_First : Positive;
   F3_Last  : Natural;
   F4_First : Positive;
   F4_Last  : Natural;
   F5_First : Positive;
   F5_Last  : Natural;
   Success  : Boolean := True;

begin
   Load_Substitutions;

   Open (File, In_File, Argument (1), "wcem=8");

   while not End_Of_File (File) loop
      Get_Line (File, Buffer, Last);

      if Last > 4 and then Buffer (1 .. 4) /= "NOTE" then
--         Put_Line (Buffer (1 .. Last));

         F1_First := 1;
         F1_Last  := 0;
         F2_First := 1;
         F2_Last  := 0;
         F3_First := 1;
         F3_Last  := 0;
         F4_First := 1;
         F4_Last  := 0;
         F5_First := 1;
         F5_Last  := 0;

         for J in F1_First + 1 .. Last loop
            F1_Last := J;
            F2_First := J;

            if Buffer (J) = HT then
               F1_Last := J - 1;

               for K in J .. Last loop
                  F2_First := K;

                  exit when Buffer (K) /= HT;
               end loop;

               exit;
            end if;
         end loop;

         for J in F2_First + 1 .. Last loop
            F2_Last := J;
            F3_First := J;

            if Buffer (J) = HT then
               F2_Last := J - 1;

               for K in J .. Last loop
                  F3_First := K;

                  exit when Buffer (K) /= HT;
               end loop;

               exit;
            end if;
         end loop;

         for J in F3_First + 1 .. Last loop
            F3_Last := J;
            F4_First := J;

            if Buffer (J) = HT then
               F3_Last := J - 1;

               for K in J .. Last loop
                  F4_First := K;

                  exit when Buffer (K) /= HT;
               end loop;

               exit;
            end if;
         end loop;

         for J in F4_First + 1 .. Last loop
            F4_Last := J;
            F5_First := J;

            if Buffer (J) = HT then
               F4_Last := J - 1;

               for K in J .. Last loop
                  F5_First := K;

                  exit when Buffer (K) /= HT;
               end loop;

               exit;
            end if;
         end loop;

         for J in F5_First + 1 .. Last loop
            F5_Last := J;

            if Buffer (J) = HT then
               F5_Last := J - 1;

               exit;
            end if;
         end loop;

--         Put_Line ("   '" & Buffer (F1_First .. F1_Last) & ''');
--         Put_Line ("   '" & Buffer (F2_First .. F2_Last) & ''');
--         Put_Line ("   '" & Buffer (F3_First .. F3_Last) & ''');
--         Put_Line ("   '" & Buffer (F4_First .. F4_Last) & ''');
--         Put_Line ("   '" & Buffer (F5_First .. F5_Last) & ''');

         if Substitutions.Contains (To_Unbounded_Wide_Wide_String (Buffer (F2_First .. F2_Last))) then
            Do_Test
             (To_Universal_String
               (To_Wide_Wide_String
                 (Substitutions.Element (To_Unbounded_Wide_Wide_String (Buffer (F2_First .. F2_Last))))),
              Unescape (Buffer (F3_First .. F3_Last)),
              Buffer (F4_First .. F4_Last),
              Success);

         else
            Do_Test
             (To_Universal_String (Buffer (F2_First .. F2_Last)),
              Unescape (Buffer (F3_First .. F3_Last)),
              Buffer (F4_First .. F4_Last),
              Success);
         end if;
      end if;
   end loop;

   Close (File);

   if not Success then
      raise Program_Error;
   end if;
end Regexp_Ataresearch;
