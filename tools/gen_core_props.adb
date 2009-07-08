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

procedure Gen_Core_Props is

   use Unicode_Types;

   UCD_Root_Directory         : constant String
     := Ada.Command_Line.Argument (1);
   DerivedGeneralCategory_File : constant String
     := "extracted/DerivedGeneralCategory.txt";
   DerivedCombiningClass_File : constant String
     := "extracted/DerivedCombiningClass.txt";
   DerivedCoreProperties_File : constant String
     := "DerivedCoreProperties.txt";
   PropList_File : constant String
     := "PropList.txt";
   GraphemeBreakProperty_File : constant String
     := "auxiliary/GraphemeBreakProperty.txt";
   WordBreakProperty_File     : constant String
     := "auxiliary/WordBreakProperty.txt";
   SentenceBreakProperty_File : constant String
     := "auxiliary/SentenceBreakProperty.txt";
   LineBreakProperty_File     : constant String
     := "extracted/DerivedLineBreak.txt";

   type Properties_Value is record
      GC  : Ucd_General_Category;
      CCC : Ucd_Combining_Class;
      BP  : Boolean_Properties_Values;
   end record;

   type Group_Info is record
      Share : First_Stage;
      Count : Natural;
   end record;

   Values    : array (Code_Point) of Properties_Value
     := (others => (GC => Cn, CCC => 0, BP => (others => False)));
   Groups    : array (First_Stage) of Group_Info := (others => (0, 0));
   Generated : array (First_Stage) of Boolean := (others => False);

   procedure Fill (C : Code_Point; Value : Ucd_General_Category);

   procedure Fill (C : Code_Point; Value : Ucd_Combining_Class);

   procedure Fill (C : Code_Point; Value : Ucd_Prop_List_Properties);

   procedure Fill (C : Code_Point; Value : Ucd_Derived_Core_Properties);

   procedure Read_General_Category is
     new Generic_Read_Two_Fields
          (Ucd_General_Category, Ucd_General_Category'Value);

   procedure Read_Combining_Class is
     new Generic_Read_Two_Fields
          (Ucd_Combining_Class, Ucd_Combining_Class'Value);

   procedure Read_Prop_List_Properties is
     new Generic_Read_Two_Fields
          (Ucd_Prop_List_Properties, Ucd_Prop_List_Properties'Value);

   procedure Read_Derived_Core_Properties is
     new Generic_Read_Two_Fields
          (Ucd_Derived_Core_Properties, Ucd_Derived_Core_Properties'Value);

   Groups_Reused                              : Natural := 0;
   General_Category_Code_Points_Loaded        : Natural := 0;
   Combining_Class_Code_Points_Loaded         : Natural := 0;
   Prop_List_Properties_Code_Points_Loaded    : Natural := 0;
   Derived_Core_Properties_Code_Points_Loaded : Natural := 0;

   ----------
   -- Fill --
   ----------

   procedure Fill (C : Code_Point; Value : Ucd_Combining_Class) is
   begin
      Combining_Class_Code_Points_Loaded :=
        Combining_Class_Code_Points_Loaded + 1;

      Values (C).CCC := Value;
   end Fill;

   ----------
   -- Fill --
   ----------

   procedure Fill (C : Code_Point; Value : Ucd_Derived_Core_Properties) is
      To_BP : constant
        array (Ucd_Derived_Core_Properties range Math .. Grapheme_Base)
          of Boolean_Properties
            := (Math                         => Math,
                Alphabetic                   => Alphabetic,
                Lowercase                    => Lowercase,
                Uppercase                    => Uppercase,
                ID_Start                     => ID_Start,
                ID_Continue                  => ID_Continue,
                XID_Start                    => XID_Start,
                XID_Continue                 => XID_Continue,
                Default_Ignorable_Code_Point => Default_Ignorable_Code_Point,
                Grapheme_Extend              => Grapheme_Extend,
                Grapheme_Base                => Grapheme_Base);

   begin
      Derived_Core_Properties_Code_Points_Loaded :=
        Derived_Core_Properties_Code_Points_Loaded + 1;

      --  Grapheme_Link is deprecated property, so it is not processed.

      if Value /= Grapheme_Link then
         Values (C).BP (To_BP (Value)) := True;
      end if;
   end Fill;

   ----------
   -- Fill --
   ----------

   procedure Fill (C : Code_Point; Value : Ucd_General_Category) is
   begin
      General_Category_Code_Points_Loaded :=
        General_Category_Code_Points_Loaded + 1;

      Values (C).GC := Value;
   end Fill;

   ----------
   -- Fill --
   ----------

   procedure Fill (C : Code_Point; Value : Ucd_Prop_List_Properties) is
      To_BP : constant array (Ucd_Prop_List_Properties) of Boolean_Properties
        := (White_Space                        => White_Space,
            Bidi_Control                       => Bidi_Control,
            Join_Control                       => Join_Control,
            Dash                               => Dash,
            Hyphen                             => Hyphen,
            Quotation_Mark                     => Quotation_Mark,
            Terminal_Punctuation               => Terminal_Punctuation,
            Other_Math                         => Other_Math,
            Hex_Digit                          => Hex_Digit,
            ASCII_Hex_Digit                    => ASCII_Hex_Digit,
            Other_Alphabetic                   => Other_Alphabetic,
            Ideographic                        => Ideographic,
            Diacritic                          => Diacritic,
            Extender                           => Extender,
            Other_Lowercase                    => Other_Lowercase,
            Other_Uppercase                    => Other_Uppercase,
            Noncharacter_Code_Point            => Noncharacter_Code_Point,
            Other_Grapheme_Extend              => Other_Grapheme_Extend,
            IDS_Binary_Operator                => IDS_Binary_Operator,
            IDS_Trinary_Operator               => IDS_Trinary_Operator,
            Radical                            => Radical,
            Unified_Ideograph                  => Unified_Ideograph,
            Other_Default_Ignorable_Code_Point =>
              Other_Default_Ignorable_Code_Point,
            Deprecated                         => Deprecated,
            Soft_Dotted                        => Soft_Dotted,
            Logical_Order_Exception            => Logical_Order_Exception,
            Other_ID_Start                     => Other_ID_Start,
            Other_ID_Continue                  => Other_ID_Continue,
            STerm                              => STerm,
            Variation_Selector                 => Variation_Selector,
            Pattern_White_Space                => Pattern_White_Space,
            Pattern_Syntax                     => Pattern_Syntax);

   begin
      Prop_List_Properties_Code_Points_Loaded :=
        Prop_List_Properties_Code_Points_Loaded + 1;

      Values (C).BP (To_BP (Value)) := True;
   end Fill;

begin
   Read_General_Category
    (UCD_Root_Directory & '/' & DerivedGeneralCategory_File, Fill'Access);
   Read_Combining_Class
    (UCD_Root_Directory & '/' & DerivedCombiningClass_File, Fill'Access);
   Read_Prop_List_Properties
    (UCD_Root_Directory & '/' & PropList_File, Fill'Access);
   Read_Derived_Core_Properties
    (UCD_Root_Directory & '/' & DerivedCoreProperties_File, Fill'Access);

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

   --  Generate data file

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
   Ada.Text_IO.Put_Line ("package Matreshka.Internals.Ucd.Core is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default : Properties_Value;
            Current : Properties_Value;
            First   : Second_Stage;
            Last    : Second_Stage;

            procedure Put (Item : Properties_Value);

            ---------
            -- Put --
            ---------

            procedure Put (Item : Properties_Value) is
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
                   & Ucd_Combining_Class'Image (Item.CCC)
                   & ',');
               Ada.Text_IO.Set_Col (Indent);
               Ada.Text_IO.Put ('(');

               for J in Item.BP'Range loop
                  Counts (Item.BP (J)) := Counts (Item.BP (J)) + 1;
               end loop;

               Default := Counts (False) < Counts (True);

               for J in Item.BP'Range loop
                  if Item.BP (J) /= Default then
                     N := N + 1;

                     if N = 1 then
                        Ada.Text_IO.Put (Boolean_Properties_Image (J).all);

                     else
                        Ada.Text_IO.Set_Col (Indent + 3);
                        Ada.Text_IO.Put
                         ("| " & Boolean_Properties_Image (J).all);
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

         begin
            --  Looking for most useful set of values, it will be used for
            --  others selector for generate more compact code.

            declare
               type Value_Count_Pair is record
                  V : Properties_Value;
                  C : Natural;
               end record;

               Counts  : array (Positive range 1 .. 256) of Value_Count_Pair
                 := (others => <>);
               Last    : Natural  := 0;
               Maximum : Positive := 1;

            begin
               for K in Second_Stage loop
                  declare
                     R : Properties_Value renames Values (J * 256 + K);
                     F : Boolean := False;

                  begin
		     --  Go throught known values and try to find the same
                     --  value.

                     for L in 1 .. Last loop
                        if Counts (L).V = R then
                           F := True;
                           Counts (L).C := Counts (L).C + 1;
                           Maximum := Positive'Max (Maximum, Counts (L).C);

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

               Default := Counts (Maximum).V;
            end;

            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("   Group_" & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Core_Second_Stage");
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
                            & "# => ");
                        Put (Current);
                        Ada.Text_IO.Put (',');

                     else
                        Ada.Text_IO.Put
                         ("16#"
                            & Second_Stage_Image (First)
                            & "#           => ");
                        Put (Current);
                        Ada.Text_IO.Put (',');
                     end if;

                     Ada.Text_IO.New_Line;
                     Ada.Text_IO.Set_Col (10);
                  end if;

                  Current := Values (J * 256 + K);
                  First   := K;
                  Last    := First;
               end if;
            end loop;

            Ada.Text_IO.Put ("others           => ");
            Put (Default);
            Ada.Text_IO.Put_Line (");");

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
       ("   Property : aliased constant Core_First_Stage");
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
   Ada.Text_IO.Put_Line ("end Matreshka.Internals.Ucd.Core;");

   --  Output statistic information:

   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "GC loaded  :" & Integer'Image (General_Category_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "CCC loaded :" & Integer'Image (Combining_Class_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "PL loaded  :" & Integer'Image (Prop_List_Properties_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "DCP loaded :"
       & Integer'Image (Derived_Core_Properties_Code_Points_Loaded));
   Ada.Text_IO.Put_Line
    (Ada.Text_IO.Standard_Error,
     "Number of reused groups:" & Natural'Image (Groups_Reused));
end Gen_Core_Props;
