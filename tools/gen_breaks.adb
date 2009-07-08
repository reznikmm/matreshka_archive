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

   type Ucd_Sentence_Break is
    (Other,
     CR,
     LF,
     Sep,
     Sp,
     Lower,
     Upper,
     OLetter,
     Numeric,
     ATerm,
     STerm,
     Close,
     SContinue,
     Format,
     Extend);

   --  Line_Break uses IN and IS aliases, which is reserved words in Ada, so
   --  this type can't be declared in the same way with outher.

   type Ucd_Line_Break is
    (Ambiguous,
     Alphabetic,
     Break_Both,
     Break_After,
     Break_Before,
     Mandatory_Break,
     Contingent_Break,
     Close_Punctuation,
     Combining_Mark,
     Carriage_Return,
     Exclamation,
     Glue,
     H2,
     H3,
     Hyphen,
     Ideographic,
     Inseparable,
     Infix_Numeric,
     JL,
     JT,
     JV,
     Line_Feed,
     Next_Line,
     Nonstarter,
     Numeric,
     Open_Punctuation,
     Postfix_Numeric,
     Prefix_Numeric,
     Quotation,
     Complex_Context,
     Surrogate,
     Space,
     Break_Symbols,
     Word_Joiner,
     Unknown,
     ZW_Space);

   Line_Break_Value : constant array (Ucd_Line_Break) of String (1 .. 2)
     := (Ambiguous         => "AI",
         Alphabetic        => "AL",
         Break_Both        => "B2",
         Break_After       => "BA",
         Break_Before      => "BB",
         Mandatory_Break   => "BK",
         Contingent_Break  => "CB",
         Close_Punctuation => "CL",
         Combining_Mark    => "CM",
         Carriage_Return   => "CR",
         Exclamation       => "EX",
         Glue              => "GL",
         H2                => "H2",
         H3                => "H3",
         Hyphen            => "HY",
         Ideographic       => "ID",
         Inseparable       => "IN",
         Infix_Numeric     => "IS",
         JL                => "JL",
         JT                => "JT",
         JV                => "JV",
         Line_Feed         => "LF",
         Next_Line         => "NL",
         Nonstarter        => "NS",
         Numeric           => "NU",
         Open_Punctuation  => "OP",
         Postfix_Numeric   => "PO",
         Prefix_Numeric    => "PR",
         Quotation         => "QU",
         Complex_Context   => "SA",
         Surrogate         => "SG",
         Space             => "SP",
         Break_Symbols     => "SY",
         Word_Joiner       => "WJ",
         Unknown           => "XX",
         ZW_Space          => "ZW");

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

   SB_Other_Image      : aliased constant String := "Other";
   SB_CR_Image         : aliased constant String := "CR";
   SB_LF_Image         : aliased constant String := "LF";
   SB_Sep_Image        : aliased constant String := "Sep";
   SB_Sp_Image         : aliased constant String := "Sp";
   SB_Lower_Image      : aliased constant String := "Lower";
   SB_Upper_Image      : aliased constant String := "Upper";
   SB_O_Letter_Image   : aliased constant String := "O_Letter";
   SB_Numeric_Image    : aliased constant String := "Numeric";
   SB_A_Term_Image     : aliased constant String := "A_Term";
   SB_S_Term_Image     : aliased constant String := "S_Term";
   SB_Close_Image      : aliased constant String := "Close";
   SB_S_Continue_Image : aliased constant String := "S_Continue";
   SB_Format_Image     : aliased constant String := "Format";
   SB_Extend_Image     : aliased constant String := "Extend";

   Sentence_Break_Image : constant array (Ucd_Sentence_Break) of String_Access
     := (Other     => SB_Other_Image'Access,
         CR        => SB_CR_Image'Access,
         LF        => SB_LF_Image'Access,
         Sep       => SB_Sep_Image'Access,
         Sp        => SB_Sp_Image'Access,
         Lower     => SB_Lower_Image'Access,
         Upper     => SB_Upper_Image'Access,
         OLetter   => SB_O_Letter_Image'Access,
         Numeric   => SB_Numeric_Image'Access,
         ATerm     => SB_A_Term_Image'Access,
         STerm     => SB_S_Term_Image'Access,
         Close     => SB_Close_Image'Access,
         SContinue => SB_S_Continue_Image'Access,
         Format    => SB_Format_Image'Access,
         Extend    => SB_Extend_Image'Access);

   LB_Ambiguous_Image         : aliased constant String := "Ambiguous";
   LB_Alphabetic_Image        : aliased constant String := "Alphabetic";
   LB_Break_Both_Image        : aliased constant String := "Break_Both";
   LB_Break_After_Image       : aliased constant String := "Break_After";
   LB_Break_Before_Image      : aliased constant String := "Break_Before";
   LB_Mandatory_Break_Image   : aliased constant String := "Mandatory_Break";
   LB_Contingent_Break_Image  : aliased constant String := "Contingent_Break";
   LB_Close_Punctuation_Image : aliased constant String := "Close_Punctuation";
   LB_Combining_Mark_Image    : aliased constant String := "Combining_Mark";
   LB_Carriage_Return_Image   : aliased constant String := "Carriage_Return";
   LB_Exclamation_Image       : aliased constant String := "Exclamation";
   LB_Glue_Image              : aliased constant String := "Glue";
   LB_H2_Image                : aliased constant String := "H2";
   LB_H3_Image                : aliased constant String := "H3";
   LB_Hyphen_Image            : aliased constant String := "Hyphen";
   LB_Ideographic_Image       : aliased constant String := "Ideographic";
   LB_Inseparable_Image       : aliased constant String := "Inseparable";
   LB_Infix_Numeric_Image     : aliased constant String := "Infix_Numeric";
   LB_JL_Image                : aliased constant String := "JL";
   LB_JT_Image                : aliased constant String := "JT";
   LB_JV_Image                : aliased constant String := "JV";
   LB_Line_Feed_Image         : aliased constant String := "Line_Feed";
   LB_Next_Line_Image         : aliased constant String := "Next_Line";
   LB_Nonstarter_Image        : aliased constant String := "Nonstarter";
   LB_Numeric_Image           : aliased constant String := "Numeric";
   LB_Open_Punctuation_Image  : aliased constant String := "Open_Punctuation";
   LB_Postfix_Numeric_Image   : aliased constant String := "Postfix_Numeric";
   LB_Prefix_Numeric_Image    : aliased constant String := "Prefix_Numeric";
   LB_Quotation_Image         : aliased constant String := "Quotation";
   LB_Complex_Context_Image   : aliased constant String := "Complex_Context";
   LB_Surrogate_Image         : aliased constant String := "Surrogate";
   LB_Space_Image             : aliased constant String := "Space";
   LB_Break_Symbols_Image     : aliased constant String := "Break_Symbols";
   LB_Word_Joiner_Image       : aliased constant String := "Word_Joiner";
   LB_Unknown_Image           : aliased constant String := "Unknown";
   LB_ZW_Space_Image          : aliased constant String := "ZW_Space";

   Line_Break_Image : constant array (Ucd_Line_Break) of String_Access
     := (Ambiguous         => LB_Ambiguous_Image'Access,
         Alphabetic        => LB_Alphabetic_Image'Access,
         Break_Both        => LB_Break_Both_Image'Access,
         Break_After       => LB_Break_After_Image'Access,
         Break_Before      => LB_Break_Before_Image'Access,
         Mandatory_Break   => LB_Mandatory_Break_Image'Access,
         Contingent_Break  => LB_Contingent_Break_Image'Access,
         Close_Punctuation => LB_Close_Punctuation_Image'Access,
         Combining_Mark    => LB_Combining_Mark_Image'Access,
         Carriage_Return   => LB_Carriage_Return_Image'Access,
         Exclamation       => LB_Exclamation_Image'Access,
         Glue              => LB_Glue_Image'Access,
         H2                => LB_H2_Image'Access,
         H3                => LB_H3_Image'Access,
         Hyphen            => LB_Hyphen_Image'Access,
         Ideographic       => LB_Ideographic_Image'Access,
         Inseparable       => LB_Inseparable_Image'Access,
         Infix_Numeric     => LB_Infix_Numeric_Image'Access,
         JL                => LB_JL_Image'Access,
         JT                => LB_JT_Image'Access,
         JV                => LB_JV_Image'Access,
         Line_Feed         => LB_Line_Feed_Image'Access,
         Next_Line         => LB_Next_Line_Image'Access,
         Nonstarter        => LB_Nonstarter_Image'Access,
         Numeric           => LB_Numeric_Image'Access,
         Open_Punctuation  => LB_Open_Punctuation_Image'Access,
         Postfix_Numeric   => LB_Postfix_Numeric_Image'Access,
         Prefix_Numeric    => LB_Prefix_Numeric_Image'Access,
         Quotation         => LB_Quotation_Image'Access,
         Complex_Context   => LB_Complex_Context_Image'Access,
         Surrogate         => LB_Surrogate_Image'Access,
         Space             => LB_Space_Image'Access,
         Break_Symbols     => LB_Break_Symbols_Image'Access,
         Word_Joiner       => LB_Word_Joiner_Image'Access,
         Unknown           => LB_Unknown_Image'Access,
         ZW_Space          => LB_ZW_Space_Image'Access);

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

   function Value (Image : String) return Ucd_Line_Break;

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

   -----------
   -- Value --
   -----------

   function Value (Image : String) return Ucd_Line_Break is
   begin
      for J in Line_Break_Value'Range loop
         if Image = Line_Break_Value (J) then
            return J;
         end if;
      end loop;

      raise Constraint_Error with "Invalid value for Line_Break property";
   end Value;

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
