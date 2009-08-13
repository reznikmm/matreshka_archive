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

with Unicode_Data_File_Parsers;
with Utils;

package body Uca_Data is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Utils;

   All_Keys_Name : constant String := "allkeys.txt";

   type All_Keys_Parser is
     new Unicode_Data_File_Parsers.Unicode_Data_File_Parser with null record;

   overriding procedure Data
    (Self  : in out All_Keys_Parser;
     Data  : Unicode_Data_File_Parsers.String_Vectors.Vector);

   function Parse_Collation_Element_Sequence (Text : String)
     return Collation_Element_Sequence;

   ----------
   -- Data --
   ----------

   overriding procedure Data
    (Self  : in out All_Keys_Parser;
     Data  : Unicode_Data_File_Parsers.String_Vectors.Vector)
   is
      Codes    : constant Code_Point_Sequence
        := Parse_Code_Point_Sequence (Data.Element (1));
      Elements : constant Collation_Element_Sequence
        := Parse_Collation_Element_Sequence (Data.Element (2));
      Code     : constant Code_Point := Codes (1);
      Aux      : Contraction_Data_Array_Access := Colls (Code).Contraction;

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Contraction_Data_Array, Contraction_Data_Array_Access);

   begin
      if Codes'Length = 1 then
         Colls (Code).Expansion := new Collation_Element_Sequence'(Elements);

      else
         if Colls (Code).Contraction = null then
            Colls (Code).Contraction :=
              new Contraction_Data_Array'
                   (1 => (new Code_Point_Sequence'
                               (Codes (Codes'First + 1 .. Codes'Last)),
                          new Collation_Element_Sequence'(Elements)));

         else
            Colls (Code).Contraction :=
              new Contraction_Data_Array'
                   (Aux.all
                      & Contraction_Data'
                         (new Code_Point_Sequence'
                               (Codes (Codes'First + 1 .. Codes'Last)),
                          new Collation_Element_Sequence'(Elements)));
            Free (Aux);
         end if;
      end if;
   end Data;

   ----------
   -- Load --
   ----------

   procedure Load (Uca_Directory : String) is
   begin
      --  Initialize data structures.

      Ada.Text_IO.Put_Line ("Initializing UCA ...");

      Colls := new Collation_Data'(others => (null, null));

      --  Loading UCA data.

      Ada.Text_IO.Put_Line ("Loading UCA (" & Uca_Directory & ") ...");

      declare
         Parser : All_Keys_Parser;

      begin
         Parser.Open (Uca_Directory & '/' & All_Keys_Name);
         Parser.Parse;
         Parser.Close;
      end;
   end Load;

   --------------------------------------
   -- Parse_Collation_Element_Sequence --
   --------------------------------------

   function Parse_Collation_Element_Sequence (Text : String)
     return Collation_Element_Sequence
   is
      Result  : Collation_Element_Sequence (1 .. Text'Length / 22);
      Last    : Sequence_Count := 0;
      T_First : Positive := Text'First;
      T_Last  : Natural;

   begin
      while T_First < Text'Last loop
         Last := Last + 1;

         T_First := T_First + 1;

         case Text (T_First) is
            when '.' =>
               Result (Last).Kind := Regular;

            when '*' =>
               Result (Last).Kind := Variable;

            when others =>
               raise Program_Error;
         end case;

         T_First := T_First + 1;
         T_Last := T_First;

         while Text (T_Last) in '0' .. '9'
           or else Text (T_Last) in 'A' .. 'F'
         loop
            T_Last := T_Last + 1;
         end loop;

         T_Last := T_Last - 1;

         Result (Last).Primary :=
           Collation_Weight'Value ("16#" & Text (T_First .. T_Last) & "#");

         T_First := T_Last + 2;
         T_Last := T_First;

         while Text (T_Last) in '0' .. '9'
           or else Text (T_Last) in 'A' .. 'F'
         loop
            T_Last := T_Last + 1;
         end loop;

         T_Last := T_Last - 1;

         Result (Last).Secondary :=
           Collation_Weight'Value ("16#" & Text (T_First .. T_Last) & "#");

         T_First := T_Last + 2;
         T_Last := T_First;

         while Text (T_Last) in '0' .. '9'
           or else Text (T_Last) in 'A' .. 'F'
         loop
            T_Last := T_Last + 1;
         end loop;

         T_Last := T_Last - 1;

         Result (Last).Trinary :=
           Collation_Weight'Value ("16#" & Text (T_First .. T_Last) & "#");

         T_First := T_Last + 2;
         T_Last := T_First;

         while Text (T_Last) in '0' .. '9'
           or else Text (T_Last) in 'A' .. 'F'
         loop
            T_Last := T_Last + 1;
         end loop;

         T_First := T_Last + 1;
      end loop;

      return Result (1 .. Last);
   end Parse_Collation_Element_Sequence;

end Uca_Data;
