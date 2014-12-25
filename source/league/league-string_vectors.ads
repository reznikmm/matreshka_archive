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
-- Copyright © 2010-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Vector of Universal_String.
------------------------------------------------------------------------------
pragma Ada_2012;

private with Ada.Finalization;
private with Ada.Streams;

with League.Characters;
with League.Strings;
private with Matreshka.Internals.String_Vectors;

package League.String_Vectors is

   pragma Preelaborate;
   pragma Remote_Types;

   type Universal_String_Vector is tagged private
     with Iterator_Element  => League.Strings.Universal_String,
          Constant_Indexing => Element;
   pragma Preelaborable_Initialization (Universal_String_Vector);

   Empty_Universal_String_Vector : constant Universal_String_Vector;

   function Is_Empty (Self : Universal_String_Vector'Class) return Boolean;

   function Length (Self : Universal_String_Vector'Class) return Natural;

   function Element
    (Self  : Universal_String_Vector'Class;
     Index : Positive) return League.Strings.Universal_String;

   procedure Clear (Self : in out Universal_String_Vector'Class);

   procedure Append
    (Self : in out Universal_String_Vector'Class;
     Item : League.Strings.Universal_String'Class);

   procedure Append
    (Self : in out Universal_String_Vector'Class;
     Item : Universal_String_Vector'Class);

   procedure Prepend
    (Self : in out Universal_String_Vector'Class;
     Item : Universal_String_Vector'Class);
   --  Inserts strings from Item before first string of Self.

   procedure Replace
    (Self  : in out Universal_String_Vector'Class;
     Index : Positive;
     Item  : League.Strings.Universal_String'Class);
   --  Replace element at the specified position by new value.

   procedure Insert
    (Self  : in out Universal_String_Vector'Class;
     Index : Positive;
     Item  : League.Strings.Universal_String'Class);
   --  Inserts string into the given position.

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : League.Strings.Universal_String'Class)
       return League.Strings.Universal_String;
   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : Wide_Wide_String)
       return League.Strings.Universal_String;
   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : League.Characters.Universal_Character'Class)
       return League.Strings.Universal_String;
   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : Wide_Wide_Character)
       return League.Strings.Universal_String;
   --  Joins all the string vector's strings into a single string with each
   --  element separated by the given Separator. Separator can be an empty
   --  string.

   function Index
    (Self    : Universal_String_Vector'Class;
     Pattern : League.Strings.Universal_String'Class) return Natural;
   function Index
    (Self : Universal_String_Vector'Class;
     Pattern : Wide_Wide_String) return Natural;
   --  Returns index of the first element which match to item, or zero
   --  overwise.

   function Starts_With
    (Self   : Universal_String_Vector'Class;
     String : League.Strings.Universal_String'Class) return Boolean;
   function Starts_With
    (Self   : Universal_String_Vector'Class;
     String : Wide_Wide_String) return Boolean;
   function Starts_With
    (Self   : Universal_String_Vector'Class;
     Vector : Universal_String_Vector'Class) return Boolean;
   --  Returns True when vector starts from the given string/vector.

   function Ends_With
    (Self   : Universal_String_Vector'Class;
     String : League.Strings.Universal_String'Class) return Boolean;
   function Ends_With
    (Self   : Universal_String_Vector'Class;
     String : Wide_Wide_String) return Boolean;
   function Ends_With
    (Self   : Universal_String_Vector'Class;
     Vector : Universal_String_Vector'Class) return Boolean;
   --  Returns True when vector starts from the given string/vector.

   function "="
    (Left  : Universal_String_Vector;
     Right : Universal_String_Vector) return Boolean;
   --  Returns True when both vectors has the same strings.

private

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String_Vector);

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String_Vector);

   type Universal_String_Vector is new Ada.Finalization.Controlled with record
      Data : Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
       := Matreshka.Internals.String_Vectors.Empty_Shared_String_Vector'Access;
   end record;
   for Universal_String_Vector'Read use Read;
   for Universal_String_Vector'Write use Write;

   overriding procedure Adjust (Self : in out Universal_String_Vector);

   overriding procedure Finalize (Self : in out Universal_String_Vector);

   Empty_Universal_String_Vector : constant Universal_String_Vector
     := (Ada.Finalization.Controlled with others => <>);

   pragma Inline (Adjust);
   pragma Inline (Clear);
   pragma Inline (Finalize);
   pragma Inline (Is_Empty);
   pragma Inline (Length);

end League.String_Vectors;
