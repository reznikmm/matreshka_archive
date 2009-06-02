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

package body Matreshka.Strings.Iterators.Characters is

   -------------
   -- Element --
   -------------

   function Element (Self : Character_Iterator'Class)
     return Wide_Wide_Character
   is
      D : constant String_Private_Data_Access := Self.Data;

   begin
      if D = null then
         raise Program_Error with "Invalid iterator";
      end if;

      if Self.Current not in D.Value'First .. D.Last then
         raise Constraint_Error with "Iterator out of range";
      end if;

      if D.Value (Self.Current) in High_Surrogate_Wide_Character then
         return
           Unchecked_To_Wide_Wide_Character
            (D.Value (Self.Current),
             D.Value (Self.Current + 1));

      else
         return
           Wide_Wide_Character'Val
            (Wide_Character'Pos (D.Value (Self.Current)));
      end if;
   end Element;

   -----------
   -- First --
   -----------

   procedure First
    (Self : in out Character_Iterator'Class;
     Item : in out Universal_String)
   is
      Aux : String_Private_Data_Access;

   begin
      Dereference (Self.Data, True);

      --  Reference counter equal to one when internal data is not share. By
      --  the convention, if volatile counter is not zero internal data is not
      --  shared also. In all other cases internal data is shared, and
      --  exclusive copy of data must be created.

      if not Matreshka.Internals.Atomics.Counters.Is_One
              (Item.Data.Counter'Access)
        and then Matreshka.Internals.Atomics.Counters.Is_Zero
                  (Item.Data.Volatile'Access)
      then
         Aux := Copy (Item.Data);
         Dereference (Item.Data, False);
         Item.Data := Aux;
      end if;

      Self.Data := Item.Data;
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Volatile'Access);

      Self.Current := Self.Data.Value'First;
   end First;

   -----------------
   -- Has_Element --
   -----------------

   function Has_Element (Self : Character_Iterator'Class) return Boolean is
      D : constant String_Private_Data_Access := Self.Data;

   begin
      if D = null then
         raise Program_Error with "Invalid iterator";
      end if;

      return Self.Current in D.Value'First .. D.Last;
   end Has_Element;

   ----------
   -- Last --
   ----------

   procedure Last
    (Self : in out Character_Iterator'Class;
     Item : in out Universal_String)
   is
      Aux : String_Private_Data_Access;

   begin
      Dereference (Self.Data, True);

      --  Reference counter equal to one when internal data is not share. By
      --  the convention, if volatile counter is not zero internal data is not
      --  shared also. In all other cases internal data is shared, and
      --  exclusive copy of data must be created.

      if not Matreshka.Internals.Atomics.Counters.Is_One
              (Item.Data.Counter'Access)
        and then Matreshka.Internals.Atomics.Counters.Is_Zero
                  (Item.Data.Volatile'Access)
      then
         Aux := Copy (Item.Data);
         Dereference (Item.Data, False);
         Item.Data := Aux;
      end if;

      Self.Data := Item.Data;
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Volatile'Access);

      Self.Current := Self.Data.Last;

      if Self.Data.Value (Self.Current) in Low_Surrogate_Wide_Character then
         Self.Current := Self.Current - 1;
         --  Move one step backward if last character is low surrogate
         --  character, thus move to first character of surrogate pair.
         
      end if;
   end Last;

   ----------
   -- Next --
   ----------

   procedure Next (Self : in out Character_Iterator'Class) is
      D : constant String_Private_Data_Access := Self.Data;

   begin
      if D = null then
         raise Program_Error with "Invalid iterator";
      end if;

      if Self.Current in D.Value'First .. D.Last then
         --  If character in the current position is high surrogate character
         --  when skip next character, because it is low surrogare character
         --  in the surrogate pair.

         if D.Value (Self.Current) in High_Surrogate_Wide_Character then
            Self.Current := Self.Current + 2;

         else
            Self.Current := Self.Current + 1;
         end if;

      elsif Self.Current = D.Value'First - 1 then
         Self.Current := Self.Current + 1;
      end if;
   end Next;

   --------------
   -- Previous --
   --------------

   procedure Previous (Self : in out Character_Iterator'Class) is
      D : constant String_Private_Data_Access := Self.Data;

   begin
      if D = null then
         raise Program_Error with "Invalid iterator";
      end if;

      if Self.Current in D.Value'First .. D.Last + 1 then
         Self.Current := Self.Current - 1;

         --  Move one step backward if current character is low surrogate
         --  character, thus move to first character of surrogate pair.

         if Self.Current >= D.Value'First
           and then D.Value (Self.Current) in Low_Surrogate_Wide_Character
         then
            Self.Current := Self.Current - 1;
         end if;
      end if;
   end Previous;

end Matreshka.Strings.Iterators.Characters;
