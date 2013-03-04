------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
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

package Matreshka.Internals.Unicode.Ucd is

   pragma Preelaborate;

   type First_Stage_Index is mod 16#1100#;
   type Second_Stage_Index is mod 16#100#;

   type Sequence_Count is range 0 .. 2 ** 16 - 1;
   for Sequence_Count'Size use 16;

   subtype Sequence_Index is Sequence_Count range 1 .. Sequence_Count'Last;

   type Code_Point_Sequence is array (Sequence_Index range <>) of Code_Point;

   type Code_Point_Sequence_Access is access constant Code_Point_Sequence;

   ---------------------
   -- Core properties --
   ---------------------

   type General_Category is
    (Control,
     Format,
     Unassigned,
     Private_Use,
     Surrogate,

     Lowercase_Letter,
     Titlecase_Letter,
     Uppercase_Letter,
     Modifier_Letter,
     Other_Letter,

     Spacing_Mark,
     Enclosing_Mark,
     Nonspacing_Mark,

     Decimal_Number,
     Letter_Number,
     Other_Number,

     Connector_Punctuation,
     Dash_Punctuation,
     Close_Punctuation,
     Final_Punctuation,
     Initial_Punctuation,
     Other_Punctuation,
     Open_Punctuation,

     Currency_Symbol,
     Modifier_Symbol,
     Math_Symbol,
     Other_Symbol,

     Line_Separator,
     Paragraph_Separator,
     Space_Separator);
   for General_Category'Size use 8;

--   subtype Other is General_Category range Control .. Surrogate;
--   subtype Letter is General_Category range Lowercase_Letter .. Other_Letter;
--   subtype Cased_Letter is Letter range Lowercase_Letter .. Uppercase_Letter;
--   subtype Mark is General_Category range Spacing_Mark .. Nonspacing_Mark;
--   subtype Number is General_Category range Decimal_Number .. Other_Number;
--   subtype Punctuation is General_Category
--     range Connector_Punctuation .. Open_Punctuation;
--   subtype Symbol is General_Category range Currency_Symbol .. Other_Symbol;
--   subtype Separator is General_Category
--     range Line_Separator .. Space_Separator;

   type Canonical_Combining_Class is mod 256;

   Not_Reordered        : constant Canonical_Combining_Class := 0;
   Overlay              : constant Canonical_Combining_Class := 1;
   Nukta                : constant Canonical_Combining_Class := 7;
   Kana_Voicing         : constant Canonical_Combining_Class := 8;
   Virama               : constant Canonical_Combining_Class := 9;
   Attached_Below_Left  : constant Canonical_Combining_Class := 200;
   Attached_Below       : constant Canonical_Combining_Class := 202;
   Attached_Above_Right : constant Canonical_Combining_Class := 216;
   Below_Left           : constant Canonical_Combining_Class := 218;
   Below                : constant Canonical_Combining_Class := 220;
   Below_Right          : constant Canonical_Combining_Class := 222;
   Left                 : constant Canonical_Combining_Class := 224;
   Right                : constant Canonical_Combining_Class := 226;
   Above_Left           : constant Canonical_Combining_Class := 228;
   Above                : constant Canonical_Combining_Class := 230;
   Above_Right          : constant Canonical_Combining_Class := 232;
   Double_Below         : constant Canonical_Combining_Class := 233;
   Double_Above         : constant Canonical_Combining_Class := 234;
   Iota_Subscript       : constant Canonical_Combining_Class := 240;

   type Boolean_Properties is
    (ASCII_Hex_Digit,
     Bidi_Control,
     Dash,
     Deprecated,
     Diacritic,
     Extender,
     Hex_Digit,
     Hyphen,
     Ideographic,
     IDS_Binary_Operator,
     IDS_Trinary_Operator,
     Join_Control,
     Logical_Order_Exception,
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
     Variation_Selector,
     White_Space,

--     Bidi_Mirrored,                 --  XXX

     --  Derived core properties. This list must include only properties
     --  from DerivedCoreProperties.txt file.

     Alphabetic,                    --  Derived
     Cased,                         --  Derived
     Case_Ignorable,                --  Derived
     Changes_When_Lowercased,       --  Derived
     Changes_When_Uppercased,       --  Derived
     Changes_When_Titlecased,       --  Derived
     Changes_When_Casefolded,       --  Derived
     Changes_When_Casemapped,       --  Derived
     Default_Ignorable_Code_Point,  --  Derived
     Grapheme_Base,                 --  Derived
     Grapheme_Extend,               --  Derived
     Grapheme_Link,                 --  Deprecated, derived
     ID_Continue,                   --  Derived
     ID_Start,                      --  Derived
     Lowercase,                     --  Derived
     Math,                          --  Derived
     Uppercase,                     --  Derived
     XID_Continue,                  --  Derived
     XID_Start,                     --  Derived

     --  Composition exclusion property.

     Composition_Exclusion,         --  XXX

     --  Derived normalization properties.

     Full_Composition_Exclusion,    --  Derived
     Expands_On_NFC,                --  Derived
     Expands_On_NFD,                --  Derived
     Expands_On_NFKC,               --  Derived
     Expands_On_NFKD,               --  Derived
     Changes_When_NFKC_Casefolded); --  Derived

   type Boolean_Values is array (Boolean_Properties) of Boolean;
   for Boolean_Values'Component_Size use 1;
   for Boolean_Values'Size use 64;  --  52 bits used for now

   type Grapheme_Cluster_Break is
    (Control,
     CR,
     Extend,
     L,
     LF,
     LV,
     LVT,
     Prepend,
     Regional_Indicator,
     Spacing_Mark,
     T,
     V,
     Other);
   for Grapheme_Cluster_Break'Size use 8;

   type Word_Break is
    (CR,
     Extend_Num_Let,
     Extend,
     Format,
     Katakana,
     A_Letter,
     LF,
     Mid_Num_Let,
     Mid_Letter,
     Mid_Num,
     Newline,
     Numeric,
     Regional_Indicator,
     Other);
   for Word_Break'Size use 8;

   type Sentence_Break is
    (Other,
     CR,
     LF,
     Sep,
     Sp,
     Lower,
     Upper,
     O_Letter,
     Numeric,
     A_Term,
     S_Term,
     Close,
     S_Continue,
     Format,
     Extend);
   for Sentence_Break'Size use 8;

   type Line_Break is
    (Ambiguous,
     Alphabetic,
     Break_Both,
     Break_After,
     Break_Before,
     Mandatory_Break,
     Contingent_Break,
     Conditional_Japanese_Starter,
     Close_Punctuation,
     Combining_Mark,
     Close_Parenthesis,
     Carriage_Return,
     Exclamation,
     Glue,
     H2,
     H3,
     Hebrew_Letter,
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
     Regional_Indicator,
     Complex_Context,
     Surrogate,
     Space,
     Break_Symbols,
     Word_Joiner,
     Unknown,
     ZW_Space);
   for Line_Break'Size use 8;

   type Decomposition_Type is
    (None,
     Canonical,
     Font,
     No_Break,
     Initial,
     Medial,
     Final,
     Isolated,
     Circle,
     Super,
     Sub,
     Vertical,
     Wide,
     Narrow,
     Small,
     Square,
     Fraction,
     Compat);

   for Decomposition_Type'Size use 8;

   type Normalization_Quick_Check is (No, Maybe, Yes);
   for Normalization_Quick_Check'Size use 2;

   type Normalization_Form is (NFC, NFD, NFKC, NFKD);

   type Normalization_Quick_Checks is
     array (Normalization_Form) of Normalization_Quick_Check;
   for Normalization_Quick_Checks'Size use 8;
   for Normalization_Quick_Checks'Component_Size
     use Normalization_Quick_Check'Size;

   type Core_Values is record
      GC  : General_Category;            --   8  (5) bits
      CCC : Canonical_Combining_Class;   --   8      bits
      GCB : Grapheme_Cluster_Break;      --   8  (4) bits
      WB  : Word_Break;                  --   8  (4) bits
      SB  : Sentence_Break;              --   8  (4) bits
      LB  : Line_Break;                  --   8  (6) bits
      NQC : Normalization_Quick_Checks;  --   8      bits
      DT  : Decomposition_Type;          --   8  (5) bits
      B   : Boolean_Values;              --  64 (52) bits
   end record;
   for Core_Values'Size use 128;
   for Core_Values use record
      B   at 0 range   0 ..  63;
      GC  at 0 range  64 ..  71;
      CCC at 0 range  72 ..  79;
      GCB at 0 range  80 ..  87;
      WB  at 0 range  88 ..  95;
      SB  at 0 range  96 .. 103;
      LB  at 0 range 104 .. 111;
      NQC at 0 range 112 .. 119;
      DT  at 0 range 120 .. 127;
   end record;

   type Core_Second_Stage is array (Second_Stage_Index) of Core_Values;

   type Core_Second_Stage_Access is not null access constant Core_Second_Stage;

   type Core_First_Stage is
     array (First_Stage_Index) of Core_Second_Stage_Access;

   type Core_First_Stage_Access is not null access constant Core_First_Stage;

   ------------
   -- Casing --
   ------------

   type Casing_Context is
    (Final_Sigma,
     After_Soft_Dotted,
     More_Above,
     Before_Dot,
     After_I);

   type Case_Mapping_Range is record
      First : Sequence_Count;
      Last  : Sequence_Count;
   end record;

   type Case_Mapping_Kinds is (Lower, Upper, Title, Folding);

   type Case_Mapping_Ranges is
     array (Case_Mapping_Kinds) of Case_Mapping_Range;

   type Simple_Case_Mappings is
     array (Case_Mapping_Kinds) of Code_Point;

   type Casing_Context_Mapping_Ranges is
     array (Case_Mapping_Kinds range Lower .. Title) of Case_Mapping_Range;

   type Case_Mapping is record
      Simple        : Simple_Case_Mappings;
      Ranges        : Case_Mapping_Ranges;
      Context_First : Sequence_Count;
      Context_Last  : Sequence_Count;
   end record;

   type Casing_Context_Mapping is record
      Context  : Casing_Context;
      Negative : Boolean;
      Ranges   : Casing_Context_Mapping_Ranges;
   end record;

   type Case_Mapping_Second_Stage is
     array (Second_Stage_Index) of Case_Mapping;

   type Case_Mapping_Second_Stage_Access is
     not null access constant Case_Mapping_Second_Stage;

   type Case_Mapping_First_Stage is
     array (First_Stage_Index) of Case_Mapping_Second_Stage_Access;

   type Case_Mapping_First_Stage_Access is
     access constant Case_Mapping_First_Stage;

   type Casing_Context_Mapping_Sequence is
     array (Sequence_Index range <>) of Casing_Context_Mapping;

   type Casing_Context_Mapping_Sequence_Access is
     access constant Casing_Context_Mapping_Sequence;

   -------------------
   -- Normalization --
   -------------------

   type Normalization_Mapping_Range is record
      First : Sequence_Count;
      Last  : Sequence_Count;
   end record;

   type Decomposition_Kinds is (Canonical, Compatibility);

   type Decomposition_Mapping is
     array (Decomposition_Kinds) of Normalization_Mapping_Range;

   type Normalization_Mapping is record
      Decomposition : Decomposition_Mapping;
      Composition   : Normalization_Mapping_Range;
   end record;

   type Normalization_Mapping_Second_Stage is
     array (Second_Stage_Index) of Normalization_Mapping;

   type Normalization_Mapping_Second_Stage_Access is
     access constant Normalization_Mapping_Second_Stage;

   type Normalization_Mapping_First_Stage is
     array (First_Stage_Index) of Normalization_Mapping_Second_Stage_Access;

   type Composition_Mapping is
     array (Sequence_Index range <>, Sequence_Index range <>) of Code_Point;

   ---------------
   -- Collation --
   ---------------

   type Collation_Weight is mod 2**16;
   for Collation_Weight'Size use 16;
   pragma Assert (Code_Unit_16'Size = Collation_Weight'Size);
   --  Note: collation algoriphm in identical strength level adds copy of the
   --  source string in NFD form at the end of produced sorting key, thus it is
   --  important that Code_Unit_16 and Collation_Weight types have equal size.

   type Collation_Element is record
      Primary   : Collation_Weight;
      Secondary : Collation_Weight;
      Trinary   : Collation_Weight;
   end record;

   type Collation_Element_Sequence is
     array (Sequence_Index range <>) of Collation_Element;

   type Collation_Element_Sequence_Access is
     access constant Collation_Element_Sequence;

   type Contractor_Record is record
      Code             : Code_Point;
      Contractor_First : Sequence_Count;
      Contractor_Last  : Sequence_Count;
      Expansion_First  : Sequence_Count;
      Expansion_Last   : Sequence_Count;
   end record;

   type Contractor_Array is
     array (Sequence_Index range <>) of Contractor_Record;

   type Contractor_Array_Access is access constant Contractor_Array;

   type Collation_Record is record
      Contractor_First : Sequence_Count;
      Contractor_Last  : Sequence_Count;
      Expansion_First  : Sequence_Count;
      Expansion_Last   : Sequence_Count;
   end record;

   type Collation_Second_Stage is
     array (Second_Stage_Index) of Collation_Record;

   type Collation_Second_Stage_Access is
     not null access constant Collation_Second_Stage;

   type Collation_First_Stage is
     array (First_Stage_Index) of Collation_Second_Stage_Access;

   type Collation_First_Stage_Access is access constant Collation_First_Stage;

   -------------------------------
   -- Two stage table utilities --
   -------------------------------

   generic
      type Element_Type is private;
      type Second_Stage_Array is
        array (Second_Stage_Index) of Element_Type;
      type Second_Stage_Array_Access is
        not null access constant Second_Stage_Array;
      type First_Stage_Array is
        array (First_Stage_Index) of Second_Stage_Array_Access;

   function Generic_Element (Data : First_Stage_Array; Code : Code_Point)
     return Element_Type;

end Matreshka.Internals.Unicode.Ucd;
