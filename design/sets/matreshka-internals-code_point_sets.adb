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
--  $Revision$
------------------------------------------------------------------------------

package body Matreshka.Internals.Code_Point_Sets is

   ---------
   -- "-" --
   ---------

   function "-"
     (Left, Right : Shared_Code_Point_Set)
      return Shared_Code_Point_Set
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (True, """-"" unimplemented");
      raise Program_Error with "Unimplemented function ""-""";
      return "-" (Left, Right);
   end "-";

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
      return Shared_Code_Point_Set
   is
      Left_Size  : constant Positive := Natural (Left.Last) + 1;
      Right_Size : constant Positive := Natural (Right.Last) + 1;
      Max_Size   : constant Positive :=
        Positive'Min (Left_Size * Right_Size, First_Stage_Index'Modulus);

      Set : array (Left.Second_Stages'Range, Right.Second_Stages'Range)
        of Boolean := (others => (others => False));

      Map : array (Left.Second_Stages'Range, Right.Second_Stages'Range)
        of Second_Stage_Array_Index;

      Last          : Second_Stage_Array_Index := 0;
      First_Stage   : First_Stage_Map;
      Second_Stages : Boolean_Second_Stage_Array
        (0 .. Second_Stage_Array_Index (Max_Size - 1));
   begin
      for J in First_Stage'Range loop
         if not Set (Left.First_Stage (J), Right.First_Stage (J)) then
            Set (Left.First_Stage (J), Right.First_Stage (J)) := True;
            Map (Left.First_Stage (J), Right.First_Stage (J)) := Last;
            Second_Stages (Last) :=
              Left.Second_Stages (Left.First_Stage (J))
              and
              Right.Second_Stages (Right.First_Stage (J));
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
   end "and";

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
      return Shared_Code_Point_Set
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (True, """or"" unimplemented");
      raise Program_Error with "Unimplemented function ""or""";
      return "or" (Left, Right);
   end "or";

   -----------
   -- "xor" --
   -----------

   function "xor"
     (Left, Right : Shared_Code_Point_Set)
      return Shared_Code_Point_Set
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (True, """xor"" unimplemented");
      raise Program_Error with "Unimplemented function ""xor""";
      return "xor" (Left, Right);
   end "xor";

   ---------
   -- Has --
   ---------

   function Has
     (Set     : Shared_Code_Point_Set;
      Element : League.Characters.Universal_Character)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (True, "Has unimplemented");
      raise Program_Error with "Unimplemented function Has";
      return Has (Set, Element);
   end Has;

   ---------------
   -- Is_Subset --
   ---------------

   function Is_Subset
     (Elements : Shared_Code_Point_Set;
      Set      : Shared_Code_Point_Set)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (True, "Is_Subset unimplemented");
      raise Program_Error with "Unimplemented function Is_Subset";
      return Is_Subset (Elements, Set);
   end Is_Subset;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Sequence : Wide_Wide_String)
      return Shared_Code_Point_Set
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (True, "To_Set unimplemented");
      raise Program_Error with "Unimplemented function To_Set";
      return To_Set (Sequence);
   end To_Set;

end Matreshka.Internals.Code_Point_Sets;
