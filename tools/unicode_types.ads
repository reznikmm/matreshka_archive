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

package Unicode_Types is

   type Code_Unit_32 is mod 2 ** 32;
   subtype Code_Point is Code_Unit_32 range 0 .. 16#10_FFFF#;

   subtype First_Stage is Code_Point range 0 .. Code_Point'Last / 256;
   subtype Second_Stage is Code_Point range 0 .. 255;

   function First_Stage_Image (Item : First_Stage) return String;
   --  Returns image in the XXXX format.

   function Second_Stage_Image (Item : Second_Stage) return String;
   --  Returns image in the XX format.

   type String_Access is access constant String;

   --------------------------
   -- Ucd_General_Category --
   --------------------------

   type Ucd_General_Category is
    (Cc,
     Cf,
     Cn,
     Co,
     Cs,
     Ll,
     Lm,
     Lo,
     Lt,
     Lu,
     Mc,
     Me,
     Mn,
     Nd,
     Nl,
     No,
     Pc,
     Pd,
     Pe,
     Pf,
     Pi,
     Po,
     Ps,
     Sc,
     Sk,
     Sm,
     So,
     Zl,
     Zp,
     Zs);

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
     array (Ucd_General_Category) of String_Access
       := (Cc => GC_Control_Image'Access,
           Cf => GC_Format_Image'Access,
           Cn => GC_Unassigned_Image'Access,
           Co => GC_Private_Use_Image'Access,
           Cs => GC_Surrogate_Image'Access,
           Ll => GC_Lowercase_Letter_Image'Access,
           Lm => GC_Modifier_Letter_Image'Access,
           Lo => GC_Other_Letter_Image'Access,
           Lt => GC_Titlecase_Letter_Image'Access,
           Lu => GC_Uppercase_Letter_Image'Access,
           Mc => GC_Spacing_Mark_Image'Access,
           Me => GC_Enclosing_Mark_Image'Access,
           Mn => GC_Nonspacing_Mark_Image'Access,
           Nd => GC_Decimal_Number_Image'Access,
           Nl => GC_Letter_Number_Image'Access,
           No => GC_Other_Number_Image'Access,
           Pc => GC_Connector_Punctuation_Image'Access,
           Pd => GC_Dash_Punctuation_Image'Access,
           Pe => GC_Close_Punctuation_Image'Access,
           Pf => GC_Final_Punctuation_Image'Access,
           Pi => GC_Initial_Punctuation_Image'Access,
           Po => GC_Other_Punctuation_Image'Access,
           Ps => GC_Open_Punctuation_Image'Access,
           Sc => GC_Currency_Symbol_Image'Access,
           Sk => GC_Modifier_Symbol_Image'Access,
           Sm => GC_Math_Symbol_Image'Access,
           So => GC_Other_Symbol_Image'Access,
           Zl => GC_Line_Separator_Image'Access,
           Zp => GC_Paragraph_Separator_Image'Access,
           Zs => GC_Space_Separator_Image'Access);

   -------------------------
   -- Ucd_Combining_Class --
   -------------------------

   type Ucd_Combining_Class is mod 256;

   ------------------------------
   -- Ucd_Prop_List_Properties --
   ------------------------------

   type Ucd_Prop_List_Properties is
    (White_Space,
     Bidi_Control,
     Join_Control,
     Dash,
     Hyphen,
     Quotation_Mark,
     Terminal_Punctuation,
     Other_Math,
     Hex_Digit,
     ASCII_Hex_Digit,
     Other_Alphabetic,
     Ideographic,
     Diacritic,
     Extender,
     Other_Lowercase,
     Other_Uppercase,
     Noncharacter_Code_Point,
     Other_Grapheme_Extend,
     IDS_Binary_Operator,
     IDS_Trinary_Operator,
     Radical,
     Unified_Ideograph,
     Other_Default_Ignorable_Code_Point,
     Deprecated,
     Soft_Dotted,
     Logical_Order_Exception,
     Other_ID_Start,
     Other_ID_Continue,
     STerm,
     Variation_Selector,
     Pattern_White_Space,
     Pattern_Syntax);

   ---------------------------------
   -- Ucd_Derived_Core_Properties --
   ---------------------------------

   type Ucd_Derived_Core_Properties is
    (Math,
     Alphabetic,
     Lowercase,
     Uppercase,
     ID_Start,
     ID_Continue,
     XID_Start,
     XID_Continue,
     Default_Ignorable_Code_Point,
     Grapheme_Extend,
     Grapheme_Base,
     Grapheme_Link);

   ------------------------
   -- Boolean_Properties --
   ------------------------

   type Boolean_Properties is
    (ASCII_Hex_Digit,
     Alphabetic,                    --  Derived
     Bidi_Control,
--     Bidi_Mirrored,                 --  XXX
--     Composition_Exclusion,         --  XXX
--     Full_Composition_Exclusion,    --  XXX
     Dash,
     Deprecated,
     Default_Ignorable_Code_Point,  --  Derived
     Diacritic,
     Extender,
     Grapheme_Base,                 --  Derived
     Grapheme_Extend,               --  Derived
--     Grapheme_Link,                 --  Deprecated, derived
     Hex_Digit,
     Hyphen,
     ID_Continue,                   --  Derived
     Ideographic,
     ID_Start,                      --  Derived
     IDS_Binary_Operator,
     IDS_Trinary_Operator,
     Join_Control,
     Logical_Order_Exception,
     Lowercase,                     --  Derived
     Math,                          --  Derived
     Noncharacter_Code_Point,
     Other_Alphabetic,
     Other_Default_Ignorable_Code_Point,
     Other_Grapheme_Extend,
     Other_ID_Continue,
     Other_ID_Start,
     Other_Lowercase,
     Other_Math,
     Other_Uppercase,
     Pattern_Syntax,
     Pattern_White_Space,
     Quotation_Mark,
     Radical,
     Soft_Dotted,
     STerm,
     Terminal_Punctuation,
     Unified_Ideograph,
     Uppercase,                     --  Derived
     Variation_Selector,
     White_Space,
     XID_Continue,                  --  Derived
     XID_Start);                    --  Derived
--     Expands_On_NFC,                --  XXX
--     Expands_On_NFD,                --  XXX
--     Expands_On_NFKC,               --  XXX
--     Expands_On_NFKD);              --  XXX

   type Boolean_Properties_Values is array (Boolean_Properties) of Boolean;

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

   Boolean_Properties_Image : constant
     array (Boolean_Properties) of String_Access
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
--           Grapheme_Link           => BP_Grapheme_Link_Image'Access,
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
           XID_Start               => BP_XID_Start_Image'Access);
--           Expands_On_NFC          => BP_Expands_On_NFC_Image'Access,
--           Expands_On_NFD          => BP_Expands_On_NFD_Image'Access,
--           Expands_On_NFKC         => BP_Expands_On_NFKC_Image'Access,
--           Expands_On_NFKD         => BP_Expands_On_NFKD_Image'Access);

   --------------------------------
   -- Ucd_Grapheme_Cluster_Break --
   --------------------------------

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

   --------------------
   -- Ucd_Word_Break --
   --------------------

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

   ------------------------
   -- Ucd_Sentence_Break --
   ------------------------

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

   --------------------
   -- Ucd_Line_Break --
   --------------------

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

   function Value (Image : String) return Ucd_Line_Break;

end Unicode_Types;
