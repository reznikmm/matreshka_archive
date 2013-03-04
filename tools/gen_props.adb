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
-- Copyright © 2009-2013, Vadim Godunko <vgodunko@gmail.com>                --
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

procedure Gen_Props is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Ucd_Data;
   use Utils;

   type Group_Info is record
      Share : First_Stage_Index;
      Count : Natural;
      Index : First_Stage_Index;
   end record;

   type Constant_String_Access is access constant String;

   procedure Put (Item : Core_Values);
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
   GCB_Regional_Indicator_Image :
     aliased constant String := "Regional_Indicator";

   Grapheme_Cluster_Break_Image : constant
     array (Grapheme_Cluster_Break) of Constant_String_Access
       := (Other              => GCB_Other_Image'Access,
           CR                 => GCB_CR_Image'Access,
           LF                 => GCB_LF_Image'Access,
           Control            => GCB_Control_Image'Access,
           Extend             => GCB_Extend_Image'Access,
           Prepend            => GCB_Prepend_Image'Access,
           Spacing_Mark       => GCB_Spacing_Mark_Image'Access,
           L                  => GCB_L_Image'Access,
           V                  => GCB_V_Image'Access,
           T                  => GCB_T_Image'Access,
           LV                 => GCB_LV_Image'Access,
           LVT                => GCB_LVT_Image'Access,
           Regional_Indicator => GCB_Regional_Indicator_Image'Access);

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
   WB_Regional_Indicator_Image :
     aliased constant String := "Regional_Indicator";

   Word_Break_Image : constant array (Word_Break) of Constant_String_Access
     := (Other              => WB_Other_Image'Access,
         CR                 => WB_CR_Image'Access,
         LF                 => WB_LF_Image'Access,
         Newline            => WB_Newline_Image'Access,
         Katakana           => WB_Katakana_Image'Access,
         A_Letter           => WB_A_Letter_Image'Access,
         Mid_Letter         => WB_Mid_Letter_Image'Access,
         Mid_Num            => WB_Mid_Num_Image'Access,
         Mid_Num_Let        => WB_Mid_Num_Let_Image'Access,
         Numeric            => WB_Numeric_Image'Access,
         Extend_Num_Let     => WB_Extend_Num_Let_Image'Access,
         Format             => WB_Format_Image'Access,
         Extend             => WB_Extend_Image'Access,
         Regional_Indicator => WB_Regional_Indicator_Image'Access);

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
   LB_Conditional_Japanese_Starter_Image :
     aliased constant String := "Conditional_Japanese_Starter";
   LB_Close_Punctuation_Image : aliased constant String := "Close_Punctuation";
   LB_Combining_Mark_Image    : aliased constant String := "Combining_Mark";
   LB_Close_Parenthesis_Image : aliased constant String := "Close_Parenthesis";
   LB_Carriage_Return_Image   : aliased constant String := "Carriage_Return";
   LB_Exclamation_Image       : aliased constant String := "Exclamation";
   LB_Glue_Image              : aliased constant String := "Glue";
   LB_H2_Image                : aliased constant String := "H2";
   LB_H3_Image                : aliased constant String := "H3";
   LB_Hebrew_Letter_Image     : aliased constant String := "Hebrew_Letter";
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
   LB_Regional_Indicator_Image :
     aliased constant String := "Regional_Indicator";

   Line_Break_Image : constant array (Line_Break) of Constant_String_Access
     := (Ambiguous          => LB_Ambiguous_Image'Access,
         Alphabetic         => LB_Alphabetic_Image'Access,
         Break_Both         => LB_Break_Both_Image'Access,
         Break_After        => LB_Break_After_Image'Access,
         Break_Before       => LB_Break_Before_Image'Access,
         Mandatory_Break    => LB_Mandatory_Break_Image'Access,
         Contingent_Break   => LB_Contingent_Break_Image'Access,
         Conditional_Japanese_Starter =>
           LB_Conditional_Japanese_Starter_Image'Access,
         Close_Punctuation  => LB_Close_Punctuation_Image'Access,
         Combining_Mark     => LB_Combining_Mark_Image'Access,
         Close_Parenthesis  => LB_Close_Parenthesis_Image'Access,
         Carriage_Return    => LB_Carriage_Return_Image'Access,
         Exclamation        => LB_Exclamation_Image'Access,
         Glue               => LB_Glue_Image'Access,
         H2                 => LB_H2_Image'Access,
         H3                 => LB_H3_Image'Access,
         Hebrew_Letter      => LB_Hebrew_Letter_Image'Access,
         Hyphen             => LB_Hyphen_Image'Access,
         Ideographic        => LB_Ideographic_Image'Access,
         Inseparable        => LB_Inseparable_Image'Access,
         Infix_Numeric      => LB_Infix_Numeric_Image'Access,
         JL                 => LB_JL_Image'Access,
         JT                 => LB_JT_Image'Access,
         JV                 => LB_JV_Image'Access,
         Line_Feed          => LB_Line_Feed_Image'Access,
         Next_Line          => LB_Next_Line_Image'Access,
         Nonstarter         => LB_Nonstarter_Image'Access,
         Numeric            => LB_Numeric_Image'Access,
         Open_Punctuation   => LB_Open_Punctuation_Image'Access,
         Postfix_Numeric    => LB_Postfix_Numeric_Image'Access,
         Prefix_Numeric     => LB_Prefix_Numeric_Image'Access,
         Quotation          => LB_Quotation_Image'Access,
         Complex_Context    => LB_Complex_Context_Image'Access,
         Surrogate          => LB_Surrogate_Image'Access,
         Space              => LB_Space_Image'Access,
         Break_Symbols      => LB_Break_Symbols_Image'Access,
         Word_Joiner        => LB_Word_Joiner_Image'Access,
         Unknown            => LB_Unknown_Image'Access,
         ZW_Space           => LB_ZW_Space_Image'Access,
         Regional_Indicator => LB_Regional_Indicator_Image'Access);

   BP_ASCII_Hex_Digit_Image   : aliased constant String := "ASCII_Hex_Digit";
   BP_Alphabetic_Image        : aliased constant String := "Alphabetic";
   BP_Bidi_Control_Image      : aliased constant String := "Bidi_Control";
   BP_Bidi_Mirrored_Image     : aliased constant String := "Bidi_Mirrored";
   BP_Changes_When_NFKC_Casefolded_Image :
     aliased constant String := "Changes_When_NFKC_Casefolded";
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
   BP_Cased_Image             : aliased constant String := "Cased";
   BP_Case_Ignorable_Image    : aliased constant String := "Case_Ignorable";
   BP_Changes_When_Lowercased_Image :
     aliased constant String := "Changes_When_Lowercased";
   BP_Changes_When_Uppercased_Image :
     aliased constant String := "Changes_When_Uppercased";
   BP_Changes_When_Titlecased_Image :
     aliased constant String := "Changes_When_Titlecased";
   BP_Changes_When_Casefolded_Image :
     aliased constant String := "Changes_When_Casefolded";
   BP_Changes_When_Casemapped_Image :
     aliased constant String := "Changes_When_Casemapped";

   Boolean_Properties_Image : constant
     array (Boolean_Properties) of Constant_String_Access
       := (ASCII_Hex_Digit         => BP_ASCII_Hex_Digit_Image'Access,
           Alphabetic              => BP_Alphabetic_Image'Access,
           Bidi_Control            => BP_Bidi_Control_Image'Access,
--           Bidi_Mirrored           => BP_Bidi_Mirrored_Image'Access,
           Changes_When_NFKC_Casefolded =>
             BP_Changes_When_NFKC_Casefolded_Image'Access,
           Composition_Exclusion   => BP_Composition_Exclusion_Image'Access,
           Expands_On_NFC          => BP_Expands_On_NFC_Image'Access,
           Expands_On_NFD          => BP_Expands_On_NFD_Image'Access,
           Expands_On_NFKC         => BP_Expands_On_NFKC_Image'Access,
           Expands_On_NFKD         => BP_Expands_On_NFKD_Image'Access,
           Full_Composition_Exclusion =>
             BP_Full_Composition_Exclusion_Image'Access,
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

           Cased                   => BP_Cased_Image'Access,
           Case_Ignorable          => BP_Case_Ignorable_Image'Access,
           Changes_When_Lowercased => BP_Changes_When_Lowercased_Image'Access,
           Changes_When_Uppercased => BP_Changes_When_Uppercased_Image'Access,
           Changes_When_Titlecased => BP_Changes_When_Titlecased_Image'Access,
           Changes_When_Casefolded => BP_Changes_When_Casefolded_Image'Access,
           Changes_When_Casemapped => BP_Changes_When_Casemapped_Image'Access);

   NQC_No_Image    : aliased constant String := "No";
   NQC_Maybe_Image : aliased constant String := "Maybe";
   NQC_Yes_Image   : aliased constant String := "Yes";

   Normalization_Quick_Check_Image : constant
     array (Normalization_Quick_Check) of Constant_String_Access
       := (No    => NQC_No_Image'Access,
           Maybe => NQC_Maybe_Image'Access,
           Yes   => NQC_Yes_Image'Access);

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

   ---------
   -- Put --
   ---------

   procedure Put (Item : Core_Values) is
      use type Ada.Text_IO.Count;

      Indent  : Ada.Text_IO.Count := Ada.Text_IO.Col + 1;
      Counts  : array (Boolean) of Natural := (0, 0);
      Default : Boolean;
      N       : Natural := 0;

   begin
      Ada.Text_IO.Put
       ('('
          & General_Category_Image (Item.GC).all
          & ','
          & Canonical_Combining_Class'Image (Item.CCC)
          & ",");
      Ada.Text_IO.Set_Col (Indent);
      Ada.Text_IO.Put
       (Grapheme_Cluster_Break_Image (Item.GCB).all
          & ", "
          & Word_Break_Image (Item.WB).all
          & ", "
          & Sentence_Break_Image (Item.SB).all
          & ", "
          & Line_Break_Image (Item.LB).all
          & ',');
      Ada.Text_IO.Set_Col (Indent);
      Ada.Text_IO.Put
       ("("
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

   Groups    : array (First_Stage_Index) of Group_Info
     := (others => (0, 0, 0));
   Generated : array (First_Stage_Index) of Boolean    := (others => False);
   Default   : First_Stage_Index := 0;
   Index     : First_Stage_Index := 0;
   
begin
   Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Error, "   ... core");

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Core (Code_Unit_32 (K) * 256 .. Code_Unit_32 (K) * 256 + 255)
              = Core (Code_Unit_32 (J) * 256 .. Code_Unit_32 (J) * 256 + 255)
         then
            Groups (J).Share := K;
            Groups (K).Count := Groups (K).Count + 1;
            
            if J = K then
               Groups (K).Index := Index;
               Index := Index + 1;
            end if;
            
            exit;
         end if;
      end loop;
   end loop;

   --  Generate core properties data file

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default    : Core_Values;
            Current    : Core_Values;
            First      : Second_Stage_Index;
            Last       : Second_Stage_Index;
            First_Code : Code_Point;
            Last_Code  : Code_Point;

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

            Put_File_Header
             ("Localization, Internationalization, Globalization for Ada",
              2012,
              2013);
            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("pragma Restrictions (No_Elaboration_Code);");
            Ada.Text_IO.Put_Line
             ("--  GNAT: enforce generation of preinitialized data section"
                & " instead of");
            Ada.Text_IO.Put_Line ("--  generation of elaboration code.");
            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("package Matreshka.Internals.Unicode.Ucd.Core_"
                & First_Stage_Image (Groups (J).Share)
                & " is");
            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("   Group_" & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Core_Second_Stage");
            Ada.Text_IO.Put ("     := (");

            for K in Second_Stage_Index loop
               declare
                  Code : constant Code_Point
                    := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);

               begin
                  if K = Second_Stage_Index'First then
                     Current    := Core (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code := Code;

                  elsif Core (Code) = Current then
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

                     Current    := Core (Code);
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

            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("end Matreshka.Internals.Unicode.Ucd.Core_"
                & First_Stage_Image (Groups (J).Share)
                & ";");
            
            Generated (J) := True;
         end;
      end if;
   end loop;

   Put_File_Header
    ("Localization, Internationalization, Globalization for Ada",
     2009,
     2012);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("pragma Restrictions (No_Elaboration_Code);");
   Ada.Text_IO.Put_Line
    ("--  GNAT: enforce generation of preinitialized data section instead of");
   Ada.Text_IO.Put_Line ("--  generation of elaboration code.");
   Ada.Text_IO.New_Line;

   for J in Groups'Range loop
      if Groups (J).Share = J then
         Ada.Text_IO.Put_Line
          ("with Matreshka.Internals.Unicode.Ucd.Core_"
             & First_Stage_Image (J)
             & ";");
      end if;
   end loop;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("package Matreshka.Internals.Unicode.Ucd.Core is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");
   Ada.Text_IO.New_Line;

   for J in Groups'Range loop
      if Groups (J).Share = J then
         Ada.Text_IO.Put_Line
          ("   use Matreshka.Internals.Unicode.Ucd.Core_"
             & First_Stage_Image (J)
             & ";");
      end if;
   end loop;

   declare
      Maximum : Natural := 0;
      N       : Natural := 0;

   begin
      for J in Groups'Range loop
         if Maximum < Groups (J).Count then
            Maximum := Groups (J).Count;
            Default := J;
         end if;
      end loop;

      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line ("   Property : aliased constant Core_First_Stage");
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
   Ada.Text_IO.Put_Line ("end Matreshka.Internals.Unicode.Ucd.Core;");

   Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Error, "   ... indexes");

   Put_File_Header
     ("Localization, Internationalization, Globalization for Ada",
      2011,
      2011);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("pragma Restrictions (No_Elaboration_Code);");
   Ada.Text_IO.Put_Line
    ("--  GNAT: enforce generation of preinitialized data section instead of");
   Ada.Text_IO.Put_Line ("--  generation of elaboration code.");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("package Matreshka.Internals.Unicode.Ucd.Indexes is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

   declare
      N : Natural := 0;

   begin
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line
       ("   Group_Index : constant array (First_Stage_Index) "
          & "of First_Stage_Index");
      Ada.Text_IO.Put ("     := (");

      for J in Groups'Range loop
         if Groups (J).Share /= Default then
            Ada.Text_IO.Put
             ("16#"
                & First_Stage_Image (J)
                & "# => 16#"
                & First_Stage_Image (Groups (Groups (J).Share).Index)
                & "#,");

            case N mod 3 is
               when 0 =>
                  Ada.Text_IO.Set_Col (32);

               when 1 =>
                  Ada.Text_IO.Set_Col (54);

               when 2 =>
                  Ada.Text_IO.New_Line;
                  Ada.Text_IO.Set_Col (10);

               when others =>
                  raise Program_Error;
            end case;

            N := N + 1;
         end if;
      end loop;

      Ada.Text_IO.Put_Line
       ("others   => 16#"
          & First_Stage_Image (Groups (Default).Index)
          & "#);");
   end;
   
   declare
      Count : Natural := 0;

   begin
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line
       ("   Base : constant array (First_Stage_Index range <>)"
          & " of First_Stage_Index");
      Ada.Text_IO.Put ("     := (");

      for J in Groups'Range loop
         if Groups (J).Share = J then
            if J /= 0 then
               Ada.Text_IO.Put (',');

               if Count mod 7 = 0 then
                  Ada.Text_IO.New_Line;
                  Ada.Text_IO.Put ("         ");
               else
                  Ada.Text_IO.Put (' ');
               end if;
            end if;

            Ada.Text_IO.Put ("16#" & First_Stage_Image (J) & "#");
            Count := Count + 1;
         end if;
      end loop;

      Ada.Text_IO.Put_Line (");");

      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line
       ("   Base_Last : constant First_Stage_Index :="
          & Natural'Image (Count - 1) & ";");
   end;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("end Matreshka.Internals.Unicode.Ucd.Indexes;");
end Gen_Props;
