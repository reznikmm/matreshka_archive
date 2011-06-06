------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package body AMF is

   use type League.Strings.Universal_String;

   ---------
   -- "<" --
   ---------

   function "<"
    (Left : Optional_String; Right : Optional_String) return Boolean is
   begin
      if Left.Is_Empty xor Right.Is_Empty then
         return Left.Is_Empty;

      elsif Left.Is_Empty or Right.Is_Empty then
         return False;

      else
         return Left.Value < Right.Value;
      end if;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<"
    (Left  : Optional_String;
     Right : League.Strings.Universal_String) return Boolean is
   begin
      if Left.Is_Empty then
         return True;

      else
         return Left.Value < Right;
      end if;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<"
    (Left  : League.Strings.Universal_String;
     Right : Optional_String) return Boolean is
   begin
      if Right.Is_Empty then
         return False;

      else
         return Left < Right.Value;
      end if;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<"
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean is
   begin
      if Left.Unlimited xor Right.Unlimited then
         return Left.Unlimited < Right.Unlimited;

      elsif Left.Unlimited or Right.Unlimited then
         return False;

      else
         return Left.Value < Right.Value;
      end if;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<" (Left : Unlimited_Natural; Right : Integer) return Boolean is
   begin
      if Left.Unlimited then
         return False;

      else
         return Left.Value < Right;
      end if;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<" (Left : Integer; Right : Unlimited_Natural) return Boolean is
   begin
      if Right.Unlimited then
         return True;

      else
         return Left < Right.Value;
      end if;
   end "<";

   ----------
   -- "<=" --
   ----------

   function "<="
    (Left : Optional_String; Right : Optional_String) return Boolean is
   begin
      if Left.Is_Empty xor Right.Is_Empty then
         return Left.Is_Empty;

      elsif Left.Is_Empty or Right.Is_Empty then
         return True;

      else
         return Left.Value <= Right.Value;
      end if;
   end "<=";

   ----------
   -- "<=" --
   ----------

   function "<="
    (Left  : Optional_String;
     Right : League.Strings.Universal_String) return Boolean is
   begin
      if Left.Is_Empty then
         return True;

      else
         return Left.Value <= Right;
      end if;
   end "<=";

   ----------
   -- "<=" --
   ----------

   function "<="
    (Left  : League.Strings.Universal_String;
     Right : Optional_String) return Boolean is
   begin
      if Right.Is_Empty then
         return False;

      else
         return Left <= Right.Value;
      end if;
   end "<=";

   ----------
   -- "<=" --
   ----------

   function "<="
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean is
   begin
      if Left.Unlimited xor Right.Unlimited then
         return Left.Unlimited < Right.Unlimited;

      elsif Left.Unlimited or Right.Unlimited then
         return True;

      else
         return Left.Value <= Right.Value;
      end if;
   end "<=";

   ----------
   -- "<=" --
   ----------

   function "<=" (Left : Unlimited_Natural; Right : Integer) return Boolean is
   begin
      if Left.Unlimited then
         return False;

      else
         return Left.Value <= Right;
      end if;
   end "<=";

   ----------
   -- "<=" --
   ----------

   function "<=" (Left : Integer; Right : Unlimited_Natural) return Boolean is
   begin
      if Right.Unlimited then
         return True;

      else
         return Left <= Right.Value;
      end if;
   end "<=";

   ---------
   -- "=" --
   ---------

   function "="
    (Left : Optional_String; Right : Optional_String) return Boolean is
   begin
      if Left.Is_Empty xor Right.Is_Empty then
         return False;

      elsif Left.Is_Empty then
         return True;

      else
         return Left.Value = Right.Value;
      end if;
   end "=";

   ---------
   -- "=" --
   ---------

   function "="
    (Left  : Optional_String;
     Right : League.Strings.Universal_String) return Boolean is
   begin
      if Left.Is_Empty then
         return False;

      else
         return Left.Value = Right;
      end if;
   end "=";

   ---------
   -- "=" --
   ---------

   function "="
    (Left  : League.Strings.Universal_String;
     Right : Optional_String) return Boolean is
   begin
      if Right.Is_Empty then
         return False;

      else
         return Left = Right.Value;
      end if;
   end "=";

   ---------
   -- "=" --
   ---------

   function "=" (Left : Integer; Right : Unlimited_Natural) return Boolean is
   begin
      return not Right.Unlimited and then Left = Right.Value;
   end "=";

   ---------
   -- "=" --
   ---------

   function "=" (Left : Unlimited_Natural; Right : Integer) return Boolean is
   begin
      return not Left.Unlimited and then Left.Value = Right;
   end "=";

   ---------
   -- ">" --
   ---------

   function ">"
    (Left : Optional_String; Right : Optional_String) return Boolean is
   begin
      if Left.Is_Empty xor Right.Is_Empty then
         return Right.Is_Empty;

      elsif Left.Is_Empty or Right.Is_Empty then
         return False;

      else
         return Left.Value > Right.Value;
      end if;
   end ">";

   ---------
   -- ">" --
   ---------

   function ">"
    (Left  : Optional_String;
     Right : League.Strings.Universal_String) return Boolean is
   begin
      if Left.Is_Empty then
         return False;

      else
         return Left.Value > Right;
      end if;
   end ">";

   ---------
   -- ">" --
   ---------

   function ">"
    (Left  : League.Strings.Universal_String;
     Right : Optional_String) return Boolean is
   begin
      if Right.Is_Empty then
         return True;

      else
         return Left > Right.Value;
      end if;
   end ">";

   ---------
   -- ">" --
   ---------

   function ">"
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean is
   begin
      if Left.Unlimited xor Right.Unlimited then
         return Left.Unlimited > Right.Unlimited;

      elsif Left.Unlimited or Right.Unlimited then
         return False;

      else
         return Left.Value > Right.Value;
      end if;
   end ">";

   ---------
   -- ">" --
   ---------

   function ">" (Left : Unlimited_Natural; Right : Integer) return Boolean is
   begin
      if Left.Unlimited then
         return True;

      else
         return Left.Value > Right;
      end if;
   end ">";

   ---------
   -- ">" --
   ---------

   function ">" (Left : Integer; Right : Unlimited_Natural) return Boolean is
   begin
      if Right.Unlimited then
         return False;

      else
         return Left > Right.Value;
      end if;
   end ">";

   ----------
   -- ">=" --
   ----------

   function ">="
    (Left : Optional_String; Right : Optional_String) return Boolean is
   begin
      if Left.Is_Empty xor Right.Is_Empty then
         return Right.Is_Empty;

      elsif Left.Is_Empty or Right.Is_Empty then
         return True;

      else
         return Left.Value >= Right.Value;
      end if;
   end ">=";

   ----------
   -- ">=" --
   ----------

   function ">="
    (Left  : Optional_String;
     Right : League.Strings.Universal_String) return Boolean is
   begin
      if Left.Is_Empty then
         return False;

      else
         return Left.Value >= Right;
      end if;
   end ">=";

   ----------
   -- ">=" --
   ----------

   function ">="
    (Left  : League.Strings.Universal_String;
     Right : Optional_String) return Boolean is
   begin
      if Right.Is_Empty then
         return True;

      else
         return Left >= Right.Value;
      end if;
   end ">=";

   ----------
   -- ">=" --
   ----------

   function ">="
    (Left : Unlimited_Natural; Right : Unlimited_Natural) return Boolean is
   begin
      if Left.Unlimited xor Right.Unlimited then
         return Left.Unlimited > Right.Unlimited;

      elsif Left.Unlimited or Right.Unlimited then
         return True;

      else
         return Left.Value >= Right.Value;
      end if;
   end ">=";

   ----------
   -- ">=" --
   ----------

   function ">=" (Left : Unlimited_Natural; Right : Integer) return Boolean is
   begin
      if Left.Unlimited then
         return True;

      else
         return Left.Value >= Right;
      end if;
   end ">=";

   ----------
   -- ">=" --
   ----------

   function ">=" (Left : Integer; Right : Unlimited_Natural) return Boolean is
   begin
      if Right.Unlimited then
         return False;

      else
         return Left >= Right.Value;
      end if;
   end ">=";

end AMF;
