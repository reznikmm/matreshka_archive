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
-- Copyright © 2009-2015, Vadim Godunko <vgodunko@gmail.com>                --
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

procedure Gen_Norms is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Ucd_Data;
   use Utils;

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
     := (others =>
          ((others => (0, 0)),
           (0, 0),
           0,
           (others => Yes),
           None,
           (others => False)));
   Groups        : array (First_Stage_Index) of Group_Info
     := (others => (0, 0));
   Generated     : array (First_Stage_Index) of Boolean := (others => False);

   type Constant_String_Access is access constant String;

   DT_Canonical_Image : aliased constant String := "Canonical";
   DT_Compat_Image    : aliased constant String := "Compat";
   DT_Circle_Image    : aliased constant String := "Circle";
   DT_Final_Image     : aliased constant String := "Final";
   DT_Font_Image      : aliased constant String := "Font";
   DT_Fraction_Image  : aliased constant String := "Fraction";
   DT_Initial_Image   : aliased constant String := "Initial";
   DT_Isolated_Image  : aliased constant String := "Isolated";
   DT_Medial_Image    : aliased constant String := "Medial";
   DT_Narrow_Image    : aliased constant String := "Narrow";
   DT_No_Break_Image  : aliased constant String := "No_Break";
   DT_None_Image      : aliased constant String := "None";
   DT_Small_Image     : aliased constant String := "Small";
   DT_Square_Image    : aliased constant String := "Square";
   DT_Sub_Image       : aliased constant String := "Sub";
   DT_Super_Image     : aliased constant String := "Super";
   DT_Vertical_Image  : aliased constant String := "Vertical";
   DT_Wide_Image      : aliased constant String := "Wide";

   Decomposition_Type_Image : constant
     array (Decomposition_Type) of Constant_String_Access
       := (Canonical => DT_Canonical_Image'Access,
           Compat    => DT_Compat_Image'Access,
           Circle    => DT_Circle_Image'Access,
           Final     => DT_Final_Image'Access,
           Font      => DT_Font_Image'Access,
           Fraction  => DT_Fraction_Image'Access,
           Initial   => DT_Initial_Image'Access,
           Isolated  => DT_Isolated_Image'Access,
           Medial    => DT_Medial_Image'Access,
           Narrow    => DT_Narrow_Image'Access,
           No_Break  => DT_No_Break_Image'Access,
           None      => DT_None_Image'Access,
           Small     => DT_Small_Image'Access,
           Square    => DT_Square_Image'Access,
           Sub       => DT_Sub_Image'Access,
           Super     => DT_Super_Image'Access,
           Vertical  => DT_Vertical_Image'Access,
           Wide      => DT_Wide_Image'Access);

   NQC_No_Image    : aliased constant String := "No";
   NQC_Maybe_Image : aliased constant String := "Maybe";
   NQC_Yes_Image   : aliased constant String := "Yes";

   Normalization_Quick_Check_Image : constant
     array (Normalization_Quick_Check) of Constant_String_Access
       := (No    => NQC_No_Image'Access,
           Maybe => NQC_Maybe_Image'Access,
           Yes   => NQC_Yes_Image'Access);

   BP_Composition_Exclusion_Image :
     aliased constant String := "Composition_Exclusion";
   BP_Full_Composition_Exclusion_Image :
     aliased constant String := "Full_Composition_Exclusion";
   BP_Expands_On_NFC_Image    : aliased constant String := "Expands_On_NFC";
   BP_Expands_On_NFD_Image    : aliased constant String := "Expands_On_NFD";
   BP_Expands_On_NFKC_Image   : aliased constant String := "Expands_On_NFKC";
   BP_Expands_On_NFKD_Image   : aliased constant String := "Expands_On_NFKD";

   Boolean_Properties_Image : constant
     array (Not_Overridable_Boolean_Properties) of Constant_String_Access
       := (Composition_Exclusion   => BP_Composition_Exclusion_Image'Access,
           Expands_On_NFC          => BP_Expands_On_NFC_Image'Access,
           Expands_On_NFD          => BP_Expands_On_NFD_Image'Access,
           Expands_On_NFKC         => BP_Expands_On_NFKC_Image'Access,
           Expands_On_NFKD         => BP_Expands_On_NFKD_Image'Access,
           Full_Composition_Exclusion =>
             BP_Full_Composition_Exclusion_Image'Access);

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

   procedure Put (Item : Normalization_Mapping) is
      use type Ada.Text_IO.Count;

      Indent  : Ada.Text_IO.Count := Ada.Text_IO.Col + 1;
      Counts  : array (Boolean) of Natural := (0, 0);
      Default : Boolean;
      N       : Natural := 0;

   begin
      Ada.Text_IO.Put
       ("((("
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
          & "),"
          & Canonical_Combining_Class'Image (Item.CCC)
          & ", ("
          & Normalization_Quick_Check_Image (Item.NQC (NFC)).all
          & ", "
          & Normalization_Quick_Check_Image (Item.NQC (NFD)).all
          & ", "
          & Normalization_Quick_Check_Image (Item.NQC (NFKC)).all
          & ", "
          & Normalization_Quick_Check_Image (Item.NQC (NFKD)).all
          & "), "
          & Decomposition_Type_Image (Item.DT).all
          & ",");

      Ada.Text_IO.Set_Col (Indent);
      Ada.Text_IO.Put ('(');

      for J in Item.B'Range loop
         Counts (Item.B (J)) := Counts (Item.B (J)) + 1;
      end loop;

      Default := Counts (False) < Counts (True);

      for J in Item.B'Range loop
         if Item.B (J) /= Default then
            N := N + 1;

            if N = 1 then
               Ada.Text_IO.Put (Boolean_Properties_Image (J).all);

            else
               Ada.Text_IO.Set_Col (Indent + 3);
               Ada.Text_IO.Put ("| " & Boolean_Properties_Image (J).all);
            end if;
         end if;
      end loop;

      if N /= 0 then
         if Ada.Text_IO.Col > 68 then
            Ada.Text_IO.Set_Col (Indent + 6);
         end if;

         if not Default then
            Ada.Text_IO.Put (" => True,");

         else
            Ada.Text_IO.Put (" => False,");
         end if;

         Ada.Text_IO.Set_Col (Indent + 1);
      end if;

      if Default then
         Ada.Text_IO.Put ("others => True))");

      else
         Ada.Text_IO.Put ("others => False))");
      end if;
   end Put;

begin
   Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Error, "   ... norms");

   --  Copy properties

   for J in Code_Point loop
      Normalization (J).CCC := Norms (J).CCC;
      Normalization (J).NQC := Norms (J).NQC;
      Normalization (J).DT  := Norms (J).DT;
      Normalization (J).B   := Norms (J).B;
   end loop;

   --  Construct decomposition information.

   for J in Code_Point loop
      --  Hangul Syllables are decomposed algorithmically, thus they are
      --  excluded from data construction here.

      if Norms (J).DT /= None
        and then J not in Hangul_Syllable_First .. Hangul_Syllable_Last
      then
         Append_Mapping
          (Norms (J).Values (Compatibility).all,
           Normalization (J).Decomposition (Compatibility).First,
           Normalization (J).Decomposition (Compatibility).Last);

         if Norms (J).DT = Canonical then
            Append_Mapping
             (Norms (J).Values (Canonical).all,
              Normalization (J).Decomposition (Canonical).First,
              Normalization (J).Decomposition (Canonical).Last);
         end if;
      end if;
   end loop;

   --  Construct composition information.

   for J in Code_Point loop
      if Norms (J).DT = Canonical
        and then J not in Hangul_Syllable_First .. Hangul_Syllable_Last
        and then not Norms (J).B (Full_Composition_Exclusion)
      then
         declare
            M : Code_Point_Sequence := Norms (J).Values (Canonical_Mapping).all;

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
      if Norms (J).DT = Canonical
        and then J not in Hangul_Syllable_First .. Hangul_Syllable_Last
        and then not Norms (J).B (Full_Composition_Exclusion)
      then
         declare
            M : Code_Point_Sequence
              := Norms (J).Values (Canonical_Mapping).all;

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

   Put_File_Header
    ("Localization, Internationalization, Globalization for Ada",
     2009,
     2015);
   Ada.Text_IO.New_Line;
--  GNAT GPL 2011: disabling of generation of elaboration code causes incorrect
   --  code generation for normalization
--
--   Ada.Text_IO.Put_Line ("pragma Restrictions (No_Elaboration_Code);");
--   Ada.Text_IO.Put_Line
--    ("--  GNAT: enforce generation of preinitialized data section instead of");
--   Ada.Text_IO.Put_Line ("--  generation of elaboration code.");
--   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("package Matreshka.Internals.Unicode.Ucd.Norms is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("   Decomposition_Data : aliased constant Code_Point_Sequence");

   for J in 1 .. Decomposition_Data_Last loop
      if J = 1 then
         Ada.Text_IO.Put ("     := (");

      elsif (J - 1) mod 5 = 0 then
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("         ");

      else
         Ada.Text_IO.Put (", ");
      end if;

      Ada.Text_IO.Put (Code_Point_Ada_Image (Decomposition_Data (J)));
   end loop;

   Ada.Text_IO.Put_Line (");");

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("   Composition_Data : aliased constant Composition_Mapping (1 .. "
       & Sequence_Count_Image (Composition_Data'Length (1))
       & ", 1 .. "
       & Sequence_Count_Image (Composition_Data'Length (2))
       & ")");

   for J in Composition_Data'Range (1) loop
      if J = 1 then
         Ada.Text_IO.Put ("     := (");

      else
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("         ");
      end if;

      Ada.Text_IO.Put (Sequence_Count_Image (J) & " => (");

      declare
         N : Natural := 0;

      begin
         for K in Composition_Data'Range (2) loop
            if Composition_Data (J, K) /= 16#FFFF# then
               Ada.Text_IO.Put
                (Sequence_Count_Image (K)
                   & " => "
                   & Code_Point_Ada_Image (Composition_Data (J, K))
                   & ",");

               case N mod 3 is
                  when 0 | 1 =>
                     Ada.Text_IO.Put (" ");

                  when 2 =>
                     Ada.Text_IO.Set_Col (16);

                  when others =>
                     raise Program_Error;
               end case;

               N := N + 1;
            end if;
         end loop;

         Ada.Text_IO.Put ("others => 16#00FFFF#)");
      end;
   end loop;

   Ada.Text_IO.Put_Line (");");

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

            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("   Group_"
                & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Normalization_Mapping_Second_Stage");
            Ada.Text_IO.Put ("     := (");

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
                            ("16#"
                               & Second_Stage_Image (First)
                               & "# .. 16#"
                               & Second_Stage_Image (Last)
                               & "# =>  --  "
                               & Code_Point_Image (First_Code)
                               & " .. "
                               & Code_Point_Image (Last_Code));
                           Ada.Text_IO.Set_Col (11);
                           Put (Current);
                           Ada.Text_IO.Put (',');

                        else
                           Ada.Text_IO.Put_Line
                            ("16#"
                               & Second_Stage_Image (First)
                               & "#           =>  --  "
                               & Code_Point_Image (First_Code));
                           Ada.Text_IO.Set_Col (11);
                           Put (Current);
                           Ada.Text_IO.Put (',');
                        end if;

                        Ada.Text_IO.New_Line;
                        Ada.Text_IO.Set_Col (10);
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
                   ("16#"
                      & Second_Stage_Image (First)
                      & "# .. 16#"
                      & Second_Stage_Image (Last)
                      & "# =>  --  "
                      & Code_Point_Image (First_Code)
                      & " .. "
                      & Code_Point_Image (Last_Code));
                  Ada.Text_IO.Set_Col (11);
                  Put (Current);
                  Ada.Text_IO.Put (',');

               else
                  Ada.Text_IO.Put_Line
                   ("16#"
                      & Second_Stage_Image (First)
                      & "#           =>  --  "
                      & Code_Point_Image (First_Code));
                  Ada.Text_IO.Set_Col (11);
                  Put (Current);
                  Ada.Text_IO.Put (',');
               end if;

               Ada.Text_IO.New_Line;
               Ada.Text_IO.Set_Col (10);
            end if;

            Ada.Text_IO.Put_Line ("others           =>");
            Ada.Text_IO.Set_Col (11);
            Put (Default);
            Ada.Text_IO.Put_Line (");");

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

      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line
       ("   Mapping : aliased constant Normalization_Mapping_First_Stage");
      Ada.Text_IO.Put ("     := (");

      for J in Groups'Range loop
         if Groups (J).Share /= Default then
            Ada.Text_IO.Put
             ("16#"
                & First_Stage_Image (J)
                & "# => Group_"
                & First_Stage_Image (Groups (J).Share)
                & "'Access,");

            case N mod 2 is
               when 0 =>
                  Ada.Text_IO.Set_Col (41);

               when 1 =>
                  Ada.Text_IO.New_Line;
                  Ada.Text_IO.Set_Col (10);

               when others =>
                  raise Program_Error;
            end case;

            N := N + 1;
         end if;
      end loop;

      Ada.Text_IO.Put_Line
       ("others   => Group_" & First_Stage_Image (Default) & "'Access);");
   end;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("end Matreshka.Internals.Unicode.Ucd.Norms;");
end Gen_Norms;
