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

with Matreshka.Internals.Unicode;

package body League.Character_Sets is

   use Matreshka.Internals.Code_Point_Sets;

   function Wrap
     (Self : Shared_Code_Point_Set_Access)
     return Universal_Character_Set;

   ---------
   -- "-" --
   ---------

   function "-"
     (Left, Right : Universal_Character_Set)
      return Universal_Character_Set is
   begin
      return Wrap (new Shared_Code_Point_Set'(Left.Data.all - Right.Data.all));
   end "-";

   ---------
   -- "=" --
   ---------

   function "=" (Left, Right : Universal_Character_Set) return Boolean is
   begin
      return Left.Data.all = Right.Data.all;
   end "=";

   -----------
   -- "and" --
   -----------

   function "and"
     (Left, Right : Universal_Character_Set)
      return Universal_Character_Set is
   begin
      return Wrap
        (new Shared_Code_Point_Set'(Left.Data.all and Right.Data.all));
   end "and";

   -----------
   -- "not" --
   -----------

   function "not"
     (Right : Universal_Character_Set)
      return Universal_Character_Set
   is
   begin
      return Wrap (new Shared_Code_Point_Set'(not Right.Data.all));
   end "not";

   ----------
   -- "or" --
   ----------

   function "or"
     (Left, Right : Universal_Character_Set)
      return Universal_Character_Set is
   begin
      return Wrap
        (new Shared_Code_Point_Set'(Left.Data.all or Right.Data.all));
   end "or";

   -----------
   -- "xor" --
   -----------

   function "xor"
     (Left, Right : Universal_Character_Set)
      return Universal_Character_Set is
   begin
      return Wrap
        (new Shared_Code_Point_Set'(Left.Data.all xor Right.Data.all));
   end "xor";

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_Character_Set) is
   begin
      Reference (Self.Data);
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_Character_Set) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   ---------
   -- Has --
   ---------

   function Has
     (Set     : Universal_Character_Set;
      Element : Wide_Wide_Character)
      return Boolean
   is
   begin
      return Has (Set, League.Characters.To_Universal_Character (Element));
   end Has;

   ---------
   -- Has --
   ---------

   function Has
     (Set     : Universal_Character_Set;
      Element : League.Characters.Universal_Character)
      return Boolean
   is
   begin
      return Has (Set.Data.all, Element);
   end Has;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Set : Universal_Character_Set) return Boolean is
   begin
      return Is_Empty (Set.Data.all);
   end Is_Empty;

   ---------------
   -- Is_Subset --
   ---------------

   function Is_Subset
     (Elements : Universal_Character_Set;
      Set      : Universal_Character_Set)
      return Boolean is
   begin
      return Is_Subset (Elements.Data.all, Set.Data.all);
   end Is_Subset;

   ----------
   -- Read --
   ----------

   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : out Universal_Character_Set)
   is
      Last : Second_Stage_Array_Index;
   begin
      Second_Stage_Array_Index'Read (Stream, Last);

      Dereference (Item.Data);

      Item.Data := new Shared_Code_Point_Set (Last);

      First_Stage_Map'Read (Stream, Item.Data.First_Stage);
      Second_Stage_Array'Read (Stream, Item.Data.Second_Stages);
   end Read;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Sequence : Wide_Wide_String)
      return Universal_Character_Set is
   begin
      return Wrap (new Shared_Code_Point_Set'(To_Set (Sequence)));
   end To_Set;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Sequence : League.Strings.Universal_String)
      return Universal_Character_Set is
   begin
      return To_Set (League.Strings.To_Wide_Wide_String (Sequence));
   end To_Set;

   ------------
   -- To_Set --
   ------------

   function To_Set
     (Low, High : Wide_Wide_Character)
     return Universal_Character_Set
   is
      use Matreshka.Internals.Unicode;

      Lo : constant Code_Unit_32 := Wide_Wide_Character'Pos (Low);
      Hi : constant Code_Unit_32 := Wide_Wide_Character'Pos (High);
   begin
      if Is_Valid (Lo) or Is_Valid (Hi) then
         return Wrap (new Shared_Code_Point_Set'(To_Set (Lo, Hi)));
      else
         raise Constraint_Error;
      end if;
   end To_Set;

   ----------
   -- Wrap --
   ----------

   function Wrap
     (Self : Shared_Code_Point_Set_Access)
     return Universal_Character_Set is
   begin
      return Universal_Character_Set'
        (Ada.Finalization.Controlled with Data => Self);
   end Wrap;

   -----------
   -- Write --
   -----------

   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Item   : Universal_Character_Set)
   is
   begin
      Second_Stage_Array_Index'Write (Stream, Item.Data.Last);
      First_Stage_Map'Write (Stream, Item.Data.First_Stage);
      Second_Stage_Array'Write (Stream, Item.Data.Second_Stages);
   end Write;

end League.Character_Sets;
