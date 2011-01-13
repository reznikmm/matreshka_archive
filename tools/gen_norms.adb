------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Text_IO;

with Matreshka.Internals.Unicode.Ucd;

with Put_File_Header;
with Ucd_Data;
with Utils;

procedure Gen_Norms (Source_Directory : String) is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Ucd_Data;
   use Utils;

   Generated_Name : constant String
     := "matreshka-internals-unicode-ucd-norms.ads";

   procedure Append_Mapping
    (Mapping : Code_Point_Sequence;
     First   : out Sequence_Index;
     Last    : out Sequence_Count);

   type Group_Info is record
      Share : First_Stage_Index;
      Count : Natural;
   end record;

   type Composition_Mapping_Access is access all Composition_Mapping;

   Decomposition_Data      : Code_Point_Sequence (Sequence_Index);
   Decomposition_Data_Last : Sequence_Count := 0;
   Composition_Data        : Composition_Mapping_Access;

   First_Index_Last : Sequence_Count := 0;
   Last_Index_Last  : Sequence_Count := 0;

   Normalization : array (Code_Point) of Normalization_Mapping
     := (others => ((others => (0, 0)), (0, 0)));
   Groups        : array (First_Stage_Index) of Group_Info
     := (others => (0, 0));
   File          : Ada.Text_IO.File_Type;
   Generated     : array (First_Stage_Index) of Boolean := (others => False);

   --------------------
   -- Append_Mapping --
   --------------------

   procedure Append_Mapping
    (Mapping : Code_Point_Sequence;
     First   : out Sequence_Index;
     Last    : out Sequence_Count)
   is
   begin
      if Mapping'Length = 0 then
         First := 1;
         Last  := 0;
      end if;

      for J in 1 .. Decomposition_Data_Last - Mapping'Length + 1 loop
         if Decomposition_Data (J .. J + Mapping'Length - 1) = Mapping then
            First := J;
            Last  := J + Mapping'Length - 1;

            return;
         end if;
      end loop;

      First := Decomposition_Data_Last + 1;

      for J in Mapping'Range loop
         Decomposition_Data_Last := Decomposition_Data_Last + 1;
         Decomposition_Data (Decomposition_Data_Last) := Mapping (J);
      end loop;

      Last := Decomposition_Data_Last;
   end Append_Mapping;

   ---------
   -- Put --
   ---------

   procedure Put
    (File : Ada.Text_IO.File_Type; Item : Normalization_Mapping)
   is
   begin
      Ada.Text_IO.Put
       (File,
        "((("
          & Sequence_Count_Image (Item.Decomposition (Canonical).First)
          & ", "
          & Sequence_Count_Image (Item.Decomposition (Canonical).Last)
          & "), ("
          & Sequence_Count_Image (Item.Decomposition (Compatibility).First)
          & ", "
          & Sequence_Count_Image (Item.Decomposition (Compatibility).Last)
          & ")), ("
          & Sequence_Count_Image (Item.Composition.First)
          & ", "
          & Sequence_Count_Image (Item.Composition.Last)
          & "))");
   end Put;

begin
   Ada.Text_IO.Put_Line ("   ... " & Generated_Name);

   --  Construct decomposition information.

   for J in Code_Point loop
      --  Hangul Syllables are decomposed algorithmically, thus they are
      --  excluded from data construction here.

      if Core (J).DT /= None
        and then J not in Hangul_Syllable_First .. Hangul_Syllable_Last
      then
         Append_Mapping
          (Norms (J) (Compatibility).all,
           Normalization (J).Decomposition (Compatibility).First,
           Normalization (J).Decomposition (Compatibility).Last);

         if Core (J).DT = Canonical then
            Append_Mapping
             (Norms (J) (Canonical).all,
              Normalization (J).Decomposition (Canonical).First,
              Normalization (J).Decomposition (Canonical).Last);
         end if;
      end if;
   end loop;

   --  Construct composition information.

   for J in Code_Point loop
      if Core (J).DT = Canonical
        and then J not in Hangul_Syllable_First .. Hangul_Syllable_Last
        and then not Core (J).B (Full_Composition_Exclusion)
      then
         declare
            M : Code_Point_Sequence := Norms (J) (Canonical_Mapping).all;

         begin
            if Normalization (M (1)).Composition.First = 0 then
               First_Index_Last := First_Index_Last + 1;
               Normalization (M (1)).Composition.First := First_Index_Last;
            end if;

            if Normalization (M (2)).Composition.Last = 0 then
               Last_Index_Last := Last_Index_Last + 1;
               Normalization (M (2)).Composition.Last := Last_Index_Last;
            end if;
         end;
      end if;
   end loop;

   Composition_Data :=
     new Composition_Mapping'
          (1 .. First_Index_Last => (1 .. Last_Index_Last => 16#FFFF#));

   for J in Code_Point loop
      if Core (J).DT = Canonical
        and then J not in Hangul_Syllable_First .. Hangul_Syllable_Last
        and then not Core (J).B (Full_Composition_Exclusion)
      then
         declare
            M : Code_Point_Sequence := Norms (J) (Canonical_Mapping).all;

         begin
            Composition_Data
             (Normalization (M (1)).Composition.First,
              Normalization (M (2)).Composition.Last) := J;
         end;
      end if;
   end loop;

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Normalization
             (Code_Unit_32 (K) * 256 .. Code_Unit_32 (K) * 256 + 255)
              = Normalization
                 (Code_Unit_32 (J) * 256 .. Code_Unit_32 (J) * 256 + 255)
         then
            Groups (J).Share := K;
            Groups (K).Count := Groups (K).Count + 1;

            exit;
         end if;
      end loop;
   end loop;

   --  Generate source code.

   Ada.Text_IO.Create
    (File, Ada.Text_IO.Out_File, Source_Directory & '/' & Generated_Name);
   Put_File_Header
    (File,
     "Localization, Internationalization, Globalization for Ada",
     2009,
     2011);
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line
    (File, "package Matreshka.Internals.Unicode.Ucd.Norms is");
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "   pragma Preelaborate;");

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line
    (File, "   Decomposition_Data : aliased constant Code_Point_Sequence");

   for J in 1 .. Decomposition_Data_Last loop
      if J = 1 then
         Ada.Text_IO.Put (File, "     := (");

      elsif (J - 1) mod 5 = 0 then
         Ada.Text_IO.Put_Line (File, ",");
         Ada.Text_IO.Put (File, "         ");

      else
         Ada.Text_IO.Put (File, ", ");
      end if;

      Ada.Text_IO.Put (File, Code_Point_Ada_Image (Decomposition_Data (J)));
   end loop;

   Ada.Text_IO.Put_Line (File, ");");

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line
    (File, "   Composition_Data : aliased constant Composition_Mapping (1 .. "
       & Sequence_Count_Image (Composition_Data'Length (1))
       & ", 1 .. "
       & Sequence_Count_Image (Composition_Data'Length (2))
       & ")");

   for J in Composition_Data'Range (1) loop
      if J = 1 then
         Ada.Text_IO.Put (File, "     := (");

      else
         Ada.Text_IO.Put_Line (File, ",");
         Ada.Text_IO.Put (File, "         ");
      end if;

      Ada.Text_IO.Put (File, Sequence_Count_Image (J) & " => (");

      declare
         N : Natural := 0;

      begin
         for K in Composition_Data'Range (2) loop
            if Composition_Data (J, K) /= 16#FFFF# then
               Ada.Text_IO.Put
                (File,
                 Sequence_Count_Image (K)
                   & " => "
                   & Code_Point_Ada_Image (Composition_Data (J, K))
                   & ",");

               case N mod 3 is
                  when 0 | 1 =>
                     Ada.Text_IO.Put (File, " ");

                  when 2 =>
                     Ada.Text_IO.Set_Col (File, 16);

                  when others =>
                     raise Program_Error;
               end case;

               N := N + 1;
            end if;
         end loop;

         Ada.Text_IO.Put (File, "others => 16#00FFFF#)");
      end;
   end loop;

   Ada.Text_IO.Put_Line (File, ");");

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default    : Normalization_Mapping;
            Current    : Normalization_Mapping;
            First      : Second_Stage_Index;
            Last       : Second_Stage_Index;
            First_Code : Code_Point;
            Last_Code  : Code_Point;

         begin
            --  Looking for most useful set of values, it will be used for
            --  others selector for generate more compact code.

            declare
               type Value_Count_Pair is record
                  V : Normalization_Mapping;
                  C : Natural;
               end record;

               Counts  : array (Positive range 1 .. 256) of Value_Count_Pair
                 := (others => <>);
               Last    : Natural  := 0;
               Maximum : Natural  := 0;

            begin
               for K in Second_Stage_Index loop
                  declare
                     C : constant Code_Point
                       := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);
                     R : Normalization_Mapping renames Normalization (C);
                     F : Boolean := False;

                  begin
                     --  Go throught known values and try to find the same
                     --  value.

                     for L in 1 .. Last loop
                        if Counts (L).V = R then
                           F := True;
                           Counts (L).C := Counts (L).C + 1;

                           if Maximum < Counts (L).C then
                              Maximum := Counts (L).C;
                              Default := Counts (L).V;
                           end if;

                           exit;
                        end if;
                     end loop;

                     --  If value is not found, then add it to the end of list.

                     if not F then
                        Last := Last + 1;
                        Counts (Last) := (R, 1);
                     end if;
                  end;
               end loop;
            end;

            Ada.Text_IO.New_Line (File);
            Ada.Text_IO.Put_Line
             (File,
              "   Group_" & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Normalization_Mapping_Second_Stage");
            Ada.Text_IO.Put
             (File, "     := (");

            for K in Second_Stage_Index loop
               declare
                  Code : constant Code_Point
                    := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);

               begin
                  if K = Second_Stage_Index'First then
                     Current    := Normalization (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := Code;

                  elsif Normalization (Code) = Current then
                     Last      := K;
                     Last_Code := Code;

                  else
                     if Current /= Default then
                        if First /= Last then
                           Ada.Text_IO.Put_Line
                            (File,
                             "16#"
                               & Second_Stage_Image (First)
                               & "# .. 16#"
                               & Second_Stage_Image (Last)
                               & "# =>  --  "
                               & Code_Point_Image (First_Code)
                               & " .. "
                               & Code_Point_Image (Last_Code));
                           Ada.Text_IO.Set_Col (File, 11);
                           Put (File, Current);
                           Ada.Text_IO.Put (File, ',');

                        else
                           Ada.Text_IO.Put_Line
                            (File, "16#"
                               & Second_Stage_Image (First)
                               & "#           =>  --  "
                               & Code_Point_Image (First_Code));
                           Ada.Text_IO.Set_Col (File, 11);
                           Put (File, Current);
                           Ada.Text_IO.Put (File, ',');
                        end if;

                        Ada.Text_IO.New_Line (File);
                        Ada.Text_IO.Set_Col (File, 10);
                     end if;

                     Current    := Normalization (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := First_Code;
                  end if;
               end;
            end loop;

            if Current /= Default then
               if First /= Last then
                  Ada.Text_IO.Put_Line
                   (File,
                    "16#"
                      & Second_Stage_Image (First)
                      & "# .. 16#"
                      & Second_Stage_Image (Last)
                      & "# =>  --  "
                      & Code_Point_Image (First_Code)
                      & " .. "
                      & Code_Point_Image (Last_Code));
                  Ada.Text_IO.Set_Col (File, 11);
                  Put (File, Current);
                  Ada.Text_IO.Put (File, ',');

               else
                  Ada.Text_IO.Put_Line
                   (File, "16#"
                      & Second_Stage_Image (First)
                      & "#           =>  --  "
                      & Code_Point_Image (First_Code));
                  Ada.Text_IO.Set_Col (File, 11);
                  Put (File, Current);
                  Ada.Text_IO.Put (File, ',');
               end if;

               Ada.Text_IO.New_Line (File);
               Ada.Text_IO.Set_Col (File, 10);
            end if;

            Ada.Text_IO.Put_Line (File, "others           =>");
            Ada.Text_IO.Set_Col (File, 11);
            Put (File, Default);
            Ada.Text_IO.Put_Line (File, ");");

            Generated (J) := True;
         end;
      end if;
   end loop;

   declare
      Default : First_Stage_Index := 0;
      Maximum : Natural           := 0;
      N       : Natural           := 0;

   begin
      for J in Groups'Range loop
         if Maximum < Groups (J).Count then
            Maximum := Groups (J).Count;
            Default := J;
         end if;
      end loop;

      Ada.Text_IO.New_Line (File);
      Ada.Text_IO.Put_Line
       (File,
        "   Mapping : aliased constant Normalization_Mapping_First_Stage");
      Ada.Text_IO.Put (File, "     := (");

      for J in Groups'Range loop
         if Groups (J).Share /= Default then
            Ada.Text_IO.Put
             (File,
              "16#"
                & First_Stage_Image (J)
                & "# => Group_"
                & First_Stage_Image (Groups (J).Share)
                & "'Access,");

            case N mod 2 is
               when 0 =>
                  Ada.Text_IO.Set_Col (File, 41);

               when 1 =>
                  Ada.Text_IO.New_Line (File);
                  Ada.Text_IO.Set_Col (File, 10);

               when others =>
                  raise Program_Error;
            end case;

            N := N + 1;
         end if;
      end loop;

      Ada.Text_IO.Put_Line
       (File,
        "others   => Group_" & First_Stage_Image (Default) & "'Access);");
   end;

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "end Matreshka.Internals.Unicode.Ucd.Norms;");
end Gen_Norms;
