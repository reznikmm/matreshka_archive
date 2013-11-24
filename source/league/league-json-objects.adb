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

package body League.JSON.Objects is

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out JSON_Object) is
   begin
      Matreshka.JSON_Types.Reference (Self.Data);
   end Adjust;

   --------------
   -- Contains --
   --------------

   function Contains
    (Self : JSON_Object'Class;
     Key  : League.Strings.Universal_String) return Boolean is
   begin
      return Self.Data.Values.Contains (Key);
   end Contains;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out JSON_Object) is
      use type Matreshka.JSON_Types.Shared_JSON_Object_Access;

   begin
      if Self.Data /= null then
         Matreshka.JSON_Types.Dereference (Self.Data);
      end if;
   end Finalize;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self  : in out JSON_Object'Class;
     Key   : League.Strings.Universal_String;
     Value : League.JSON.Values.JSON_Value)
   is
      New_Value : constant Matreshka.JSON_Types.Shared_JSON_Value_Access
        := League.JSON.Values.Internals.Internal (Value);
      Old_Value : Matreshka.JSON_Types.Shared_JSON_Value_Access;
      Position  : Matreshka.JSON_Types.Value_Maps.Cursor;

   begin
      Matreshka.JSON_Types.Mutate (Self.Data);
      Position := Self.Data.Values.Find (Key);
      Matreshka.JSON_Types.Reference (New_Value);

      if Matreshka.JSON_Types.Value_Maps.Has_Element (Position) then
         Old_Value := Matreshka.JSON_Types.Value_Maps.Element (Position);
         Matreshka.JSON_Types.Dereference (Old_Value);
         Self.Data.Values.Replace_Element (Position, New_Value);

      else
         Self.Data.Values.Insert (Key, New_Value);
      end if;
   end Insert;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : JSON_Object'Class) return Boolean is
   begin
      return Self.Data.Values.Is_Empty;
   end Is_Empty;

   ----------
   -- Keys --
   ----------

   function Keys
    (Self : JSON_Object'Class)
       return League.String_Vectors.Universal_String_Vector
   is
      Position : Matreshka.JSON_Types.Value_Maps.Cursor
        := Self.Data.Values.First;
      Result   : League.String_Vectors.Universal_String_Vector;

   begin
      while Matreshka.JSON_Types.Value_Maps.Has_Element (Position) loop
         Result.Append (Matreshka.JSON_Types.Value_Maps.Key (Position));
         Matreshka.JSON_Types.Value_Maps.Next (Position);
      end loop;

      return Result;
   end Keys;

   ------------
   -- Length --
   ------------

   function Length (Self : JSON_Object'Class) return Natural is
   begin
      return Natural (Self.Data.Values.Length);
   end Length;

   ------------
   -- Remove --
   ------------

   procedure Remove
    (Self : in out JSON_Object'Class;
     Key  : League.Strings.Universal_String)
   is
      Position  : Matreshka.JSON_Types.Value_Maps.Cursor;
      Old_Value : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      Matreshka.JSON_Types.Mutate (Self.Data);
      Position := Self.Data.Values.Find (Key);

      if Matreshka.JSON_Types.Value_Maps.Has_Element (Position) then
         Old_Value := Matreshka.JSON_Types.Value_Maps.Element (Position);
         Matreshka.JSON_Types.Dereference (Old_Value);
         Self.Data.Values.Delete (Position);
      end if;
   end Remove;

   ----------
   -- Take --
   ----------

   function Take
    (Self : in out JSON_Object'Class;
     Key  : League.Strings.Universal_String)
       return League.JSON.Values.JSON_Value
   is
      Position  : Matreshka.JSON_Types.Value_Maps.Cursor;
      Old_Value : Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      Matreshka.JSON_Types.Mutate (Self.Data);
      Position := Self.Data.Values.Find (Key);

      if Matreshka.JSON_Types.Value_Maps.Has_Element (Position) then
         Old_Value := Matreshka.JSON_Types.Value_Maps.Element (Position);
         Self.Data.Values.Delete (Position);

         return League.JSON.Values.Internals.Wrap (Old_Value);

      else
         return League.JSON.Values.Empty_JSON_Value;
      end if;
   end Take;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Self : JSON_Object) return League.JSON.Values.JSON_Value is
   begin
      Matreshka.JSON_Types.Reference (Self.Data);

      return
        League.JSON.Values.Internals.Wrap
         (new Matreshka.JSON_Types.Shared_JSON_Value'
               (Counter => <>,
                Value   =>
                 (Kind         => Matreshka.JSON_Types.Object_Value,
                  Object_Value => Self.Data)));
   end To_JSON_Value;

   -----------
   -- Value --
   -----------

   function Value
    (Self : JSON_Object'Class;
     Key  : League.Strings.Universal_String)
       return League.JSON.Values.JSON_Value
   is
      Position  : constant Matreshka.JSON_Types.Value_Maps.Cursor
        := Self.Data.Values.Find (Key);

   begin
      if Matreshka.JSON_Types.Value_Maps.Has_Element (Position) then
         return
           League.JSON.Values.Internals.Create
            (Matreshka.JSON_Types.Value_Maps.Element (Position));

      else
         return League.JSON.Values.Empty_JSON_Value;
      end if;
   end Value;

end League.JSON.Objects;
