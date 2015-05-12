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
with Asis.Elements;
with Asis.Expressions;

package body Properties.Expressions.Named_Array_Aggregate is

   function Get_Bounds
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      List    : Asis.Association_List)
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
      Result : League.Strings.Universal_String;
      List : constant Asis.Association_List :=
        Asis.Expressions.Array_Component_Associations (Element);
   begin
      Result.Append ("function(_from,_to){");
      Result.Append ("var _first=_ec._pos(_from);");
      Result.Append ("var _len=Math.max(_ec._pos(_to) - _first + 1, 0);");
      Result.Append ("var _result=Array(_len);");
      Result.Append ("var _j=0;");
      Result.Append ("_result._first=_from;");
      Result.Append ("_result._last=_to;");
      Result.Append ("_result._length=_len;");
      Result.Append ("for (var _x=_from;_j<_len;_j++, _x=_ec._succ(_x)){");
      Result.Append ("switch(_x){");

      for J in List'Range loop
         Result.Append (Engine.Text.Get_Property (List (J), Name));
      end loop;

      Result.Append ("}}return _result;}(");

      Result.Append (Get_Bounds (Engine, Element, List));

      Result.Append (")");

      return Result;
   end Code;

   ----------------
   -- Get_Bounds --
   ----------------

   function Get_Bounds
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      List    : Asis.Association_List)
      return League.Strings.Universal_String
   is
      use type Asis.Element_Kinds;
      Result  : League.Strings.Universal_String;
      Choices : constant Asis.Expression_List :=
        Asis.Expressions.Array_Component_Choices (List (List'Last));
   begin
      if Choices'Length = 1 and then
        Asis.Elements.Element_Kind (Choices (1)) = Asis.A_Definition
      then
         Result.Append
           (Engine.Text.Get_Property
              (Asis.Elements.Enclosing_Element (Element),
               Engines.Bounds));
      else
         declare
            Choices : constant Asis.Expression_List :=
              Asis.Expressions.Array_Component_Choices (List (List'First));
         begin
            Result.Append
              (Engine.Text.Get_Property
                 (Choices (1),
                  Engines.Code));
         end;

         Result.Append (",");

         Result.Append
           (Engine.Text.Get_Property
              (Choices (Choices'Last),
               Engines.Code));
      end if;

      return Result;
   end Get_Bounds;

end Properties.Expressions.Named_Array_Aggregate;
