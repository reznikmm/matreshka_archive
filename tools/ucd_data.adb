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
with Ada.Unchecked_Deallocation;

with Ucd_Input;

package body Ucd_Data is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;

   UnicodeData_Name           : constant String := "UnicodeData.txt";
   PropList_Name              : constant String := "PropList.txt";
   DerivedCoreProperties_Name : constant String := "DerivedCoreProperties.txt";
   GraphemeBreakProperty_Name : constant String
     := "auxiliary/GraphemeBreakProperty.txt";
   WordBreakProperty_Name     : constant String
     := "auxiliary/WordBreakProperty.txt";
   SentenceBreakProperty_Name : constant String
     := "auxiliary/SentenceBreakProperty.txt";
   LineBreak_Name             : constant String := "LineBreak.txt";
   SpecialCasing_Name         : constant String := "SpecialCasing.txt";
   CaseFolding_Name           : constant String := "CaseFolding.txt";

   subtype Primary_Core_Boolean_Properties is Boolean_Properties
     range ASCII_Hex_Digit .. White_Space;

   subtype Derived_Core_Boolean_Properties is Boolean_Properties
     range Alphabetic .. XID_Start;

   procedure Load_UnicodeData (Unidata_Directory : String);
   --  Parse UnicodeData.txt file and fill internal data structures by the
   --  parsed values.

   procedure Load_PropList (Unidata_Directory : String);
   --  Parse PropList.txt file and fill internal data structurs by the parsed
   --  values.

   procedure Load_DerivedCoreProperties (Unidata_Directory : String);
   --  Parse DerivedCoreProperties.txt file and fill internal data structurs by
   --  the parsed values.

   procedure Load_GraphemeBreakProperty (Unidata_Directory : String);
   --  Parse GraphemeBreakProperty.txt file and fill internal data structurs by
   --  the parsed values.

   procedure Load_WordBreakProperty (Unidata_Directory : String);
   --  Parse WordBreakProperty.txt file and fill internal data structurs by the
   --  parsed values.

   procedure Load_SentenceBreakProperty (Unidata_Directory : String);
   --  Parse SentenceBreakProperty.txt file and fill internal data structurs by
   --  the parsed values.

   procedure Load_LineBreak (Unidata_Directory : String);
   --  Parse LineBreak.txt file and fill internal data structurs by the parsed
   --  values.

   procedure Load_SpecialCasing (Unidata_Directory : String);
   --  Parse SpecialCasing.txt file and fill internal data structurs by the
   --  parsed values.

   procedure Load_CaseFolding (Unidata_Directory : String);
   --  Parse CaseFolding.txt file and fill internal data structurs by the
   --  parsed values.

   procedure Compute_Casing_Properties;
   --  Compute Cased and Case_Ignorable properties for all characters.

   procedure Parse_Code_Point
    (Text : String;
     Code : out Code_Point);

   function Parse_Code_Point_Sequence (Text : String)
     return Code_Point_Sequence;

   function Value (Item : String) return General_Category;
   --  Converts two-character text representation of the General_Category
   --  property into the value.

   function Value (Item : String) return Grapheme_Cluster_Break;
   --  Converts text representation of the Grapheme_Cluster_Break into the
   --  value.

   function Value (Item : String) return Word_Break;
   --  Converts text representation of the Word_Break into the value.

   function Value (Item : String) return Sentence_Break;
   --  Converts text representation of the Sentence_Break into the value.

   function Value (Item : String) return Line_Break;
   --  Converts two-character text representation of the Line_Break into the
   --  value.

   -------------------------------
   -- Compute_Casing_Properties --
   -------------------------------

   procedure Compute_Casing_Properties is
   begin
      for J in Core'Range loop
         Core (J).B (Cased) :=
           Core (J).B (Lowercase)
             or else Core (J).B (Uppercase)
             or else Core (J).GC = Titlecase_Letter;
         Core (J).B (Case_Ignorable) :=
           Core (J).WB = Mid_Letter
             or else Core (J).GC = Nonspacing_Mark
             or else Core (J).GC = Enclosing_Mark
             or else Core (J).GC = Format
             or else Core (J).GC = Modifier_Letter
             or else Core (J).GC = Modifier_Symbol;
      end loop;
   end Compute_Casing_Properties;

   ----------
   -- Load --
   ----------

   procedure Load (Unidata_Directory : String) is
   begin
      Ada.Text_IO.Put_Line ("Initializing ...");

      --  Initialize data structures to default values.

      Core :=
        new Core_Values_Array'
             (others =>
               (GC  => Unassigned,     --  see UCD.html
                CCC => Not_Reordered,  --  see UCD.html
                GCB => Other,          --  see GraphemeBreakProperty.txt
                WB  => Other,          --  see WordBreakProperty.txt
                SB  => Other,          --  see SentenceBreakProperty.txt
                LB  => Unknown,        --  see LineBreak.txt
                B   => (others => False)));

      Cases :=
        new Case_Values_Array'
             (others =>
               (SUM | SLM | STM | SCF => (Present => False),
                FUM | FLM | FTM       =>
                 (Default => null, others => (others => null)),
                FCF                   => null));

      --  Load UnicodeData.txt, PropList.txt.

      Ada.Text_IO.Put_Line ("Loading UCD (" & Unidata_Directory & ") ...");

      Load_UnicodeData (Unidata_Directory);
      Load_PropList (Unidata_Directory);

      --  Load DerivedCoreProperties.txt.
      --  NOTE: Data in the file is derived from the other information, so
      --  it is possible to use it for verification purposes only.

      Load_DerivedCoreProperties (Unidata_Directory);

      --  Load GraphemeBreakProperty.txt, WordBreakProperty.txt.

      Load_GraphemeBreakProperty (Unidata_Directory);
      Load_WordBreakProperty (Unidata_Directory);
      Load_SentenceBreakProperty (Unidata_Directory);
      Load_LineBreak (Unidata_Directory);

      --  Load SpecialCasing.txt, CaseFolding.txt

      Load_SpecialCasing (Unidata_Directory);
      Load_CaseFolding (Unidata_Directory);

      --  Compute derived properties.

      Compute_Casing_Properties;

      --  Verify data.

   end Load;

   ----------------------
   -- Load_CaseFolding --
   ----------------------

   procedure Load_CaseFolding (Unidata_Directory : String) is

      type Case_Folding_Status is (C, F, S, T);

      File   : Ucd_Input.File_Type;
      Code   : Code_Point;
      Status : Case_Folding_Status;

   begin
      Ada.Text_IO.Put_Line ("   ... " & CaseFolding_Name);

      Ucd_Input.Open (File, Unidata_Directory & '/' & CaseFolding_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         Code := Ucd_Input.First_Code_Point (File);

         --  Status

         Status := Case_Folding_Status'Value (Ucd_Input.Field (File));
         Ucd_Input.Next_Field (File);

         --  Mapping

         case Status is
            when C | S =>
               Cases (Code).SCF := (True, 0);
               Parse_Code_Point (Ucd_Input.Field (File), Cases (Code).SCF.C);
               Core (Code).B (Has_Case_Folding) := True;

            when F =>
               Cases (Code).FCF :=
                 new Code_Point_Sequence'
                      (Parse_Code_Point_Sequence (Ucd_Input.Field (File)));
               Core (Code).B (Has_Case_Folding) := True;

            when T =>
               Ada.Text_IO.Put_Line ("         Ignore mapping: T");
         end case;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_CaseFolding;

   --------------------------------
   -- Load_DerivedCoreProperties --
   --------------------------------

   procedure Load_DerivedCoreProperties (Unidata_Directory : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Derived_Core_Boolean_Properties;

   begin
      Ada.Text_IO.Put_Line ("   ... " & DerivedCoreProperties_Name);

      Ucd_Input.Open
       (File, Unidata_Directory & '/' & DerivedCoreProperties_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         First := Ucd_Input.First_Code_Point (File);
         Last  := Ucd_Input.Last_Code_Point (File);
         Prop  :=
           Derived_Core_Boolean_Properties'Value (Ucd_Input.Field (File));

         for J in First .. Last loop
            Core (J).B (Prop) := True;
         end loop;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_DerivedCoreProperties;

   --------------------------------
   -- Load_GraphemeBreakProperty --
   --------------------------------

   procedure Load_GraphemeBreakProperty (Unidata_Directory : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Grapheme_Cluster_Break;

   begin
      Ada.Text_IO.Put_Line ("   ... " & GraphemeBreakProperty_Name);

      Ucd_Input.Open
       (File, Unidata_Directory & '/' & GraphemeBreakProperty_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         First := Ucd_Input.First_Code_Point (File);
         Last  := Ucd_Input.Last_Code_Point (File);
         Prop  := Value (Ucd_Input.Field (File));

         for J in First .. Last loop
            Core (J).GCB := Prop;
         end loop;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_GraphemeBreakProperty;

   --------------------
   -- Load_LineBreak --
   --------------------

   procedure Load_LineBreak (Unidata_Directory : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Line_Break;

   begin
      Ada.Text_IO.Put_Line ("   ... " & LineBreak_Name);

      Ucd_Input.Open (File, Unidata_Directory & '/' & LineBreak_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         First := Ucd_Input.First_Code_Point (File);
         Last  := Ucd_Input.Last_Code_Point (File);
         Prop  := Value (Ucd_Input.Field (File));

         for J in First .. Last loop
            Core (J).LB := Prop;
         end loop;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_LineBreak;

   -------------------
   -- Load_PropList --
   -------------------

   procedure Load_PropList (Unidata_Directory : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Primary_Core_Boolean_Properties;

   begin
      Ada.Text_IO.Put_Line ("   ... " & PropList_Name);

      Ucd_Input.Open (File, Unidata_Directory & '/' & PropList_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         First := Ucd_Input.First_Code_Point (File);
         Last  := Ucd_Input.Last_Code_Point (File);
         Prop  :=
           Primary_Core_Boolean_Properties'Value (Ucd_Input.Field (File));

         for J in First .. Last loop
            Core (J).B (Prop) := True;
         end loop;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_PropList;

   --------------------------------
   -- Load_SentenceBreakProperty --
   --------------------------------

   procedure Load_SentenceBreakProperty (Unidata_Directory : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Sentence_Break;

   begin
      Ada.Text_IO.Put_Line ("   ... " & SentenceBreakProperty_Name);

      Ucd_Input.Open
       (File, Unidata_Directory & '/' & SentenceBreakProperty_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         First := Ucd_Input.First_Code_Point (File);
         Last  := Ucd_Input.Last_Code_Point (File);
         Prop  := Value (Ucd_Input.Field (File));

         for J in First .. Last loop
            Core (J).SB := Prop;
         end loop;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_SentenceBreakProperty;

   ------------------------
   -- Load_SpecialCasing --
   ------------------------

   procedure Load_SpecialCasing (Unidata_Directory : String) is
      File     : Ucd_Input.File_Type;
      Code     : Code_Point;
      Lower    : Code_Point_Sequence_Access;
      Upper    : Code_Point_Sequence_Access;
      Title    : Code_Point_Sequence_Access;

   begin
      Ada.Text_IO.Put_Line ("   ... " & SpecialCasing_Name);

      Ucd_Input.Open
       (File, Unidata_Directory & '/' & SpecialCasing_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         Code := Ucd_Input.First_Code_Point (File);

         --  Lowercase mapping

         Lower :=
           new Code_Point_Sequence'
                (Parse_Code_Point_Sequence (Ucd_Input.Field (File)));
         Ucd_Input.Next_Field (File);

         --  Uppercase mapping

         Upper :=
           new Code_Point_Sequence'
                (Parse_Code_Point_Sequence (Ucd_Input.Field (File)));
         Ucd_Input.Next_Field (File);

         --  Titlecase mapping

         Title :=
           new Code_Point_Sequence'
                (Parse_Code_Point_Sequence (Ucd_Input.Field (File)));
         Ucd_Input.Next_Field (File);

         --  Conditions

         declare
            V : constant String := Ucd_Input.Field (File);

         begin
            if V = "Final_Sigma" then
               if Upper'Length /= 1
                 or else Upper (1) /= Code
               then
                  Core (Code).B (Has_Uppercase_Mapping) := True;
                  Cases (Code).FUM.Positive (Final_Sigma) := Upper;
               end if;

               if Lower'Length /= 1
                 or else Lower (1) /= Code
               then
                  Core (Code).B (Has_Lowercase_Mapping) := True;
                  Cases (Code).FLM.Positive (Final_Sigma) := Lower;
               end if;

               if Title'Length /= 1
                 or else Title (1) /= Code
               then
                  Core (Code).B (Has_Titlecase_Mapping) := True;
                  Cases (Code).FTM.Positive (Final_Sigma) := Title;
               end if;

            elsif V'Length = 0 then
               Cases (Code).FUM.Default := Upper;

               if Upper'Length /= 1
                 or else Upper (1) /= Code
               then
                  Core (Code).B (Has_Uppercase_Mapping) := True;
               end if;

               Cases (Code).FLM.Default := Lower;

               if Lower'Length /= 1
                 or else Lower (1) /= Code
               then
                  Core (Code).B (Has_Lowercase_Mapping) := True;
               end if;

               Cases (Code).FTM.Default := Title;

               if Title'Length /= 1
                 or else Title (1) /= Code
               then
                  Core (Code).B (Has_Titlecase_Mapping) := True;
               end if;

            else
               --  XXX Ignore more complex contexts for now.

               Ada.Text_IO.Put_Line
                ("         Ignore mapping: " & Ucd_Input.Field (File));
            end if;
         end;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_SpecialCasing;

   ----------------------
   -- Load_UnicodeData --
   ----------------------

   procedure Load_UnicodeData (Unidata_Directory : String) is
      type String_Access is access String;

      File       : Ucd_Input.File_Type;
      Code       : Code_Point;
      First_Code : Code_Point;
      Name       : String_Access;
      GC         : General_Category;
      CCC        : Canonical_Combining_Class;
      SUM        : Optional_Code_Point;
      SLM        : Optional_Code_Point;
      STM        : Optional_Code_Point;

      procedure Process
       (Code : Code_Point;
        GC   : General_Category;
        CCC  : Canonical_Combining_Class;
        SUM  : Optional_Code_Point;
        SLM  : Optional_Code_Point;
        STM  : Optional_Code_Point);
      --  Process data for one code point.

      procedure Free is new Ada.Unchecked_Deallocation (String, String_Access);

      -------------
      -- Process --
      -------------

      procedure Process
       (Code : Code_Point;
        GC   : General_Category;
        CCC  : Canonical_Combining_Class;
        SUM  : Optional_Code_Point;
        SLM  : Optional_Code_Point;
        STM  : Optional_Code_Point)
      is
      begin
         Core (Code).GC   := GC;
         Core (Code).CCC  := CCC;

         --  Simple uppercase mapping

         if SUM.Present and then SUM.C /= Code then
            Cases (Code).SUM := SUM;
            Core (Code).B (Has_Uppercase_Mapping) := True;

         else
            Cases (Code).SUM := (Present => False);
         end if;

         --  Simple lowercase mapping

         if SLM.Present and then SLM.C /= Code then
            Cases (Code).SLM := SLM;
            Core (Code).B (Has_Lowercase_Mapping) := True;

         else
            Cases (Code).SLM := (Present => False);
         end if;

         --  Simple titlecase mapping

         if STM.Present and then STM.C /= Code then
            Cases (Code).STM := STM;
            Core (Code).B (Has_Titlecase_Mapping) := True;

         else
            Cases (Code).STM := (Present => False);
         end if;
      end Process;

   begin
      Ada.Text_IO.Put_Line ("   ... " & UnicodeData_Name);

      Ucd_Input.Open (File, Unidata_Directory & '/' & UnicodeData_Name);

      while not Ucd_Input.End_Of_Data (File) loop

         --  Parse code point

         Code := Ucd_Input.First_Code_Point (File);
         --  UnicodeData.txt uses only one code point for each record.

         --  Parse Name (1)

         Name := new String'(Ucd_Input.Field (File));
         Ucd_Input.Next_Field (File);

         --  Parse General_Category (2)

         GC := Value (Ucd_Input.Field (File));
         Ucd_Input.Next_Field (File);

         --  Parse Canonical_Combining_Class (3)

         CCC := Canonical_Combining_Class'Value (Ucd_Input.Field (File));
         Ucd_Input.Next_Field (File);

         --  Parse Bidi_Class (4)
         --  XXX Not implemented

         Ucd_Input.Next_Field (File);

         --  Parse Decomposition_Type and Decomposition_Mapping (5)
         --  XXX Not implemented

         Ucd_Input.Next_Field (File);

         --  Parse Numeric_Type and Numeric_Value (6), (7), (8)
         --  XXX Not implemented

         Ucd_Input.Next_Field (File);
         Ucd_Input.Next_Field (File);
         Ucd_Input.Next_Field (File);

         --  Parse Bidi_Mirrored (9)
         --  XXX Not implemented

         Ucd_Input.Next_Field (File);

         --  Parse Unicode_1_Name (10)
         --  XXX Not implemented

         Ucd_Input.Next_Field (File);

         --  Parse ISO_Comment (11)
         --  XXX Not implemented

         Ucd_Input.Next_Field (File);

         --  Parse Simple_Uppercase_Mapping (12)

         declare
            F : constant String := Ucd_Input.Field (File);

         begin
            if F'Length = 0 then
               SUM := (Present => False);

            else
               SUM := (True, 0);
               Parse_Code_Point (F, SUM.C);
            end if;
         end;

         Ucd_Input.Next_Field (File);

         --  Parse Simple_Lowercase_Mapping (13)

         declare
            F : constant String := Ucd_Input.Field (File);

         begin
            if F'Length = 0 then
               SLM := (Present => False);

            else
               SLM := (True, 0);
               Parse_Code_Point (F, SLM.C);
            end if;
         end;

         Ucd_Input.Next_Field (File);

         --  Parse Simple_Titlecase_Mapping (14)

         declare
            F : constant String := Ucd_Input.Field (File);

         begin
            if F'Length = 0 then
               STM := (Present => False);

            else
               STM := (True, 0);
               Parse_Code_Point (F, STM.C);
            end if;
         end;

	 --  Special exception: if Name end on ", First>" it means a start of
         --  range. Next line end of ", Last>" and means end of range.

         if Name'Length > 7
           and then Name (Name'Last - 7 .. Name'Last) = ", First>"
         then
            First_Code := Code;

         elsif Name'Length > 6
           and then Name (Name'Last - 6 .. Name'Last) = ", Last>"
         then
            for J in First_Code .. Code loop
               Process (J, GC, CCC, SUM, SLM, STM);
            end loop;

         else
            Process (Code, GC, CCC, SUM, SLM, STM);
         end if;

         --  Cleanup.

         Free (Name);

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_UnicodeData;

   ----------------------------
   -- Load_WordBreakProperty --
   ----------------------------

   procedure Load_WordBreakProperty (Unidata_Directory : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Word_Break;

   begin
      Ada.Text_IO.Put_Line ("   ... " & WordBreakProperty_Name);

      Ucd_Input.Open (File, Unidata_Directory & '/' & WordBreakProperty_Name);

      while not Ucd_Input.End_Of_Data (File) loop
         First := Ucd_Input.First_Code_Point (File);
         Last  := Ucd_Input.Last_Code_Point (File);
         Prop  := Value (Ucd_Input.Field (File));

         for J in First .. Last loop
            Core (J).WB := Prop;
         end loop;

         Ucd_Input.Next_Record (File);
      end loop;

      Ucd_Input.Close (File);
   end Load_WordBreakProperty;

   ----------------------
   -- Parse_Code_Point --
   ----------------------

   procedure Parse_Code_Point
    (Text : String;
     Code : out Code_Point)
   is
      First : Positive := Text'First;
      Last  : Natural;

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

      Code := Code_Point'Value ("16#" & Text (First .. Last) & "#");
   end Parse_Code_Point;

   -------------------------------
   -- Parse_Code_Point_Sequence --
   -------------------------------

   function Parse_Code_Point_Sequence (Text : String)
     return Code_Point_Sequence
   is
      First       : Positive := Text'First;
      Last        : Natural;
      Result      : Code_Point_Sequence (1 .. Text'Length / 4);
      Last_Result : Sequence_Count := 0;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
         while First < Text'Last
           and then Text (First) = ' '
         loop
            First := First + 1;
         end loop;

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
      while First < Text'Last loop
         Scan;

         Last_Result := Last_Result + 1;
         Result (Last_Result) :=
           Code_Point'Value ("16#" & Text (First .. Last) & "#");

         First := Last + 1;
      end loop;

      return Result (1 .. Last_Result);
   end Parse_Code_Point_Sequence;

   -----------
   -- Value --
   -----------

   function Value (Item : String) return General_Category is
      Mapping : constant array (General_Category) of String (1 .. 2)
        := (Control               => "Cc",
            Format                => "Cf",
            Unassigned            => "Cn",
            Private_Use           => "Co",
            Surrogate             => "Cs",
            Lowercase_Letter      => "Ll",
            Modifier_Letter       => "Lm",
            Other_Letter          => "Lo",
            Titlecase_Letter      => "Lt",
            Uppercase_Letter      => "Lu",
            Spacing_Mark          => "Mc",
            Enclosing_Mark        => "Me",
            Nonspacing_Mark       => "Mn",
            Decimal_Number        => "Nd",
            Letter_Number         => "Nl",
            Other_Number          => "No",
            Connector_Punctuation => "Pc",
            Dash_Punctuation      => "Pd",
            Close_Punctuation     => "Pe",
            Final_Punctuation     => "Pf",
            Initial_Punctuation   => "Pi",
            Other_Punctuation     => "Po",
            Open_Punctuation      => "Ps",
            Currency_Symbol       => "Sc",
            Modifier_Symbol       => "Sk",
            Math_Symbol           => "Sm",
            Other_Symbol          => "So",
            Line_Separator        => "Zl",
            Paragraph_Separator   => "Zp",
            Space_Separator       => "Zs");

   begin
      for J in Mapping'Range loop
         if Mapping (J) = Item then
            return J;
         end if;
      end loop;

      raise Constraint_Error with "Invalid image of General_Category";
   end Value;

   -----------
   -- Value --
   -----------

   function Value (Item : String) return Grapheme_Cluster_Break is

      type Constant_String_Access is access constant String;

      GCB_Control_Image     : aliased constant String := "Control";
      GCB_CR_Image          : aliased constant String := "CR";
      GCB_Extend_Image      : aliased constant String := "Extend";
      GCB_L_Image           : aliased constant String := "L";
      GCB_LF_Image          : aliased constant String := "LF";
      GCB_LV_Image          : aliased constant String := "LV";
      GCB_LVT_Image         : aliased constant String := "LVT";
      GCB_Prepend_Image     : aliased constant String := "Prepend";
      GCB_SpacingMark_Image : aliased constant String := "SpacingMark";
      GCB_T_Image           : aliased constant String := "T";
      GCB_V_Image           : aliased constant String := "V";
      GCB_Other_Image       : aliased constant String := "Other";

      Mapping : constant
        array (Grapheme_Cluster_Break) of Constant_String_Access
          := (Control      => GCB_Control_Image'Access,
              CR           => GCB_CR_Image'Access,
              Extend       => GCB_Extend_Image'Access,
              L            => GCB_L_Image'Access,
              LF           => GCB_LF_Image'Access,
              LV           => GCB_LV_Image'Access,
              LVT          => GCB_LVT_Image'Access,
              Prepend      => GCB_Prepend_Image'Access,
              Spacing_Mark => GCB_SpacingMark_Image'Access,
              T            => GCB_T_Image'Access,
              V            => GCB_V_Image'Access,
              Other        => GCB_Other_Image'Access);

   begin
      for J in Mapping'Range loop
         if Item = Mapping (J).all then
            return J;
         end if;
      end loop;

      raise Constraint_Error with "Invalid image of Grapheme_Cluster_Break";
   end Value;

   -----------
   -- Value --
   -----------

   function Value (Item : String) return Line_Break is
      Mapping : constant array (Line_Break) of String (1 .. 2)
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

   begin
      for J in Mapping'Range loop
         if Mapping (J) = Item then
            return J;
         end if;
      end loop;

      raise Constraint_Error with "Invalid image of Line_Break";
   end Value;

   -----------
   -- Value --
   -----------

   function Value (Item : String) return Sentence_Break is

      type Constant_String_Access is access constant String;

      SB_ATerm_Image     : aliased constant String := "ATerm";
      SB_Close_Image     : aliased constant String := "Close";
      SB_CR_Image        : aliased constant String := "CR";
      SB_Extend_Image    : aliased constant String := "Extend";
      SB_Format_Image    : aliased constant String := "Format";
      SB_OLetter_Image   : aliased constant String := "OLetter";
      SB_LF_Image        : aliased constant String := "LF";
      SB_Lower_Image     : aliased constant String := "Lower";
      SB_Numeric_Image   : aliased constant String := "Numeric";
      SB_SContinue_Image : aliased constant String := "SContinue";
      SB_Sep_Image       : aliased constant String := "Sep";
      SB_Sp_Image        : aliased constant String := "Sp";
      SB_STerm_Image     : aliased constant String := "STerm";
      SB_Upper_Image     : aliased constant String := "Upper";
      SB_Other_Image     : aliased constant String := "Other";

      Mapping : constant array (Sentence_Break) of Constant_String_Access :=
       (A_Term     => SB_ATerm_Image'Access,
        Close      => SB_Close_Image'Access,
        CR         => SB_CR_Image'Access,
        Extend     => SB_Extend_Image'Access,
        Format     => SB_Format_Image'Access,
        O_Letter   => SB_OLetter_Image'Access,
        LF         => SB_LF_Image'Access,
        Lower      => SB_Lower_Image'Access,
        Numeric    => SB_Numeric_Image'Access,
        S_Continue => SB_SContinue_Image'Access,
        Sep        => SB_Sep_Image'Access,
        Sp         => SB_Sp_Image'Access,
        S_Term     => SB_STerm_Image'Access,
        Upper      => SB_Upper_Image'Access,
        Other      => SB_Other_Image'Access);

   begin
      for J in Mapping'Range loop
         if Item = Mapping (J).all then
            return J;
         end if;
      end loop;

      raise Constraint_Error with "Invalid image of Sentence_Break";
   end Value;

   -----------
   -- Value --
   -----------

   function Value (Item : String) return Word_Break is

      type Constant_String_Access is access constant String;

      WB_CR_Image           : aliased constant String := "CR";
      WB_ExtendNumLet_Image : aliased constant String := "ExtendNumLet";
      WB_Extend_Image       : aliased constant String := "Extend";
      WB_Format_Image       : aliased constant String := "Format";
      WB_Katakana_Image     : aliased constant String := "Katakana";
      WB_ALetter_Image      : aliased constant String := "ALetter";
      WB_LF_Image           : aliased constant String := "LF";
      WB_MidNumLet_Image    : aliased constant String := "MidNumLet";
      WB_MidLetter_Image    : aliased constant String := "MidLetter";
      WB_MidNum_Image       : aliased constant String := "MidNum";
      WB_Newline_Image      : aliased constant String := "Newline";
      WB_Numeric_Image      : aliased constant String := "Numeric";
      WB_Other_Image        : aliased constant String := "Other";

      Mapping : constant array (Word_Break) of Constant_String_Access :=
       (CR             => WB_CR_Image'Access,
        Extend_Num_Let => WB_ExtendNumLet_Image'Access,
        Extend         => WB_Extend_Image'Access,
        Format         => WB_Format_Image'Access,
        Katakana       => WB_Katakana_Image'Access,
        A_Letter       => WB_ALetter_Image'Access,
        LF             => WB_LF_Image'Access,
        Mid_Num_Let    => WB_MidNumLet_Image'Access,
        Mid_Letter     => WB_MidLetter_Image'Access,
        Mid_Num        => WB_MidNum_Image'Access,
        Newline        => WB_Newline_Image'Access,
        Numeric        => WB_Numeric_Image'Access,
        Other          => WB_Other_Image'Access);

   begin
      for J in Mapping'Range loop
         if Item = Mapping (J).all then
            return J;
         end if;
      end loop;

      raise Constraint_Error with "Invalid image of Word_Break";
   end Value;

end Ucd_Data;
