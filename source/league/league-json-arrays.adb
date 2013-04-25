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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.JSON.Values.Internals;

package body League.JSON.Arrays is

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out JSON_Array) is
   begin
      Matreshka.JSON_Types.Reference (Self.Data);
   end Adjust;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out JSON_Array'Class; Value : League.JSON.Values.JSON_Value)
   is
      Aux : constant Matreshka.JSON_Types.Shared_JSON_Value_Access
        := League.JSON.Values.Internals.Internal (Value);

   begin
      Matreshka.JSON_Types.Mutate (Self.Data);
      Matreshka.JSON_Types.Reference (Aux);
      Self.Data.Values.Append (Aux);
   end Append;

   ------------
   -- Delete --
   ------------

   procedure Delete (Self : in out JSON_Array'Class; Index : Positive) is
      Aux : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      if Index
           in Self.Data.Values.First_Index .. Self.Data.Values.Last_Index
      then
         Matreshka.JSON_Types.Mutate (Self.Data);
         Aux := Self.Data.Values.Element (Index);
         Self.Data.Values.Delete (Index);
         Matreshka.JSON_Types.Dereference (Aux);
      end if;
   end Delete;

   ------------------
   -- Delete_First --
   ------------------

   procedure Delete_First (Self : in out JSON_Array'Class) is
      Aux : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      if not Self.Data.Values.Is_Empty then
         Matreshka.JSON_Types.Mutate (Self.Data);
         Aux := Self.Data.Values.First_Element;
         Self.Data.Values.Delete_First;
         Matreshka.JSON_Types.Dereference (Aux);
      end if;
   end Delete_First;

   -----------------
   -- Delete_Last --
   -----------------

   procedure Delete_Last (Self : in out JSON_Array'Class) is
      Aux : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      if not Self.Data.Values.Is_Empty then
         Matreshka.JSON_Types.Mutate (Self.Data);
         Aux := Self.Data.Values.Last_Element;
         Self.Data.Values.Delete_Last;
         Matreshka.JSON_Types.Dereference (Aux);
      end if;
   end Delete_Last;

   -------------
   -- Element --
   -------------

   function Element
    (Self  : JSON_Array'Class;
     Index : Positive) return League.JSON.Values.JSON_Value is
   begin
      if Index
           in Self.Data.Values.First_Index .. Self.Data.Values.Last_Index
      then
         return
           League.JSON.Values.Internals.Create
            (Self.Data.Values.Element (Index));

      else
         return League.JSON.Values.Empty_JSON_Value;
      end if;
   end Element;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out JSON_Array) is
      use type Matreshka.JSON_Types.Shared_JSON_Array_Access;

   begin
      if Self.Data /= null then
         Matreshka.JSON_Types.Dereference (Self.Data);
      end if;
   end Finalize;

   -------------------
   -- First_Element --
   -------------------

   function First_Element
    (Self : JSON_Array'Class) return League.JSON.Values.JSON_Value is
   begin
      if not Self.Data.Values.Is_Empty then
         return
           League.JSON.Values.Internals.Create
            (Self.Data.Values.First_Element);

      else
         return League.JSON.Values.Empty_JSON_Value;
      end if;
   end First_Element;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self  : in out JSON_Array'Class;
     Index : Positive;
     Value : League.JSON.Values.JSON_Value)
   is
      Aux : constant Matreshka.JSON_Types.Shared_JSON_Value_Access
        := League.JSON.Values.Internals.Internal (Value);

   begin
      if Index
           in Self.Data.Values.First_Index .. Self.Data.Values.Last_Index
      then
         Matreshka.JSON_Types.Mutate (Self.Data);
         Matreshka.JSON_Types.Reference (Aux);
         Self.Data.Values.Insert (Index, Aux);
      end if;
   end Insert;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : JSON_Array'Class) return Boolean is
   begin
      return Self.Data.Values.Is_Empty;
   end Is_Empty;

   ------------------
   -- Last_Element --
   ------------------

   function Last_Element
    (Self : JSON_Array'Class) return League.JSON.Values.JSON_Value is
   begin
      if not Self.Data.Values.Is_Empty then
         return
           League.JSON.Values.Internals.Create (Self.Data.Values.Last_Element);

      else
         return League.JSON.Values.Empty_JSON_Value;
      end if;
   end Last_Element;

   ------------
   -- Length --
   ------------

   function Length (Self : JSON_Array'Class) return Natural is
   begin
      return Natural (Self.Data.Values.Length);
   end Length;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Self : in out JSON_Array'Class; Value : League.JSON.Values.JSON_Value)
   is
      Aux : constant Matreshka.JSON_Types.Shared_JSON_Value_Access
        := League.JSON.Values.Internals.Internal (Value);

   begin
      Matreshka.JSON_Types.Mutate (Self.Data);
      Matreshka.JSON_Types.Reference (Aux);
      Self.Data.Values.Prepend (Aux);
   end Prepend;

   -------------
   -- Replace --
   -------------

   procedure Replace
    (Self  : in out JSON_Array'Class;
     Index : Positive;
     Value : League.JSON.Values.JSON_Value)
   is
      New_Value : constant Matreshka.JSON_Types.Shared_JSON_Value_Access
        := League.JSON.Values.Internals.Internal (Value);
      Old_Value : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      if Index
           in Self.Data.Values.First_Index .. Self.Data.Values.Last_Index
      then
         Matreshka.JSON_Types.Mutate (Self.Data);
         Matreshka.JSON_Types.Reference (New_Value);
         Old_Value := Self.Data.Values.Element (Index);
         Self.Data.Values.Replace_Element (Index, New_Value);
         Matreshka.JSON_Types.Dereference (Old_Value);
      end if;
   end Replace;

   ----------
   -- Take --
   ----------

   function Take
    (Self  : in out JSON_Array'Class;
     Index : Positive) return League.JSON.Values.JSON_Value
   is
      Old_Value : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      if Index
           in Self.Data.Values.First_Index .. Self.Data.Values.Last_Index
      then
         Matreshka.JSON_Types.Mutate (Self.Data);
         Old_Value := Self.Data.Values.Element (Index);
         Self.Data.Values.Delete (Index);

         return League.JSON.Values.Internals.Wrap (Old_Value);

      else
         return League.JSON.Values.Empty_JSON_Value;
      end if;
   end Take;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Self : JSON_Array'Class) return League.JSON.Values.JSON_Value is
   begin
      Matreshka.JSON_Types.Reference (Self.Data);

      return
        League.JSON.Values.Internals.Wrap
         (new Matreshka.JSON_Types.Shared_JSON_Value'
               (Counter => <>,
                Value   =>
                 (Kind        => Matreshka.JSON_Types.Array_Value,
                  Array_Value => Self.Data)));
   end To_JSON_Value;

end League.JSON.Arrays;
