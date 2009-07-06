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
--  This package provides abstractions for Unicode characters (code points)
--  and strings (sequences of Unicode code points). All operations in this
--  package and its children packages depends from the current or explicitly
--  specified locale.
--
--  The primary purpose of Unicode_Character type is provide the gateway to
--  Unicode Character Database.
--
--  The Unicode_String type provides unbounded strings of Unicode characters.
--  It utilizes implicit sharing technology (also known as copy-on-write), so
--  copy operations has constant execution time.
--
--  Cursors child package and its children provides different kinds of
--  iterators - character, grapheme cluster, word, sentence, line breaks.
--  See these packages for detailed information.
------------------------------------------------------------------------------
private with Ada.Finalization;
private with Ada.Streams;

private with Matreshka.Internals.Atomics.Counters;
private with Matreshka.Internals.Unicode;
private with Matreshka.Internals.Utf16;

package Matreshka.Strings is

   pragma Preelaborate;
   pragma Remote_Types;

   type Universal_Character is tagged private;

   type Universal_String is tagged private;

   -------------------------
   -- Universal_Character --
   -------------------------

   function To_Wide_Wide_Character
    (Self : Universal_Character)
       return Wide_Wide_Character;

   function To_Universal_Character
    (Self : Wide_Wide_Character)
       return Universal_Character;

   ----------------------
   -- Universal_String --
   ----------------------

   function To_Universal_String (Item : Wide_Wide_String)
     return Universal_String;

   function To_Wide_Wide_String (Self : Universal_String'Class)
     return Wide_Wide_String;

   function Length (Self : Universal_String'Class) return Natural;

   function Element
    (Self  : Universal_String'Class;
     Index : Positive)
       return Universal_Character;

   function Element
    (Self  : Universal_String'Class;
     Index : Positive)
       return Wide_Wide_Character;

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_Character'Class)
       return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Wide_Wide_Character)
       return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_String'Class)
       return Universal_String;

private

   -------------------------
   -- Universal_Character --
   -------------------------

   type Universal_Character is tagged record
      C : Matreshka.Internals.Unicode.Code_Point;
   end record;

   ----------------------
   -- Universal_String --
   ----------------------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String);

   type Utf16_String_Access is
     access all Matreshka.Internals.Utf16.Utf16_String;

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

   type Abstract_Cursor is tagged;
   type Cursor_Access is access all Abstract_Cursor'Class;

   type String_Private_Data is limited record
      Counter    : aliased Matreshka.Internals.Atomics.Counters.Counter;
      --  Atomic reference counter.

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

      Cursors    : Cursor_Access := null;
      --  List of iterators.
   end record;

   type String_Private_Data_Access is access all String_Private_Data;

   function Copy (Source : not null String_Private_Data_Access)
     return not null String_Private_Data_Access;
   --  Creates copy of string data.

   procedure Dereference
    (Self : in out String_Private_Data_Access);
   --  Decrement reference counter and free resources if it reach zero value.

   procedure Dereference
    (Self   : in out String_Private_Data_Access;
     Cursor : not null Cursor_Access);
   --  Removes Iterator from the list of iterators, decrements reference
   --  counter and free resources if it reach zero value.

   procedure Emit_Changed
    (Self          : not null String_Private_Data_Access;
     Cursor        : not null Cursor_Access;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural);
   --  Must be called when internal string data is changed. It notify all
   --  iterators (except originator) about this change. All positions are in
   --  code units.

   type Universal_String is new Ada.Finalization.Controlled with record
      Data : String_Private_Data_Access;
   end record;

   for Universal_String'Read use Read;
   for Universal_String'Write use Write;

   overriding procedure Initialize (Self : in out Universal_String);

   overriding procedure Adjust (Self : in out Universal_String);

   overriding procedure Finalize (Self : in out Universal_String);

   ---------------------
   -- Abstract_Cursor --
   ---------------------

   type Abstract_Cursor is
     abstract new Ada.Finalization.Controlled with
   record
      Data : String_Private_Data_Access := null;
      Next : Cursor_Access              := null;
   end record;

   not overriding procedure On_Changed
    (Self          : not null access Abstract_Cursor;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural);
   --  Called when internal string data is changed. All positions are in code
   --  units. Default implementation invalidate iterator.

   procedure Attach
    (Self : in out Abstract_Cursor'Class;
     Item : in out Universal_String);
   --  Attaches iterator to the specified string. Exclusive copy of the string
   --  is created if needed.

   overriding procedure Adjust (Self : in out Abstract_Cursor);

   overriding procedure Finalize (Self : in out Abstract_Cursor);

end Matreshka.Strings;
