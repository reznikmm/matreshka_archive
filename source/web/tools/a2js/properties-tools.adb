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
with Asis.Clauses;
with Asis.Compilation_Units;
with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;
with Asis.Iterator;
with Asis.Statements;

with League.String_Vectors;

package body Properties.Tools is

   function Name_Image
     (Name : Asis.Name) return League.Strings.Universal_String;

   function Full_Type_View
     (Type_Definition : Asis.Type_Definition) return Asis.Type_Definition;

   --------------------------
   -- Attribute_Definition --
   --------------------------

   function Attribute_Definition
     (Decl : Asis.Declaration;
      Attr : Wide_String) return Asis.Expression
   is
      Parent : constant Asis.Declaration := Enclosing_Declaration (Decl);
      Name   : Asis.Name := Asis.Declarations.Names (Decl) (1);
      Image  : constant Wide_String :=
        Asis.Declarations.Defining_Name_Image (Name);
   begin
      case Asis.Elements.Declaration_Kind (Parent) is
         when Asis.A_Package_Declaration =>
            declare
               use type Asis.Expression_Kinds;
               use type Asis.Representation_Clause_Kinds;
               use type Asis.Declaration_List;
               List : constant Asis.Declaration_List :=
                 Asis.Declarations.Visible_Part_Declarative_Items (Parent) &
                 Asis.Declarations.Private_Part_Declarative_Items (Parent);
            begin
               for Item in List'Range loop
                  if Asis.Elements.Representation_Clause_Kind (List (Item))
                      = Asis.An_Attribute_Definition_Clause
                  then
                     Name :=
                       Asis.Clauses.Representation_Clause_Name (List (Item));

                     if Asis.Elements.Expression_Kind (Name) =
                       Asis.An_Attribute_Reference
                       and then
                         Asis.Expressions.Name_Image
                           (Asis.Expressions.Prefix (Name)) = Image
                       and then
                         Asis.Expressions.Name_Image
                           (Asis.Expressions.Attribute_Designator_Identifier
                              (Name)) = Attr
                     then
                        return Asis.Clauses.Representation_Clause_Expression
                          (List (Item));
                     end if;
                  end if;
               end loop;
            end;
         when others =>
            null;
      end case;

      return Asis.Nil_Element;
   end Attribute_Definition;

   --------------------------------
   -- Array_Component_Definition --
   --------------------------------

   function Array_Component_Definition
     (Type_Definition : Asis.Type_Definition)
      return Asis.Component_Definition
   is
      Subtipe_Indication : Asis.Subtype_Indication;
      Mark               : Asis.Expression;
      Decl               : Asis.Declaration;
      View               : Asis.Type_Definition :=
        Type_Declaration_View
          (Asis.Elements.Enclosing_Element (Type_Definition));
   begin
      if Asis.Elements.Type_Kind (View) in Asis.An_Access_Type_Definition then
         Subtipe_Indication :=
           Asis.Definitions.Access_To_Object_Definition (View);
         Mark := Asis.Definitions.Subtype_Mark (Subtipe_Indication);
         Decl := Corresponding_Declaration (Mark);
         View := Asis.Declarations.Type_Declaration_View (Decl);
      end if;

      return Asis.Definitions.Array_Component_Definition (View);
   end Array_Component_Definition;

   -----------
   -- Comma --
   -----------

   function Comma
     (Left, Right : League.Strings.Universal_String)
      return League.Strings.Universal_String
   is
      use type League.Strings.Universal_String;
   begin
      if Left.Is_Empty then
         return Right;
      elsif Right.Is_Empty then
         return Left;
      else
         return Left & "," & Right;
      end if;
   end Comma;

   -------------------------------
   -- Corresponding_Declaration --
   -------------------------------

   function Corresponding_Declaration
     (Name : Asis.Expression) return Asis.Declaration
   is
      Mark : Asis.Subtype_Mark := Name;
   begin
      case Asis.Elements.Expression_Kind (Mark) is
         when Asis.A_Selected_Component =>
            Mark := Asis.Expressions.Selector (Mark);
         when others =>
            null;
      end case;

      return Asis.Expressions.Corresponding_Name_Declaration (Mark);
   end Corresponding_Declaration;

   ------------------------
   -- Corresponding_Type --
   ------------------------

   function Corresponding_Type
     (Declaration : Asis.Declaration) return Asis.Declaration
   is
      List : constant Asis.Declaration_List :=
        Asis.Declarations.Parameter_Profile (Declaration);
      View : constant Asis.Element :=
        Asis.Declarations.Object_Declaration_View (List (List'First));
      Mark : Asis.Subtype_Mark;
   begin
      case Asis.Elements.Access_Definition_Kind (View) is
         when Asis.An_Anonymous_Access_To_Variable |
              Asis.An_Anonymous_Access_To_Constant =>

            Mark :=
              Asis.Definitions.Anonymous_Access_To_Object_Subtype_Mark (View);

         when others =>
            Mark := View;
      end case;

      return Corresponding_Declaration (Mark);
   end Corresponding_Type;

   -----------------------------------
   -- Corresponding_Type_Components --
   -----------------------------------

   function Corresponding_Type_Components
     (Definition : Asis.Definition) return Asis.Declaration_List
   is
      function Filter
        (List : Asis.Record_Component_List)
         return Asis.Declaration_List;
      --  Filter out anything except component declaration, flatten variants.

      function Flatten_Variant_List
        (List : Asis.Variant_List)
         return Asis.Declaration_List;
      --  The same for given Variant_List

      ------------
      -- Filter --
      ------------

      function Filter
        (List : Asis.Record_Component_List)
         return Asis.Declaration_List
      is
         use type Asis.Record_Component_List;
      begin
         for J in List'Range loop
            case Asis.Elements.Element_Kind (List (J)) is
               when Asis.A_Declaration =>
                  null;
               when Asis.A_Clause =>
                  return List (List'First .. J - 1) &
                    Filter (List (J + 1 .. List'Last));
               when Asis.A_Definition =>
                  case Asis.Elements.Definition_Kind (List (J)) is
                     when Asis.A_Variant_Part =>
                        return List (List'First .. J - 1) &
                          Corresponding_Type_Components (List (J)) &
                          Filter (List (J + 1 .. List'Last));
                     when others =>
                        return List (List'First .. J - 1) &
                          Filter (List (J + 1 .. List'Last));
                  end case;
               when others =>
                  raise Constraint_Error;
            end case;
         end loop;

         return List;
      end Filter;

      --------------------------
      -- Flatten_Variant_List --
      --------------------------

      function Flatten_Variant_List
        (List : Asis.Variant_List)
         return Asis.Declaration_List
      is
         Length : Natural := 0;
      begin
         for J in List'Range loop
            declare
               X : constant Asis.Declaration_List :=
                 Asis.Definitions.Record_Components (List (J));
            begin
               Length := Length + X'Length;
            end;
         end loop;

         declare
            Result : Asis.Declaration_List (1 .. Length);
         begin
            Length := 0;
            for J in List'Range loop
               declare
                  X : constant Asis.Declaration_List :=
                    Asis.Definitions.Record_Components (List (J));
               begin
                  Result (Length + 1 .. Length + X'Length) := X;
                  Length := Length + X'Length;
               end;
            end loop;

            return Filter (Result);
         end;
      end Flatten_Variant_List;

      Def_Kind : constant Asis.Definition_Kinds :=
        Asis.Elements.Definition_Kind (Definition);
      Type_Kind : constant Asis.Type_Kinds :=
        Asis.Elements.Type_Kind (Definition);
   begin
      case Def_Kind is
         when Asis.A_Null_Record_Definition =>

            return Asis.Nil_Element_List;

         when Asis.A_Private_Type_Definition |
              Asis.A_Tagged_Private_Type_Definition
            =>
            return Corresponding_Type_Components (Full_Type_View (Definition));

         when Asis.A_Record_Definition =>

            return Filter (Asis.Definitions.Record_Components (Definition));

         when Asis.A_Type_Definition =>

            case Type_Kind is
               when Asis.A_Derived_Record_Extension_Definition |
                    Asis.A_Record_Type_Definition |
                    Asis.A_Tagged_Record_Type_Definition =>

                  return Corresponding_Type_Components
                    (Asis.Definitions.Record_Definition (Definition));

               when Asis.An_Interface_Type_Definition =>

                  return Asis.Nil_Element_List;

               when Asis.A_Derived_Type_Definition =>
                  return Corresponding_Type_Components
                           (Type_Declaration_View
                              (Asis.Elements.Enclosing_Element (Definition)));

               when others =>

                  raise Program_Error;
            end case;

         when Asis.A_Variant_Part =>
            return Flatten_Variant_List
              (Asis.Definitions.Variants (Definition));

         when others =>

            raise Program_Error;
      end case;
   end Corresponding_Type_Components;

   --------------------------------------
   -- Corresponding_Type_Discriminants --
   --------------------------------------

   function Corresponding_Type_Discriminants
     (Definition : Asis.Definition) return Asis.Declaration_List
   is

      function Discriminants
        (Decl : Asis.Declaration) return Asis.Declaration_List;

      function Parent_Discriminants
        (Parent : Asis.Subtype_Indication) return Asis.Declaration_List;

      -------------------
      -- Discriminants --
      -------------------

      function Discriminants
        (Decl : Asis.Declaration) return Asis.Declaration_List
      is
         Kind : constant Asis.Declaration_Kinds :=
           Asis.Elements.Declaration_Kind (Decl);
      begin
         case Kind is
            when Asis.A_Full_Type_Declaration |
                Asis.A_Private_Extension_Declaration =>
               declare
                  Part : constant Asis.Element :=
                    Asis.Declarations.Discriminant_Part (Decl);
                  View : constant Asis.Element :=
                    Asis.Declarations.Type_Declaration_View (Decl);
                  View_Kind : constant Asis.Type_Kinds :=
                    Asis.Elements.Type_Kind (View);
                  Parent : Asis.Subtype_Indication;
                  Constr : Asis.Constraint;
               begin
                  case Asis.Elements.Definition_Kind (Part) is
                     when Asis.A_Known_Discriminant_Part =>
                        return Asis.Definitions.Discriminants (Part);
                     when others =>
                        null;
                  end case;

                  case View_Kind is
                     when Asis.A_Derived_Type_Definition |
                          Asis.A_Derived_Record_Extension_Definition =>

                        Parent :=
                          Asis.Definitions.Parent_Subtype_Indication (View);

                        Constr := Asis.Definitions.Subtype_Constraint (Parent);

                        if Asis.Elements.Is_Nil (Constr) then
                           return Parent_Discriminants (Parent);
                        else
                           return Asis.Nil_Element_List;
                        end if;

                     when others =>
                        null;
                  end case;
               end;
            when others =>
               null;
         end case;

         return Asis.Nil_Element_List;
      end Discriminants;

      --------------------------
      -- Parent_Discriminants --
      --------------------------

      function Parent_Discriminants
        (Parent : Asis.Subtype_Indication) return Asis.Declaration_List
      is
         Mark : constant Asis.Subtype_Mark :=
           Asis.Definitions.Subtype_Mark (Parent);
         Decl : constant Asis.Declaration := Corresponding_Declaration (Mark);
      begin
         return Discriminants (Decl);
      end Parent_Discriminants;

      Decl : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Definition);
   begin
      return Discriminants (Decl);
   end Corresponding_Type_Discriminants;

   ------------------------------------
   -- Corresponding_Type_Subprograms --
   ------------------------------------

   function Corresponding_Type_Subprograms
     (Definition : Asis.Definition) return Asis.Declaration_List
   is
      use type Asis.Declaration_Kinds;
      Decl : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Definition);
      Pkg  : constant Asis.Element := Asis.Elements.Enclosing_Element (Decl);
   begin
      if Asis.Elements.Declaration_Kind (Pkg) = Asis.A_Package_Declaration then
         declare
            use type Asis.Element_List;

            List : Asis.Element_List :=
              Asis.Declarations.Visible_Part_Declarative_Items (Pkg) &
              Asis.Declarations.Private_Part_Declarative_Items (Pkg);
            Last : Natural := 0;
         begin
            for J in List'Range loop
               if Asis.Elements.Declaration_Kind (List (J)) in
                     Asis.A_Procedure_Declaration
                   | Asis.A_Null_Procedure_Declaration
                   | Asis.A_Function_Declaration
                   | Asis.An_Expression_Function_Declaration
                 and then Is_Primitive_Subprogram (Definition, List (J))
               then
                  Last := Last + 1;
                  List (Last) := List (J);
               end if;
            end loop;

            return List (1 .. Last);
         end;
      else
         return Asis.Nil_Element_List;
      end if;
   end Corresponding_Type_Subprograms;

   ---------------------------
   -- Enclosing_Declaration --
   ---------------------------

   function Enclosing_Declaration (X : Asis.Element) return Asis.Declaration is
      use type Asis.Element_Kinds;
      Parent : Asis.Element := Asis.Elements.Enclosing_Element (X);
   begin
      while not Asis.Elements.Is_Nil (Parent) and then
        Asis.Elements.Element_Kind (Parent) /= Asis.A_Declaration
      loop
         Parent := Asis.Elements.Enclosing_Element (Parent);
      end loop;

      return Parent;
   end Enclosing_Declaration;

   --------------------
   -- Full_Type_View --
   --------------------

   function Full_Type_View
     (Type_Definition : Asis.Type_Definition) return Asis.Type_Definition
   is
      Decl : Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Type_Definition);
   begin
      while Asis.Elements.Declaration_Kind (Decl) in
        Asis.An_Incomplete_Type_Declaration |
        Asis.A_Tagged_Incomplete_Type_Declaration |
        Asis.A_Private_Type_Declaration |
        Asis.A_Private_Extension_Declaration
      loop
         Decl :=
           Asis.Declarations.Corresponding_Type_Completion (Decl);
      end loop;

      return Asis.Declarations.Type_Declaration_View (Decl);
   end Full_Type_View;

   ----------------
   -- Get_Aspect --
   ----------------

   function Get_Aspect
     (Element : Asis.Declaration;
      Name    : Wide_String)
      return Wide_String
   is
      Mark : Asis.Expression;
      List : constant Asis.Declaration_List :=
        Asis.Declarations.Aspect_Specifications (Element);
   begin
      for J in List'Range loop
         Mark := Asis.Definitions.Aspect_Mark (List (J));
         if Asis.Expressions.Name_Image (Mark) = Name then
            declare
               Exp : constant Asis.Expression :=
                 Asis.Definitions.Aspect_Definition (List (J));
            begin
               case Asis.Elements.Expression_Kind (Exp) is
                  when Asis.An_Integer_Literal |
                       Asis.A_Real_Literal =>
                     return Asis.Expressions.Value_Image (Exp);
                  when Asis.A_String_Literal =>
                     declare
                        Result : constant Wide_String :=
                          Asis.Expressions.Value_Image (Exp);
                     begin
                        return Result (2 .. Result'Last - 1);
                     end;
                  when others =>
                     return Asis.Expressions.Name_Image (Exp);
               end case;
            end;
         end if;
      end loop;

      return "";
   end Get_Aspect;

   -------------------
   -- Get_Dimension --
   -------------------

   function Get_Dimension (Exp : Asis.Expression) return Natural is
      Tipe   : Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Exp);
      View : Asis.Definition;
   begin
      if Asis.Elements.Declaration_Kind (Tipe)
        in Asis.A_Private_Type_Declaration
      then
         Tipe := Asis.Declarations.Corresponding_Type_Completion (Tipe);
      end if;

      if Asis.Elements.Is_Nil (Tipe) then
         declare
            Enclosing : constant Asis.Declaration :=
              Asis.Elements.Enclosing_Element (Exp);
         begin
            if Asis.Elements.Declaration_Kind (Enclosing) in
              Asis.An_Object_Declaration
            then
               View := Asis.Declarations.Object_Declaration_View (Enclosing);
            else
               return 0;
            end if;
         end;
      else
         View := Asis.Declarations.Type_Declaration_View (Tipe);
      end if;

      if Asis.Elements.Definition_Kind (View) in Asis.A_Subtype_Indication then
         declare
            Constraint : constant Asis.Constraint :=
              Asis.Definitions.Subtype_Constraint (View);
         begin
            if Asis.Elements.Is_Nil (Constraint) then
               raise Constraint_Error;
            else
               declare
                  Ranges : constant Asis.Discrete_Range_List :=
                    Asis.Definitions.Discrete_Ranges (Constraint);
               begin
                  return Ranges'Length;
               end;
            end if;
         end;
      end if;

      loop
         case Asis.Elements.Type_Kind (View) is
            when Asis.A_Constrained_Array_Definition =>
               return Asis.Definitions
                 .Discrete_Subtype_Definitions (View)'Length;
            when Asis.An_Unconstrained_Array_Definition =>
               return Asis.Definitions.Index_Subtype_Definitions (View)'Length;
            when Asis.A_Derived_Type_Definition =>
               declare
                  SI : constant Asis.Subtype_Indication :=
                    Asis.Definitions.Parent_Subtype_Indication (View);
                  Mark : Asis.Subtype_Mark :=
                    Asis.Definitions.Subtype_Mark (SI);
                  Decl : Asis.Declaration;
               begin
                  if Asis.Elements.Expression_Kind (Mark) in
                    Asis.A_Selected_Component
                  then
                     Mark := Asis.Expressions.Selector (Mark);
                  end if;

                  Decl :=
                    Asis.Expressions.Corresponding_Name_Declaration (Mark);

                  View := Asis.Declarations.Type_Declaration_View (Decl);
               end;

            when others =>
               raise Constraint_Error;
         end case;
      end loop;
   end Get_Dimension;

   ----------------------------
   -- Has_Controlling_Result --
   ----------------------------

   function Has_Controlling_Result (Func : Asis.Declaration) return Boolean is
      Result_Type : Asis.Element;
      Type_Decl   : Asis.Declaration;
      Type_Def    : Asis.Type_Definition;
   begin
      if Asis.Elements.Declaration_Kind (Func) not in
        Asis.A_Function_Declaration
      then
         return False;
      end if;

      Result_Type := Asis.Declarations.Result_Profile (Func);

      if Asis.Elements.Expression_Kind (Result_Type) not in
        Asis.An_Identifier
      then
         --  TODO: Check others cases
         return False;
      end if;

      Type_Decl :=
        Asis.Expressions.Corresponding_Name_Declaration (Result_Type);

      if Asis.Elements.Declaration_Kind (Type_Decl) not in
        Asis.An_Ordinary_Type_Declaration |
        Asis.A_Private_Type_Declaration
      then
         return False;
      end if;

      Type_Def := Asis.Declarations.Type_Declaration_View (Type_Decl);

      if Asis.Elements.Definition_Kind (Type_Def) not in
        Asis.A_Tagged_Private_Type_Definition
      then
         return False;
      end if;

      return Asis.Elements.Is_Equal
        (Asis.Elements.Enclosing_Element (Func),
         Asis.Elements.Enclosing_Element (Type_Decl));
   end Has_Controlling_Result;

   --------------
   -- Is_Array --
   --------------

   function Is_Array (Exp : Asis.Expression) return Boolean is
      Decl : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Exp);
      View : Asis.Definition;
      Kind : Asis.Type_Kinds := Asis.Not_A_Type_Definition;
   begin
      if not Asis.Elements.Is_Nil (Decl) then
         View := Type_Declaration_View (Decl);
         Kind := Asis.Elements.Type_Kind (View);
      end if;

      return Kind in Asis.An_Unconstrained_Array_Definition
                    | Asis.A_Constrained_Array_Definition;
   end Is_Array;

   -------------------
   -- Is_Equal_Type --
   -------------------

   function Is_Equal_Type
     (Left  : Asis.Declaration;
      Right : Asis.Declaration) return Boolean
   is
      function Up (X : Asis.Declaration) return Asis.Declaration;

      --------
      -- Up --
      --------

      function Up (X : Asis.Declaration) return Asis.Declaration is
      begin
         case Asis.Elements.Declaration_Kind (X) is
            when Asis.An_Ordinary_Type_Declaration |
                 Asis.A_Task_Type_Declaration |
                 Asis.A_Protected_Type_Declaration =>
               declare
                  CT : constant Asis.Declaration :=
                    Asis.Declarations.Corresponding_Type_Declaration (X);
               begin
                  case Asis.Elements.Declaration_Kind (CT) is
                     when Asis.An_Incomplete_Type_Declaration |
                          Asis.A_Tagged_Incomplete_Type_Declaration =>
                        return X;
                     when Asis.A_Private_Type_Declaration |
                          Asis.A_Private_Extension_Declaration =>
                        return CT;
                     when others =>
                        return X;
                  end case;
               end;

            when Asis.An_Incomplete_Type_Declaration
               | Asis.A_Tagged_Incomplete_Type_Declaration =>

               declare
                  CT : constant Asis.Declaration :=
                    Asis.Declarations.Corresponding_Type_Declaration (X);
               begin
                  case Asis.Elements.Declaration_Kind (CT) is
                     when Asis.A_Private_Type_Declaration |
                          Asis.A_Private_Extension_Declaration =>
                        return CT;
                     when others =>
                        return Up (CT);
                  end case;
               end;

            when others =>
               return X;
         end case;
      end Up;

      Left_Up : constant Asis.Declaration := Up (Left);
      Right_Up : constant Asis.Declaration := Up (Right);
   begin
      return Asis.Elements.Is_Equal (Left_Up, Right_Up);
   end Is_Equal_Type;

   -----------------------------
   -- Is_Primitive_Subprogram --
   -----------------------------

   function Is_Primitive_Subprogram
     (Definition : Asis.Definition;
      Subprogram : Asis.Declaration) return Boolean
   is
      List : constant Asis.Declaration_List :=
        Asis.Declarations.Parameter_Profile (Subprogram);
   begin
      if List'Length >= 1 then
         declare
            use type Asis.Expression_Kinds;

            Decl  : Asis.Declaration;
            First : constant Asis.Element :=
              Asis.Declarations.Object_Declaration_View (List (List'First));
         begin
            if Asis.Elements.Expression_Kind (First) = Asis.An_Identifier then
               Decl := Asis.Expressions.Corresponding_Name_Declaration (First);

               return Is_Equal_Type
                 (Asis.Elements.Enclosing_Element (Definition), Decl);
            end if;
         end;
      end if;

      return False;
   end Is_Primitive_Subprogram;

   ---------------------
   -- Is_Array_Buffer --
   ---------------------

   function Is_Array_Buffer (Element : Asis.Declaration) return Boolean is
      Env  : constant Asis.Element :=
        Asis.Elements.Enclosing_Element (Element);

      Name : constant Asis.Program_Text :=
        Asis.Declarations.Defining_Name_Image
          (Asis.Declarations.Names (Element) (1));

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
               if Image = "JavaScript_Array_Buffer" then
                  declare
                     Args : constant Asis.Association_List :=
                       Asis.Elements.Pragma_Argument_Associations (Element);
                     Arg : Asis.Expression;
                  begin
                     pragma Assert
                       (Args'Length = 1,
                        "Expected one argument in pragma"
                        &" JavaScript_Array_Buffer");

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

      procedure Search_Array_Buffer_Pragma is
        new Asis.Iterator.Traverse_Element
          (State_Information => Boolean,
           Pre_Operation     => Pre_Operation,
           Post_Operation    => Post_Operation);

      Control : Asis.Traverse_Control := Asis.Continue;
      Found   : Boolean := False;

   begin
      Search_Array_Buffer_Pragma (Env, Control, Found);

      return Found;
   end Is_Array_Buffer;

   ----------
   -- Join --
   ----------

   function Join
     (Left, Right : League.Strings.Universal_String)
      return League.Strings.Universal_String
   is
      use type League.Strings.Universal_String;
   begin
      return Left & Right;
   end Join;

   --------------------------
   -- Library_Level_Header --
   --------------------------

   function Library_Level_Header
     (Unit : Asis.Compilation_Unit) return League.Strings.Universal_String
   is
      procedure Append_Dependencies (Unit : Asis.Compilation_Unit);
      procedure Append (Unit : Asis.Compilation_Unit);
      procedure Check_And_Append (Name : Asis.Name);
      function Body_Context_Clause_Elements (Unit : Asis.Compilation_Unit)
        return Asis.Context_Clause_List;
      function To_Module_Name (Unit : Asis.Compilation_Unit)
        return League.Strings.Universal_String;
      function To_Unit (Name : Asis.Name) return Asis.Compilation_Unit;

      Text : League.Strings.Universal_String;
      Deps : League.String_Vectors.Universal_String_Vector;

      ------------
      -- Append --
      ------------

      procedure Append (Unit : Asis.Compilation_Unit) is
         Name : constant League.Strings.Universal_String :=
           To_Module_Name (Unit);
      begin
         if Deps.Index (Name) = 0 then
            Deps.Append (Name);
         end if;
      end Append;

      -------------------------
      -- Append_Dependencies --
      -------------------------

      procedure Append_Dependencies (Unit : Asis.Compilation_Unit) is
         use type Asis.Context_Clause_List;

         Parent : constant Asis.Compilation_Unit :=
           Asis.Compilation_Units.Corresponding_Parent_Declaration (Unit);
         List : constant Asis.Context_Clause_List :=
           Asis.Elements.Context_Clause_Elements (Unit) &
           Body_Context_Clause_Elements (Unit);
      begin
         Append (Parent);

         for Clause of List loop
            case Asis.Elements.Clause_Kind (Clause) is
               when Asis.A_With_Clause =>
                  declare
                     Names : constant Asis.Name_List :=
                       Asis.Clauses.Clause_Names (Clause);
                  begin
                     if not Asis.Elements.Has_Limited (Clause) then
                        for Name of Names loop
                           Check_And_Append (Name);
                        end loop;
                     end if;
                  end;
               when others =>
                  null;
            end case;
         end loop;
      end Append_Dependencies;

      ----------------------------------
      -- Body_Context_Clause_Elements --
      ----------------------------------

      function Body_Context_Clause_Elements (Unit : Asis.Compilation_Unit)
        return Asis.Context_Clause_List is
         Impl : constant Asis.Compilation_Unit :=
           Asis.Compilation_Units.Corresponding_Body (Unit);
      begin
         if Asis.Compilation_Units.Is_Nil (Impl) then
            return Asis.Nil_Element_List;
         else
            return Asis.Elements.Context_Clause_Elements (Impl);
         end if;
      end Body_Context_Clause_Elements;

      ---------------------
      -- Is_Ada_Numerics --
      ---------------------

      function Is_Ada_Numerics (Name : Asis.Name) return Boolean is
      begin
         return Name_Image (Name).Starts_With ("Ada.Numerics");
      end Is_Ada_Numerics;

      ---------------
      -- Is_WebAPI --
      ---------------

      function Is_WebAPI (Name : Asis.Name) return Boolean is
      begin
         return Name_Image (Name).Starts_With ("WebAPI");
      end Is_WebAPI;

      ----------------
      -- Is_Generic --
      ----------------

      function Is_Generic (Unit : Asis.Compilation_Unit) return Boolean is
      begin
         return Asis.Compilation_Units.Unit_Kind (Unit) in
           Asis.A_Generic_Unit_Declaration;
      end Is_Generic;

      -----------------
      -- Is_Renaming --
      -----------------

      function Is_Renaming (Unit : Asis.Compilation_Unit) return Boolean is
      begin
         return Asis.Compilation_Units.Unit_Kind (Unit) in Asis.A_Renaming;
      end Is_Renaming;

      ----------------------
      -- Check_And_Append --
      ----------------------

      procedure Check_And_Append (Name : Asis.Name) is
         Unit : constant Asis.Compilation_Unit := To_Unit (Name);
      begin
         if Is_Generic (Unit)
           or else Is_WebAPI (Name)
           or else Is_Ada_Numerics (Name)
         then
            return;
         elsif Is_Renaming (Unit) then
            Append_Dependencies (Unit);

            return;
         end if;

         Append (Unit);
      end Check_And_Append;

      --------------------
      -- To_Module_Name --
      --------------------

      function To_Module_Name
        (Unit : Asis.Compilation_Unit)
         return League.Strings.Universal_String
      is
         Full_Name : constant League.Strings.Universal_String :=
           League.Strings.From_UTF_16_Wide_String
             (Asis.Compilation_Units.Unit_Full_Name (Unit)).To_Lowercase;
         List : constant League.String_Vectors.Universal_String_Vector :=
           Full_Name.Split ('.');
      begin
         return List.Join ('-');
      end To_Module_Name;

      -------------
      -- To_Unit --
      -------------

      function To_Unit (Name : Asis.Name) return Asis.Compilation_Unit is
         Decl : Asis.Declaration;
      begin
         case Asis.Elements.Expression_Kind (Name) is
            when Asis.A_Selected_Component =>
               Decl := Asis.Expressions.Corresponding_Name_Declaration
                 (Asis.Expressions.Selector (Name));

            when Asis.An_Identifier =>
               Decl := Asis.Expressions.Corresponding_Name_Declaration (Name);

            when others =>
               raise Constraint_Error;
         end case;

         return Asis.Elements.Enclosing_Compilation_Unit (Decl);
      end To_Unit;

   begin
      Text.Append ("define(['");

      Append_Dependencies (Unit);
      Text.Append (Deps.Join ("', '"));

      Text.Append ("'], function(_ec) {");

      return Text;
   end Library_Level_Header;

   ----------------
   -- Name_Image --
   ----------------

   function Name_Image
     (Name : Asis.Name) return League.Strings.Universal_String
   is
      procedure Prepend (Text : Asis.Program_Text);

      Item   : Asis.Name := Name;
      Result : League.Strings.Universal_String;

      -------------
      -- Prepend --
      -------------

      procedure Prepend (Text : Asis.Program_Text) is
      begin
         Result.Prepend
           (League.Strings.From_UTF_16_Wide_String (Text));
      end Prepend;

   begin
      loop
         case Asis.Elements.Expression_Kind (Item) is
            when Asis.An_Identifier =>
               Prepend (Asis.Expressions.Name_Image (Item));

               return Result;

            when Asis.A_Selected_Component =>
               Prepend
                 (Asis.Expressions.Name_Image
                    (Asis.Expressions.Selector (Item)));
               Prepend (".");
               Item := Asis.Expressions.Prefix (Item);

            when others =>
               raise Program_Error;
         end case;
      end loop;
   end Name_Image;

   -----------------------
   -- Parameter_Profile --
   -----------------------

   function Parameter_Profile
     (Prefix : Asis.Expression) return Asis.Parameter_Specification_List
   is
      Tipe : Asis.Declaration;
      Stmt : constant Asis.Statement :=
        Asis.Elements.Enclosing_Element (Prefix);
      Entity : Asis.Declaration :=
        Asis.Statements.Corresponding_Called_Entity (Stmt);
   begin
      loop
         if Asis.Elements.Is_Nil (Entity) then
            exit;
         else
            if Asis.Elements.Declaration_Kind (Entity) in
              Asis.A_Generic_Instantiation
            then
               Entity := Asis.Declarations.Corresponding_Declaration (Entity);
            else
               return Asis.Declarations.Parameter_Profile (Entity);
            end if;
         end if;
      end loop;

      Tipe :=
        Asis.Expressions.Corresponding_Expression_Type_Definition (Prefix);

      if Asis.Elements.Is_Nil (Tipe) then
         raise Constraint_Error;
      else
         return Asis.Definitions.Access_To_Subprogram_Parameter_Profile (Tipe);
      end if;
   end Parameter_Profile;

   ---------------------------
   -- Type_Declaration_View --
   ---------------------------

   function Type_Declaration_View
     (Declaration : Asis.Declaration) return Asis.Definition
   is
      First : constant Asis.Declaration :=
        Asis.Declarations.Corresponding_First_Subtype (Declaration);
      View : Asis.Element :=
        Asis.Declarations.Type_Declaration_View (First);
   begin
      loop
         View := Full_Type_View (View);

         case Asis.Elements.Type_Kind (View) is
            when Asis.A_Derived_Type_Definition =>
               declare
                  SI : constant Asis.Subtype_Indication :=
                    Asis.Definitions.Parent_Subtype_Indication (View);
                  Mark : Asis.Subtype_Mark :=
                    Asis.Definitions.Subtype_Mark (SI);
                  Decl : Asis.Declaration;
               begin
                  if Asis.Elements.Expression_Kind (Mark) in
                    Asis.A_Selected_Component
                  then
                     Mark := Asis.Expressions.Selector (Mark);
                  end if;

                  Decl :=
                    Asis.Expressions.Corresponding_Name_Declaration (Mark);

                  View := Asis.Declarations.Type_Declaration_View (Decl);
               end;

            when others =>
               return View;
         end case;
      end loop;
   end Type_Declaration_View;

end Properties.Tools;
