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
with Ada.Command_Line;
with Ada.Text_IO;

procedure Gen_Breaks is

   UCD_Root_Directory         : constant String
     := Ada.Command_Line.Argument (1);
   GraphemeBreakProperty_File : constant String
     := "auxiliary/GraphemeBreakProperty.txt";
   WordBreakProperty_File     : constant String
     := "auxiliary/WordBreakProperty.txt";

   type Code_Unit_32 is mod 2 ** 32;
   subtype Code_Point is Code_Unit_32 range 0 .. 16#10_FFFF#;
   subtype First_Stage is Code_Point range 0 .. Code_Point'Last / 256;
   subtype Second_Stage is Code_Point range 0 .. 255;

   type Ucd_Grapheme_Cluster_Break is
    (Other,
     CR,
     LF,
     Control,
     Extend,
     Prepend,
     SpacingMark,
     L,
     V,
     T,
     LV,
     LVT);

   type Ucd_Word_Break is
    (Other,
     CR,
     LF,
     Newline,
     Katakana,
     ALetter,
     MidLetter,
     MidNum,
     MidNumLet,
     Numeric,
     ExtendNumLet,
     Format,
     Extend);

   type String_Access is access constant String;

   GCB_Other_Image        : aliased constant String := "Other";
   GCB_CR_Image           : aliased constant String := "CR";
   GCB_LF_Image           : aliased constant String := "LF";
   GCB_Control_Image      : aliased constant String := "Control";
   GCB_Extend_Image       : aliased constant String := "Extend";
   GCB_Prepend_Image      : aliased constant String := "Prepend";
   GCB_Spacing_Mark_Image : aliased constant String := "Spacing_Mark";
   GCB_L_Image            : aliased constant String := "L";
   GCB_V_Image            : aliased constant String := "V";
   GCB_T_Image            : aliased constant String := "T";
   GCB_LV_Image           : aliased constant String := "LV";
   GCB_LVT_Image          : aliased constant String := "LVT";

   Grapheme_Cluster_Break_Image : constant
     array (Ucd_Grapheme_Cluster_Break) of String_Access
       := (Other       => GCB_Other_Image'Access,
           CR          => GCB_CR_Image'Access,
           LF          => GCB_LF_Image'Access,
           Control     => GCB_Control_Image'Access,
           Extend      => GCB_Extend_Image'Access,
           Prepend     => GCB_Prepend_Image'Access,
           SpacingMark => GCB_Spacing_Mark_Image'Access,
           L           => GCB_L_Image'Access,
           V           => GCB_V_Image'Access,
           T           => GCB_T_Image'Access,
           LV          => GCB_LV_Image'Access,
           LVT         => GCB_LVT_Image'Access);

   WB_Other_Image          : aliased constant String := "Other";
   WB_CR_Image             : aliased constant String := "CR";
   WB_LF_Image             : aliased constant String := "LF";
   WB_Newline_Image        : aliased constant String := "Newline";
   WB_Katakana_Image       : aliased constant String := "Katakana";
   WB_A_Letter_Image       : aliased constant String := "A_Letter";
   WB_Mid_Letter_Image     : aliased constant String := "Mid_Letter";
   WB_Mid_Num_Image        : aliased constant String := "Mid_Num";
   WB_Mid_Num_Let_Image    : aliased constant String := "Mid_Num_Let";
   WB_Numeric_Image        : aliased constant String := "Numeric";
   WB_Extend_Num_Let_Image : aliased constant String := "Extend_Num_Let";
   WB_Format_Image         : aliased constant String := "Format";
   WB_Extend_Image         : aliased constant String := "Extend";

   Word_Break_Image : constant array (Ucd_Word_Break) of String_Access
     := (Other        => WB_Other_Image'Access,
         CR           => WB_CR_Image'Access,
         LF           => WB_LF_Image'Access,
         Newline      => WB_Newline_Image'Access,
         Katakana     => WB_Katakana_Image'Access,
         ALetter      => WB_A_Letter_Image'Access,
         MidLetter    => WB_Mid_Letter_Image'Access,
         MidNum       => WB_Mid_Num_Image'Access,
         MidNumLet    => WB_Mid_Num_Let_Image'Access,
         Numeric      => WB_Numeric_Image'Access,
         ExtendNumLet => WB_Extend_Num_Let_Image'Access,
         Format       => WB_Format_Image'Access,
         Extend       => WB_Extend_Image'Access);

   type Group_Info is record
      Share : First_Stage;
      Count : Natural;
   end record;

   type Break_Values is record
      GCB : Ucd_Grapheme_Cluster_Break;
      WB  : Ucd_Word_Break;
   end record;

   Values    : array (Code_Point) of Break_Values
     := (others => (Other, Other));
   Groups    : array (First_Stage) of Group_Info := (others => (0, 0));
   Generated : array (First_Stage) of Boolean := (others => False);

   Groups_Reused                       : Natural := 0;
   Grapheme_Cluster_Code_Points_Loaded : Natural := 0;
   Word_Code_Points_Loaded             : Natural := 0;

   generic
      type Value_Type is (<>);

   procedure Generic_Read
    (File_Name : String;
     Process   : not null access procedure
      (Code : Code_Point; Value : Value_Type));

   procedure Parse_Code_Point_Range
    (Text       : String;
     First_Code : out Code_Point;
     Last_Code  : out Code_Point);

   procedure Fill (Code : Code_Point; Value : Ucd_Grapheme_Cluster_Break);

   procedure Fill (Code : Code_Point; Value : Ucd_Word_Break);

   function First_Stage_Image (Item : First_Stage) return String;

   function Second_Stage_Image (Item : Second_Stage) return String;

   ----------
   -- Fill --
   ----------

   procedure Fill (Code : Code_Point; Value : Ucd_Grapheme_Cluster_Break) is
   begin
      Values (Code).GCB := Value;
      Grapheme_Cluster_Code_Points_Loaded :=
        Grapheme_Cluster_Code_Points_Loaded + 1;
   end Fill;

   ----------
   -- Fill --
   ----------

   procedure Fill (Code : Code_Point; Value : Ucd_Word_Break) is
   begin
      Values (Code).WB := Value;
      Word_Code_Points_Loaded := Word_Code_Points_Loaded + 1;
   end Fill;

   -----------------------
   -- First_Stage_Image --
   -----------------------

   function First_Stage_Image (Item : First_Stage) return String is
      Hex_Digit : constant array (First_Stage range 0 .. 15) of Character
        := "0123456789ABCDEF";
      Result    : String (1 .. 4);

   begin
      Result (4) := Hex_Digit (Item mod 16);
      Result (3) := Hex_Digit ((Item / 16) mod 16);
      Result (2) := Hex_Digit ((Item / 256) mod 16);
      Result (1) := Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end First_Stage_Image;

   ------------------
   -- Generic_Read --
   ------------------

   procedure Generic_Read
    (File_Name : String;
     Process   : not null access procedure
      (Code : Code_Point; Value : Value_Type))
   is
      File            : Ada.Text_IO.File_Type;
      Line            : String (1 .. 1024);
      Last            : Natural;
      Field_First     : Positive;
      Field_Last      : Positive;
      Field_Separator : Positive;
      First_Code      : Code_Point;
      Last_Code       : Code_Point;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
         Field_Last := Field_First;

         while Field_Last < Last loop
            Field_Last := Field_Last + 1;

            if Line (Field_Last) = ';' then
               Field_Last := Field_Last - 1;

               exit;
            end if;
         end loop;

         Field_Separator := Field_Last + 1;

         while Line (Field_First) = ' ' loop
            Field_First := Field_First + 1;
         end loop;

         while Line (Field_Last) = ' ' loop
            Field_Last := Field_Last - 1;
         end loop;
      end Scan;

   begin
      Ada.Text_IO.Open (File, Ada.Text_IO.In_File, File_Name);

      while not Ada.Text_IO.End_Of_File (File) loop
         Ada.Text_IO.Get_Line (File, Line, Last);

         if Last /= 0 and then Line (Line'First) /= '#' then
            --  Drop comment

            for J in Line'First .. Last loop
               if Line (J) = '#' then
                  Last := J - 1;

                  exit;
               end if;
            end loop;

            --  Parse first field - code point range

            Field_First := Line'First;
            Scan;

            Parse_Code_Point_Range
             (Line (Field_First .. Field_Last), First_Code, Last_Code);

            --  Parse second field - property's value

            Field_First := Field_Separator + 1;
            Scan;

            --  Process all code points in range

            for J in First_Code .. Last_Code loop
               Process
                (J, Value_Type'Value (Line (Field_First .. Field_Last)));
            end loop;
         end if;
      end loop;

      Ada.Text_IO.Close (File);
   end Generic_Read;

   ------------------------
   -- Second_Stage_Image --
   ------------------------

   function Second_Stage_Image (Item : Second_Stage) return String is
      Hex_Digit : constant array (Second_Stage range 0 .. 15) of Character
        := "0123456789ABCDEF";
      Result    : String (1 .. 2);

   begin
      Result (2) := Hex_Digit (Item mod 16);
      Result (1) := Hex_Digit ((Item / 16) mod 16);

      return Result;
   end Second_Stage_Image;

   ----------------------------
   -- Parse_Code_Point_Range --
   ----------------------------

   procedure Parse_Code_Point_Range
    (Text       : String;
     First_Code : out Code_Point;
     Last_Code  : out Code_Point)
   is
      First : Positive := Text'First;
      Last  : Natural;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
         Last := First - 1;

         while Last < Text'Last loop
            Last := Last + 1;

            if Text (Last) not in '0' .. '9'
              and then Text (Last) not in 'A' .. 'F'
            then
               Last := Last - 1;

               exit;
            end if;
         end loop;
      end Scan;

   begin
      Scan;
      First_Code := Code_Point'Value ("16#" & Text (First .. Last) & "#");
      Last_Code := First_Code;

      First := Last + 1;

      if First < Text'Last and then Text (First .. First + 1) = ".." then
         First := First + 2;
         Scan;
         Last_Code := Code_Point'Value ("16#" & Text (First .. Last) & "#");
      end if;
   end Parse_Code_Point_Range;

   --  Following instantiations must be done after Generic_Read have been seen.

   procedure Read_Grapheme_Break_Property is
     new Generic_Read (Ucd_Grapheme_Cluster_Break);

   procedure Read_Word_Break_Property is
     new Generic_Read (Ucd_Word_Break);

begin
   Read_Grapheme_Break_Property
    (UCD_Root_Directory & '/' & GraphemeBreakProperty_File,
     Fill'Access);
   Read_Word_Break_Property
    (UCD_Root_Directory & '/' & WordBreakProperty_File,
     Fill'Access);

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Values (K * 256 .. K * 256 + 255)
              = Values (J * 256 .. J * 256 + 255)
         then
            Groups (J).Share := K;
            Groups (K).Count := Groups (K).Count + 1;

            if J /= K then
               Groups_Reused := Groups_Reused + 1;
            end if;

            exit;
         end if;
      end loop;
   end loop;

   --  Generate file.

   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                            Matreshka Project                        "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--         Localization, Internationalization, Globalization for Ada   "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                        Runtime Library Component                    "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                 "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- Matreshka is free software;  you can  redistribute it  and/or modify"
       & "  it --");
   Ada.Text_IO.Put_Line
    ("-- under terms of the  GNU General Public License as published  by the "
       & "Free --");
   Ada.Text_IO.Put_Line
    ("-- Software  Foundation;  either version 2,  or (at your option)  any l"
       & "ater --");
   Ada.Text_IO.Put_Line
    ("-- version.  Matreshka  is distributed in the hope that it will be  use"
       & "ful, --");
   Ada.Text_IO.Put_Line
    ("-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty"
       & "  of --");
   Ada.Text_IO.Put_Line
    ("-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Gen"
       & "eral --");
   Ada.Text_IO.Put_Line
    ("-- Public License for more details.  You should have received a copy of"
       & " the --");
   Ada.Text_IO.Put_Line
    ("-- GNU General Public License distributed with Matreshka; see file COPY"
       & "ING. --");
   Ada.Text_IO.Put_Line
    ("-- If not, write  to  the  Free Software Foundation,  51  Franklin  Str"
       & "eet, --");
   Ada.Text_IO.Put_Line
    ("-- Fifth Floor, Boston, MA 02110-1301, USA.                            "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-- As a special exception,  if other files  instantiate  generics from "
       & "this --");
   Ada.Text_IO.Put_Line
    ("-- unit, or you link  this unit with other files  to produce an executa"
       & "ble, --");
   Ada.Text_IO.Put_Line
    ("-- this  unit  does not  by itself cause  the resulting  executable  to"
       & "  be --");
   Ada.Text_IO.Put_Line
    ("-- covered  by the  GNU  General  Public  License.  This exception does"
       & " not --");
   Ada.Text_IO.Put_Line
    ("-- however invalidate  any other reasons why  the executable file  migh"
       & "t be --");
   Ada.Text_IO.Put_Line
    ("-- covered by the  GNU Public License.                                 "
       & "     --");
   Ada.Text_IO.Put_Line
    ("--                                                                     "
       & "     --");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.Put_Line
    ("--  This package is generated automatically");
   Ada.Text_IO.Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("package Matreshka.Internals.Ucd.Breaks is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Counts  : array (Ucd_Grapheme_Cluster_Break, Ucd_Word_Break)
              of Natural
                := (others => (others => 0));
            Default : Break_Values;
            Maximum : Natural := 0;
            Current : Break_Values;
            First   : Second_Stage;
            Last    : Second_Stage;

         begin
            for K in Second_Stage loop
               declare
                  R : Break_Values renames Values (J * 256 + K);

               begin
                  Counts (R.GCB, R.WB) := Counts (R.GCB, R.WB) + 1;
               end;
            end loop;

            for J1 in Counts'Range (1) loop
               for J2 in Counts'Range (2) loop
                  if Maximum < Counts (J1, J2) then
                     Default := (J1, J2);
                     Maximum := Counts (J1, J2);
                  end if;
               end loop;
            end loop;

            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("   Group_" & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Break_Second_Stage");
            Ada.Text_IO.Put
             ("     := (");

            for K in Second_Stage loop
               if K = Second_Stage'First then
                  Current := Values (J * 256 + K);
                  First   := K;
                  Last    := First;

               elsif Values (J * 256 + K) = Current then
                  Last := K;

               else
                  if Current /= Default then
                     if First /= Last then
                        Ada.Text_IO.Put
                         ("16#"
                            & Second_Stage_Image (First)
                            & "# .. 16#"
                            & Second_Stage_Image (Last)
                            & "# => ("
                            & Grapheme_Cluster_Break_Image (Current.GCB).all
                            & ", "
                            & Word_Break_Image (Current.WB).all
                            & "),");

                     else
                        Ada.Text_IO.Put
                         ("16#"
                            & Second_Stage_Image (First)
                            & "#           => ("
                            & Grapheme_Cluster_Break_Image (Current.GCB).all
                            & ", "
                            & Word_Break_Image (Current.WB).all
                            & "),");
                     end if;

                     Ada.Text_IO.New_Line;
                     Ada.Text_IO.Set_Col (10);
                  end if;

                  Current := Values (J * 256 + K);
                  First   := K;
                  Last    := First;
               end if;
            end loop;

            Ada.Text_IO.Put_Line
             ("others           => ("
                & Grapheme_Cluster_Break_Image (Default.GCB).all
                & ", "
                & Word_Break_Image (Default.WB).all
                & "));");

            Generated (J) := True;
         end;
      end if;
   end loop;

   declare
      Default : First_Stage := 0;
      Maximum : Natural     := 0;
      N       : Natural     := 0;

   begin
      for J in Groups'Range loop
         if Maximum < Groups (J).Count then
            Default := J;
            Maximum := Groups (J).Count;
         end if;
      end loop;

      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line ("   Property : constant Break_First_Stage");
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
   Ada.Text_IO.Put_Line ("end Matreshka.Internals.Ucd.Breaks;");

   --  Output statistic information:

   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "GCB properties loaded  :"
       & Natural'Image (Grapheme_Cluster_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "WB properties loaded   :" & Natural'Image (Word_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "Number of reused groups:" & Natural'Image (Groups_Reused));
end Gen_Breaks;
