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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
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
with Ada.Text_IO;

with Matreshka.Internals.Ucd;
with Matreshka.Internals.Unicode;
with Ucd_Data;
with Utils;

procedure Gen_Cases (Source_Directory : String) is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;
   use Ucd_Data;
   use Utils;

   Generated_Name : constant String := "matreshka-internals-ucd-cases.ads";

   type String_Access is access constant String;

   CC_Final_Sigma_Image       : aliased constant String := "Final_Sigma";
   CC_After_Soft_Dotted_Image : aliased constant String := "After_Soft_Dotted";
   CC_More_Above_Image        : aliased constant String := "More_Above";
   CC_Before_Dot_Image        : aliased constant String := "Before_Dot";
   CC_After_I_Image           : aliased constant String := "After_I";

   Casing_Context_Image : array (Casing_Context) of String_Access
     := (Final_Sigma       => CC_Final_Sigma_Image'Access,
         After_Soft_Dotted => CC_After_Soft_Dotted_Image'Access,
         More_Above        => CC_More_Above_Image'Access,
         Before_Dot        => CC_Before_Dot_Image'Access,
         After_I           => CC_After_I_Image'Access);

   B_False_Image : aliased constant String := "False";
   B_True_Image  : aliased constant String := "True";

   Boolean_Image : array (Boolean) of String_Access
    := (False => B_False_Image'Access,
        True  => B_True_Image'Access);

   type Group_Info is record
      Share : First_Stage_Index;
      Count : Natural;
   end record;

   Case_Info : array (Code_Point) of Case_Mapping
     := (others => (((0, 0), (0, 0), (0, 0), (0, 0)), 0, 0));
   Cont_Info : Casing_Context_Mapping_Sequence (Sequence_Index);
   Cont_Last : Sequence_Count := 0;
   Case_Seq  : Code_Point_Sequence (Sequence_Index);
   Last_Seq  : Sequence_Count := 0;
   Groups    : array (First_Stage_Index) of Group_Info := (others => (0, 0));
   Generated : array (First_Stage_Index) of Boolean    := (others => False);
   File      : Ada.Text_IO.File_Type;

   procedure Append_Mapping
    (Mapping : Code_Point_Sequence;
     First   : out Sequence_Index;
     Last    : out Sequence_Count);

   function Code_Point_Ada_Image (Item : Code_Point) return String;
   --  Returns image of code point.

   function Sequence_Count_Image (Item : Sequence_Count) return String;
   --  Returns image of Sequence count without leading space.

   procedure Put (File : Ada.Text_IO.File_Type; Item : Case_Mapping);
   --  Output code for specified item.

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

      for J in 1 .. Last_Seq - Mapping'Length + 1 loop
         if Case_Seq (J .. J + Mapping'Length - 1) = Mapping then
            First := J;
            Last  := J + Mapping'Length - 1;

            return;
         end if;
      end loop;

      First := Last_Seq + 1;

      for J in Mapping'Range loop
         Last_Seq := Last_Seq + 1;
         Case_Seq (Last_Seq) := Mapping (J);
      end loop;

      Last := Last_Seq;
   end Append_Mapping;

   --------------------------
   -- Code_Point_Ada_Image --
   --------------------------

   function Code_Point_Ada_Image (Item : Code_Point) return String is
      To_Hex_Digit : constant
        array (Code_Point range 0 .. 15) of Character
          := "0123456789ABCDEF";

   begin
      return Result : String (1 .. 10) := "16#XXXXXX#" do
         Result (9) := To_Hex_Digit (Item mod 16);
         Result (8) := To_Hex_Digit ((Item / 16) mod 16);
         Result (7) := To_Hex_Digit ((Item / 256) mod 16);
         Result (6) := To_Hex_Digit ((Item / 4096) mod 16);
         Result (5) := To_Hex_Digit ((Item / 65536) mod 16);
         Result (4) := To_Hex_Digit ((Item / 1048576) mod 16);
      end return;
   end Code_Point_Ada_Image;

   ---------
   -- Put --
   ---------

   procedure Put (File : Ada.Text_IO.File_Type; Item : Case_Mapping) is
   begin
      Ada.Text_IO.Put
       (File,
        "((("
          & Sequence_Count_Image (Item.Ranges (Lower).First)
          & ", "
          & Sequence_Count_Image (Item.Ranges (Lower).Last)
          & "), ("
          & Sequence_Count_Image (Item.Ranges (Upper).First)
          & ", "
          & Sequence_Count_Image (Item.Ranges (Upper).Last)
          & "), ("
          & Sequence_Count_Image (Item.Ranges (Title).First)
          & ", "
          & Sequence_Count_Image (Item.Ranges (Title).Last)
          & "), ("
          & Sequence_Count_Image (Item.Ranges (Folding).First)
          & ", "
          & Sequence_Count_Image (Item.Ranges (Folding).Last)
          & ")), "
          & Sequence_Count_Image (Item.Context_First)
          & ", "
          & Sequence_Count_Image (Item.Context_Last)
          & ")");
   end Put;

   --------------------------
   -- Sequence_Count_Image --
   --------------------------

   function Sequence_Count_Image (Item : Sequence_Count) return String is
      Aux : constant String := Sequence_Count'Image (Item);

   begin
      return Aux (Aux'First + 1 .. Aux'Last);
   end Sequence_Count_Image;

begin
   Ada.Text_IO.Put_Line ("   ... " & Generated_Name);

   --  Construct casing information.

   for J in Code_Point loop
      if Core (J).B (Has_Lowercase_Mapping)
        or else Core (J).B (Has_Uppercase_Mapping)
        or else Core (J).B (Has_Titlecase_Mapping)
      then
         --  Process data for default casing context.

         if Cases (J).FUM.Default /= null then
            if Cases (J).FUM.Default'Length /= 1
              or else Cases (J).FUM.Default (1) /= J
            then
               Append_Mapping
                (Cases (J).FUM.Default.all,
                 Case_Info (J).Ranges (Upper).First,
                 Case_Info (J).Ranges (Upper).Last);
            end if;

         else
            if Cases (J).SUM.Present then
               Append_Mapping
                (Code_Point_Sequence'(1 => Cases (J).SUM.C),
                 Case_Info (J).Ranges (Upper).First,
                 Case_Info (J).Ranges (Upper).Last);
            end if;
         end if;

         if Cases (J).FLM.Default /= null then
            if Cases (J).FLM.Default'Length /= 1
              or else Cases (J).FLM.Default (1) /= J
            then
               Append_Mapping
                (Cases (J).FLM.Default.all,
                 Case_Info (J).Ranges (Lower).First,
                 Case_Info (J).Ranges (Lower).Last);
            end if;

         else
            if Cases (J).SLM.Present then
               Append_Mapping
                (Code_Point_Sequence'(1 => Cases (J).SLM.C),
                 Case_Info (J).Ranges (Lower).First,
                 Case_Info (J).Ranges (Lower).Last);
            end if;
         end if;

         if Cases (J).FTM.Default /= null then
            if Cases (J).FTM.Default'Length /= 1
              or else Cases (J).FTM.Default (1) /= J
            then
               Append_Mapping
                (Cases (J).FTM.Default.all,
                 Case_Info (J).Ranges (Title).First,
                 Case_Info (J).Ranges (Title).Last);
            end if;

         else
            if Cases (J).STM.Present then
               Append_Mapping
                (Code_Point_Sequence'(1 => Cases (J).STM.C),
                 Case_Info (J).Ranges (Title).First,
                 Case_Info (J).Ranges (Title).Last);
            end if;
         end if;

         if Cases (J).FCF /= null then
            if Cases (J).FCF'Length /= 1
              or else Cases (J).FCF (1) /= J
            then
               Append_Mapping
                (Cases (J).FCF.all,
                 Case_Info (J).Ranges (Folding).First,
                 Case_Info (J).Ranges (Folding).Last);
            end if;

         else
            if Cases (J).SCF.Present then
               Append_Mapping
                (Code_Point_Sequence'(1 => Cases (J).SCF.C),
                 Case_Info (J).Ranges (Folding).First,
                 Case_Info (J).Ranges (Folding).Last);
            end if;
         end if;

         --  Process data for Final_Sigma casing context.

         declare
            R : Casing_Context_Mapping
              := (Final_Sigma, False, ((0, 0), (0, 0), (0, 0)));

         begin
            if Cases (J).FUM.Positive (Final_Sigma) /= null then
               Append_Mapping
                (Cases (J).FUM.Positive (Final_Sigma).all,
                 R.Ranges (Upper).First,
                 R.Ranges (Upper).Last);
            end if;

            if Cases (J).FLM.Positive (Final_Sigma) /= null then
               Append_Mapping
                (Cases (J).FLM.Positive (Final_Sigma).all,
                 R.Ranges (Lower).First,
                 R.Ranges (Lower).Last);
            end if;

            if Cases (J).FTM.Positive (Final_Sigma) /= null then
               Append_Mapping
                (Cases (J).FTM.Positive (Final_Sigma).all,
                 R.Ranges (Title).First,
                 R.Ranges (Title).Last);
            end if;

            if R /= (Final_Sigma, False, ((0, 0), (0, 0), (0, 0))) then
               Cont_Last := Cont_Last + 1;
               Cont_Info (Cont_Last) := R;
               Case_Info (J).Context_First := Cont_Last;
               Case_Info (J).Context_Last := Cont_Last;
            end if;
         end;
      end if;
   end loop;

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Case_Info (Code_Unit_32 (K) * 256 .. Code_Unit_32 (K) * 256 + 255)
              = Case_Info
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
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                            Matreshka Project                        "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--         Localization, Internationalization, Globalization for Ada   "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                        Runtime Library Component                    "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                 "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Matreshka is free software;  you can  redistribute it  and/or modify"
       & "  it --");
   Ada.Text_IO.Put_Line
    (File,
     "-- under terms of the  GNU General Public License as published  by the "
       & "Free --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Software  Foundation;  either version 2,  or (at your option)  any l"
       & "ater --");
   Ada.Text_IO.Put_Line
    (File,
     "-- version.  Matreshka  is distributed in the hope that it will be  use"
       & "ful, --");
   Ada.Text_IO.Put_Line
    (File,
     "-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty"
       & "  of --");
   Ada.Text_IO.Put_Line
    (File,
     "-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Gen"
       & "eral --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Public License for more details.  You should have received a copy of"
       & " the --");
   Ada.Text_IO.Put_Line
    (File,
     "-- GNU General Public License distributed with Matreshka; see file COPY"
       & "ING. --");
   Ada.Text_IO.Put_Line
    (File,
     "-- If not, write  to  the  Free Software Foundation,  51  Franklin  Str"
       & "eet, --");
   Ada.Text_IO.Put_Line
    (File,
     "-- Fifth Floor, Boston, MA 02110-1301, USA.                            "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-- As a special exception,  if other files  instantiate  generics from "
       & "this --");
   Ada.Text_IO.Put_Line
    (File,
     "-- unit, or you link  this unit with other files  to produce an executa"
       & "ble, --");
   Ada.Text_IO.Put_Line
    (File,
     "-- this  unit  does not  by itself cause  the resulting  executable  to"
       & "  be --");
   Ada.Text_IO.Put_Line
    (File,
     "-- covered  by the  GNU  General  Public  License.  This exception does"
       & " not --");
   Ada.Text_IO.Put_Line
    (File,
     "-- however invalidate  any other reasons why  the executable file  migh"
       & "t be --");
   Ada.Text_IO.Put_Line
    (File,
     "-- covered by the  GNU Public License.                                 "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    (File,
     "--  This package is generated automatically");
   Ada.Text_IO.Put_Line
    (File,
     "-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "package Matreshka.Internals.Ucd.Cases is");
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "   pragma Preelaborate;");

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line
    (File, "   Data : aliased constant Code_Point_Sequence");

   for J in 1 .. Last_Seq loop
      if J = 1 then
         Ada.Text_IO.Put (File, "     := (");

      elsif (J - 1) mod 5 = 0 then
         Ada.Text_IO.Put_Line (File, ",");
         Ada.Text_IO.Put (File, "         ");

      else
         Ada.Text_IO.Put (File, ", ");
      end if;

      Ada.Text_IO.Put (File, Code_Point_Ada_Image (Case_Seq (J)));
   end loop;

   Ada.Text_IO.Put_Line (File, ");");

   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line
    (File, "   Context : aliased constant Casing_Context_Mapping_Sequence");

   for J in 1 .. Cont_Last loop
      Ada.Text_IO.Put_Line
       (File,
        "     := (1 => ("
          & Casing_Context_Image (Cont_Info (J).Context).all
          & ", "
          & Boolean_Image (Cont_Info (J).Negative).all
          & ", (("
          & Sequence_Count_Image (Cont_Info (J).Ranges (Lower).First)
          & ", "
          & Sequence_Count_Image (Cont_Info (J).Ranges (Lower).Last)
          & "), ("
          & Sequence_Count_Image (Cont_Info (J).Ranges (Upper).First)
          & ", "
          & Sequence_Count_Image (Cont_Info (J).Ranges (Upper).Last)
          & "), ("
          & Sequence_Count_Image (Cont_Info (J).Ranges (Title).First)
          & ", "
          & Sequence_Count_Image (Cont_Info (J).Ranges (Title).Last)
          & "))));");
   end loop;

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default    : Case_Mapping;
            Current    : Case_Mapping;
            First      : Second_Stage_Index;
            Last       : Second_Stage_Index;
            First_Code : Code_Point;
            Last_Code  : Code_Point;

         begin
            --  Looking for most useful set of values, it will be used for
            --  others selector for generate more compact code.

            declare
               type Value_Count_Pair is record
                  V : Case_Mapping;
                  C : Natural;
               end record;

               Counts  : array (Positive range 1 .. 256) of Value_Count_Pair
                 := (others => <>);
               Last    : Natural  := 0;
               Maximum : Natural  := 0;
               Index   : Positive := 1;

            begin
               for K in Second_Stage_Index loop
                  declare
                     C : constant Code_Point
                       := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);
                     R : Case_Mapping renames Case_Info (C);
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
                & " : aliased constant Case_Mapping_Second_Stage");
            Ada.Text_IO.Put
             (File, "     := (");

            for K in Second_Stage_Index loop
               declare
                  Code : constant Code_Point
                    := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);

               begin
                  if K = Second_Stage_Index'First then
                     Current    := Case_Info (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := Code;

                  elsif Case_Info (Code) = Current then
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

                     Current    := Case_Info (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := First_Code;
                  end if;
               end;
            end loop;

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
       (File, "   Mapping : aliased constant Case_Mapping_First_Stage");
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
   Ada.Text_IO.Put_Line (File, "end Matreshka.Internals.Ucd.Cases;");
end Gen_Cases;
