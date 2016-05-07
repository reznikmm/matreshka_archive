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
with Asis.Clauses;
with Asis.Compilation_Units;
with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;

with League.String_Vectors;

package body Properties.Tools is

   function Name_Image
     (Name : Asis.Name) return League.Strings.Universal_String;

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
--        Asis.Definitions.Subtype_Mark (View);
      Decl : Asis.Declaration;
   begin
      case Asis.Elements.Access_Definition_Kind (View) is
         when Asis.An_Anonymous_Access_To_Variable |
              Asis.An_Anonymous_Access_To_Constant =>

            Mark :=
              Asis.Definitions.Anonymous_Access_To_Object_Subtype_Mark (View);

         when others =>
            Mark := View;
      end case;

      case Asis.Elements.Expression_Kind (Mark) is
         when Asis.A_Selected_Component =>
            Mark := Asis.Expressions.Selector (Mark);
         when others =>
            null;
      end case;

      Decl := Asis.Expressions.Corresponding_Name_Declaration (Mark);

      return Decl;
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

         when Asis.A_Private_Type_Definition =>
            declare
               Decl : Asis.Declaration :=
                 Asis.Elements.Enclosing_Element (Definition);
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

               return Corresponding_Type_Components
                 (Asis.Declarations.Type_Declaration_View (Decl));
            end;
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
         Mark : Asis.Subtype_Mark :=
           Asis.Definitions.Subtype_Mark (Parent);
         Decl : Asis.Declaration;
      begin
         case Asis.Elements.Expression_Kind (Mark) is
            when Asis.A_Selected_Component =>
               Mark := Asis.Expressions.Selector (Mark);
            when others =>
               null;
         end case;

         Decl := Asis.Expressions.Corresponding_Name_Declaration (Mark);

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
      Tipe   : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Exp);
      View : Asis.Definition;
   begin
      if Asis.Elements.Is_Nil (Tipe) then
         return 0;
      end if;

      View := Asis.Declarations.Type_Declaration_View (Tipe);

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
         View := Asis.Declarations.Type_Declaration_View (Decl);
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
      procedure Append (Name : Asis.Name);
      procedure Check_And_Append (Name : Asis.Name);
      function Body_Context_Clause_Elements return Asis.Context_Clause_List;
      function To_Module_Name (Unit : League.Strings.Universal_String)
        return League.Strings.Universal_String;

      Text : League.Strings.Universal_String;

      ------------
      -- Append --
      ------------

      procedure Append (Name : Asis.Name) is
         Image : League.Strings.Universal_String;
      begin
         case Asis.Elements.Expression_Kind (Name) is
            when Asis.An_Identifier =>
               Image := League.Strings.From_UTF_16_Wide_String
                 (Asis.Expressions.Name_Image (Name));
               Text.Append (Image.To_Lowercase);
            when Asis.A_Selected_Component =>
               Append (Asis.Expressions.Prefix (Name));
               Text.Append ('-');
               Append (Asis.Expressions.Selector (Name));
            when others =>
               raise Program_Error;
         end case;
      end Append;

      ----------------------------------
      -- Body_Context_Clause_Elements --
      ----------------------------------

      function Body_Context_Clause_Elements return Asis.Context_Clause_List is
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

      function Is_Generic (Name : Asis.Name) return Boolean is
         Decl : Asis.Declaration;
      begin
         case Asis.Elements.Expression_Kind (Name) is
            when Asis.A_Selected_Component =>
               Decl := Asis.Expressions.Corresponding_Name_Declaration
                 (Asis.Expressions.Selector (Name));

            when Asis.An_Identifier =>
               Decl := Asis.Expressions.Corresponding_Name_Declaration (Name);

            when others =>
               return False;
         end case;

         return Asis.Elements.Declaration_Kind (Decl) in
           Asis.A_Generic_Declaration;
      end Is_Generic;

      ----------------------
      -- Check_And_Append --
      ----------------------

      procedure Check_And_Append (Name : Asis.Name) is
      begin
         if Is_Generic (Name)
           or else Is_WebAPI (Name)
           or else Is_Ada_Numerics (Name)
         then
            return;
         end if;

         Text.Append ("', '");

         Append (Name);
      end Check_And_Append;

      --------------------
      -- To_Module_Name --
      --------------------

      function To_Module_Name
        (Unit : League.Strings.Universal_String)
         return League.Strings.Universal_String
      is
         List : constant League.String_Vectors.Universal_String_Vector :=
           Unit.Split ('.');
      begin
         return List.Join ('-');
      end To_Module_Name;

      Parent : constant Asis.Compilation_Unit :=
        Asis.Compilation_Units.Corresponding_Parent_Declaration (Unit);

      Grand_Parent : constant Asis.Compilation_Unit :=
        Asis.Compilation_Units.Corresponding_Parent_Declaration (Parent);

      Full_Name : constant League.Strings.Universal_String :=
        League.Strings.From_UTF_16_Wide_String
          (Asis.Compilation_Units.Unit_Full_Name (Unit)).To_Lowercase;

      Parent_Name : constant League.Strings.Universal_String :=
        League.Strings.From_UTF_16_Wide_String
          (Asis.Compilation_Units.Unit_Full_Name (Parent)).To_Lowercase;

      use type Asis.Context_Clause_List;

      List : constant Asis.Context_Clause_List :=
        Asis.Elements.Context_Clause_Elements (Unit) &
       Body_Context_Clause_Elements;

   begin
      Text.Append ("define('");
      Text.Append (To_Module_Name (Full_Name));
      Text.Append ("', ['");

      if Asis.Compilation_Units.Is_Nil (Grand_Parent) then
         Text.Append ("standard");
      else
         --  if Parent is not standard
         Text.Append (To_Module_Name (Parent_Name));
      end if;

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

   ---------------------------
   -- Type_Declaration_View --
   ---------------------------

   function Type_Declaration_View
     (Declaration : Asis.Declaration) return Asis.Definition
   is
      View : Asis.Element :=
        Asis.Declarations.Type_Declaration_View (Declaration);
   begin
      loop
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
