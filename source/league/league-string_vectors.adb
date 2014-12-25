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
-- Copyright © 2011-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;

package body League.String_Vectors is

   use Matreshka.Internals.String_Vectors;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Strings.Configuration;

   ---------
   -- "=" --
   ---------

   function "="
    (Left  : Universal_String_Vector;
     Right : Universal_String_Vector) return Boolean
   is
      LD : constant not null
        Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
          := Left.Data;
      RD : constant not null
        Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
          := Right.Data;

   begin
      --  Both objects shared same shared object, they are equal.

      if LD = RD then
         return True;
      end if;

      --  Objects have different length, they are not equal.

      if LD.Unused /= RD.Unused then
         return False;
      end if;

      --  Check whether all strings are equal.

      for J in 0 .. LD.Unused - 1 loop
         if not String_Handler.Is_Equal (LD.Value (J), RD.Value (J)) then
            return False;
         end if;
      end loop;

      return True;
   end "=";

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

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Universal_String_Vector'Class;
     Item : Universal_String_Vector'Class) is
   begin
      for J in 1 .. Item.Length loop
         Self.Append (Item.Element (J));
      end loop;
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
     Index : Positive) return League.Strings.Universal_String
   is
      Position : constant String_Vector_Index
        := String_Vector_Index (Index - 1);

   begin
      if Position >= Self.Data.Unused then
         raise Constraint_Error with "Index is out of range";
      end if;

      return League.Strings.Internals.Create (Self.Data.Value (Position));
   end Element;

   ---------------
   -- Ends_With --
   ---------------

   function Ends_With
    (Self   : Universal_String_Vector'Class;
     String : League.Strings.Universal_String'Class) return Boolean
   is
      use type League.Strings.Universal_String;

   begin
      return
        Self.Length >= 1
          and then Self (Self.Length)
                     = League.Strings.Universal_String (String);
   end Ends_With;

   ---------------
   -- Ends_With --
   ---------------

   function Ends_With
    (Self   : Universal_String_Vector'Class;
     Vector : Universal_String_Vector'Class) return Boolean
   is
      use type League.Strings.Universal_String;

   begin
      if Self.Length >= Vector.Length then
         for J in reverse 1 .. Vector.Length loop
            if Self (Self.Length - Vector.Length + J) /= Vector (J) then
               return False;
            end if;
         end loop;

         return True;
      end if;

      return False;
   end Ends_With;

   ---------------
   -- Ends_With --
   ---------------

   function Ends_With
    (Self   : Universal_String_Vector'Class;
     String : Wide_Wide_String) return Boolean is
   begin
      return Self.Ends_With (League.Strings.To_Universal_String (String));
   end Ends_With;

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

   -----------
   -- Index --
   -----------

   function Index
    (Self    : Universal_String_Vector'Class;
     Pattern : League.Strings.Universal_String'Class) return Natural
   is
      V_D   : constant not null
        Matreshka.Internals.String_Vectors.Shared_String_Vector_Access
          := Self.Data;
      P_D   : constant not null Shared_String_Access
        := League.Strings.Internals.Internal (Pattern);
      Index : Matreshka.Internals.String_Vectors.String_Vector_Index := 0;

   begin
      while Index < V_D.Unused loop
         if String_Handler.Is_Equal (V_D.Value (Index), P_D) then
            return Positive (Index + 1);
         end if;

         Index := Index + 1;
      end loop;

      return 0;
   end Index;

   -----------
   -- Index --
   -----------

   function Index
    (Self    : Universal_String_Vector'Class;
     Pattern : Wide_Wide_String) return Natural is
   begin
      return Self.Index (League.Strings.To_Universal_String (Pattern));
   end Index;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self  : in out Universal_String_Vector'Class;
     Index : Positive;
     Item  : League.Strings.Universal_String'Class)
   is
      Position : constant String_Vector_Index
        := String_Vector_Index (Index - 1);

   begin
      if Position > Self.Data.Unused then
         raise Constraint_Error with "Index is out of range";
      end if;

      Matreshka.Internals.String_Vectors.Insert
       (Self.Data, Position, League.Strings.Internals.Internal (Item));
   end Insert;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : Universal_String_Vector'Class) return Boolean is
   begin
      return Self.Data.Unused = 0;
   end Is_Empty;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : League.Strings.Universal_String'Class)
       return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         if not Self.Is_Empty then
            Result.Append (Self.Element (1));
         end if;

         for J in 2 .. Self.Length loop
            Result.Append (Separator);
            Result.Append (Self.Element (J));
         end loop;
      end return;
   end Join;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : Wide_Wide_String)
       return League.Strings.Universal_String is
   begin
      return Self.Join (League.Strings.To_Universal_String (Separator));
   end Join;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : League.Characters.Universal_Character'Class)
       return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         if not Self.Is_Empty then
            Result.Append (Self.Element (1));
         end if;

         for J in 2 .. Self.Length loop
            Result.Append (Separator);
            Result.Append (Self.Element (J));
         end loop;
      end return;
   end Join;

   ----------
   -- Join --
   ----------

   function Join
    (Self      : Universal_String_Vector'Class;
     Separator : Wide_Wide_Character)
       return League.Strings.Universal_String is
   begin
      return Self.Join (League.Characters.To_Universal_Character (Separator));
   end Join;

   ------------
   -- Length --
   ------------

   function Length (Self : Universal_String_Vector'Class) return Natural is
   begin
      return Natural (Self.Data.Unused);
   end Length;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Self : in out Universal_String_Vector'Class;
     Item : Universal_String_Vector'Class) is
   begin
      Matreshka.Internals.String_Vectors.Prepend (Self.Data, Item.Data);
   end Prepend;

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

   -------------
   -- Replace --
   -------------

   procedure Replace
    (Self  : in out Universal_String_Vector'Class;
     Index : Positive;
     Item  : League.Strings.Universal_String'Class)
   is
      Position : constant String_Vector_Index
        := String_Vector_Index (Index - 1);

   begin
      if Position >= Self.Data.Unused then
         raise Constraint_Error with "Index is out of range";
      end if;

      Matreshka.Internals.String_Vectors.Replace
       (Self.Data, Position, League.Strings.Internals.Internal (Item));
   end Replace;

   -----------------
   -- Starts_With --
   -----------------

   function Starts_With
    (Self   : Universal_String_Vector'Class;
     String : League.Strings.Universal_String'Class) return Boolean
   is
      use type League.Strings.Universal_String;

   begin
      return
        Self.Length >= 1
          and then Self (1) = League.Strings.Universal_String (String);
   end Starts_With;

   -----------------
   -- Starts_With --
   -----------------

   function Starts_With
    (Self   : Universal_String_Vector'Class;
     Vector : Universal_String_Vector'Class) return Boolean
   is
      use type League.Strings.Universal_String;

   begin
      if Self.Length >= Vector.Length then
         for J in 1 .. Vector.Length loop
            if Self (J) /= Vector (J) then
               return False;
            end if;
         end loop;

         return True;
      end if;

      return False;
   end Starts_With;

   -----------------
   -- Starts_With --
   -----------------

   function Starts_With
    (Self   : Universal_String_Vector'Class;
     String : Wide_Wide_String) return Boolean is
   begin
      return Self.Starts_With (League.Strings.To_Universal_String (String));
   end Starts_With;

   -----------
   -- Write --
   -----------

   procedure Write
    (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
     Item   : Universal_String_Vector) is
   begin
      String_Vector_Index'Write (Stream, Item.Data.Unused);

      for J in 1 .. Item.Length loop
         League.Strings.Universal_String'Write (Stream, Item.Element (J));
      end loop;
   end Write;

end League.String_Vectors;
