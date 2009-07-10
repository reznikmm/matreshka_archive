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
with Ada.Unchecked_Deallocation;

with Ucd_Input;

package body Ucd_Data is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;

   subtype Primary_Core_Boolean_Properties is Boolean_Properties
     range ASCII_Hex_Digit .. White_Space;

   subtype Derived_Core_Boolean_Properties is Boolean_Properties
     range Alphabetic .. XID_Start;

--   type Boolean_Properties is
--    (ASCII_Hex_Digit,
--     Bidi_Control,
--     Dash,
--     Deprecated,
--     Diacritic,
--     Extender,
--     Hex_Digit,
--     Hyphen,
--     Ideographic,
--     IDS_Binary_Operator,
--     IDS_Trinary_Operator,
--     Join_Control,
--     Logical_Order_Exception,
--     Noncharacter_Code_Point,
--     Other_Alphabetic,
--     Other_Default_Ignorable_Code_Point,
--     Other_Grapheme_Extend,
--     Other_ID_Continue,
--     Other_ID_Start,
--     Other_Lowercase,
--     Other_Math,
--     Other_Uppercase,
--     Pattern_Syntax,
--     Pattern_White_Space,
--     Quotation_Mark,
--     Radical,
--     Soft_Dotted,
--     STerm,
--     Terminal_Punctuation,
--     Unified_Ideograph,
--     Variation_Selector,
--     White_Space,
--
----     Bidi_Mirrored,                 --  XXX
----     Composition_Exclusion,         --  XXX
----     Full_Composition_Exclusion,    --  XXX
--
--     --  Derived core properties.
--
--     Alphabetic,                    --  Derived
--     Default_Ignorable_Code_Point,  --  Derived
--     Grapheme_Base,                 --  Derived
--     Grapheme_Extend,               --  Derived
--     Grapheme_Link,                 --  Deprecated, derived
--     ID_Continue,                   --  Derived
--     ID_Start,                      --  Derived
--     Lowercase,                     --  Derived
--     Math,                          --  Derived
--     Uppercase,                     --  Derived
--     XID_Continue,                  --  Derived
--     XID_Start);                    --  Derived
----     Expands_On_NFC,                --  XXX
----     Expands_On_NFD,                --  XXX
----     Expands_On_NFKC,               --  XXX
----     Expands_On_NFKD);              --  XXX
--
----  Following for speedup case conversions:
----     Has_Lowercase_Mapping
----     Has_Uppercase_Mapping
----     Has_Titlecase_Mapping
----
----     Final_Sigma_Sensitive
----     After_Soft_Dotted_Sensitive
----     More_Above_Sensitive
----     Before_Dot_Sensitive
----     After_I_Sensitive
----
----     Is_Cased
----     Is_Case_Ignorable


--   type Line_Break is
--    (Ambiguous,
--     Alphabetic,
--     Break_Both,
--     Break_After,
--     Break_Before,
--     Mandatory_Break,
--     Contingent_Break,
--     Close_Punctuation,
--     Combining_Mark,
--     Carriage_Return,
--     Exclamation,
--     Glue,
--     H2,
--     H3,
--     Hyphen,
--     Ideographic,
--     Inseparable,
--     Infix_Numeric,
--     JL,
--     JT,
--     JV,
--     Line_Feed,
--     Next_Line,
--     Nonstarter,
--     Numeric,
--     Open_Punctuation,
--     Postfix_Numeric,
--     Prefix_Numeric,
--     Quotation,
--     Complex_Context,
--     Surrogate,
--     Space,
--     Break_Symbols,
--     Word_Joiner,
--     Unknown,
--     ZW_Space);
--   for Line_Break'Size use 8;

   procedure Load_UnicodeData (File_Name : String);
   --  Parse UnicodeData.txt file and fill internal data structures by the
   --  parsed values.

   procedure Load_PropList (File_Name : String);
   --  Parse PropList.txt file and fill internal data structurs by the parsed
   --  values.

   procedure Load_DerivedCoreProperties (File_Name : String);
   --  Parse DerivedCoreProperties.txt file and fill internal data structurs by
   --  the parsed values.

   procedure Load_GraphemeBreakProperty (File_Name : String);
   --  Parse GraphemeBreakProperty.txt file and fill internal data structurs by
   --  the parsed values.

   procedure Load_WordBreakProperty (File_Name : String);
   --  Parse WordBreakProperty.txt file and fill internal data structurs by the
   --  parsed values.

   procedure Load_SentenceBreakProperty (File_Name : String);
   --  Parse SentenceBreakProperty.txt file and fill internal data structurs by
   --  the parsed values.

   procedure Load_LineBreak (File_Name : String);
   --  Parse LineBreak.txt file and fill internal data structurs by the parsed
   --  values.

   procedure Parse_Code_Point
    (Text : String;
     Code : out Code_Point);

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

   ----------
   -- Load --
   ----------

   procedure Load (Unidata_Directory : String) is
   begin
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
             (others => (SUM | SLM | STM => (Present => False)));

      --  Load UnicodeData.txt, PropList.txt.

      Load_UnicodeData (Unidata_Directory & '/' & "UnicodeData.txt");
      Load_PropList (Unidata_Directory & '/' & "PropList.txt");

      --  Load DerivedCoreProperties.txt.
      --  NOTE: Data in the file is derived from the other information, so
      --  it is possible to use it for verification purposes only.

      Load_DerivedCoreProperties
       (Unidata_Directory & '/' & "DerivedCoreProperties.txt");

      --  Load GraphemeBreakProperty.txt, WordBreakProperty.txt.

      Load_GraphemeBreakProperty
       (Unidata_Directory & '/' & "auxiliary/GraphemeBreakProperty.txt");
      Load_WordBreakProperty
       (Unidata_Directory & '/' & "auxiliary/WordBreakProperty.txt");
      Load_SentenceBreakProperty
       (Unidata_Directory & '/' & "auxiliary/SentenceBreakProperty.txt");
      Load_LineBreak (Unidata_Directory & '/' & "LineBreak.txt");

      --  Compute derived properties.

      --  Verify data.

   end Load;

   --------------------------------
   -- Load_DerivedCoreProperties --
   --------------------------------

   procedure Load_DerivedCoreProperties (File_Name : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Derived_Core_Boolean_Properties;

   begin
      Ucd_Input.Open (File, File_Name);

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

   procedure Load_GraphemeBreakProperty (File_Name : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Grapheme_Cluster_Break;

   begin
      Ucd_Input.Open (File, File_Name);

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

   procedure Load_LineBreak (File_Name : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Line_Break;

   begin
      Ucd_Input.Open (File, File_Name);

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

   procedure Load_PropList (File_Name : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Primary_Core_Boolean_Properties;

   begin
      Ucd_Input.Open (File, File_Name);

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

   procedure Load_SentenceBreakProperty (File_Name : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Sentence_Break;

   begin
      Ucd_Input.Open (File, File_Name);

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

   ----------------------
   -- Load_UnicodeData --
   ----------------------

   procedure Load_UnicodeData (File_Name : String) is
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
         Cases (Code).SUM := SUM;
         Cases (Code).SLM := SLM;
         Cases (Code).STM := STM;
      end Process;

   begin
      Ucd_Input.Open (File, File_Name);

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

   procedure Load_WordBreakProperty (File_Name : String) is
      File  : Ucd_Input.File_Type;
      First : Code_Point;
      Last  : Code_Point;
      Prop  : Word_Break;

   begin
      Ucd_Input.Open (File, File_Name);

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
