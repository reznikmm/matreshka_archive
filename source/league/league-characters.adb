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
with Matreshka.Internals.Unicode.Properties;

package body League.Characters is

   use type Matreshka.Internals.Unicode.Code_Unit_32;

   ---------
   -- "<" --
   ---------

   not overriding function "<"
    (Left : Universal_Character; Right : Universal_Character) return Boolean is
   begin
      return Left.Code < Right.Code;
   end "<";

   ---------
   -- "<" --
   ---------

   not overriding function "<"
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean is
   begin
      return Left.Code < Wide_Wide_Character'Pos (Right);
   end "<";

   ---------
   -- "<" --
   ---------

   not overriding function "<"
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean is
   begin
      return Wide_Wide_Character'Pos (Left) < Right.Code;
   end "<";

   ----------
   -- "<=" --
   ----------

   not overriding function "<="
    (Left : Universal_Character; Right : Universal_Character) return Boolean is
   begin
      return Left.Code <= Right.Code;
   end "<=";

   ----------
   -- "<=" --
   ----------

   not overriding function "<="
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean is
   begin
      return Left.Code <= Wide_Wide_Character'Pos (Right);
   end "<=";

   ----------
   -- "<=" --
   ----------

   not overriding function "<="
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean is
   begin
      return Wide_Wide_Character'Pos (Left) <= Right.Code;
   end "<=";

   ---------
   -- "=" --
   ---------

   overriding function "="
    (Left : Universal_Character; Right : Universal_Character) return Boolean is
   begin
      return Left.Code = Right.Code;
   end "=";

   ---------
   -- "=" --
   ---------

   not overriding function "="
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean is
   begin
      return Left.Code = Wide_Wide_Character'Pos (Right);
   end "=";

   ---------
   -- "=" --
   ---------

   not overriding function "="
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean is
   begin
      return Wide_Wide_Character'Pos (Left) = Right.Code;
   end "=";

   ---------
   -- ">" --
   ---------

   not overriding function ">"
    (Left : Universal_Character; Right : Universal_Character) return Boolean is
   begin
      return Left.Code > Right.Code;
   end ">";

   ---------
   -- ">" --
   ---------

   not overriding function ">"
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean is
   begin
      return Left.Code > Wide_Wide_Character'Pos (Right);
   end ">";

   ---------
   -- ">" --
   ---------

   not overriding function ">"
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean is
   begin
      return Wide_Wide_Character'Pos (Left) > Right.Code;
   end ">";

   ----------
   -- ">=" --
   ----------

   not overriding function ">="
    (Left : Universal_Character; Right : Universal_Character) return Boolean is
   begin
      return Left.Code >= Right.Code;
   end ">=";

   ----------
   -- ">=" --
   ----------

   not overriding function ">="
    (Left : Universal_Character; Right : Wide_Wide_Character) return Boolean is
   begin
      return Left.Code >= Wide_Wide_Character'Pos (Right);
   end ">=";

   ----------
   -- ">=" --
   ----------

   not overriding function ">="
    (Left : Wide_Wide_Character; Right : Universal_Character) return Boolean is
   begin
      return Wide_Wide_Character'Pos (Left) >= Right.Code;
   end ">=";

   --------------------
   -- Is_ID_Continue --
   --------------------

   function Is_ID_Continue (Self : Universal_Character'Class) return Boolean is
   begin
      return
        Self.Code in Matreshka.Internals.Unicode.Code_Point
          and then Matreshka.Internals.Unicode.Properties.Is_ID_Continue
                    (Self.Code);
   end Is_ID_Continue;

   -----------------
   -- Is_ID_Start --
   -----------------

   function Is_ID_Start (Self : Universal_Character'Class) return Boolean is
   begin
      return
        Self.Code in Matreshka.Internals.Unicode.Code_Point
          and then Matreshka.Internals.Unicode.Properties.Is_ID_Start
                    (Self.Code);
   end Is_ID_Start;

   --------------------------------
   -- Is_Noncharacter_Code_Point --
   --------------------------------

   function Is_Noncharacter_Code_Point
    (Self : Universal_Character'Class) return Boolean is
   begin
      return
        Self.Code in Matreshka.Internals.Unicode.Code_Point
          and then
            Matreshka.Internals.Unicode.Properties.Is_Noncharacter_Code_Point
             (Self.Code);
   end Is_Noncharacter_Code_Point;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Self : Universal_Character'Class) return Boolean is
   begin
      return Matreshka.Internals.Unicode.Is_Valid (Self.Code);
   end Is_Valid;

   ---------------
   -- Lowercase --
   ---------------

   function Lowercase (Self : Universal_Character'Class) return Boolean is
   begin
      return
        Self.Code in Matreshka.Internals.Unicode.Code_Point
          and then Matreshka.Internals.Unicode.Properties.Lowercase
                    (Self.Code);
   end Lowercase;

   ------------------------------
   -- Simple_Lowercase_Mapping --
   ------------------------------

   function Simple_Lowercase_Mapping
    (Self : Universal_Character'Class) return Universal_Character is
   begin
      return
       (Code =>
          Matreshka.Internals.Unicode.Properties.Simple_Lowercase_Mapping
           (Self.Code));
   end Simple_Lowercase_Mapping;

   ------------------------------
   -- Simple_Titlecase_Mapping --
   ------------------------------

   function Simple_Titlecase_Mapping
    (Self : Universal_Character'Class) return Universal_Character is
   begin
      return
       (Code =>
          Matreshka.Internals.Unicode.Properties.Simple_Titlecase_Mapping
           (Self.Code));
   end Simple_Titlecase_Mapping;

   ------------------------------
   -- Simple_Uppercase_Mapping --
   ------------------------------

   function Simple_Uppercase_Mapping
    (Self : Universal_Character'Class) return Universal_Character is
   begin
      return
       (Code =>
          Matreshka.Internals.Unicode.Properties.Simple_Uppercase_Mapping
           (Self.Code));
   end Simple_Uppercase_Mapping;

   ----------------------------
   -- To_Universal_Character --
   ----------------------------

   function To_Universal_Character
    (Self : Wide_Wide_Character) return Universal_Character is
   begin
      return Universal_Character'(Code => Wide_Wide_Character'Pos (Self));
   end To_Universal_Character;

   ----------------------------
   -- To_Wide_Wide_Character --
   ----------------------------

   function To_Wide_Wide_Character
    (Self : Universal_Character'Class) return Wide_Wide_Character is
   begin
      return Wide_Wide_Character'Val (Self.Code);
   end To_Wide_Wide_Character;

   ---------------
   -- Uppercase --
   ---------------

   function Uppercase (Self : Universal_Character'Class) return Boolean is
   begin
      return
        Self.Code in Matreshka.Internals.Unicode.Code_Point
          and then Matreshka.Internals.Unicode.Properties.Uppercase
                    (Self.Code);
   end Uppercase;

end League.Characters;
