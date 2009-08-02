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

private with Matreshka.Internals.Strings;
private with Matreshka.Internals.Unicode;

package Matreshka.Strings is

   pragma Preelaborate;
--   pragma Remote_Types;

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

   function Slice
    (Self : Universal_String'Class;
     Low  : Positive;
     High : Natural)
       return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_Character'Class)
       return Universal_String;

--   function "&"
--    (Left  : Universal_Character'Class;
--     Right : Universal_String'Class)
--       return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Wide_Wide_Character)
       return Universal_String;

--   function "&"
--    (Left  : Wide_Wide_Character;
--     Right : Universal_String'Class)
--       return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_String'Class)
       return Universal_String;

   procedure Append
    (Self : in out Universal_String'Class;
     Item : Universal_String'Class);

--   procedure Append
--    (Self : in out Universal_String'Class;
--     Item : Universal_Character'Class);
--
--   procedure Append
--    (Self : in out Universal_String'Class;
--     Item : Wide_Wide_String);
--
--   procedure Append
--    (Self : in out Universal_String'Class;
--     Item : Wide_Wide_Character);

--   procedure Replace
--    (Self  : in out Universal_String'Class;
--     Index : Positive;
--     By    : Universal_Character'Class);
--
--   procedure Replace
--    (Self  : in out Universal_String'Class;
--     Index : Positive;
--     By    : Wide_Wide_Characters);

   procedure Replace
    (Self : in out Universal_String'Class;
     Low  : Positive;
     High : Natural;
     By   : Universal_String'Class);

--   procedure Replace
--    (Self : in out Universal_String'Class;
--     Low  : Positive;
--     High : Natural;
--     By   : Wide_Wide_String);

   -----------------
   -- Conversions --
   -----------------

   function To_Uppercase (Self : Universal_String'Class)
     return Universal_String;
   --  Converts each character in the specified string to uppercase form using
   --  full case conversion (both context-dependent mappings and tailoring are
   --  used). Returns result string.

   function To_Lowercase (Self : Universal_String'Class)
     return Universal_String;
   --  Converts each character in the specified string to lowercase form using
   --  full case conversion (both context-dependent mappings and tailoring are
   --  used). Returns result string.

   function To_Casefold (Self : Universal_String'Class)
     return Universal_String;
   --  Converts each character in the specified string to case folding form
   --  using full case conversion (only tailoring is used). Returns result
   --  string.

   function To_NFD (Self : Universal_String'Class)
     return Universal_String;
   --  Returns specified string converted into Normalization Form D (canonical
   --  decomposition).

   function To_NFKD (Self : Universal_String'Class)
     return Universal_String;
   --  Returns specified string converted into Normalization Form KD
   --  (compatibility decomposition).

   --------------------------------------
   -- Equivalence tests and comparison --
   --------------------------------------

   function "=" (Left  : Universal_String; Right : Universal_String)
     return Boolean;
   function "=" (Left : Universal_String'Class; Right : Universal_String'Class)
     return Boolean;
   --  These two operators make ambiguous use of "=" for objects of the
   --  Universal_String type. Both raise Program_Error exception.

   type Relationship is (Less, Equal, Greater);

   function Is_Binary_Equal
    (Self : Universal_String'Class;
     To   : Universal_String'Class)
       return Boolean;
   --  Returns True if both strings are binary equivalent.

   function Binary_Compare
    (Self : Universal_String'Class;
     To   : Universal_String'Class)
       return Relationship;
   --  Compare two string as a sequences of Unicode Code Points.

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

   type Abstract_Cursor is tagged;
   type Cursor_Access is access all Abstract_Cursor'Class;

   procedure Emit_Changed
    (Self          : Universal_String'Class;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural);
   --  Must be called when internal string data is changed. It notify all
   --  cursors about this change. All positions are in code units.

--   procedure Emit_Changed
--    (Self          : not null String_Private_Data_Access;
--     Cursor        : not null Modify_Cursor_Access;
--     Changed_First : Positive;
--     Removed_Last  : Natural;
--     Inserted_Last : Natural);
   --  Must be called when internal string data is changed. It notify all
   --  iterators (except originator) about this change. All positions are in
   --  code units.

   type Cursor_List is record
      Head : Cursor_Access := null;
   end record;

   type Universal_String is new Ada.Finalization.Controlled with record
      Data    : Matreshka.Internals.Strings.Internal_String_Access;
      List    : aliased Cursor_List;
      Cursors : access Cursor_List;
      --  List of cursors. This member is initialized to reference to List
      --  member.
   end record;

   for Universal_String'Read use Read;
   for Universal_String'Write use Write;

   overriding procedure Initialize (Self : in out Universal_String);

   overriding procedure Adjust (Self : in out Universal_String);

   overriding procedure Finalize (Self : in out Universal_String);

   package Constructors is

      function Create
       (Data : not null Matreshka.Internals.Strings.Internal_String_Access)
          return Universal_String;
      --  Creates instance of Universal_String with specified parameters.

   end Constructors;

   ---------------------
   -- Abstract_Cursor --
   ---------------------

   type Universal_String_Access is access constant Universal_String'Class;

   type Abstract_Cursor is abstract new Ada.Finalization.Controlled with record
      Object   : Universal_String_Access := null;
      Next     : Cursor_Access           := null;
      Previous : Cursor_Access           := null;
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
     Item : in out Universal_String'Class);
   --  Attaches iterator to the specified string. Exclusive copy of the string
   --  is created if needed.

   overriding procedure Adjust (Self : in out Abstract_Cursor);

   overriding procedure Finalize (Self : in out Abstract_Cursor);

end Matreshka.Strings;
