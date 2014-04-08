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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Unicode.Ucd;

package body Matreshka.CLDR.Collation_Compiler is

   type Collation_Element_Sequence_Access is
     access all Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence;

   type Collation_Second_Stage_Access is
     access Matreshka.Internals.Unicode.Ucd.Collation_Second_Stage;

   type Collation_First_Stage is
     array (Matreshka.Internals.Unicode.Ucd.First_Stage_Index)
       of Collation_Second_Stage_Access;

   type Collation_First_Stage_Access is access all Collation_First_Stage;

   type Contractor_Array_Access is
     access all Matreshka.Internals.Unicode.Ucd.Contractor_Array;

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Matreshka.Internals.Unicode.Ucd.Collation_Second_Stage,
           Collation_Second_Stage_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence,
           Collation_Element_Sequence_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Matreshka.Internals.Unicode.Ucd.Contractor_Array,
           Contractor_Array_Access);

   -------------------------------------
   -- Construct_Collation_Information --
   -------------------------------------

   procedure Construct_Collation_Information
    (Data   : Matreshka.CLDR.Collation_Data.Collation_Information;
     Locale : not null access Matreshka.Internals.Locales.Locale_Data)
   is
      use type Matreshka.CLDR.Collation_Data.Collation_Record_Access;
      use type Matreshka.Internals.Unicode.Code_Point;
      use type Matreshka.Internals.Unicode.Ucd.Sequence_Index;

      Expansion        : Collation_Element_Sequence_Access;
      Expansion_Last   : Matreshka.Internals.Unicode.Ucd.Sequence_Index;
      Contraction      : Contractor_Array_Access;
      Contraction_Last : Matreshka.Internals.Unicode.Ucd.Sequence_Index;
      Mapping          : Collation_First_Stage := (others => null);
      Last_Variable    : Matreshka.Internals.Unicode.Ucd.Collation_Weight := 0;

      procedure Append_Expansion
       (Sequence : Matreshka.CLDR.Collation_Data.Collation_Element_Array;
        First    : out Matreshka.Internals.Unicode.Ucd.Sequence_Index;
        Last     : out Matreshka.Internals.Unicode.Ucd.Sequence_Index);
      --  Appends specified expansion sequence to collectd set of expansion
      --  sequences.

      procedure Process_Contractors
       (Start  : Matreshka.CLDR.Collation_Data.Collation_Record_Access;
        Prefix : Matreshka.CLDR.Collation_Data.Code_Point_Array;
        First  : out Matreshka.Internals.Unicode.Ucd.Sequence_Count;
        Last   : out Matreshka.Internals.Unicode.Ucd.Sequence_Count);
      --  Process contractors recursively.

      ----------------------
      -- Append_Expansion --
      ----------------------

      procedure Append_Expansion
       (Sequence : Matreshka.CLDR.Collation_Data.Collation_Element_Array;
        First    : out Matreshka.Internals.Unicode.Ucd.Sequence_Index;
        Last     : out Matreshka.Internals.Unicode.Ucd.Sequence_Index)
      is
         use type Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence;

         Internal        :
           Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence
            (1 .. Sequence'Length);
         Internal_Last   : Matreshka.Internals.Unicode.Ucd.Sequence_Index
           := Internal'First;
         Expansion_First : Matreshka.Internals.Unicode.Ucd.Sequence_Index;

      begin
         --  Convert sequence of collation elements into format used by
         --  internal database and update greatest weight of variable
         --  character.

         for Element of Sequence loop
            Internal (Internal_Last) :=
             (Primary   => Element.Primary,
              Secondary => Element.Secondary,
              Trinary   => Element.Trinary);
            Internal_Last := Internal_Last + 1;

            if Element.Is_Variable then
               Last_Variable :=
                 Matreshka.Internals.Unicode.Ucd.Collation_Weight'Max
                  (Last_Variable, Element.Primary);
            end if;
         end loop;

         if Expansion = null then
            Expansion :=
              new Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence
                   (Matreshka.Internals.Unicode.Ucd.Sequence_Index'Range);
            Expansion_First := Expansion'First;
            Expansion_Last := Expansion'First + Internal'Length - 1;
            Expansion (Expansion'First .. Expansion_Last) := Internal;

         else
            --  Lookup to reuse of existent sequences in the table is not time
            --  efficient, thus it is not used here.

            Expansion_First := Expansion_Last + 1;
            Expansion_Last  := Expansion_Last + Internal'Length;
            Expansion (Expansion_First .. Expansion_Last) := Internal;
         end if;

         First := Expansion_First;
         Last  := Expansion_Last;
      end Append_Expansion;

      ------------------------------
      -- Process_Code_Point_Chain --
      ------------------------------

      procedure Process_Code_Point_Chain
       (Starter : Matreshka.Internals.Unicode.Code_Point)
      is
         First  : constant Matreshka.Internals.Unicode.Ucd.First_Stage_Index
           := Matreshka.Internals.Unicode.Ucd.First_Stage_Index
               (Starter / Internals.Unicode.Ucd.Second_Stage_Index'Modulus);
         Second : constant Matreshka.Internals.Unicode.Ucd.Second_Stage_Index
           := Matreshka.Internals.Unicode.Ucd.Second_Stage_Index
               (Starter mod Internals.Unicode.Ucd.Second_Stage_Index'Modulus);

         Current_Record : Matreshka.CLDR.Collation_Data.Collation_Record_Access
           := Data.Collations (Starter);

      begin
         --  Allocate block when it wasn't allocated.

         if Mapping (First) = null then
            Mapping (First) :=
              new Matreshka.Internals.Unicode.Ucd.Collation_Second_Stage'
                   (others => (0, 0, 0, 0));
         end if;

         --  Lookup for collation record of code point itself (without
         --  contractors) and process it.

         while Current_Record /= null loop
            --  XXX Loop can be removed if collations chain will be sorted in
            --  contractors order (single character will be first element).

            if Current_Record.Contractors'Length = 1 then
               Append_Expansion
                (Current_Record.Collations.all,
                 Mapping (First) (Second).Expansion_First,
                 Mapping (First) (Second).Expansion_Last);

               exit;
            end if;

            Current_Record := Current_Record.Next;
         end loop;

         Process_Contractors
          (Data.Collations (Starter),
           (1 => Starter),
           Mapping (First) (Second).Contractor_First,
           Mapping (First) (Second).Contractor_Last);
      end Process_Code_Point_Chain;

      -------------------------
      -- Process_Contractors --
      -------------------------

      procedure Process_Contractors
       (Start  : Matreshka.CLDR.Collation_Data.Collation_Record_Access;
        Prefix : Matreshka.CLDR.Collation_Data.Code_Point_Array;
        First  : out Matreshka.Internals.Unicode.Ucd.Sequence_Count;
        Last   : out Matreshka.Internals.Unicode.Ucd.Sequence_Count)
      is
         use type Matreshka.CLDR.Collation_Data.Code_Point_Array;

         Current_Record : Matreshka.CLDR.Collation_Data.Collation_Record_Access
           := Start;

      begin
         First := 0;
         Last  := 0;

         --  Process all contractors with currently processed length and
         --  started from given prefix.

         while Current_Record /= null loop
            if Current_Record.Contractors'Length = Prefix'Length + 1
              and Current_Record.Contractors
                   (Current_Record.Contractors'First
                      .. Current_Record.Contractors'Last - 1) = Prefix
            then
               if Contraction = null then
                  Contraction :=
                    new Matreshka.Internals.Unicode.Ucd.Contractor_Array
                         (Matreshka.Internals.Unicode.Ucd.Sequence_Index);
                  Contraction_Last := Contraction'First;

               else
                  Contraction_Last := Contraction_Last + 1;
               end if;

               if First = 0 then
                  First := Contraction_Last;
               end if;

               Last := Contraction_Last;

               Contraction (Contraction_Last).Code :=
                 Current_Record.Contractors (Current_Record.Contractors'Last);

               Append_Expansion
                (Current_Record.Collations.all,
                 Contraction (Contraction_Last).Expansion_First,
                 Contraction (Contraction_Last).Expansion_Last);
            end if;

            Current_Record := Current_Record.Next;
         end loop;

         if First /= 0 then
            for C in First .. Last loop
               Process_Contractors
                (Start,
                 Prefix & Contraction (C).Code,
                 Contraction (C).Contractor_First,
                 Contraction (C).Contractor_Last);
            end loop;
         end if;
      end Process_Contractors;

      use type Matreshka.Internals.Unicode.Ucd.First_Stage_Index;
      use type Matreshka.Internals.Unicode.Ucd.Collation_Second_Stage;

      Replaced :
        array (Matreshka.Internals.Unicode.Ucd.First_Stage_Index) of Boolean
          := (others => False);

   begin
      --  Collect expansion and constraction information.

      for Starting_Code in Data.Collations'Range loop
         Process_Code_Point_Chain (Starting_Code);
      end loop;

      --  Remove duplicate tables and share one copy each time it duplicates.

      for J in Mapping'Range loop
         if not Replaced (J) then
            for K in J + 1 .. Mapping'Last loop
               if Mapping (J).all = Mapping (K).all then
                  Free (Mapping (K));
                  Mapping (K) := Mapping (J);
                  Replaced (K) := True;
               end if;
           end loop;
         end if;
      end loop;

      --  Construct collation information for locale finally.

      Locale.Collation.Expansion :=
        new Matreshka.Internals.Unicode.Ucd.Collation_Element_Sequence'
             (Expansion (Expansion'First .. Expansion_Last));
      Locale.Collation.Contraction :=
        new Matreshka.Internals.Unicode.Ucd.Contractor_Array'
             (Contraction (Contraction'First .. Contraction_Last));

      declare
         Aux : Matreshka.Internals.Unicode.Ucd.Collation_First_Stage
           := (others =>
                 Matreshka.Internals.Unicode.Ucd.Collation_Second_Stage_Access
                  (Mapping (1)));

      begin
         for J in Mapping'Range loop
            Aux (J) :=
              Matreshka.Internals.Unicode.Ucd.Collation_Second_Stage_Access
               (Mapping (J));
         end loop;

         Locale.Collation.Mapping :=
           new Matreshka.Internals.Unicode.Ucd.Collation_First_Stage'(Aux);
      end;

      Locale.Collation.Last_Variable := Last_Variable;
      Locale.Collation.Backwards := False;
      --  XXX 'backward' must be taken from collation data.

      --  Release auxiliary data.

      Free (Expansion);
      Free (Contraction);
   end Construct_Collation_Information;

end Matreshka.CLDR.Collation_Compiler;
