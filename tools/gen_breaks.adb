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

with Generic_Read_Two_Fields;
with Unicode_Types;

procedure Gen_Breaks is

   use Unicode_Types;

   UCD_Root_Directory         : constant String
     := Ada.Command_Line.Argument (1);
   GraphemeBreakProperty_File : constant String
     := "auxiliary/GraphemeBreakProperty.txt";
   WordBreakProperty_File     : constant String
     := "auxiliary/WordBreakProperty.txt";
   SentenceBreakProperty_File : constant String
     := "auxiliary/SentenceBreakProperty.txt";
   LineBreakProperty_File     : constant String
     := "extracted/DerivedLineBreak.txt";

   type Group_Info is record
      Share : First_Stage;
      Count : Natural;
   end record;

   type Break_Values is record
      GCB : Ucd_Grapheme_Cluster_Break;
      WB  : Ucd_Word_Break;
      SB  : Ucd_Sentence_Break;
      LB  : Ucd_Line_Break;
   end record;

   Values    : array (Code_Point) of Break_Values
     := (others => (Other, Other, Other, Unknown));
   Groups    : array (First_Stage) of Group_Info := (others => (0, 0));
   Generated : array (First_Stage) of Boolean := (others => False);

   Groups_Reused                       : Natural := 0;
   Grapheme_Cluster_Code_Points_Loaded : Natural := 0;
   Word_Code_Points_Loaded             : Natural := 0;
   Sentence_Code_Points_Loaded         : Natural := 0;
   Line_Code_Points_Loaded             : Natural := 0;

   procedure Fill (Code : Code_Point; Value : Ucd_Grapheme_Cluster_Break);

   procedure Fill (Code : Code_Point; Value : Ucd_Word_Break);

   procedure Fill (Code : Code_Point; Value : Ucd_Sentence_Break);

   procedure Fill (Code : Code_Point; Value : Ucd_Line_Break);

   procedure Read_Grapheme_Break_Property is
     new Generic_Read_Two_Fields
          (Ucd_Grapheme_Cluster_Break, Ucd_Grapheme_Cluster_Break'Value);

   procedure Read_Word_Break_Property is
     new Generic_Read_Two_Fields (Ucd_Word_Break, Ucd_Word_Break'Value);

   procedure Read_Sentence_Break_Property is
     new Generic_Read_Two_Fields
          (Ucd_Sentence_Break, Ucd_Sentence_Break'Value);

   procedure Read_Line_Break_Property is
     new Generic_Read_Two_Fields (Ucd_Line_Break, Value);

   ----------
   -- Fill --
   ----------

   procedure Fill (Code : Code_Point; Value : Ucd_Line_Break) is
   begin
      Values (Code).LB := Value;
      Line_Code_Points_Loaded := Line_Code_Points_Loaded + 1;
   end Fill;

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

   procedure Fill (Code : Code_Point; Value : Ucd_Sentence_Break) is
   begin
      Values (Code).SB := Value;
      Sentence_Code_Points_Loaded := Sentence_Code_Points_Loaded + 1;
   end Fill;

   ----------
   -- Fill --
   ----------

   procedure Fill (Code : Code_Point; Value : Ucd_Word_Break) is
   begin
      Values (Code).WB := Value;
      Word_Code_Points_Loaded := Word_Code_Points_Loaded + 1;
   end Fill;

begin
   Read_Grapheme_Break_Property
    (UCD_Root_Directory & '/' & GraphemeBreakProperty_File,
     Fill'Access);
   Read_Word_Break_Property
    (UCD_Root_Directory & '/' & WordBreakProperty_File,
     Fill'Access);
   Read_Sentence_Break_Property
    (UCD_Root_Directory & '/' & SentenceBreakProperty_File,
     Fill'Access);
   Read_Line_Break_Property
    (UCD_Root_Directory & '/' & LineBreakProperty_File,
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
            Counts  : array
             (Ucd_Grapheme_Cluster_Break, Ucd_Word_Break, Ucd_Sentence_Break,
              Ucd_Line_Break)
                of Natural
                  := (others => (others => (others => (others => 0))));
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
                  Counts (R.GCB, R.WB, R.SB, R.LB)
                    := Counts (R.GCB, R.WB, R.SB, R.LB) + 1;
               end;
            end loop;

            for J1 in Counts'Range (1) loop
               for J2 in Counts'Range (2) loop
                  for J3 in Counts'Range (3) loop
                     for J4 in Counts'Range (4) loop
                        if Maximum < Counts (J1, J2, J3, J4) then
                           Default := (J1, J2, J3, J4);
                           Maximum := Counts (J1, J2, J3, J4);
                        end if;
                     end loop;
                  end loop;
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
                            & ", "
                            & Sentence_Break_Image (Current.SB).all
                            & ", "
                            & Line_Break_Image (Current.LB).all
                            & "),");

                     else
                        Ada.Text_IO.Put
                         ("16#"
                            & Second_Stage_Image (First)
                            & "#           => ("
                            & Grapheme_Cluster_Break_Image (Current.GCB).all
                            & ", "
                            & Word_Break_Image (Current.WB).all
                            & ", "
                            & Sentence_Break_Image (Current.SB).all
                            & ", "
                            & Line_Break_Image (Current.LB).all
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
                & ", "
                & Sentence_Break_Image (Default.SB).all
                & ", "
                & Line_Break_Image (Default.LB).all
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
      Ada.Text_IO.Put_Line
       ("   Property : aliased constant Break_First_Stage");
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
     "SB properties loaded   :" & Natural'Image (Sentence_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "LB properties loaded   :" & Natural'Image (Line_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "Number of reused groups:" & Natural'Image (Groups_Reused));
end Gen_Breaks;
