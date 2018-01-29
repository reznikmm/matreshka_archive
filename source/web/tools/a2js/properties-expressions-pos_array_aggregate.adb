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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;

with Properties.Expressions.Identifiers;
with Properties.Tools;

package body Properties.Expressions.Pos_Array_Aggregate is

   function Get_Bounds
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Depth   : Natural;
      List    : Asis.Association_List)
      return League.Strings.Universal_String;

   function Is_Array_Buffer
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression) return Boolean;

   function Component
     (Element : Asis.Expression;
      List    : Asis.Association_List) return Asis.Definition;
   --  Return Element's component definition.
   --  List should be Component_Associations (Element)

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      procedure Append_Elements;
      procedure Append_Type_Array_Elements
        (List  : Asis.Association_List;
         Depth : Positive);

      Array_Buffer   : constant Boolean := Is_Array_Buffer (Engine, Element);
      Depth          : constant Natural :=
        Properties.Tools.Get_Dimension (Element);
      List           : constant Asis.Association_List :=
        Asis.Expressions.Array_Component_Associations (Element);
      Comp           : constant Asis.Definition := Component (Element, List);
      Is_Simple_Comp : constant Boolean :=
        Engine.Boolean.Get_Property (Comp, Engines.Is_Simple_Type);
      Down           : League.Strings.Universal_String;
      Result         : League.Strings.Universal_String;
      JS_Type        : League.Strings.Universal_String;
      Type_Decl      : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Element);
      Is_Constrained : Boolean := False;

      ---------------------
      -- Append_Elements --
      ---------------------

      procedure Append_Elements is
         Down : League.Strings.Universal_String;
      begin
         Result.Append ("[");

         Down := Engine.Text.Get_Property
           (List  => List,
            Name  => Name,
            Empty => League.Strings.Empty_Universal_String,
            Sum   => Properties.Tools.Join'Access);

         Result.Append (Down);

         Result.Append ("]");
      end Append_Elements;

      --------------------------------
      -- Append_Type_Array_Elements --
      --------------------------------

      procedure Append_Type_Array_Elements
        (List  : Asis.Association_List;
         Depth : Positive) is
      begin
         for J in List'Range loop
            declare
               Expr : constant Asis.Expression :=
                 Asis.Expressions.Component_Expression (List (J));
            begin
               if Depth = 1 then
                  Down := Engine.Text.Get_Property (Expr, Name);

                  if JS_Type.Is_Empty then
                     Result.Append ("_result._push_ta");
                     Result.Append ("(");
                     Result.Append (Down);
                     Result.Append (");");
                  else
                     Result.Append ("_result._push");
                     Result.Append (JS_Type);
                     Result.Append ("(");
                     Result.Append (Down);
                     Result.Append (");");
                  end if;
               else
                  declare
                     Children : constant Asis.Association_List :=
                       Asis.Expressions.Array_Component_Associations (Expr);
                  begin
                     Append_Type_Array_Elements (Children, Depth - 1);
                  end;
               end if;
            end;
         end loop;
      end Append_Type_Array_Elements;

   begin
      if Depth = 0 then
         Append_Elements;
         return Result;
      end if;

      if not Asis.Elements.Is_Nil (Type_Decl) then
         declare
            use type Asis.Type_Kinds;
            View : constant Asis.Definition :=
              Tools.Type_Declaration_View (Type_Decl);
         begin
            Is_Constrained := Asis.Elements.Type_Kind (View) =
              Asis.A_Constrained_Array_Definition;
         end;
      end if;

      if Array_Buffer then
         declare
            Size : constant League.Strings.Universal_String :=
              Engine.Text.Get_Property (Comp, Engines.Size);
            Align : constant Integer :=
              Engine.Integer.Get_Property (Comp, Engines.Alignment);
            Image : constant Wide_Wide_String :=
              Integer'Wide_Wide_Image (Align - 1);
         begin
            if Is_Constrained then
               Result.Append ("function(){");
               Result.Append ("var _result=new ");
               Down := Properties.Expressions.Identifiers.Name_Prefix
                 (Engine, Element, Type_Decl);
               Result.Append (Down);
               Down := Engine.Text.Get_Property
                 (Asis.Declarations.Names (Type_Decl) (1), Engines.Code);
               Result.Append (Down);
               Result.Append ("();");
            else
               Result.Append ("function(_from,_to){");
               Result.Append
                 ("var _result=Object.create(_ec._ada_array_ta.prototype);");
               Result.Append ("var _first=_from.map (_ec._pos);");
               Result.Append ("var _len=_to.map (function (_to, i)" &
                                "{ return _ec._pos(_to) - _first[i] + 1; });");
               Result.Append ("var _length=_len.reduce (function (a, b)" &
                                "{ return a * b; }, 1);");
               Result.Append ("_result._length=_len;");
               Result.Append ("_result._element_size=");
               Result.Append (Size);  --  Size always x8 for TypedArray
               Result.Append ("/8;");

               if Is_Simple_Comp then
                  Down := Engine.Text.Get_Property
                    (Comp, Engines.Typed_Array_Item_Type);
                  Result.Append ("_result._ArrayBuffer");
                  Result.Append (Down);
                  Result.Append ("();");
               else
                  Result.Append ("_result._ArrayBuffer(_length*((");
                  Result.Append ("_result._element_size + ");
                  Result.Append (Image (2 .. Image'Last));
                  Result.Append (") & ~");
                  Result.Append (Image (2 .. Image'Last));
                  Result.Append ("));");
               end if;
            end if;
         end;

         JS_Type := Engine.Text.Get_Property
           (Comp, Engines.Typed_Array_Item_Type);

         Append_Type_Array_Elements (list, Depth);

         if not Is_Constrained then
            Result.Append ("_result._first=_from;");
            Result.Append ("_result._last=_to;");
            Result.Append ("_result._offset=0;");

            Result.Append ("return _result;}(");

            Result.Append (Get_Bounds (Engine, Element, Depth, List));
            Result.Append (")");
         else
            Result.Append ("return _result;}()");
         end if;

      else
         Result.Append ("(new _ec.");

         if Is_Simple_Comp then
            Result.Append ("_ada_array_simple");
         else
            Result.Append ("_ada_array");
         end if;

         Result.Append ("(");
         Append_Elements;
         Result.Append (", ");
         Result.Append (Get_Bounds (Engine, Element, Depth, List));
         Result.Append ("))");

      end if;

      return Result;
   end Code;

   ---------------
   -- Component --
   ---------------

   function Component
     (Element : Asis.Expression;
      List    : Asis.Association_List) return Asis.Definition
   is
      Tipe    : Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Element);
      Def     : Asis.Type_Definition;
      Comp    : Asis.Definition;
      View    : Asis.Definition;
      Decl    : Asis.Declaration;
      Item    : Asis.Expression;
   begin
      if Asis.Elements.Declaration_Kind (Tipe)
        in Asis.A_Private_Type_Declaration
      then
         Tipe := Asis.Declarations.Corresponding_Type_Completion (Tipe);
      end if;

      while Asis.Elements.Declaration_Kind (Tipe) in
        Asis.A_Subtype_Declaration
      loop
         Def := Asis.Declarations.Type_Declaration_View (Tipe);
         Item := Asis.Definitions.Subtype_Mark (Def);

         if Asis.Elements.Expression_Kind (Item) in
           Asis.A_Selected_Component
         then
            Item := Asis.Expressions.Selector (Item);
         end if;

         Tipe := Asis.Expressions.Corresponding_Name_Declaration (Item);
      end loop;

      if not Asis.Elements.Is_Nil (Tipe) then
         Def  := Properties.Tools.Type_Declaration_View (Tipe);
         Comp := Asis.Definitions.Array_Component_Definition (Def);
         View := Asis.Definitions.Component_Definition_View (Comp);

      else
         --  Otherwise suppose we have subaggregate here. So just go deeper
         Item := Asis.Expressions.Component_Expression (List (List'First));
         Decl := Asis.Expressions.Corresponding_Expression_Type (Item);
         View := Asis.Declarations.Type_Declaration_View (Decl);
         pragma Assert (not Asis.Elements.Is_Nil (Decl));

      end if;

      return View;
   end Component;

   ----------------
   -- Get_Bounds --
   ----------------

   function Get_Bounds
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Depth   : Natural;
      List    : Asis.Association_List)
      return League.Strings.Universal_String
   is
      use type Asis.Definition_Kinds;

      procedure Travel
        (Depth : Positive;
         List  : Asis.Association_List;
         Lower : in out League.Strings.Universal_String;
         Upper : in out League.Strings.Universal_String);

      ------------
      -- Travel --
      ------------

      procedure Travel
        (Depth : Positive;
         List  : Asis.Association_List;
         Lower : in out League.Strings.Universal_String;
         Upper : in out League.Strings.Universal_String)
      is
      begin
         if not Lower.Is_Empty then
            Lower.Append (", ");
            Upper.Append (", ");
         end if;

         declare
            Choices : constant Asis.Expression_List :=
              Asis.Expressions.Array_Component_Choices (List (List'First));
         begin
            if Choices'Length = 0 then
               Lower.Append ("1");
            else
               Lower.Append
                 (Engine.Text.Get_Property
                    (Choices (Choices'First), Engines.Code));
            end if;
         end;

         declare
            Choices : constant Asis.Expression_List :=
              Asis.Expressions.Array_Component_Choices (List (List'Last));
         begin
            if Choices'Length = 0 then
               declare
                  Length : constant Wide_Wide_String :=
                    Asis.ASIS_Integer'Wide_Wide_Image (List'Length);
               begin
                  Upper.Append (Length);
               end;
            else
               Upper.Append
                 (Engine.Text.Get_Property
                    (Choices (Choices'Last), Engines.Code));
            end if;
         end;

         if Depth > 1 then
            declare
               Down : constant Asis.Expression :=
                 Asis.Expressions.Component_Expression (List (List'First));
            begin
               Travel
                 (Depth - 1,
                  Asis.Expressions.Array_Component_Associations (Down),
                  Lower,
                  Upper);
            end;
         end if;
      end Travel;

      Result  : League.Strings.Universal_String;
      Choices : constant Asis.Expression_List :=
        Asis.Expressions.Array_Component_Choices (List (List'Last));
   begin
      if Choices'Length = 1 and then
        Asis.Elements.Definition_Kind (Choices (1)) in
          Asis.An_Others_Choice | Asis.A_Discrete_Range
      then
         Result.Append
           (Engine.Text.Get_Property
              (Asis.Elements.Enclosing_Element (Element),
               Engines.Bounds));
      elsif Depth > 0 then
         declare
            Lower  : League.Strings.Universal_String;
            Upper  : League.Strings.Universal_String;
         begin
            Travel (Depth, List, Lower, Upper);
            Result.Append ("[");
            Result.Append (Lower);
            Result.Append ("], [");
            Result.Append (Upper);
            Result.Append ("]");
         end;
      end if;

      return Result;
   end Get_Bounds;

   ---------------------
   -- Is_Array_Buffer --
   ---------------------

   function Is_Array_Buffer
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression) return Boolean
   is
      pragma Unreferenced (Engine);
      Tipe : constant Asis.Expression :=
        Asis.Expressions.Corresponding_Expression_Type (Element);

   begin
      if Asis.Elements.Is_Nil (Tipe) then
         return False;

      else
         return Properties.Tools.Is_Array_Buffer (Tipe);
      end if;
   end Is_Array_Buffer;

   ----------------------------
   -- Typed_Array_Initialize --
   ----------------------------

   function Typed_Array_Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Result  : League.Strings.Universal_String;
      Down    : League.Strings.Universal_String;
      Item    : Asis.Expression;
      List    : constant Asis.Association_List :=
        Asis.Expressions.Array_Component_Associations (Element);
      Comp    : constant Asis.Definition := Component (Element, List);
      JS_Type : League.Strings.Universal_String;
   begin
      JS_Type := Engine.Text.Get_Property
        (Comp, Engines.Typed_Array_Item_Type);

      for J in List'Range loop
         pragma Assert (Asis.Expressions.Array_Component_Choices
                        (List (J))'Length = 0,
                        "Named associations in Typed_Array aggregate"
                        & " are not supported");

         Item := Asis.Expressions.Component_Expression (List (J));

         if JS_Type.Is_Empty then
            Down := Engine.Text.Get_Property (Item, Name);
            Result.Append (Down);
         else
            Down := Engine.Text.Get_Property (Item, Engines.Code);
            Result.Append ("_result._push");
            Result.Append (JS_Type);
            Result.Append ("(");
            Result.Append (Down);
            Result.Append (");");
         end if;

      end loop;

      return Result;
   end Typed_Array_Initialize;

end Properties.Expressions.Pos_Array_Aggregate;
