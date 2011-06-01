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
with League.Strings.Internals;
with Matreshka.Internals.Strings;
with Matreshka.Internals.String_Vectors;

package body League.String_Vectors is

   use Matreshka.Internals.String_Vectors;

--   pragma Preelaborate;
--   pragma Remote_Types;
--
--   type Universal_String_Vector is tagged private;
--   pragma Preelaborable_Initialization (Universal_String_Vector);
--
--   Empty_Universal_String_Vector : constant Universal_String_Vector;
--
--   function Is_Empty (Self : Universal_String_Vector'Class) return Boolean;
--
--   function Length (Self : Universal_String_Vector'Class) return Natural;
--
--   function Element
--    (Self  : Universal_String_Vector'Class;
--     Index : Positive) return League.Strings.Universal_String;
--
--   procedure Clear (Self : in out Universal_String_Vector'Class);
--
--   procedure Append
--    (Self : in out Universal_String_Vector'Class;
--     Item : Universal_String'Class);
--
--private
--
--   procedure Read
--    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
--     Item   : out Universal_String_Vector);
--
--   procedure Write
--    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
--     Item   : Universal_String_Vector);
--
--   type Universal_String_Vector is new Ada.Finalization.Controlled with record
--      Data : Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
--       := Matreshka.Internals.String_Vectors.Empty_Shared_String_Vector'Access;
--   end record;
--   for Universal_String_Vector'Read use Read;
--   for Universal_String_Vector'Write use Write;
--
--   overriding procedure Adjust (Self : in out Universal_String_Vector);
--
--   overriding procedure Finalize (Self : in out Universal_String_Vector);
--
--   Empty_Universal_String_Vector : constant Universal_String_Vector
--     := (Ada.Finalization.Controlled with others => <>);
--
--   pragma Inline ("=");
--   pragma Inline ("<");
--   pragma Inline (">");
--   pragma Inline ("<=");
--   pragma Inline (">=");
--   pragma Inline (Adjust);
--   pragma Inline (Clear);
--   pragma Inline (Finalize);
--   pragma Inline (Is_Empty);
--   pragma Inline (Length);

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out Universal_String_Vector) is
   begin
      Matreshka.Internals.String_Vectors.Reference (Self.Data);
   end Adjust;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Universal_String_Vector'Class;
     Item : League.Strings.Universal_String'Class) is
   begin
      Append (Self.Data, League.Strings.Internals.Internal (Item));
      Matreshka.Internals.Strings.Reference
       (League.Strings.Internals.Internal (Item));
   end Append;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Universal_String_Vector'Class) is
   begin
      Matreshka.Internals.String_Vectors.Dereference (Self.Data);
      Self.Data :=
        Matreshka.Internals.String_Vectors.Empty_Shared_String_Vector'Access;
   end Clear;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : Universal_String_Vector'Class;
     Index : Positive) return League.Strings.Universal_String is
   begin
      if Index > Self.Data.Length then
         raise Constraint_Error with "Index is out of range";
      end if;

      return League.Strings.Internals.Create (Self.Data.Value (Index));
   end Element;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Universal_String_Vector) is
   begin
      --  Finalize can be called more than once (as specified by language
      --  standard), thus implementation should provide protection from
      --  multiple finalization.

      if Self.Data /= null then
         Dereference (Self.Data);
      end if;
   end Finalize;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : Universal_String_Vector'Class) return Boolean is
   begin
      return Self.Data.Length = 0;
   end Is_Empty;

   ------------
   -- Length --
   ------------

   function Length (Self : Universal_String_Vector'Class) return Natural is
   begin
      return Self.Data.Length;
   end Length;

   ----------
   -- Read --
   ----------

   procedure Read
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : out Universal_String_Vector)
   is
      Aux    : League.Strings.Universal_String;
      Length : Natural;

   begin
      Natural'Read (Stream, Length);

      Item.Clear;

      for J in 1 .. Length loop
         League.Strings.Universal_String'Read (Stream, Aux);
         Item.Append (Aux);
      end loop;
   end Read;

   -----------
   -- Write --
   -----------

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String_Vector) is
   begin
      Natural'Write (Stream, Item.Data.Length);

      for J in 1 .. Item.Length loop
         League.Strings.Universal_String'Write (Stream, Item.Element (J));
      end loop;
   end Write;

end League.String_Vectors;
