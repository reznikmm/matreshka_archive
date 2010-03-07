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
-- Copyright © 2009, 2010 Vadim Godunko <vgodunko@gmail.com>                --
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
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

package body Matreshka.Internals.Utf16 is

   use Matreshka.Internals.Unicode;

   Utf16_Fixup : constant
     array (Utf16_Code_Unit range 0 .. 31) of Utf16_Code_Unit :=
      (0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 16#2000#, 16#F800#, 16#F800#, 16#F800#, 16#F800#);
   --  Fixups for change order of Utf16 code units to compare in Unicode code
   --  point order.

   Surrogate_Kind_Mask   : constant := 16#FC00#;
   Masked_High_Surrogate : constant := 16#D800#;
   Masked_Low_Surrogate  : constant := 16#DC00#;
   --  Mask to fast detection of surrogates and masked values for high and low
   --  surrogates.

   UCS4_Fixup : constant :=
     High_Surrogate_First * 16#400# + Low_Surrogate_First - 16#1_0000#;
   --  When code point is encoded as pair of surrogates its value computed as:
   --
   --    C := (S (J) - HB) << 10 + S (J + 1) - LB + 0x10000
   --
   --  to optimize number of computations this expression is transformed to
   --
   --    C := S (J) << 10 + S (J + 1) - (HB << 10 + LB - 0x10000)
   --
   --  This constant represents constant part of the expression.

   ----------------
   -- Is_Greater --
   ----------------

   function Is_Greater
    (Left : Code_Unit_16; Right : Code_Unit_16) return Boolean is
   begin
      return
        Left + Utf16_Fixup (Left / 16#800#)
          > Right + Utf16_Fixup (Right / 16#800#);
   end Is_Greater;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
    (Left : Code_Unit_16; Right : Code_Unit_16) return Boolean is
   begin
      return
        Left + Utf16_Fixup (Left / 16#800#)
          < Right + Utf16_Fixup (Right / 16#800#);
   end Is_Less;

   --------------------
   -- Unchecked_Next --
   --------------------

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point) is
   begin
      Code := Code_Point (Item (Position));

      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         Code :=
           Code * 16#400# + Code_Point (Item (Position + 1)) - UCS4_Fixup;
         Position := Position + 2;

      else
         Position := Position + 1;
      end if;
   end Unchecked_Next;

   --------------------
   -- Unchecked_Next --
   --------------------

   procedure Unchecked_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index)
   is
      Code : constant Code_Point := Code_Point (Item (Position));

   begin
      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         Position := Position + 2;

      else
         Position := Position + 1;
      end if;
   end Unchecked_Next;

   ------------------------
   -- Unchecked_Previous --
   ------------------------

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point) is
   begin
      Position := Position - 1;
      Code := Code_Point (Item (Position));

      if (Code and Surrogate_Kind_Mask) = Masked_Low_Surrogate then
         Position := Position - 1;
         Code := Code_Point (Item (Position)) * 16#400# + Code - UCS4_Fixup;
      end if;
   end Unchecked_Previous;

   ------------------------
   -- Unchecked_Previous --
   ------------------------

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index)
   is
      Code : constant Code_Point := Code_Point (Item (Position));

   begin
      if (Code and Surrogate_Kind_Mask) = Masked_Low_Surrogate then
         Position := Position - 2;

      else
         Position := Position - 1;
      end if;
   end Unchecked_Previous;

   ---------------------
   -- Unchecked_Store --
   ---------------------

   procedure Unchecked_Store
    (Item     : in out Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : Code_Point)
   is
      X : Code_Point;

   begin
      if Code <= 16#FFFF# then
         Item (Position) := Utf16_Code_Unit (Code);
         Position := Position + 1;

      else
         X := Code - 16#1_0000#;

         Item (Position) :=
           Utf16_Code_Unit (High_Surrogate_First + X / 16#400#);
         Item (Position + 1) :=
           Utf16_Code_Unit (Low_Surrogate_First + X mod 16#400#);
         Position := Position + 2;
      end if;
   end Unchecked_Store;

   -----------------------------
   -- Unchecked_To_Code_Point --
   -----------------------------

   function Unchecked_To_Code_Point
    (Item     : Utf16_String;
     Position : Utf16_String_Index)
       return Matreshka.Internals.Unicode.Code_Point
   is
      Code : constant Code_Point := Code_Point (Item (Position));

   begin
      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         return Code * 16#400# + Code_Point (Item (Position + 1)) - UCS4_Fixup;

      else
         return Code;
      end if;
   end Unchecked_To_Code_Point;

end Matreshka.Internals.Utf16;
