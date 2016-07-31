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
with Asis.Definitions;
with Asis.Declarations;
with Asis.Elements;

with Properties.Expressions.Identifiers;

package body Properties.Definitions.Constrained_Array_Type is

   ---------------
   -- Alignment --
   ---------------

   function Alignment
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Integer_Property) return Integer
   is
      Comp : constant Asis.Definition :=
        Asis.Definitions.Array_Component_Definition (Element);
   begin
      return Engine.Integer.Get_Property (Comp, Name);
   end Alignment;

   ------------
   -- Bounds --
   ------------

   function Bounds
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      List : constant Asis.Definition_List :=
        Asis.Definitions.Discrete_Subtype_Definitions (Element);
      Result : League.Strings.Universal_String;
   begin
      Result.Append ("[");

      for J in List'Range loop
         Result.Append (Engine.Text.Get_Property (List (J), Engines.Lower));

         if J /= List'Last then
            Result.Append (",");
         end if;
      end loop;

      Result.Append ("], [");

      for J in List'Range loop
         Result.Append (Engine.Text.Get_Property (List (J), Engines.Upper));

         if J /= List'Last then
            Result.Append (",");
         end if;
      end loop;

      Result.Append ("]");

      return Result;
   end Bounds;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Decl : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Element);
      Result : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
   begin
      Text := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1), Name);

      Result.Append ("_ec.");
      Result.Append (Text);
      Result.Append (" = (function (){");
      Result.Append ("function _constructor(){");

      Result.Append ("function _init (_from,_to){");
      Result.Append ("var _first=_from.map (_ec._pos);");
      Result.Append ("var _len=_to.map (function (_to, i)" &
                       "{ return _ec._pos(_to) - _first[i] + 1; });");
      Result.Append ("var _length=_len.reduce (function (a, b)" &
                       "{ return a * b; }, 1);");
      Result.Append ("var _data=Array(_length);");
      Result.Append ("for (var _j=0;_j<_length;_j++)");
      Result.Append ("_data[_j] = ");

      Text := Engine.Text.Get_Property
        (Asis.Definitions.Array_Component_Definition (Element),
         Engines.Initialize);

      Result.Append (Text);
      Result.Append (";");

      Result.Append ("this.A=_data;");
      Result.Append ("this._first=_from;");
      Result.Append ("this._last=_to;");
      Result.Append ("this._length=_len;");
      Result.Append ("this._offset=0;};");
      Result.Append ("_init.call (this, ");

      Text := Engine.Text.Get_Property (Element, Engines.Bounds);
      Result.Append (Text);
      Result.Append (");");
      Result.Append ("};");

      Result.Append ("_constructor.prototype = _ec.");

      if Engine.Boolean.Get_Property (Element, Engines.Is_Array_Of_Simple) then
         Result.Append ("_ada_array_simple");
      else
         Result.Append ("_ada_array");
      end if;

      Result.Append (".prototype;");

      --  Write _new function
      Result.Append ("function _new(){");
      Result.Append ("var result=Object.create(_constructor.prototype);");
      Result.Append ("_constructor.apply(result, arguments);");
      Result.Append ("return result;");
      Result.Append ("};");

      --  Return resulting object
      Result.Append ("return {_constructor: _constructor, _new: _new};");
      Result.Append ("})();");

      return Result;
   end Code;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);

      Decl   : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Element);
      Result : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
   begin
      Text :=
        Properties.Expressions.Identifiers.Name_Prefix (Engine, Element, Decl);

      Result.Append (Text);

      Text := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1),
         Engines.Code);

      Result.Append (Text);
      Result.Append ("._new()");

      return Result;
   end Initialize;

   ------------------------
   -- Is_Array_Of_Simple --
   ------------------------

   function Is_Array_Of_Simple
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Boolean_Property) return Boolean
   is
      pragma Unreferenced (Name);
      Item : constant Asis.Component_Definition :=
        Asis.Definitions.Array_Component_Definition (Element);
      View : constant Asis.Definition :=
        Asis.Definitions.Component_Definition_View (Item);
   begin
      return Engine.Boolean.Get_Property (View, Engines.Is_Simple_Type);
   end Is_Array_Of_Simple;

   --------------------
   -- Is_Simple_Type --
   --------------------

   function Is_Simple_Type
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Boolean_Property) return Boolean
   is
      pragma Unreferenced (Engine, Element, Name);
   begin
      return False;
   end Is_Simple_Type;

   ----------
   -- Size --
   ----------

   function Size
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;
      Comp   : constant Asis.Definition :=
        Asis.Definitions.Array_Component_Definition (Element);
      Limits : constant League.Strings.Universal_String :=
          Engine.Text.Get_Property (Element, Engines.Bounds);
      Down   : League.Strings.Universal_String;
   begin
      Down := Engine.Text.Get_Property (Comp, Name);

      Result.Append ("(");
      Result.Append (Down);
      Result.Append (") * function (a, b){ return b[0] - a[0] + 1}(");
      Result.Append (Limits);
      Result.Append (")");

      return Result;
   end Size;

end Properties.Definitions.Constrained_Array_Type;
