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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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

with Ada.Containers.Generic_Array_Sort;
with Ada.Unchecked_Deallocation;
with League.Characters.Internals;
with Matreshka.Internals.Unicode;

package body Matreshka.Internals.Code_Point_Sets is

   function Max_Result_Last (Left, Right : Shared_Code_Point_Set)
     return Second_Stage_Array_Index;
   pragma Inline (Max_Result_Last);

   generic
      with function Operator
        (Left, Right : Boolean_Second_Stage)
        return Boolean_Second_Stage;
   function Apply_Binary_Operator
     (Left, Right : Shared_Code_Point_Set)
      return Shared_Code_Point_Set;

   ---------------------------
   -- Apply_Binary_Operator --
   ---------------------------

   function Apply_Binary_Operator
     (Left, Right : Shared_Code_Point_Set)
      return Shared_Code_Point_Set
   is
      Last          : Second_Stage_Array_Index := 0;
      First_Stage   : First_Stage_Map;
      Second_Stages : Boolean_Second_Stage_Array
        (0 .. Max_Result_Last (Left, Right));

      Set : array (Left.Second_Stages'Range, Right.Second_Stages'Range)
        of Boolean := (others => (others => False));

      Map : array (Left.Second_Stages'Range, Right.Second_Stages'Range)
        of Second_Stage_Array_Index;
   begin
      for J in First_Stage'Range loop
         if not Set (Left.First_Stage (J), Right.First_Stage (J)) then
            Set (Left.First_Stage (J), Right.First_Stage (J)) := True;
            Map (Left.First_Stage (J), Right.First_Stage (J)) := Last;

            Second_Stages (Last) := Operator
              (Left.Second_Stages (Left.First_Stage (J)),
               Right.Second_Stages (Right.First_Stage (J)));

            Last := Last + 1;
         end if;

         First_Stage (J) := Map (Left.First_Stage (J), Right.First_Stage (J));
      end loop;

      Last := Last - 1;

      return
        (Last => Last,
         Counter => <>,
         First_Stage => First_Stage,
         Second_Stages => Second_Stages (0 .. Last));
   end Apply_Binary_Operator;

   function Apply_And is new Apply_Binary_Operator ("and");
   function Apply_Or is new Apply_Binary_Operator ("or");
   function Apply_Xor is new Apply_Binary_Operator ("xor");

   function Minus
     (Left, Right : Boolean_Second_Stage)
     return Boolean_Second_Stage;

   function Apply_Minus is new Apply_Binary_Operator (Minus);

   ---------
   -- "-" --
   ---------

   function "-"
     (Left, Right : Shared_Code_Point_Set)
     return Shared_Code_Point_Set renames Apply_Minus;

   ---------
   -- "=" --
   ---------

   function "=" (Left, Right : Shared_Code_Point_Set) return Boolean is
   begin
      for J in Left.First_Stage'Range loop
         if Left.Second_Stages (Left.First_Stage (J)) /=
           Right.Second_Stages (Right.First_Stage (J))
         then
            return False;
         end if;
      end loop;

      return True;
   end "=";

   -----------
   -- "and" --
   -----------

   function "and"
     (Left, Right : Shared_Code_Point_Set)
     return Shared_Code_Point_Set renames Apply_And;

   -----------
   -- "not" --
   -----------

   function "not"
     (Right : Shared_Code_Point_Set)
      return Shared_Code_Point_Set is
   begin
      return Result : Shared_Code_Point_Set :=
        (Last => Right.Last,
         Counter => <>,
         First_Stage => Right.First_Stage,
         Second_Stages => <>)
      do
         for J in Right.Second_Stages'Range loop
            Result.Second_Stages (J) := not Right.Second_Stages (J);
         end loop;
      end return;
   end "not";

   ----------
   -- "or" --
   ----------

   function "or"
     (Left, Right : Shared_Code_Point_Set)
     return Shared_Code_Point_Set renames Apply_Or;

   -----------
   -- "xor" --
   -----------

   function "xor"
     (Left, Right : Shared_Code_Point_Set)
     return Shared_Code_Point_Set renames Apply_Xor;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_Code_Point_Set_Access) is
      procedure Free is
         new Ada.Unchecked_Deallocation
           (Shared_Code_Point_Set, Shared_Code_Point_Set_Access);

      pragma Assert (Self /= null);
      pragma Suppress (Access_Check);

   begin
      if Self /= Shared_Empty_Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
                  (Self.Counter'Access)
      then
         Free (Self);
      end if;

      Self := null;
   end Dereference;

   ---------
   -- Has --
   ---------

   function Has
     (Set     : Shared_Code_Point_Set;
      Element : League.Characters.Universal_Character)
      return Boolean
   is
      use Matreshka.Internals.Unicode;

      First  : First_Stage_Index;
      Second : Second_Stage_Index;
      Code   : constant Code_Unit_32 :=
        League.Characters.Internals.Internal (Element);
   begin
      if Is_Valid (Code) then
         First := First_Stage_Index (Code / Second_Stage_Index'Modulus);
         Second := Second_Stage_Index (Code mod Second_Stage_Index'Modulus);

         return Set.Second_Stages (Set.First_Stage (First)) (Second);
      else
         return False;
      end if;
   end Has;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Set : Shared_Code_Point_Set) return Boolean is
   begin
      for J in Set.Second_Stages'Range loop
         if Set.Second_Stages (J) /= (Second_Stage_Index => False) then
            return False;
         end if;
      end loop;

      return True;
   end Is_Empty;

   ---------------
   -- Is_Subset --
   ---------------

   function Is_Subset
     (Elements : Shared_Code_Point_Set;
      Set      : Shared_Code_Point_Set)
      return Boolean is
   begin
      return Is_Empty (Elements - Set);
   end Is_Subset;

   ---------------------
   -- Max_Result_Last --
   ---------------------

   function Max_Result_Last
     (Left, Right : Shared_Code_Point_Set)
     return Second_Stage_Array_Index
   is
      Left_Size  : constant Positive := Natural (Left.Last) + 1;
      Right_Size : constant Positive := Natural (Right.Last) + 1;
      Max_Size   : constant Positive :=
        Positive'Min (Left_Size * Right_Size, First_Stage_Index'Modulus);
   begin
      return Second_Stage_Array_Index (Max_Size - 1);
   end Max_Result_Last;

   -----------
   -- Minus --
   -----------

   function Minus
     (Left, Right : Boolean_Second_Stage)
     return Boolean_Second_Stage is
   begin
      return Left and not Right;
   end Minus;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Shared_Code_Point_Set_Access) is
   begin
      if Self /= Shared_Empty_Access then
         Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
      end if;
   end Reference;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Sequence : Wide_Wide_String)
      return Shared_Code_Point_Set
   is
      use type First_Stage_Index;

      function To_First_Index
        (X : Wide_Wide_Character)
        return First_Stage_Index;

      function To_Second_Index
        (X : Wide_Wide_Character)
        return Second_Stage_Index;

      procedure Sort is new Ada.Containers.Generic_Array_Sort
        (Index_Type   => Positive,
         Element_Type => Wide_Wide_Character,
         Array_Type   => Wide_Wide_String);

      --------------------
      -- To_First_Index --
      --------------------

      function To_First_Index
        (X : Wide_Wide_Character)
        return First_Stage_Index
      is
         Pos : constant Natural := Wide_Wide_Character'Pos (X);
      begin
         return First_Stage_Index (Pos / Second_Stage_Index'Modulus);
      end To_First_Index;

      ---------------------
      -- To_Second_Index --
      ---------------------

      function To_Second_Index
        (X : Wide_Wide_Character)
        return Second_Stage_Index
      is
         Pos : constant Natural := Wide_Wide_Character'Pos (X);
      begin
         return Second_Stage_Index (Pos mod Second_Stage_Index'Modulus);
      end To_Second_Index;

      Last    : Second_Stage_Array_Index := 1;
      Code    : First_Stage_Index;
      Ordered : Wide_Wide_String := Sequence;
   begin
      if Ordered'Length = 0 then
         return (Last          => 0,
                 Counter       => <>,
                 First_Stage   => (others => 0),
                 Second_Stages => (others => (others => False)));
      end if;

      Sort (Ordered);

      Code := To_First_Index (Ordered (Ordered'First));

      for J in Ordered'Range loop
         if Code /= To_First_Index (Ordered (J)) then
            Code := To_First_Index (Ordered (J));
            Last := Last + 1;
         end if;
      end loop;

      return Result : Shared_Code_Point_Set :=
        (Last          => Last,
         Counter       => <>,
         First_Stage   => (others => 0),
         Second_Stages => (others => (others => False)))
      do
         Code := To_First_Index (Ordered (Ordered'First));
         Last := 1;
         Result.First_Stage (Code) := Last;

         for J in Ordered'Range loop
            if Code /= To_First_Index (Ordered (J)) then
               Code := To_First_Index (Ordered (J));
               Last := Last + 1;
               Result.First_Stage (Code) := Last;
            end if;

            Result.Second_Stages (Last) (To_Second_Index (Ordered (J))) :=
              True;
         end loop;
      end return;
   end To_Set;

end Matreshka.Internals.Code_Point_Sets;
