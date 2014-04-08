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

package body Matreshka.CLDR.Collation_Data is

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Collation_Record, Collation_Record_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Collation_Element_Array, Collation_Element_Array_Access);

   function Lookup
    (Data : Collation_Information;
     Item : Code_Point_Array) return Collation_Record_Access;

   procedure Attach
    (Data  : in out Collation_Information;
     After : Collation_Record_Access;
     Item  : Collation_Record_Access);
   --  Attach given collation record into the list of relative position of
   --  collation records immidiately after specified collation record.

   procedure Detach
    (Data : in out Collation_Information;
     Item : Collation_Record_Access);
   --  Detach given collation record from the list of relative position of
   --  collation records.

   ------------
   -- Attach --
   ------------

   procedure Attach
    (Data  : in out Collation_Information;
     After : Collation_Record_Access;
     Item  : Collation_Record_Access) is
   begin
      if Data.Greater_Record = After then
         Data.Greater_Record := Item;
      end if;

      Item.Greater_Or_Equal := After.Greater_Or_Equal;
      Item.Less_Or_Equal := After;

      if After.Greater_Or_Equal /= null then
         After.Greater_Or_Equal.Less_Or_Equal := Item;
      end if;

      After.Greater_Or_Equal := Item;
   end Attach;

   ------------
   -- Detach --
   ------------

   procedure Detach
    (Data : in out Collation_Information;
     Item : Collation_Record_Access) is
   begin
      --  Remove all other collation records.

      if Data.Lower_Record = Item then
         Data.Lower_Record := Item.Greater_Or_Equal;
      end if;

      if Data.Greater_Record = Item then
         Data.Greater_Record := Item.Less_Or_Equal;
      end if;

      if Item.Less_Or_Equal /= null then
         Item.Less_Or_Equal.Greater_Or_Equal := Item.Greater_Or_Equal;
      end if;

      if Item.Greater_Or_Equal /= null then
         Item.Greater_Or_Equal.Less_Or_Equal := Item.Less_Or_Equal;
      end if;

      Item.Less_Or_Equal := null;
      Item.Greater_Or_Equal := null;
   end Detach;

   ------------
   -- Lookup --
   ------------

   function Lookup
    (Data : Collation_Information;
     Item : Code_Point_Array) return Collation_Record_Access
   is
      Current : Collation_Record_Access := Data.Collations (Item (Item'First));

   begin
      while Current /= null loop
         exit when Current.Contractors.all = Item;

         Current := Current.Next;
      end loop;

      return Current;
   end Lookup;

   -------------
   -- Reorder --
   -------------

   procedure Reorder
    (Data          : in out Collation_Information;
     Reset_Code    : Matreshka.Internals.Unicode.Code_Point;
     Operator      : Collation_Operator;
     Relation_Code : Matreshka.Internals.Unicode.Code_Point)
   is
      use type Matreshka.Internals.Unicode.Ucd.Collation_Weight;

      Reset_Record    : constant Collation_Record_Access
        := Lookup (Data, (1 => Reset_Code));
      Relation_Record : constant Collation_Record_Access
        := Lookup (Data, (1 => Relation_Code));

      procedure Update_Primary
       (Item           : Collation_Record_Access;
        Minimum_Weight : Matreshka.Internals.Unicode.Ucd.Collation_Weight);

      procedure Update_Trinary
       (Item             : Collation_Record_Access;
        Primary_Weight   : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
        Secondary_Weight : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
        Minimum_Weight   : Matreshka.Internals.Unicode.Ucd.Collation_Weight);

      --------------------
      -- Update_Primary --
      --------------------

      procedure Update_Primary
       (Item           : Collation_Record_Access;
        Minimum_Weight : Matreshka.Internals.Unicode.Ucd.Collation_Weight)
      is
         Current_Record : Collation_Record_Access := Item;

      begin
         if Current_Record.Collations (1).Primary < Minimum_Weight then
            Current_Record.Collations (1).Primary := Minimum_Weight;
         end if;

         Current_Record := Current_Record.Greater_Or_Equal;

         if Current_Record.Collations (1).Primary < Minimum_Weight then
            raise Program_Error;
         end if;
      end Update_Primary;

      --------------------
      -- Update_Trinary --
      --------------------

      procedure Update_Trinary
       (Item             : Collation_Record_Access;
        Primary_Weight   : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
        Secondary_Weight : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
        Minimum_Weight   : Matreshka.Internals.Unicode.Ucd.Collation_Weight)
      is
         Current_Record : Collation_Record_Access := Item;

      begin
         if Current_Record.Collations (1).Primary = Primary_Weight
           and Current_Record.Collations (1).Secondary = Secondary_Weight
         then
            if Current_Record.Collations (1).Trinary < Minimum_Weight then
               Current_Record.Collations (1).Trinary := Minimum_Weight;

               Current_Record := Current_Record.Greater_Or_Equal;

               if Current_Record.Collations (1).Primary = Primary_Weight
                 and Current_Record.Collations (1).Secondary = Secondary_Weight
               then
                  raise Program_Error;
               end if;
            end if;
         end if;
      end Update_Trinary;

   begin
      --  Detach relation collation record.

      Detach (Data, Relation_Record);
      Free (Relation_Record.Collations);
      Relation_Record.Collations :=
        new Collation_Element_Array'(Reset_Record.Collations.all);

      if Relation_Record.Collations'Length /= 1 then
         raise Program_Error;
      end if;

      Attach (Data, Reset_Record, Relation_Record);

      case Operator is
         when Identically =>
            null;

         when Primary =>
            Relation_Record.Collations (1).Primary :=
              Relation_Record.Collations (1).Primary + 1;

            Update_Primary
             (Relation_Record.Greater_Or_Equal,
              Relation_Record.Collations (1).Primary + 1);

         when Secondary =>
            raise Program_Error;

         when Trinary =>
            Relation_Record.Collations (1).Trinary :=
              Relation_Record.Collations (1).Trinary + 1;

            Update_Trinary
             (Relation_Record.Greater_Or_Equal,
              Relation_Record.Collations (1).Primary,
              Relation_Record.Collations (1).Secondary,
              Relation_Record.Collations (1).Trinary + 1);
      end case;
   end Reorder;

   ---------------------------
   -- Suppress_Contractions --
   ---------------------------

   procedure Suppress_Contractions
    (Data : in out Collation_Information;
     Code : Matreshka.Internals.Unicode.Code_Point)
   is
      Current : Collation_Record_Access;
      Next    : Collation_Record_Access;

   begin
      Current := Data.Collations (Code);

      while Current /= null loop
         Next := Current.Next;

         if Current.Contractors'Length = 1 then
            --  Only one collation record can be provides for single code
            --  point by construction. Left this collation record.

            Data.Collations (Code) := Current;
            Current.Next := null;

         else
            --  Remove all other collation records.

            if Data.Lower_Record = Current then
               Data.Lower_Record := Current.Greater_Or_Equal;
            end if;

            if Data.Greater_Record = Current then
               Data.Greater_Record := Current.Less_Or_Equal;
            end if;

            if Current.Less_Or_Equal /= null then
               Current.Less_Or_Equal.Greater_Or_Equal :=
                 Current.Greater_Or_Equal;
            end if;

            if Current.Greater_Or_Equal /= null then
               Current.Greater_Or_Equal.Less_Or_Equal := Current.Less_Or_Equal;
            end if;

            Free (Current);
         end if;

         Current := Next;
      end loop;
   end Suppress_Contractions;

end Matreshka.CLDR.Collation_Data;
