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
private with Ada.Finalization;
private with Ada.Streams;

private with Matreshka.Internals.Atomics.Counters;
private with Matreshka.Internals.String_Types;

package Matreshka.Strings is

   pragma Preelaborate;
   pragma Remote_Types;

   type Universal_String is tagged private;

   function To_Universal_String (Item : Wide_Wide_String)
     return Universal_String;

   function To_Wide_Wide_String (Self : Universal_String'Class)
     return Wide_Wide_String;

   function Length (Self : Universal_String'Class) return Natural;

   function Element
    (Self  : Universal_String'Class;
     Index : Positive)
       return Wide_Wide_Character;
   --  XXX Universal_Character ???

   function "&"
    (Left  : Universal_String;
     Right : Universal_String)
       return Universal_String;

private

   Surrogate_First      : constant := 16#D800#;
   High_Surrogate_First : constant := 16#D800#;
   High_Surrogate_Last  : constant := 16#DBFF#;
   Low_Surrogate_First  : constant := 16#DC00#;
   Low_Surrogate_Last   : constant := 16#DFFF#;
   Surrogate_Last       : constant := 16#DFFF#;

   subtype Surrogate_Wide_Character is Wide_Character
     range Wide_Character'Val (Surrogate_First)
             .. Wide_Character'Val (Surrogate_Last);

   subtype High_Surrogate_Wide_Character is Surrogate_Wide_Character
     range Wide_Character'Val (High_Surrogate_First)
             .. Wide_Character'Val (High_Surrogate_Last);

   subtype Low_Surrogate_Wide_Character is Surrogate_Wide_Character
     range Wide_Character'Val (Low_Surrogate_First)
             .. Wide_Character'Val (Low_Surrogate_Last);

   subtype Surrogate_Wide_Wide_Character is Wide_Wide_Character
     range Wide_Wide_Character'Val (Surrogate_First)
             .. Wide_Wide_Character'Val (Surrogate_Last);

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String);

   type Utf16_String_Access is
     access all Matreshka.Internals.String_Types.Utf16_String;

   type Index_Modes is
    (Undefined,     --  Index mode is undefined.
     Single_Units,  --  All characters a BPM characters, thus represented as
                    --  one 16-bit code unit.
     Double_Units,  --  All characters is outside of BMP, thus represented as
                    --  surrogate pair (two 16-bit code units).
     Mixed_Units);  --  String has both BMP and non-BMP characters, thus index
                    --  table is used for direct access to string's characters.

   type Positive_Array is array (Positive range <>) of Positive;

   type Index_Map (Length : Natural) is record
      Map : Positive_Array (1 .. Length);
   end record;
   --  GNAT: GNAT uses fat pointers for arrays, thus makes impossible to define
   --  atomic compare-and-swap operations for access-to-unconstrained-array
   --  type.

   type Index_Map_Access is access all Index_Map;

   type String_Private_Data is limited record
      Counter    : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

      Volatile   : aliased Matreshka.Internals.Atomics.Counters.Counter
        := Matreshka.Internals.Atomics.Counters.Zero;
      --  Atomic volatile counter. It equals to zero when there are no external
      --  references to the data which can be used to change the data. It is
      --  used to track access from iterators for now. If value is greater
      --  when zero when implicit sharing is not used.

      Value      : not null Utf16_String_Access;
      --  String data. Internal data always has well-formed UTF-16 encoded
      --  sequence of valid Unicode code points. Validity checks proceed only
      --  for potentially invalid user specified data, and never proceed for
      --  the internal data.

      Last       : Natural := 0;
      --  Last used element in the Value array.

      Length     : Natural := 0;
      --  Precomputed length of the string in Unicode code points.

      Index_Mode : Index_Modes := Undefined;
      --  String's characters indexing mode for direct access by the
      --  character's index.

      Index_Map  : aliased Index_Map_Access := null;
      pragma Atomic (Index_Map);
      --  Mapping of the string's characters index to position inside internal
      --  buffer. Used only if string has both BMP and non-BMP characters.
      --  Is built on-demand.
   end record;

   type String_Private_Data_Access is access all String_Private_Data;

   function Copy (Source : not null String_Private_Data_Access)
     return not null String_Private_Data_Access;
   --  Creates copy of string data.

   procedure Dereference
    (Self     : in out String_Private_Data_Access;
     Volatile : Boolean);
   --  Decrement reference counter and free resources if it reach zero value.
   --  If Volatile is True when also decrement volatile reference counter.

   type Universal_String is new Ada.Finalization.Controlled with record
      Data : String_Private_Data_Access;
   end record;

   for Universal_String'Read use Read;
   for Universal_String'Write use Write;

   overriding procedure Initialize (Self : in out Universal_String);

   overriding procedure Adjust (Self : in out Universal_String);

   overriding procedure Finalize (Self : in out Universal_String);

   function Unchecked_To_Wide_Wide_Character
    (High : Wide_Character;
     Low  : Wide_Character)
       return Wide_Wide_Character;
   pragma Inline (Unchecked_To_Wide_Wide_Character);
   --  Convert valid surrogate pair into the Wide_Wide_Character.

end Matreshka.Strings;
