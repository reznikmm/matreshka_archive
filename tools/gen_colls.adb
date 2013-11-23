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
with Uca_Data;
with Utils;

procedure Gen_Colls is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Uca_Data;
   use Utils;

   Expansion      :
     Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence
      (Sequence_Index);
   Expansion_Last : Sequence_Count := 0;
   Last_Variable  : Collation_Weight := 0;

   Contraction      : Contractor_Array (Sequence_Index);
   Contraction_Last : Sequence_Count := 0;

   Collation :
     array (Code_Point) of Matreshka.Internals.Unicode.Ucd.Collation_Record
       := (others => (0, 0, 0, 0));

   procedure Add
    (Item  : Uca_Data.Collation_Element_Sequence;
     First : out Sequence_Count;
     Last  : out Sequence_Count);

   function Collation_Weight_Ada_Image
    (Item : Matreshka.Internals.Unicode.Ucd.Collation_Weight)
       return String;
   --  Returns image of Collation_Weigth in the form useful in Ada code.

   ---------
   -- Add --
   ---------

   procedure Add
    (Item  : Uca_Data.Collation_Element_Sequence;
     First : out Sequence_Count;
     Last  : out Sequence_Count)
   is

      function "="
       (Left  : Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence;
        Right : Uca_Data.Collation_Element_Sequence)
          return Boolean;

      ---------
      -- "=" --
      ---------

      function "="
       (Left  : Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence;
        Right : Uca_Data.Collation_Element_Sequence)
          return Boolean
      is
         L_Index : Sequence_Index := Left'First;
         R_Index : Sequence_Index := Right'First;

      begin
         if Left'Length /= Right'Length then
            return False;
         end if;

         while L_Index <= Left'Last and then R_Index <= Right'Last loop
            if Left (L_Index).Primary /= Right (R_Index).Primary
              or else Left (L_Index).Secondary /= Right (R_Index).Secondary
              or else Left (L_Index).Trinary /= Right (R_Index).Trinary
            then
               return False;
            end if;

            L_Index := L_Index + 1;
            R_Index := R_Index + 1;
         end loop;

         return True;
      end "=";

   begin
      if Item'Length = 0 then
         First := 1;
         Last  := 0;
      end if;

      for J in 1 .. Expansion_Last - Item'Length + 1 loop
         if Expansion (J .. J + Item'Length - 1) = Item then
            First := J;
            Last  := J + Item'Length - 1;

            return;
         end if;
      end loop;

      First := Expansion_Last + 1;

      for J in Item'Range loop
         Expansion_Last := Expansion_Last + 1;
         Expansion (Expansion_Last).Primary := Item (J).Primary;
         Expansion (Expansion_Last).Secondary := Item (J).Secondary;
         Expansion (Expansion_Last).Trinary := Item (J).Trinary;

         if Item (J).Kind = Variable then
            Last_Variable :=
              Collation_Weight'Max (Last_Variable, Item (J).Primary);
         end if;
      end loop;

      Last := Expansion_Last;
   end Add;

   --------------------------------
   -- Collation_Weight_Ada_Image --
   --------------------------------

   function Collation_Weight_Ada_Image
    (Item : Matreshka.Internals.Unicode.Ucd.Collation_Weight)
       return String
   is
      To_Hex_Digit : constant
        array (Collation_Weight range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 8) := "16#XXXX#";

   begin
      Result (7) := To_Hex_Digit (Item mod 16);
      Result (6) := To_Hex_Digit ((Item / 16) mod 16);
      Result (5) := To_Hex_Digit ((Item / 256) mod 16);
      Result (4) := To_Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end Collation_Weight_Ada_Image;

   ---------
   -- Put --
   ---------

   procedure Put
    (Item : Matreshka.Internals.Unicode.Ucd.Collation_Record) is
   begin
      Ada.Text_IO.Put
       ("("
          & Sequence_Count_Image (Item.Contractor_First)
          & ", "
          & Sequence_Count_Image (Item.Contractor_Last)
          & ", "
          & Sequence_Count_Image (Item.Expansion_First)
          & ", "
          & Sequence_Count_Image (Item.Expansion_Last)
          & ")");
   end Put;

   type String_Access is access constant String;

   Regular_Image  : aliased constant String := "Regular";
   Variable_Image : aliased constant String := "Variable";

   Collation_Element_Kinds_Image : constant
     array (Collation_Element_Kinds) of String_Access
       := (Regular  => Regular_Image'Access,
           Variable => Variable_Image'Access);

   Found : Boolean;
   Index : Sequence_Count;

   type Group_Info is record
      Share : First_Stage_Index;
      Count : Natural;
   end record;

   Groups    : array (First_Stage_Index) of Group_Info
     := (others => (0, 0));
   Generated : array (First_Stage_Index) of Boolean := (others => False);

begin
   Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Error, "   ... colls");

   --  Compute expansion and contraction data.

   for J in Code_Point loop
      if Colls (J).Expansion /= null then
         Add
          (Colls (J).Expansion.all,
           Collation (J).Expansion_First,
           Collation (J).Expansion_Last);
      end if;

      if Colls (J).Contraction /= null then
         for K in Colls (J).Contraction'Range loop
            if Collation (J).Contractor_First = 0 then
               Contraction_Last := Contraction_Last + 1;
               Contraction (Contraction_Last).Code :=
                 Colls (J).Contraction (K).Codes (2);

               if Colls (J).Contraction (K).Codes'Length = 1
                 and then Colls (J).Contraction (K).Expansion /= null
               then
                  Add
                   (Colls (J).Contraction (K).Expansion.all,
                    Contraction (Contraction_Last).Expansion_First,
                    Contraction (Contraction_Last).Expansion_Last);
               end if;

               Collation (J).Contractor_First := Contraction_Last;
               Collation (J).Contractor_Last := Contraction_Last;

            else
               Found := False;

               for L in Collation (J).Contractor_First
                          .. Collation (J).Contractor_Last
               loop
                  if Contraction (L).Code
                       = Colls (J).Contraction (K).Codes (2)
                  then
                     Found := True;

                     exit;
                  end if;
               end loop;

               if not Found then
                  Contraction_Last := Contraction_Last + 1;
                  Contraction (Contraction_Last).Code :=
                    Colls (J).Contraction (K).Codes (2);

                  if Colls (J).Contraction (K).Codes'Length = 1
                    and then Colls (J).Contraction (K).Expansion /= null
                  then
                     Add
                      (Colls (J).Contraction (K).Expansion.all,
                       Contraction (Contraction_Last).Expansion_First,
                       Contraction (Contraction_Last).Expansion_Last);
                  end if;

                  Collation (J).Contractor_Last := Contraction_Last;
               end if;
            end if;
         end loop;

         for K in Colls (J).Contraction'Range loop
            if Colls (J).Contraction (K).Codes'Length = 2 then
               Index := 0;

               for L in Collation (J).Contractor_First
                          .. Collation (J).Contractor_Last
               loop
                  if Contraction (L).Code
                       = Colls (J).Contraction (K).Codes (2)
                  then
                     Index := L;

                     exit;
                  end if;
               end loop;

               Contraction_Last := Contraction_Last + 1;
               Contraction (Contraction_Last).Code :=
                 Colls (J).Contraction (K).Codes (3);

               Add
                (Colls (J).Contraction (K).Expansion.all,
                 Contraction (Contraction_Last).Expansion_First,
                 Contraction (Contraction_Last).Expansion_Last);

               if Contraction (Index).Contractor_First = 0 then
                  Contraction (Index).Contractor_First := Contraction_Last;
               end if;

               Contraction (Index).Contractor_Last := Contraction_Last;
            end if;
         end loop;
      end if;
   end loop;

   --  Pack groups: reuse groups with the same values.

   for J in Groups'Range loop
      for K in 0 .. J loop
         if Collation
             (Code_Unit_32 (K) * 256 .. Code_Unit_32 (K) * 256 + 255)
              = Collation
                 (Code_Unit_32 (J) * 256 .. Code_Unit_32 (J) * 256 + 255)
         then
            Groups (J).Share := K;
            Groups (K).Count := Groups (K).Count + 1;

            exit;
         end if;
      end loop;
   end loop;

   --  Generate source code.

   Put_File_Header
    ("Localization, Internationalization, Globalization for Ada",
     2009,
     2013);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("pragma Restrictions (No_Elaboration_Code);");
   Ada.Text_IO.Put_Line
    ("--  GNAT: enforce generation of preinitialized data section instead of");
   Ada.Text_IO.Put_Line ("--  generation of elaboration code.");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("package Matreshka.Internals.Unicode.Ucd.Colls is");
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("   pragma Preelaborate;");

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("   Last_Variable : constant Collation_Weight := "
       & Collation_Weight_Ada_Image (Last_Variable)
       & ';');

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("   Expansion_Data : aliased constant Collation_Element_Sequence");

   for J in 1 .. Expansion_Last loop
      if J = 1 then
         Ada.Text_IO.Put ("     := (");

      else
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("         ");
      end if;

      Ada.Text_IO.Put
       (Sequence_Count_Image (J)
          & " => ("
          & Collation_Weight_Ada_Image (Expansion (J).Primary)
          & ", "
          & Collation_Weight_Ada_Image (Expansion (J).Secondary)
          & ", "
          & Collation_Weight_Ada_Image (Expansion (J).Trinary)
          & ')');
   end loop;

   Ada.Text_IO.Put_Line (");");

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line
    ("   Contraction_Data : aliased constant Contractor_Array");

   for J in 1 .. Contraction_Last loop
      if J = 1 then
         Ada.Text_IO.Put ("     := (");

      else
         Ada.Text_IO.Put_Line (",");
         Ada.Text_IO.Put ("         ");
      end if;

      Ada.Text_IO.Put
       (Sequence_Count_Image (J)
          & " => ("
            & Code_Point_Ada_Image (Contraction (J).Code)
          & ", "
          & Sequence_Count_Image (Contraction (J).Contractor_First)
          & ", "
          & Sequence_Count_Image (Contraction (J).Contractor_Last)
          & ", "
          & Sequence_Count_Image (Contraction (J).Expansion_First)
          & ", "
          & Sequence_Count_Image (Contraction (J).Expansion_Last)
          & ')');
   end loop;

   Ada.Text_IO.Put_Line (");");

   for J in Groups'Range loop
      if not Generated (Groups (J).Share) then
         declare
            Default    : Matreshka.Internals.Unicode.Ucd.Collation_Record;
            Current    : Matreshka.Internals.Unicode.Ucd.Collation_Record;
            First      : Second_Stage_Index;
            Last       : Second_Stage_Index;
            First_Code : Code_Point;
            Last_Code  : Code_Point;

         begin
            --  Looking for most useful set of values, it will be used for
            --  others selector for generate more compact code.

            declare
               type Value_Count_Pair is record
                  V : Matreshka.Internals.Unicode.Ucd.Collation_Record;
                  C : Natural;
               end record;

               Counts  : array (Positive range 1 .. 256) of Value_Count_Pair
                 := (others => <>);
               Last    : Natural  := 0;
               Maximum : Natural  := 0;

            begin
               for K in Second_Stage_Index loop
                  declare
                     C : constant Code_Point
                       := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);
                     R : Matreshka.Internals.Unicode.Ucd.Collation_Record
                       renames Collation (C);
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

            Ada.Text_IO.New_Line;
            Ada.Text_IO.Put_Line
             ("   Group_"
                & First_Stage_Image (Groups (J).Share)
                & " : aliased constant Collation_Second_Stage");
            Ada.Text_IO.Put ("     := (");

            for K in Second_Stage_Index loop
               declare
                  Code : constant Code_Point
                    := Code_Unit_32 (J) * 256 + Code_Unit_32 (K);

               begin
                  if K = Second_Stage_Index'First then
                     Current    := Collation (Code);
                     First      := K;
                     Last       := First;
                     First_Code := Code;
                     Last_Code  := Code;

                  elsif Collation (Code) = Current then
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

                     Current    := Collation (Code);
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

      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line
       ("   Collation : aliased constant Collation_First_Stage");
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
   Ada.Text_IO.Put_Line ("end Matreshka.Internals.Unicode.Ucd.Colls;");
end Gen_Colls;
