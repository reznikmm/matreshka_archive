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
-- Copyright © 2009-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides abstractions for strings (sequences of Unicode code
--  points), string's slices, and vectors of strings. Many operations in this
--  package and its children packages depends from the current or explicitly
--  specified locale.
--
--  Universal_String type provides unbounded strings of Unicode characters.
--  It utilizes implicit sharing technology (also known as copy-on-write), so
--  copy operations has constant execution time.
--
--  Universal_Slice is intended to be used primary when its period of life
--  is inside of period of life of referenced string. There are two important
--  advantages to use it: (1) slice data is not copied, (2) additional memory
--  is not allocated. Nethertheless, some operations on slices can be less
--  efficient, because data is not alligned properly as in string case.
--
--  Universal_String_Vector is unbounded form of vector of Universal_String.
--
--  Cursors child package and its children provides different kinds of
--  iterators - character, grapheme cluster, word, sentence, line breaks.
--  See these packages for detailed information.
------------------------------------------------------------------------------
pragma Ada_2012;

private with Ada.Finalization;
private with Ada.Streams;
with Ada.Strings.UTF_Encoding;

with League.Characters;
limited with League.String_Vectors;
private with Matreshka.Internals.Strings;
private with Matreshka.Internals.Utf16;

package League.Strings is

   pragma Preelaborate;
   pragma Remote_Types;

   type Split_Behavior is (Keep_Empty, Skip_Empty);

   type Universal_String is tagged private
     with Iterator_Element  => League.Characters.Universal_Character,
          Constant_Indexing => Element;

   type Universal_Slice is tagged private;

   type Sort_Key is private;
   pragma Preelaborable_Initialization (Sort_Key);

   type Hash_Type is mod 2 ** 32;

   Empty_Universal_String : constant Universal_String;

   ----------------------
   -- Universal_String --
   ----------------------

   function To_Universal_String
    (Item : Wide_Wide_String) return Universal_String;

   function To_Wide_Wide_String
    (Self : Universal_String'Class) return Wide_Wide_String;

   function Hash (Self : Universal_String'Class) return Hash_Type;

   function Length (Self : Universal_String'Class) return Natural;

   function Is_Empty (Self : Universal_String'Class) return Boolean;

   procedure Clear (Self : in out Universal_String'Class);

   function Element
    (Self  : Universal_String'Class;
     Index : Positive) return League.Characters.Universal_Character;

   function Slice
    (Self : Universal_String'Class;
     Low  : Positive;
     High : Natural) return Universal_String;

   procedure Slice
    (Self : in out Universal_String'Class; Low : Positive; High : Natural);

   function "&"
    (Left  : Universal_String'Class;
     Right : Universal_String'Class) return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : League.Characters.Universal_Character'Class)
       return Universal_String;

   function "&"
    (Left  : League.Characters.Universal_Character'Class;
     Right : Universal_String'Class) return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Wide_Wide_Character) return Universal_String;

   function "&"
    (Left  : Wide_Wide_Character;
     Right : Universal_String'Class) return Universal_String;

   function "&"
    (Left  : Universal_String'Class;
     Right : Wide_Wide_String) return Universal_String;

   function "&"
    (Left  : Wide_Wide_String;
     Right : Universal_String'Class) return Universal_String;

   procedure Append
    (Self : in out Universal_String'Class;
     Item : Universal_String'Class);
   procedure Append
    (Self : in out Universal_String'Class;
     Item : League.Characters.Universal_Character'Class);
   procedure Append
    (Self : in out Universal_String'Class;
     Item : Wide_Wide_String);
   procedure Append
    (Self : in out Universal_String'Class;
     Item : Wide_Wide_Character);
   --  Appends the character of the string onto the end of the string.

   procedure Prepend
    (Self : in out Universal_String'Class;
     Item : Universal_String'Class);
   procedure Prepend
    (Self : in out Universal_String'Class;
     Item : League.Characters.Universal_Character'Class);
   procedure Prepend
    (Self : in out Universal_String'Class;
     Item : Wide_Wide_String);
   procedure Prepend
    (Self : in out Universal_String'Class;
     Item : Wide_Wide_Character);
   --  Prepends the character or the string to the beginning of the string.

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

   procedure Replace
    (Self : in out Universal_String'Class;
     Low  : Positive;
     High : Natural;
     By   : Wide_Wide_String);

   function Split
    (Self      : Universal_String'Class;
     Separator : League.Characters.Universal_Character'Class;
     Behavior  : Split_Behavior := Keep_Empty)
       return League.String_Vectors.Universal_String_Vector;
   --  Splits the string into substrings wherever Separator occurs, and returns
   --  the list of those strings. If Separator does not match anywhere in the
   --  string, returns a single-element list containing this string.

   function Split
    (Self      : Universal_String'Class;
     Separator : Wide_Wide_Character;
     Behavior  : Split_Behavior := Keep_Empty)
       return League.String_Vectors.Universal_String_Vector;
   --  Splits the string into substrings wherever Separator occurs, and returns
   --  the list of those strings. If Separator does not match anywhere in the
   --  string, returns a single-element list containing this string.

   function Index
    (Self      : Universal_String'Class;
     Character : League.Characters.Universal_Character'Class) return Natural;
   function Index
    (Self      : Universal_String'Class;
     Character : Wide_Wide_Character) return Natural;
   --  Returns index of the first occurrence of the specified character in the
   --  string, or zero if there are no occurrences.

   function Count
    (Self      : Universal_String'Class;
     Character : League.Characters.Universal_Character'Class) return Natural;
   function Count
    (Self      : Universal_String'Class;
     Character : Wide_Wide_Character) return Natural;
   --  Returns the number of occurrences of the Character in this string.

   function Ends_With
    (Self    : Universal_String'Class;
     Pattern : Universal_String'Class) return Boolean;
   function Ends_With
    (Self    : Universal_String'Class;
     Pattern : Wide_Wide_String) return Boolean;
   --  Returns True if the string ends with Pattern; otherwise returns False.

   function Starts_With
    (Self    : Universal_String'Class;
     Pattern : Universal_String'Class) return Boolean;
   function Starts_With
    (Self    : Universal_String'Class;
     Pattern : Wide_Wide_String) return Boolean;
   --  Returns True if the string starts with Pattern; otherwise returns False.

   -----------------
   -- Conversions --
   -----------------

   function To_Uppercase
    (Self : Universal_String'Class) return Universal_String;
   --  Converts each character in the specified string to uppercase form using
   --  full case conversion (both context-dependent mappings and tailoring are
   --  used). Returns result string.

   function To_Lowercase
    (Self : Universal_String'Class) return Universal_String;
   --  Converts each character in the specified string to lowercase form using
   --  full case conversion (both context-dependent mappings and tailoring are
   --  used). Returns result string.

   function To_Casefold
    (Self : Universal_String'Class) return Universal_String;
   --  Converts each character in the specified string to case folding form
   --  using full case conversion (only tailoring is used). Returns result
   --  string.

   function To_NFC (Self : Universal_String'Class) return Universal_String;
   --  Returns specified string converted into Normalization Form C (canonical
   --  decomposition and cacnonical composition).

   function To_NFD (Self : Universal_String'Class) return Universal_String;
   --  Returns specified string converted into Normalization Form D (canonical
   --  decomposition).

   function To_NFKC (Self : Universal_String'Class) return Universal_String;
   --  Returns specified string converted into Normalization Form KC
   --  (compatibility decomposition and canonical composition).

   function To_NFKD (Self : Universal_String'Class) return Universal_String;
   --  Returns specified string converted into Normalization Form KD
   --  (compatibility decomposition).

   --------------------------------------
   -- Equivalence tests and comparison --
   --------------------------------------

   overriding function "="
    (Left : Universal_String; Right : Universal_String) return Boolean;
   function "<"
    (Left : Universal_String; Right : Universal_String) return Boolean;
   function ">"
    (Left : Universal_String; Right : Universal_String) return Boolean;
   function "<="
    (Left : Universal_String; Right : Universal_String) return Boolean;
   function ">="
    (Left : Universal_String; Right : Universal_String) return Boolean;
   --  Compare two strings in binary order of Unicode Code Points.

   function Collation (Self : Universal_String'Class) return Sort_Key;
   --  Construct sort key for string comparison.

   -------------------------------
   -- UTF Encoding end Decoding --
   -------------------------------

   function From_UTF_8_String
    (Item : Ada.Strings.UTF_Encoding.UTF_8_String) return Universal_String;
   --  Converts standard String in UTF-8 encoding into string.

   function To_UTF_8_String
    (Self : Universal_String'Class)
       return Ada.Strings.UTF_Encoding.UTF_8_String;
   --  Converts string to UTF-8 encoded standard String.

   function To_UTF_16_Wide_String
    (Self : Universal_String'Class)
       return Ada.Strings.UTF_Encoding.UTF_16_Wide_String;
   --  Converts string to UTF-16 encoded standard Wide_String using host-endian
   --  variant.

   ---------------------------------------
   -- Comparison operators for Sort_Key --
   ---------------------------------------

   overriding function "=" (Left : Sort_Key; Right : Sort_Key) return Boolean;
   function "<" (Left : Sort_Key; Right : Sort_Key) return Boolean;
   function "<=" (Left : Sort_Key; Right : Sort_Key) return Boolean;
   function ">" (Left : Sort_Key; Right : Sort_Key) return Boolean;
   function ">=" (Left : Sort_Key; Right : Sort_Key) return Boolean;

private

   type Abstract_Cursor is tagged;
   type Cursor_Access is access all Abstract_Cursor'Class;

   ----------------------
   -- Universal_String --
   ----------------------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String);

   procedure Emit_Changed
    (Self          : Universal_String'Class;
     Changed_First : Matreshka.Internals.Utf16.Utf16_String_Index;
     Removed_Last  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Inserted_Last : Matreshka.Internals.Utf16.Utf16_String_Index);
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
      Data    : Matreshka.Internals.Strings.Shared_String_Access :=
        Matreshka.Internals.Strings.Shared_Empty'Access;
      --  Data component is non-null by convention. It is set to null only
      --  during finalization to mark object as finalized.
      List    : aliased Cursor_List;
      --  Storage for holder of the head of the list of cursors
      Cursors : access Cursor_List;
      --  List of cursors. This member is initialized to reference to List
      --  member.
   end record;
   for Universal_String'Read use Read;
   for Universal_String'Write use Write;

   overriding procedure Initialize (Self : in out Universal_String);

   overriding procedure Adjust (Self : in out Universal_String)
     with Inline => True;

   overriding procedure Finalize (Self : in out Universal_String);

   Empty_String_Cursors   : aliased Cursor_List := (Head => null);
   Empty_Universal_String : constant Universal_String
     := (Ada.Finalization.Controlled with
           Data    => Matreshka.Internals.Strings.Shared_Empty'Access,
           List    => (Head => null),
           Cursors => Empty_String_Cursors'Access);
   --  To satisfy requerements of language to prevent modification of component
   --  of constant the separate object is used to store list of associated
   --  cursors.

   ---------------------
   -- Universal_Slice --
   ---------------------

   type Universal_Slice is new Ada.Finalization.Controlled with null record;

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

   overriding procedure Adjust (Self : in out Abstract_Cursor)
     with Inline => True;

   overriding procedure Finalize (Self : in out Abstract_Cursor);

   --------------
   -- Sort_Key --
   --------------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Sort_Key);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Sort_Key);

   type Sort_Key is new Ada.Finalization.Controlled with record
      Data : Matreshka.Internals.Strings.Shared_Sort_Key_Access
        := Matreshka.Internals.Strings.Shared_Empty_Key'Access;
   end record;
   for Sort_Key'Read use Read;
   for Sort_Key'Write use Write;

   overriding procedure Adjust (Self : in out Sort_Key)
     with Inline => True;

   overriding procedure Finalize (Self : in out Sort_Key);

   pragma Inline ("=");
   pragma Inline ("<");
   pragma Inline (">");
   pragma Inline ("<=");
   pragma Inline (">=");
   pragma Inline (Clear);
   pragma Inline (Finalize);
   pragma Inline (Is_Empty);
   pragma Inline (Length);

end League.Strings;
