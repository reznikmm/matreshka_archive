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
with Properties.Tools;

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
      Decl            : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Element);
      Is_Array_Buffer : constant Boolean :=
        Properties.Tools.Is_Array_Buffer (Decl);
      Convention      : constant Wide_String :=
        Properties.Tools.Get_Aspect (Decl, "Convention");
      Is_Array_Of_Simple : constant Boolean :=
        Engine.Boolean.Get_Property (Element, Engines.Is_Array_Of_Simple);

      Comp : constant Asis.Component_Definition :=
        Asis.Definitions.Array_Component_Definition (Element);
      View : constant Asis.Definition :=
        Asis.Definitions.Component_Definition_View (Comp);
      Result : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
   begin
      Result.Append ("(function(){");  --  Wrapper
      --  Create prototype
      Result.Append ("var _p=");

      if Is_Array_Buffer then
         if Convention = "Fortran" then
            Result.Append ("Object.create(_ec._fortran_array_ta.prototype);");
         else
            Result.Append ("Object.create(_ec._ada_array_ta.prototype);");
         end if;

         Result.Append ("_p._element_size =");
         Text := Engine.Text.Get_Property (View, Engines.Size);
         Result.Append (Text);  --  Size always x8 for TypedArray
         Result.Append ("/8;");

         if not Is_Array_Of_Simple then
            Text := Engine.Text.Get_Property
              (Asis.Definitions.Array_Component_Definition (Element),
               Name);

            Result.Append ("_p._element_type = ");
            Result.Append (Text);
            Result.Append (";");
         end if;
      else
         Result.Append ("Object.create(_ec.");

         if Is_Array_Of_Simple then
            Result.Append ("_ada_array_simple");
         else
            Result.Append ("_ada_array");
         end if;

         Result.Append (".prototype);");
      end if;

      Result.Append ("var _bound = [");  --  Bounds
      Text := Engine.Text.Get_Property (Element, Engines.Bounds);
      Result.Append (Text);
      Result.Append ("];");
      -- Set _length ot per dimension length, like _length[k] = S'Length (k)
      Result.Append
        ("_p._length=_bound[1].map (function (to, i)" &
           "{ return _ec._pos(to) - _ec._pos(_bound[0][i]) + 1; });");
      --  Set _total to total count of items
      Result.Append ("_p._total=_p._length.reduce (function (a, b)" &
                       "{ return a * b; }, 1);");
      Result.Append ("_p._first=_bound[0];");
      Result.Append ("_p._last=_bound[1];");

      Result.Append ("var _result = function (){");  --  Array constructor

      if Is_Array_Buffer then
         declare
            Align : constant Integer :=
              Engine.Integer.Get_Property (View, Engines.Alignment);
            Image : constant Wide_Wide_String :=
              Integer'Wide_Wide_Image (Align - 1);
         begin
            if Is_Array_Of_Simple then
               Text := Engine.Text.Get_Property
                 (View, Engines.Typed_Array_Item_Type);
               Result.Append ("this._ArrayBuffer");
               Result.Append (Text);
               Result.Append ("();");
            else
               Result.Append
                 ("this._ArrayBuffer(_p._total * ((_p._element_size + ");
               Result.Append (Image (2 .. Image'Last));
               Result.Append (") & ~");
               Result.Append (Image (2 .. Image'Last));
               Result.Append ("));");
            end if;
         end;

      else
         Result.Append ("var _data=Array(_p._total);");
         Result.Append ("for (var _j=0;_j<_p._total;_j++)");
         Result.Append ("_data[_j] = ");

         Text := Engine.Text.Get_Property
           (Asis.Definitions.Array_Component_Definition (Element),
            Engines.Initialize);

         Result.Append (Text);
         Result.Append (";");

         Result.Append ("this.A=_data;");
      end if;

      Result.Append ("this._offset=0;");
      Result.Append ("};");  --  End of constructor
      Result.Append ("_result.prototype=_p;");

      Result.Append ("return _result;");
      Result.Append ("})();");  --  End of Wrapper and call it

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
      Result.Append (" new ");

      Text :=
        Properties.Expressions.Identifiers.Name_Prefix (Engine, Element, Decl);

      Result.Append (Text);

      Text := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1),
         Engines.Code);

      Result.Append (Text);
      Result.Append ("()");

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
