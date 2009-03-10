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
with Ada.Unchecked_Deallocation;

package body Matreshka.Strings is

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Matreshka.Internals.String_Types.Utf16_String, Utf16_String_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (String_Private_Data, String_Private_Data_Access);

   procedure Dereference (Self : in out String_Private_Data_Access);
   --  Decrement reference counter and free resources if it reach zero value.

   Empty_String : aliased Matreshka.Internals.String_Types.Utf16_String := "";

   Shared_Empty : aliased String_Private_Data
     := (Value => Empty_String'Access, others => <>);

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
   end Adjust;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out String_Private_Data_Access) is
   begin
      if Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         pragma Assert (Self /= Shared_Empty'Access);

         Free (Self.Value);
         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_String) is
   begin
      Dereference (Self.Data);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out Universal_String) is
   begin
      Self.Data := Shared_Empty'Access;
      Matreshka.Internals.Atomics.Counters.Increment
       (Self.Data.Counter'Access);
   end Initialize;

   ----------
   -- Read --
   ----------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String)
   is
      Value : constant Matreshka.Internals.String_Types.Utf16_String
        := Matreshka.Internals.String_Types.Utf16_String'Input (Stream);

   begin
      --  XXX Value validation must be done before any other operations.

      Dereference (Item.Data);

      Item.Data :=
        new String_Private_Data'
             (Value  =>
                new Matreshka.Internals.String_Types.Utf16_String'(Value),
              others => <>);
   end Read;

   -----------
   -- Write --
   -----------

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String)
   is
   begin
      Matreshka.Internals.String_Types.Utf16_String'Output
       (Stream, Item.Data.Value.all);
   end Write;

end Matreshka.Strings;
