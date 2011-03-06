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
-- Copyright © 2009-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

   UCS4_Fixup : constant
     := High_Surrogate_First * 16#400# + Low_Surrogate_First - 16#1_0000#;
   --  When code point is encoded as pair of surrogates its value computed as:
   --
   --    C := (S (J) - HB) << 10 + S (J + 1) - LB + 0x10000
   --
   --  to optimize number of computations this expression is transformed to
   --
   --    C := S (J) << 10 + S (J + 1) - (HB << 10 + LB - 0x10000)
   --                                   ^^^^^^^^^^^^^^^^^^^^^^^^^
   --  This constant represents constant part of the expression.

   High_Surrogate_First_Store : constant
     := High_Surrogate_First - 16#1_0000# / 16#400#;
   --  Code point is converted to surrogate pair as:
   --
   --  S (J)     := HB + (C - 0x10000) >> 10
   --  S (J + 1) := LB + (C - 0x10000) & 0x3FF
   --
   --  to optimize implementation they are rewritten as:
   --
   --  S (J + 1) := LB + C & 0x3FF
   --  S (J)     := (HB - 0x10000 >> 10) + C >> 10
   --               ^^^^^^^^^^^^^^^^^^^^
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
     Code     : out Matreshka.Internals.Unicode.Code_Point)
   is
      pragma Assert
       ((Position <= Item'Last
           and then Item (Position)
                      not in High_Surrogate_First .. High_Surrogate_Last)
         or (Position + 1 <= Item'Last
               and then Item (Position)
                          in High_Surrogate_First .. High_Surrogate_Last
               and then Item (Position + 1)
                          in Low_Surrogate_First .. Low_Surrogate_Last));
      pragma Suppress (Index_Check);
      pragma Suppress (Range_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

   begin
      Code := Code_Point (Item (Position));
      Position := Position + 1;

      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         Code :=
           Code * 16#400# + Code_Point (Item (Position)) - UCS4_Fixup;
         Position := Position + 1;
      end if;
   end Unchecked_Next;

   --------------------
   -- Unchecked_Next --
   --------------------

   procedure Unchecked_Next
    (Item     : Unaligned_Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point)
   is
      pragma Assert
       ((Position <= Item'Last
           and then Item (Position)
                      not in High_Surrogate_First .. High_Surrogate_Last)
         or (Position + 1 <= Item'Last
               and then Item (Position)
                          in High_Surrogate_First .. High_Surrogate_Last
               and then Item (Position + 1)
                          in Low_Surrogate_First .. Low_Surrogate_Last));
      pragma Suppress (Index_Check);
      pragma Suppress (Range_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

   begin
      Code := Code_Point (Item (Position));
      Position := Position + 1;

      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         Code :=
           Code * 16#400# + Code_Point (Item (Position)) - UCS4_Fixup;
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
      pragma Assert
       ((Position <= Item'Last
           and then Item (Position)
                      not in High_Surrogate_First .. High_Surrogate_Last)
         or (Position + 1 <= Item'Last
               and then Item (Position)
                          in High_Surrogate_First .. High_Surrogate_Last
               and then Item (Position + 1)
                          in Low_Surrogate_First .. Low_Surrogate_Last));
      pragma Suppress (Index_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

      Code : constant Code_Point := Code_Point (Item (Position));

   begin
      Position := Position + 1;

      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         Position := Position + 1;
      end if;
   end Unchecked_Next;

   ------------------------
   -- Unchecked_Previous --
   ------------------------

   procedure Unchecked_Previous
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point)
   is
      pragma Assert
       ((Position in 1 .. Item'Last + 1
           and then Item (Position - 1)
                      not in Low_Surrogate_First .. Low_Surrogate_Last)
          or (Position in 2 .. Item'Last + 1
                and then Item (Position - 1)
                           in Low_Surrogate_First .. Low_Surrogate_Last
                and then Item (Position - 2)
                           in High_Surrogate_First .. High_Surrogate_Last));
      pragma Suppress (Index_Check);
      pragma Suppress (Range_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

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
      pragma Assert
       ((Position in 1 .. Item'Last + 1
           and then Item (Position - 1)
                      not in Low_Surrogate_First .. Low_Surrogate_Last)
          or (Position in 2 .. Item'Last + 1
                and then Item (Position - 1)
                           in Low_Surrogate_First .. Low_Surrogate_Last
                and then Item (Position - 2)
                           in High_Surrogate_First .. High_Surrogate_Last));
      pragma Suppress (Index_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

      Code : Code_Point;

   begin
      Position := Position - 1;
      Code := Code_Point (Item (Position));

      if (Code and Surrogate_Kind_Mask) = Masked_Low_Surrogate then
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
      pragma Assert
       ((Code <= 16#FFFF# and Position <= Item'Last)
          or (Code > 16#FFFF# and Position + 1 <= Item'Last));
      pragma Suppress (Index_Check);
      pragma Suppress (Range_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

   begin
      if Code <= 16#FFFF# then
         Item (Position) := Utf16_Code_Unit (Code);
         Position := Position + 1;

      else
         Item (Position) :=
           Utf16_Code_Unit (High_Surrogate_First_Store + Code / 16#400#);
         Item (Position + 1) :=
           Utf16_Code_Unit (Low_Surrogate_First + Code mod 16#400#);
         Position := Position + 2;
      end if;
   end Unchecked_Store;

   --------------------------------------------
   -- Unchecked_Surrogate_Pair_To_Code_Point --
   --------------------------------------------

   function Unchecked_Surrogate_Pair_To_Code_Point
    (High : Utf16_Code_Unit;
     Low  : Utf16_Code_Unit) return Matreshka.Internals.Unicode.Code_Point
   is
      pragma Assert (High in High_Surrogate_First .. High_Surrogate_Last);
      pragma Assert (Low in Low_Surrogate_First .. Low_Surrogate_Last);

      pragma Suppress (Range_Check);

   begin
      return Code_Unit_32 (High) * 16#400# + Code_Unit_32 (Low) - UCS4_Fixup;
   end Unchecked_Surrogate_Pair_To_Code_Point;

   -----------------------------
   -- Unchecked_To_Code_Point --
   -----------------------------

   function Unchecked_To_Code_Point
    (Item     : Utf16_String;
     Position : Utf16_String_Index)
       return Matreshka.Internals.Unicode.Code_Point
   is
      pragma Assert
       ((Position <= Item'Last
           and then Item (Position)
                      not in High_Surrogate_First .. High_Surrogate_Last)
         or (Position + 1 <= Item'Last
               and then Item (Position)
                          in High_Surrogate_First .. High_Surrogate_Last
               and then Item (Position + 1)
                          in Low_Surrogate_First .. Low_Surrogate_Last));
      pragma Suppress (Index_Check);
      pragma Suppress (Range_Check);
      --  Assertion checks both range and validity of source data; this check
      --  is stronger then run time checks.

      Code : constant Code_Point := Code_Point (Item (Position));

   begin
      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         return Code * 16#400# + Code_Point (Item (Position + 1)) - UCS4_Fixup;

      else
         return Code;
      end if;
   end Unchecked_To_Code_Point;

   -----------------------------
   -- Unchecked_Validate_Next --
   -----------------------------

   procedure Unchecked_Validate_Next
    (Item     : Utf16_String;
     Position : in out Utf16_String_Index;
     Valid    : out Boolean)
   is
      pragma Assert
       ((Position <= Item'Last
           and then Item (Position)
                      not in High_Surrogate_First .. High_Surrogate_Last)
         or (Position + 1 <= Item'Last
               and then Item (Position)
                          in High_Surrogate_First .. High_Surrogate_Last
               and then Item (Position + 1)
                          in Low_Surrogate_First .. Low_Surrogate_Last));
      pragma Suppress (Index_Check);
      --  Assertion checks range.

   begin
      if (Item (Position) and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         if (Item (Position + 1) and Surrogate_Kind_Mask)
               = Masked_Low_Surrogate
         then
            Valid    := True;
            Position := Position + 2;

         else
            Valid := False;
         end if;

      else
         Valid    := True;
         Position := Position + 1;
      end if;
   end Unchecked_Validate_Next;

   -----------------------------
   -- Unchecked_Validate_Next --
   -----------------------------

   procedure Unchecked_Validate_Next
    (Item     : Unaligned_Utf16_String;
     Position : in out Utf16_String_Index;
     Code     : out Matreshka.Internals.Unicode.Code_Point;
     Valid    : out Boolean)
   is
      pragma Assert
       ((Position <= Item'Last
           and then Item (Position)
                      not in High_Surrogate_First .. High_Surrogate_Last)
         or (Position + 1 <= Item'Last
               and then Item (Position)
                          in High_Surrogate_First .. High_Surrogate_Last
               and then Item (Position + 1)
                          in Low_Surrogate_First .. Low_Surrogate_Last));
      pragma Suppress (Index_Check);
      --  Assertion checks range.

   begin
      Code := Code_Point (Item (Position));

      if (Code and Surrogate_Kind_Mask) = Masked_High_Surrogate then
         if (Item (Position + 1) and Surrogate_Kind_Mask)
               = Masked_Low_Surrogate
         then
            Code     :=
              Code * 16#400# + Code_Point (Item (Position + 1)) - UCS4_Fixup;
            Valid    := True;
            Position := Position + 2;

         else
            Valid := False;
         end if;

      else
         Valid    := True;
         Position := Position + 1;
      end if;
   end Unchecked_Validate_Next;

end Matreshka.Internals.Utf16;
