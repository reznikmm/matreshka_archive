------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Asis.Expressions;

package body Properties.Expressions.Pos_Array_Aggregate is

   function Get_Bounds
     (List    : Asis.Association_List)
      return League.Strings.Universal_String;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      Down   : League.Strings.Universal_String;
      Result : League.Strings.Universal_String;
      List   : constant Asis.Association_List :=
        Asis.Expressions.Array_Component_Associations (Element);
      Length : constant Wide_Wide_String :=
        Asis.ASIS_Integer'Wide_Wide_Image (List'Length);
   begin
      Result.Append ("function(_from,_to){");
      Result.Append ("var _data=[");

      for J in List'Range loop
         Down := Engine.Text.Get_Property
           (Asis.Expressions.Component_Expression (List (J)),
            Name);

         Result.Append (Down);

         if J /= List'Last then
            Result.Append (", ");
         end if;
      end loop;
      Result.Append ("];");
      Result.Append ("var _result=Object.create(_ec._ada_array);");
      Result.Append ("_result._first=_from;");
      Result.Append ("_result._last=_to;");
      Result.Append ("_result._length=[");
      Result.Append (Length (2 .. Length'Last));
      Result.Append ("];");
      Result.Append ("_result._offset=0;");
      Result.Append ("_result.A=_data;");

      Result.Append ("return _result;}(");

      Result.Append (Get_Bounds (List));

      Result.Append (")");

      return Result;
   end Code;

   ----------------
   -- Get_Bounds --
   ----------------

   function Get_Bounds
     (List    : Asis.Association_List)
      return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;
      Length : constant Wide_Wide_String :=
        Asis.ASIS_Integer'Wide_Wide_Image (List'Length);
   begin
      Result.Append ("[1], [");
      Result.Append (Length (2 .. Length'Last));
      Result.Append ("]");

      return Result;
   end Get_Bounds;

end Properties.Expressions.Pos_Array_Aggregate;
