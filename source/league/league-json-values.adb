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
with League.Holders.Booleans;
with League.JSON.Arrays.Internals;
with League.JSON.Objects.Internals;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body League.JSON.Values is

   use type Matreshka.JSON_Types.Value_Kinds;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out JSON_Value) is
   begin
      Matreshka.JSON_Types.Reference (Self.Data);
   end Adjust;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out JSON_Value) is
      use type Matreshka.JSON_Types.Shared_JSON_Value_Access;

   begin
      if Self.Data /= null then
         Matreshka.JSON_Types.Dereference (Self.Data);
      end if;
   end Finalize;

   --------------
   -- Is_Array --
   --------------

   function Is_Array (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Array_Value;
   end Is_Array;

   ----------------
   -- Is_Boolean --
   ----------------

   function Is_Boolean (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Boolean_Value;
   end Is_Boolean;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Empty_Value;
   end Is_Empty;

   ---------------------
   -- Is_Float_Number --
   ---------------------

   function Is_Float_Number (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Float_Value;
   end Is_Float_Number;

   -----------------------
   -- Is_Integer_Number --
   -----------------------

   function Is_Integer_Number (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Integer_Value;
   end Is_Integer_Number;

   -------------
   -- Is_Null --
   -------------

   function Is_Null (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Null_Value;
   end Is_Null;

   ---------------
   -- Is_Number --
   ---------------

   function Is_Number (Self : JSON_Value'Class) return Boolean is
   begin
      return
        Self.Data.Value.Kind in Matreshka.JSON_Types.Float_Value
          | Matreshka.JSON_Types.Integer_Value;
   end Is_Number;

   ---------------
   -- Is_Object --
   ---------------

   function Is_Object (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.Object_Value;
   end Is_Object;

   ---------------
   -- Is_String --
   ---------------

   function Is_String (Self : JSON_Value'Class) return Boolean is
   begin
      return Self.Data.Value.Kind = Matreshka.JSON_Types.String_Value;
   end Is_String;

   ----------
   -- Kind --
   ----------

   function Kind (Self : JSON_Value'Class) return JSON_Value_Kinds is
   begin
      case Self.Data.Value.Kind is
         when Matreshka.JSON_Types.Empty_Value =>
            return Empty_Value;

         when Matreshka.JSON_Types.Boolean_Value =>
            return Boolean_Value;

         when Matreshka.JSON_Types.Integer_Value =>
            return Number_Value;

         when Matreshka.JSON_Types.Float_Value =>
            return Number_Value;

         when Matreshka.JSON_Types.String_Value =>
            return String_Value;

         when Matreshka.JSON_Types.Array_Value =>
            return Array_Value;

         when Matreshka.JSON_Types.Object_Value =>
            return Object_Value;

         when Matreshka.JSON_Types.Null_Value =>
            return Null_Value;
      end case;
   end Kind;

   --------------
   -- To_Array --
   --------------

   function To_Array
    (Self    : JSON_Value'Class;
     Default : League.JSON.Arrays.JSON_Array
       := League.JSON.Arrays.Empty_JSON_Array)
       return League.JSON.Arrays.JSON_Array is
   begin
      if Self.Data.Value.Kind = Matreshka.JSON_Types.Array_Value then
         return
           League.JSON.Arrays.Internals.Create (Self.Data.Value.Array_Value);

      else
         return Default;
      end if;
   end To_Array;

   ----------------
   -- To_Boolean --
   ----------------

   function To_Boolean
    (Self : JSON_Value'Class; Default : Boolean := False) return Boolean is
   begin
      if Self.Data.Value.Kind = Matreshka.JSON_Types.Boolean_Value then
         return Self.Data.Value.Boolean_Value;

      else
         return Default;
      end if;
   end To_Boolean;

   --------------
   -- To_Float --
   --------------

   function To_Float
    (Self    : JSON_Value'Class;
     Default : League.Holders.Universal_Float := 0.0)
       return League.Holders.Universal_Float is
   begin
      if Self.Data.Value.Kind = Matreshka.JSON_Types.Float_Value then
         return Self.Data.Value.Float_Value;

      elsif Self.Data.Value.Kind = Matreshka.JSON_Types.Integer_Value then
         return League.Holders.Universal_Float (Self.Data.Value.Integer_Value);

      else
         return Default;
      end if;
   end To_Float;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder (Self : JSON_Value'Class) return League.Holders.Holder is
   begin
      case Self.Data.Value.Kind is
         when Matreshka.JSON_Types.Empty_Value =>
            return League.Holders.Empty_Holder;

         when Matreshka.JSON_Types.Boolean_Value =>
            return
              League.Holders.Booleans.To_Holder
               (Self.Data.Value.Boolean_Value);

         when Matreshka.JSON_Types.Integer_Value =>
            return Result : League.Holders.Holder do
               League.Holders.Set_Tag
                (Result, League.Holders.Universal_Integer_Tag);
               League.Holders.Replace_Element
                (Result, Self.Data.Value.Integer_Value);
            end return;

         when Matreshka.JSON_Types.Float_Value =>
            return Result : League.Holders.Holder do
               League.Holders.Set_Tag
                (Result, League.Holders.Universal_Float_Tag);
               League.Holders.Replace_Element
                (Result, Self.Data.Value.Float_Value);
            end return;

         when Matreshka.JSON_Types.String_Value =>
            return
              League.Holders.To_Holder
               (League.Strings.Internals.Create
                 (Self.Data.Value.String_Value));

         when Matreshka.JSON_Types.Array_Value =>
            return League.Holders.Empty_Holder;

         when Matreshka.JSON_Types.Object_Value =>
            return League.Holders.Empty_Holder;

         when Matreshka.JSON_Types.Null_Value =>
            return League.Holders.Empty_Holder;
      end case;
   end To_Holder;

   ----------------
   -- To_Integer --
   ----------------

   function To_Integer
    (Self    : JSON_Value'Class;
     Default : League.Holders.Universal_Integer := 0)
       return League.Holders.Universal_Integer is
   begin
      if Self.Data.Value.Kind = Matreshka.JSON_Types.Float_Value then
         return League.Holders.Universal_Integer (Self.Data.Value.Float_Value);

      elsif Self.Data.Value.Kind = Matreshka.JSON_Types.Integer_Value then
         return Self.Data.Value.Integer_Value;

      else
         return Default;
      end if;
   end To_Integer;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value (Value : Boolean) return JSON_Value is
   begin
      return
       (Ada.Finalization.Controlled with
          Data =>
            new Matreshka.JSON_Types.Shared_JSON_Value'
                 (Counter => <>,
                  Value   =>
                   (Kind          => Matreshka.JSON_Types.Boolean_Value,
                    Boolean_Value => Value)));
   end To_JSON_Value;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Value : League.Holders.Universal_Float) return JSON_Value is
   begin
      return
       (Ada.Finalization.Controlled with
          Data =>
            new Matreshka.JSON_Types.Shared_JSON_Value'
                 (Counter => <>,
                  Value   =>
                   (Kind        => Matreshka.JSON_Types.Float_Value,
                    Float_Value => Value)));
   end To_JSON_Value;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Value : League.Holders.Universal_Integer) return JSON_Value is
   begin
      return
       (Ada.Finalization.Controlled with
          Data =>
            new Matreshka.JSON_Types.Shared_JSON_Value'
                 (Counter => <>,
                  Value   =>
                   (Kind          => Matreshka.JSON_Types.Integer_Value,
                    Integer_Value => Value)));
   end To_JSON_Value;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Value : League.Strings.Universal_String) return JSON_Value
   is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (Value);

   begin
      Matreshka.Internals.Strings.Reference (Aux);

      return
       (Ada.Finalization.Controlled with
          Data =>
            new Matreshka.JSON_Types.Shared_JSON_Value'
                 (Counter => <>,
                  Value   =>
                   (Kind         => Matreshka.JSON_Types.String_Value,
                    String_Value => Aux)));
   end To_JSON_Value;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Value : League.JSON.Arrays.JSON_Array) return JSON_Value
   is
      Aux : constant Matreshka.JSON_Types.Shared_JSON_Array_Access
        := League.JSON.Arrays.Internals.Internal (Value);

   begin
      Matreshka.JSON_Types.Reference (Aux);

      return
       (Ada.Finalization.Controlled with
          Data =>
            new Matreshka.JSON_Types.Shared_JSON_Value'
                 (Counter => <>,
                  Value   =>
                   (Kind        => Matreshka.JSON_Types.Array_Value,
                    Array_Value => Aux)));
   end To_JSON_Value;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value
    (Value : League.JSON.Objects.JSON_Object) return JSON_Value
   is
      Aux : constant Matreshka.JSON_Types.Shared_JSON_Object_Access
        := League.JSON.Objects.Internals.Internal (Value);

   begin
      Matreshka.JSON_Types.Reference (Aux);

      return
       (Ada.Finalization.Controlled with
          Data =>
            new Matreshka.JSON_Types.Shared_JSON_Value'
                 (Counter => <>,
                  Value   =>
                   (Kind         => Matreshka.JSON_Types.Object_Value,
                    Object_Value => Aux)));
   end To_JSON_Value;

   -------------------
   -- To_JSON_Value --
   -------------------

   function To_JSON_Value (Value : League.Holders.Holder) return JSON_Value is
      use type League.Holders.Tag;

   begin
      if League.Holders.Get_Tag (Value)
           = League.Holders.Booleans.Value_Tag
      then
         return To_JSON_Value (League.Holders.Booleans.Element (Value));

      elsif League.Holders.Is_Abstract_Integer (Value) then
         return
           To_JSON_Value
            (League.Holders.Universal_Integer'
              (League.Holders.Element (Value)));

      elsif League.Holders.Is_Abstract_Float (Value) then
         return
           To_JSON_Value
            (League.Holders.Universal_Float'(League.Holders.Element (Value)));

      else
         return Empty_JSON_Value;
      end if;
   end To_JSON_Value;

   ---------------
   -- To_Object --
   ---------------

   function To_Object
    (Self    : JSON_Value'Class;
     Default : League.JSON.Objects.JSON_Object
       := League.JSON.Objects.Empty_JSON_Object)
       return League.JSON.Objects.JSON_Object is
   begin
      if Self.Data.Value.Kind = Matreshka.JSON_Types.Object_Value then
         return
           League.JSON.Objects.Internals.Create (Self.Data.Value.Object_Value);

      else
         return Default;
      end if;
   end To_Object;

   ---------------
   -- To_String --
   ---------------

   function To_String
    (Self    : JSON_Value'Class;
     Default : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
       return League.Strings.Universal_String is
   begin
      if Self.Data.Value.Kind = Matreshka.JSON_Types.String_Value then
        return League.Strings.Internals.Create (Self.Data.Value.String_Value);

      else
         return Default;
      end if;
   end To_String;

end League.JSON.Values;
