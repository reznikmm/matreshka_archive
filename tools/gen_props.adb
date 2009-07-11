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

procedure Gen_Props (Source_Directory : String) is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;
   use Ucd_Data;

   Generated_Name : constant String := "matreshka-internals-ucd-core.ads";

   type Group_Info is record
      Share : First_Stage_Index;
      Count : Natural;
   end record;

   type Constant_String_Access is access constant String;

   function First_Stage_Image (Item : First_Stage_Index) return String;
   --  Returns image in the XXXX format.

   function Second_Stage_Image (Item : Second_Stage_Index) return String;
   --  Returns image in the XX format.

   procedure Put (File : Ada.Text_IO.File_Type; Item : Core_Values);
   --  Put code for properties initialization.

   GC_Control_Image           : aliased constant String := "Control";
   GC_Format_Image            : aliased constant String := "Format";
   GC_Unassigned_Image        : aliased constant String := "Unassigned";
   GC_Private_Use_Image       : aliased constant String := "Private_Use";
   GC_Surrogate_Image         : aliased constant String := "Surrogate";
   GC_Lowercase_Letter_Image  : aliased constant String := "Lowercase_Letter";
   GC_Modifier_Letter_Image   : aliased constant String := "Modifier_Letter";
   GC_Other_Letter_Image      : aliased constant String := "Other_Letter";
   GC_Titlecase_Letter_Image  : aliased constant String := "Titlecase_Letter";
   GC_Uppercase_Letter_Image  : aliased constant String := "Uppercase_Letter";
   GC_Spacing_Mark_Image      : aliased constant String := "Spacing_Mark";
   GC_Enclosing_Mark_Image    : aliased constant String := "Enclosing_Mark";
   GC_Nonspacing_Mark_Image   : aliased constant String := "Nonspacing_Mark";
   GC_Decimal_Number_Image    : aliased constant String := "Decimal_Number";
   GC_Letter_Number_Image     : aliased constant String := "Letter_Number";
   GC_Other_Number_Image      : aliased constant String := "Other_Number";
   GC_Connector_Punctuation_Image :
     aliased constant String := "Connector_Punctuation";
   GC_Dash_Punctuation_Image  : aliased constant String := "Dash_Punctuation";
   GC_Close_Punctuation_Image : aliased constant String := "Close_Punctuation";
   GC_Final_Punctuation_Image : aliased constant String := "Final_Punctuation";
   GC_Initial_Punctuation_Image :
     aliased constant String := "Initial_Punctuation";
   GC_Other_Punctuation_Image : aliased constant String := "Other_Punctuation";
   GC_Open_Punctuation_Image  : aliased constant String := "Open_Punctuation";
   GC_Currency_Symbol_Image   : aliased constant String := "Currency_Symbol";
   GC_Modifier_Symbol_Image   : aliased constant String := "Modifier_Symbol";
   GC_Math_Symbol_Image       : aliased constant String := "Math_Symbol";
   GC_Other_Symbol_Image      : aliased constant String := "Other_Symbol";
   GC_Line_Separator_Image    : aliased constant String := "Line_Separator";
   GC_Paragraph_Separator_Image :
     aliased constant String := "Paragraph_Separator";
   GC_Space_Separator_Image   : aliased constant String := "Space_Separator";

   General_Category_Image : constant
     array (General_Category) of Constant_String_Access
       := (Control               => GC_Control_Image'Access,
           Format                => GC_Format_Image'Access,
           Unassigned            => GC_Unassigned_Image'Access,
           Private_Use           => GC_Private_Use_Image'Access,
           Surrogate             => GC_Surrogate_Image'Access,
           Lowercase_Letter      => GC_Lowercase_Letter_Image'Access,
           Modifier_Letter       => GC_Modifier_Letter_Image'Access,
           Other_Letter          => GC_Other_Letter_Image'Access,
           Titlecase_Letter      => GC_Titlecase_Letter_Image'Access,
           Uppercase_Letter      => GC_Uppercase_Letter_Image'Access,
           Spacing_Mark          => GC_Spacing_Mark_Image'Access,
           Enclosing_Mark        => GC_Enclosing_Mark_Image'Access,
           Nonspacing_Mark       => GC_Nonspacing_Mark_Image'Access,
           Decimal_Number        => GC_Decimal_Number_Image'Access,
           Letter_Number         => GC_Letter_Number_Image'Access,
           Other_Number          => GC_Other_Number_Image'Access,
           Connector_Punctuation => GC_Connector_Punctuation_Image'Access,
           Dash_Punctuation      => GC_Dash_Punctuation_Image'Access,
           Close_Punctuation     => GC_Close_Punctuation_Image'Access,
           Final_Punctuation     => GC_Final_Punctuation_Image'Access,
           Initial_Punctuation   => GC_Initial_Punctuation_Image'Access,
           Other_Punctuation     => GC_Other_Punctuation_Image'Access,
           Open_Punctuation      => GC_Open_Punctuation_Image'Access,
           Currency_Symbol       => GC_Currency_Symbol_Image'Access,
           Modifier_Symbol       => GC_Modifier_Symbol_Image'Access,
           Math_Symbol           => GC_Math_Symbol_Image'Access,
           Other_Symbol          => GC_Other_Symbol_Image'Access,
           Line_Separator        => GC_Line_Separator_Image'Access,
           Paragraph_Separator   => GC_Paragraph_Separator_Image'Access,
           Space_Separator       => GC_Space_Separator_Image'Access);

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
     array (Grapheme_Cluster_Break) of Constant_String_Access
       := (Other        => GCB_Other_Image'Access,
           CR           => GCB_CR_Image'Access,
           LF           => GCB_LF_Image'Access,
           Control      => GCB_Control_Image'Access,
           Extend       => GCB_Extend_Image'Access,
           Prepend      => GCB_Prepend_Image'Access,
           Spacing_Mark => GCB_Spacing_Mark_Image'Access,
           L            => GCB_L_Image'Access,
           V            => GCB_V_Image'Access,
           T            => GCB_T_Image'Access,
           LV           => GCB_LV_Image'Access,
           LVT          => GCB_LVT_Image'Access);

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

   Word_Break_Image : constant array (Word_Break) of Constant_String_Access
     := (Other          => WB_Other_Image'Access,
         CR             => WB_CR_Image'Access,
         LF             => WB_LF_Image'Access,
         Newline        => WB_Newline_Image'Access,
         Katakana       => WB_Katakana_Image'Access,
         A_Letter       => WB_A_Letter_Image'Access,
         Mid_Letter     => WB_Mid_Letter_Image'Access,
         Mid_Num        => WB_Mid_Num_Image'Access,
         Mid_Num_Let    => WB_Mid_Num_Let_Image'Access,
         Numeric        => WB_Numeric_Image'Access,
         Extend_Num_Let => WB_Extend_Num_Let_Image'Access,
         Format         => WB_Format_Image'Access,
         Extend         => WB_Extend_Image'Access);

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

   Sentence_Break_Image : constant
     array (Sentence_Break) of Constant_String_Access
       := (Other      => SB_Other_Image'Access,
           CR         => SB_CR_Image'Access,
           LF         => SB_LF_Image'Access,
           Sep        => SB_Sep_Image'Access,
           Sp         => SB_Sp_Image'Access,
           Lower      => SB_Lower_Image'Access,
           Upper      => SB_Upper_Image'Access,
           O_Letter   => SB_O_Letter_Image'Access,
           Numeric    => SB_Numeric_Image'Access,
           A_Term     => SB_A_Term_Image'Access,
           S_Term     => SB_S_Term_Image'Access,
           Close      => SB_Close_Image'Access,
           S_Continue => SB_S_Continue_Image'Access,
           Format     => SB_Format_Image'Access,
           Extend     => SB_Extend_Image'Access);

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

   Line_Break_Image : constant array (Line_Break) of Constant_String_Access
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

   BP_ASCII_Hex_Digit_Image   : aliased constant String := "ASCII_Hex_Digit";
   BP_Alphabetic_Image        : aliased constant String := "Alphabetic";
   BP_Bidi_Control_Image      : aliased constant String := "Bidi_Control";
   BP_Bidi_Mirrored_Image     : aliased constant String := "Bidi_Mirrored";
   BP_Composition_Exclusion_Image :
     aliased constant String := "Composition_Exclusion";
   BP_Full_Composition_Exclusion_Image :
     aliased constant String := "Full_Composition_Exclusion";
   BP_Dash_Image              : aliased constant String := "Dash";
   BP_Deprecated_Image        : aliased constant String := "Deprecated";
   BP_Default_Ignorable_Code_Point_Image :
     aliased constant String := "Default_Ignorable_Code_Point";
   BP_Diacritic_Image         : aliased constant String := "Diacritic";
   BP_Extender_Image          : aliased constant String := "Extender";
   BP_Grapheme_Base_Image     : aliased constant String := "Grapheme_Base";
   BP_Grapheme_Extend_Image   : aliased constant String := "Grapheme_Extend";
   BP_Grapheme_Link_Image     : aliased constant String := "Grapheme_Link";
   BP_Hex_Digit_Image         : aliased constant String := "Hex_Digit";
   BP_Hyphen_Image            : aliased constant String := "Hyphen";
   BP_ID_Continue_Image       : aliased constant String := "ID_Continue";
   BP_Ideographic_Image       : aliased constant String := "Ideographic";
   BP_ID_Start_Image          : aliased constant String := "ID_Start";
   BP_IDS_Binary_Operator_Image :
     aliased constant String := "IDS_Binary_Operator";
   BP_IDS_Trinary_Operator_Image :
     aliased constant String := "IDS_Trinary_Operator";
   BP_Join_Control_Image      : aliased constant String := "Join_Control";
   BP_Logical_Order_Exception_Image :
     aliased constant String := "Logical_Order_Exception";
   BP_Lowercase_Image         : aliased constant String := "Lowercase";
   BP_Math_Image              : aliased constant String := "Math";
   BP_Noncharacter_Code_Point_Image :
     aliased constant String := "Noncharacter_Code_Point";
   BP_Other_Alphabetic_Image  : aliased constant String := "Other_Alphabetic";
   BP_Other_Default_Ignorable_Code_Point_Image :
     aliased constant String := "Other_Default_Ignorable_Code_Point";
   BP_Other_Grapheme_Extend_Image :
     aliased constant String := "Other_Grapheme_Extend";
   BP_Other_ID_Continue_Image : aliased constant String := "Other_ID_Continue";
   BP_Other_ID_Start_Image    : aliased constant String := "Other_ID_Start";
   BP_Other_Lowercase_Image   : aliased constant String := "Other_Lowercase";
   BP_Other_Math_Image        : aliased constant String := "Other_Math";
   BP_Other_Uppercase_Image   : aliased constant String := "Other_Uppercase";
   BP_Pattern_Syntax_Image    : aliased constant String := "Pattern_Syntax";
   BP_Pattern_White_Space_Image :
     aliased constant String := "Pattern_White_Space";
   BP_Quotation_Mark_Image    : aliased constant String := "Quotation_Mark";
   BP_Radical_Image           : aliased constant String := "Radical";
   BP_Soft_Dotted_Image       : aliased constant String := "Soft_Dotted";
   BP_STerm_Image             : aliased constant String := "STerm";
   BP_Terminal_Punctuation_Image :
     aliased constant String := "Terminal_Punctuation";
   BP_Unified_Ideograph_Image : aliased constant String := "Unified_Ideograph";
   BP_Uppercase_Image         : aliased constant String := "Uppercase";
   BP_Variation_Selector_Image :
     aliased constant String := "Variation_Selector";
   BP_White_Space_Image       : aliased constant String := "White_Space";
   BP_XID_Continue_Image      : aliased constant String := "XID_Continue";
   BP_XID_Start_Image         : aliased constant String := "XID_Start";
   BP_Expands_On_NFC_Image    : aliased constant String := "Expands_On_NFC";
   BP_Expands_On_NFD_Image    : aliased constant String := "Expands_On_NFD";
   BP_Expands_On_NFKC_Image   : aliased constant String := "Expands_On_NFKC";
   BP_Expands_On_NFKD_Image   : aliased constant String := "Expands_On_NFKD";
   BP_Is_Cased_Image          : aliased constant String := "Is_Cased";
   BP_Is_Case_Ignorable_Image : aliased constant String := "Is_Case_Ignorable";
   BP_Has_Lowercase_Mapping_Image :
     aliased constant String := "Has_Lowercase_Mapping";
   BP_Has_Uppercase_Mapping_Image :
     aliased constant String := "Has_Uppercase_Mapping";
   BP_Has_Titlecase_Mapping_Image :
     aliased constant String := "Has_Titlecase_Mapping";
   BP_Final_Sigma_Sensitive_Image :
     aliased constant String := "Final_Sigma_Sensitive";
   BP_After_Soft_Dotted_Sensitive_Image :
     aliased constant String := "After_Soft_Dotted_Sensitive";
   BP_More_Above_Sensitive_Image :
     aliased constant String := "More_Above_Sensitive";
   BP_Before_Dot_Sensitive_Image :
     aliased constant String := "Before_Dot_Sensitive";
   BP_After_I_Sensitive_Image : aliased constant String := "After_I_Sensitive";

   Boolean_Properties_Image : constant
     array (Boolean_Properties) of Constant_String_Access
       := (ASCII_Hex_Digit         => BP_ASCII_Hex_Digit_Image'Access,
           Alphabetic              => BP_Alphabetic_Image'Access,
           Bidi_Control            => BP_Bidi_Control_Image'Access,
--           Bidi_Mirrored           => BP_Bidi_Mirrored_Image'Access,
--           Composition_Exclusion   => BP_Composition_Exclusion_Image'Access,
--           Full_Composition_Exclusion =>
--             BP_Full_Composition_Exclusion_Image'Access,
           Dash                    => BP_Dash_Image'Access,
           Deprecated              => BP_Deprecated_Image'Access,
           Default_Ignorable_Code_Point =>
             BP_Default_Ignorable_Code_Point_Image'Access,
           Diacritic               => BP_Diacritic_Image'Access,
           Extender                => BP_Extender_Image'Access,
           Grapheme_Base           => BP_Grapheme_Base_Image'Access,
           Grapheme_Extend         => BP_Grapheme_Extend_Image'Access,
           Grapheme_Link           => BP_Grapheme_Link_Image'Access,
           Hex_Digit               => BP_Hex_Digit_Image'Access,
           Hyphen                  => BP_Hyphen_Image'Access,
           ID_Continue             => BP_ID_Continue_Image'Access,
           Ideographic             => BP_Ideographic_Image'Access,
           ID_Start                => BP_ID_Start_Image'Access,
           IDS_Binary_Operator     => BP_IDS_Binary_Operator_Image'Access,
           IDS_Trinary_Operator    => BP_IDS_Trinary_Operator_Image'Access,
           Join_Control            => BP_Join_Control_Image'Access,
           Logical_Order_Exception => BP_Logical_Order_Exception_Image'Access,
           Lowercase               => BP_Lowercase_Image'Access,
           Math                    => BP_Math_Image'Access,
           Noncharacter_Code_Point => BP_Noncharacter_Code_Point_Image'Access,
           Other_Alphabetic        => BP_Other_Alphabetic_Image'Access,
           Other_Default_Ignorable_Code_Point =>
             BP_Other_Default_Ignorable_Code_Point_Image'Access,
           Other_Grapheme_Extend   => BP_Other_Grapheme_Extend_Image'Access,
           Other_ID_Continue       => BP_Other_ID_Continue_Image'Access,
           Other_ID_Start          => BP_Other_ID_Start_Image'Access,
           Other_Lowercase         => BP_Other_Lowercase_Image'Access,
           Other_Math              => BP_Other_Math_Image'Access,
           Other_Uppercase         => BP_Other_Uppercase_Image'Access,
           Pattern_Syntax          => BP_Pattern_Syntax_Image'Access,
           Pattern_White_Space     => BP_Pattern_White_Space_Image'Access,
           Quotation_Mark          => BP_Quotation_Mark_Image'Access,
           Radical                 => BP_Radical_Image'Access,
           Soft_Dotted             => BP_Soft_Dotted_Image'Access,
           STerm                   => BP_STerm_Image'Access,
           Terminal_Punctuation    => BP_Terminal_Punctuation_Image'Access,
           Unified_Ideograph       => BP_Unified_Ideograph_Image'Access,
           Uppercase               => BP_Uppercase_Image'Access,
           Variation_Selector      => BP_Variation_Selector_Image'Access,
           White_Space             => BP_White_Space_Image'Access,
           XID_Continue            => BP_XID_Continue_Image'Access,
           XID_Start               => BP_XID_Start_Image'Access,
--           Expands_On_NFC          => BP_Expands_On_NFC_Image'Access,
--           Expands_On_NFD          => BP_Expands_On_NFD_Image'Access,
--           Expands_On_NFKC         => BP_Expands_On_NFKC_Image'Access,
--           Expands_On_NFKD         => BP_Expands_On_NFKD_Image'Access);
           Is_Cased                => BP_Is_Cased_Image'Access,
           Is_Case_Ignorable       => BP_Is_Case_Ignorable_Image'Access,

           Has_Lowercase_Mapping   => BP_Has_Lowercase_Mapping_Image'Access,
           Has_Uppercase_Mapping   => BP_Has_Uppercase_Mapping_Image'Access,
           Has_Titlecase_Mapping   => BP_Has_Titlecase_Mapping_Image'Access,

           Final_Sigma_Sensitive   => BP_Final_Sigma_Sensitive_Image'Access,
           After_Soft_Dotted_Sensitive =>
             BP_After_Soft_Dotted_Sensitive_Image'Access,
           More_Above_Sensitive    => BP_More_Above_Sensitive_Image'Access,
           Before_Dot_Sensitive    => BP_Before_Dot_Sensitive_Image'Access,
           After_I_Sensitive       => BP_After_I_Sensitive_Image'Access);

   -----------------------
   -- First_Stage_Image --
   -----------------------

   function First_Stage_Image (Item : First_Stage_Index) return String is
      To_Hex_Digit : constant
        array (First_Stage_Index range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 4);

   begin
      Result (4) := To_Hex_Digit (Item mod 16);
      Result (3) := To_Hex_Digit ((Item / 16) mod 16);
      Result (2) := To_Hex_Digit ((Item / 256) mod 16);
      Result (1) := To_Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end First_Stage_Image;

   ---------
   -- Put --
   ---------

   procedure Put (File : Ada.Text_IO.File_Type; Item : Core_Values) is
      use type Ada.Text_IO.Count;

      Indent  : Ada.Text_IO.Count := Ada.Text_IO.Col (File) + 1;
      Counts  : array (Boolean) of Natural := (0, 0);
      Default : Boolean;
      N       : Natural := 0;

   begin
      Ada.Text_IO.Put
       (File,
        '('
          & General_Category_Image (Item.GC).all
          & ','
          & Canonical_Combining_Class'Image (Item.CCC)
          & ", "
          & Grapheme_Cluster_Break_Image (Item.GCB).all
          & ", "
          & Word_Break_Image (Item.WB).all
          & ", "
          & Sentence_Break_Image (Item.SB).all
          & ", "
          & Line_Break_Image (Item.LB).all
          & ',');
      Ada.Text_IO.Set_Col (File, Indent);
      Ada.Text_IO.Put (File, '(');

      for J in Item.B'Range loop
         Counts (Item.B (J)) := Counts (Item.B (J)) + 1;
      end loop;

      Default := Counts (False) < Counts (True);

      for J in Item.B'Range loop
         if Item.B (J) /= Default then
            N := N + 1;

            if N = 1 then
               Ada.Text_IO.Put
                (File, Boolean_Properties_Image (J).all);

            else
               Ada.Text_IO.Set_Col (File, Indent + 3);
               Ada.Text_IO.Put
                (File, "| " & Boolean_Properties_Image (J).all);
            end if;
         end if;
      end loop;

      if N /= 0 then
         if Ada.Text_IO.Col (File) > 68 then
            Ada.Text_IO.Set_Col (File, Indent + 6);
         end if;

         if not Default then
            Ada.Text_IO.Put (File, " => True,");


         else
            Ada.Text_IO.Put (File, " => False,");
         end if;

         Ada.Text_IO.Set_Col (File, Indent + 1);
      end if;

      if Default then
         Ada.Text_IO.Put (File, "others => True))");

      else
         Ada.Text_IO.Put (File, "others => False))");
      end if;
   end Put;

   ------------------------
   -- Second_Stage_Image --
   ------------------------

   function Second_Stage_Image (Item : Second_Stage_Index) return String is
      To_Hex_Digit : constant
        array (Second_Stage_Index range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 2);

   begin
      Result (2) := To_Hex_Digit (Item mod 16);
      Result (1) := To_Hex_Digit ((Item / 16) mod 16);

      return Result;
   end Second_Stage_Image;

   Groups    : array (First_Stage_Index) of Group_Info := (others => (0, 0));
   Generated : array (First_Stage_Index) of Boolean    := (others => False);
   File      : Ada.Text_IO.File_Type;

begin
   Ada.Text_IO.Put_Line ("   ... " & Generated_Name);

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Core (Code_Unit_32 (K) * 256 .. Code_Unit_32 (K) * 256 + 255)
              = Core (Code_Unit_32 (J) * 256 .. Code_Unit_32 (J) * 256 + 255)
         then
            Groups (J).Share := K;
            Groups (K).Count := Groups (K).Count + 1;

            exit;
         end if;
      end loop;
   end loop;

   --  Generate data file

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
   Ada.Text_IO.Put_Line (File, "package Matreshka.Internals.Ucd.Core is");
   Ada.Text_IO.New_Line (File);
   Ada.Text_IO.Put_Line (File, "   pragma Preelaborate;");

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default : Core_Values;
            Current : Core_Values;
            First   : Second_Stage_Index;
            Last    : Second_Stage_Index;

         begin
            --  Looking for most useful set of values, it will be used for
            --  others selector for generate more compact code.

            declare
               type Value_Count_Pair is record
                  V : Core_Values;
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
                     R : Core_Values renames Core (C);
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
                & " : aliased constant Core_Second_Stage");
            Ada.Text_IO.Put
             (File, "     := (");

            for K in Second_Stage_Index loop
               declare
                  Code : constant Code_Point
                    := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);

               begin
                  if K = Second_Stage_Index'First then
                     Current := Core (Code);
                     First   := K;
                     Last    := First;

                  elsif Core (Code) = Current then
                     Last := K;

                  else
                     if Current /= Default then
                        if First /= Last then
                           Ada.Text_IO.Put_Line
                            (File,
                             "16#"
                               & Second_Stage_Image (First)
                               & "# .. 16#"
                               & Second_Stage_Image (Last)
                               & "# =>");
                           Ada.Text_IO.Set_Col (File, 11);
                           Put (File, Current);
                           Ada.Text_IO.Put (File, ',');

                        else
                           Ada.Text_IO.Put_Line
                            (File, "16#"
                               & Second_Stage_Image (First)
                               & "#           =>");
                           Ada.Text_IO.Set_Col (File, 11);
                           Put (File, Current);
                           Ada.Text_IO.Put (File, ',');
                        end if;

                        Ada.Text_IO.New_Line (File);
                        Ada.Text_IO.Set_Col (File, 10);
                     end if;

                     Current := Core (Code);
                     First   := K;
                     Last    := First;
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
       (File, "   Property : aliased constant Core_First_Stage");
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
   Ada.Text_IO.Put_Line (File, "end Matreshka.Internals.Ucd.Core;");
end Gen_Props;
