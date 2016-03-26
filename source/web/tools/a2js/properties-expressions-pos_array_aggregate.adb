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
with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;
with Asis.Iterator;

package body Properties.Expressions.Pos_Array_Aggregate is

   function Get_Bounds
     (List    : Asis.Association_List)
      return League.Strings.Universal_String;

   function Is_Typed_Array
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression) return Boolean;

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

      Typed_Array : constant Boolean := Is_Typed_Array (Engine, Element);
   begin
      Result.Append ("function(_from,_to){");
      Result.Append ("var _result=Object.create(_ec._ada_array);");

      if Typed_Array then
         Result.Append ("_result._ArrayBuffer(3*16);");

         for J in List'Range loop
            Down := Engine.Text.Get_Property
              (Asis.Expressions.Component_Expression (List (J)),
               Engines.Typed_Array_Initialize);

            Result.Append (Down);
         end loop;

      else
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
         Result.Append ("_result.A=_data;");

      end if;

      Result.Append ("_result._first=_from;");
      Result.Append ("_result._last=_to;");
      Result.Append ("_result._length=[");
      Result.Append (Length (2 .. Length'Last));
      Result.Append ("];");
      Result.Append ("_result._offset=0;");

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

   --------------------
   -- Is_Typed_Array --
   --------------------

   function Is_Typed_Array
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression) return Boolean
   is
      pragma Unreferenced (Engine);
      Tipe : constant Asis.Expression :=
        Asis.Expressions.Corresponding_Expression_Type (Element);
      Env  : Asis.Element;
   begin
      if Asis.Elements.Is_Nil (Tipe) then
         return False;
      else
         Env := Asis.Elements.Enclosing_Element (Tipe);
      end if;

      declare
         Name : constant Asis.Program_Text :=
           Asis.Declarations.Defining_Name_Image
             (Asis.Declarations.Names (Tipe) (1));

         procedure Pre_Operation
           (Element :        Asis.Element;
            Control : in out Asis.Traverse_Control;
            State   : in out Boolean);

         procedure Post_Operation
           (Element :        Asis.Element;
            Control : in out Asis.Traverse_Control;
            State   : in out Boolean) is null;

         -------------------
         -- Pre_Operation --
         -------------------

         procedure Pre_Operation
           (Element :        Asis.Element;
            Control : in out Asis.Traverse_Control;
            State   : in out Boolean)
         is
            use type Asis.Pragma_Kinds;
         begin
            if Asis.Elements.Pragma_Kind (Element)
                 = Asis.An_Unknown_Pragma
            then
               declare
                  Image : constant Asis.Program_Text :=
                    Asis.Elements.Pragma_Name_Image (Element);
               begin
                  if Image = "JavaScript_Typed_Array" then
                     declare
                        Args : constant Asis.Association_List :=
                          Asis.Elements.Pragma_Argument_Associations (Element);
                        Arg : Asis.Expression;
                     begin
                        pragma Assert
                          (Args'Length = 1,
                           "Expected one argument in pragma"
                           &" JavaScript_Typed_Array");

                        Arg := Asis.Expressions.Actual_Parameter (Args (1));

                        if Name = Asis.Expressions.Name_Image (Arg) then
                           State := True;
                           Control := Asis.Terminate_Immediately;
                        end if;
                     end;
                  end if;
               end;
            elsif not Asis.Elements.Is_Identical (Element, Env) then
               Control := Asis.Abandon_Children;
            end if;
         end Pre_Operation;

         procedure Search_Typed_Array_Pragma is
           new Asis.Iterator.Traverse_Element
             (State_Information => Boolean,
              Pre_Operation     => Pre_Operation,
              Post_Operation    => Post_Operation);

         Control : Asis.Traverse_Control := Asis.Continue;
         Found   : Boolean := False;
      begin
         Search_Typed_Array_Pragma (Env, Control, Found);

         return Found;
      end;
   end Is_Typed_Array;

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
      Tipe    : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Element);
      Def     : Asis.Type_Definition;
      Comp    : Asis.Definition;
      View    : Asis.Definition;
      Decl    : Asis.Declaration;
      JS_Type : League.Strings.Universal_String;
      List    : constant Asis.Association_List :=
        Asis.Expressions.Array_Component_Associations (Element);
   begin
      if not Asis.Elements.Is_Nil (Tipe) then
         Def  := Asis.Declarations.Type_Declaration_View (Tipe);
         Comp := Asis.Definitions.Array_Component_Definition (Def);
         View := Asis.Definitions.Component_Definition_View (Comp);

         JS_Type := Engine.Text.Get_Property
           (View, Engines.Typed_Array_Item_Type);
      else
         --  Otherwise suppose we have subaggregate here. So just go deeper
         Item := Asis.Expressions.Component_Expression (List (List'First));
         Decl := Asis.Expressions.Corresponding_Expression_Type (Item);

         pragma Assert (not Asis.Elements.Is_Nil (Decl));

         JS_Type := Engine.Text.Get_Property
           (Decl, Engines.Typed_Array_Item_Type);
      end if;

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
            Result.Append ("_result._push_");
            Result.Append (JS_Type);
            Result.Append ("(");
            Result.Append (Down);
            Result.Append (");");
         end if;

      end loop;

      return Result;
   end Typed_Array_Initialize;

end Properties.Expressions.Pos_Array_Aggregate;
