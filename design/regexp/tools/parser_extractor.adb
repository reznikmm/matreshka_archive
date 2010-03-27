with Ada.Characters.Conversions;
with Ada.Characters.Handling;

with GNAT.Regpat;

with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;
with Asis.Iterator;
with Asis.Statements;
with Asis.Text;

package body Parser_Extractor is

   type State_Information is null record;

   procedure Process_Constant_Declaration (Element : Asis.Element);

   procedure Process_Integer_Number_Declaration (Element : Asis.Element);

   procedure Process_Case_Statement (Element : Asis.Element);

   procedure Pre_Operation
     (Element : Asis.Element;
      Control : in out Asis.Traverse_Control;
      State   : in out State_Information);

   procedure Post_Operation
     (Element : Asis.Element;
      Control : in out Asis.Traverse_Control;
      State   : in out State_Information) is null;

   procedure Iterate is new Asis.Iterator.Traverse_Element (State_Information);

   function To_Upper (Item : Wide_String) return Wide_String;

   -------------
   -- Extract --
   -------------

   procedure Extract (Element : Asis.Element) is
      Control : Asis.Traverse_Control := Asis.Continue;
      State   : State_Information;

   begin
      Iterate (Element, Control, State);
   end Extract;

   -------------------
   -- Pre_Operation --
   -------------------

   procedure Pre_Operation
     (Element : Asis.Element;
      Control : in out Asis.Traverse_Control;
      State   : in out State_Information) is
   begin
      case Asis.Elements.Element_Kind (Element) is
         when Asis.A_Declaration =>
            case Asis.Elements.Declaration_Kind (Element) is
               when Asis.A_Constant_Declaration =>
                  Process_Constant_Declaration (Element);

               when Asis.An_Integer_Number_Declaration =>
                  Process_Integer_Number_Declaration (Element);

               when others =>
                  null;
            end case;

         when Asis.A_Statement =>
            case Asis.Elements.Statement_Kind (Element) is
               when Asis.A_Case_Statement =>
                  Process_Case_Statement (Element);

               when others =>
                  null;
            end case;

         when others =>
            null;
      end case;
   end Pre_Operation;

   ----------------------------
   -- Process_Case_Statement --
   ----------------------------

   procedure Process_Case_Statement (Element : Asis.Element) is
      use type Asis.Expression_Kinds;

      procedure Process_Choice
        (Choice : Asis.Element;
         Line   : Positive;
         File   : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
         Text   : Unbounded_Wide_String_Vectors.Vector);

      --------------------
      -- Process_Choice --
      --------------------

      procedure Process_Choice
        (Choice : Asis.Element;
         Line   : Positive;
         File   : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
         Text   : Unbounded_Wide_String_Vectors.Vector)
      is
         use type Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;

         Number : Natural;

      begin
         case Asis.Elements.Expression_Kind (Choice) is
            when Asis.An_Integer_Literal =>
               Number :=
                 Integer'Wide_Value (Asis.Expressions.Value_Image (Choice));

            when others =>
               raise Program_Error;
               null;
         end case;

         if Natural (Choices.Length) < Number then
            Choices.Set_Length (Ada.Containers.Count_Type (Number));
         end if;

         Choices.Replace_Element (Number, (False, Number, Line, File, Text));
      end Process_Choice;

      Expression : constant Asis.Element :=
        Asis.Statements.Case_Expression (Element);
      Paths      : constant Asis.Element_List :=
        Asis.Statements.Statement_Paths (Element);

   begin
      if Asis.Elements.Expression_Kind (Expression) = Asis.A_Selected_Component
        and then To_Upper
                  (Asis.Expressions.Name_Image
                    (Asis.Expressions.Selector (Expression))) = "RULE_ID"
      then
         for J in Paths'Range loop
            declare
               Choices : constant Asis.Element_List :=
                 Asis.Statements.Case_Statement_Alternative_Choices
                  (Paths (J));
               Lines   : constant Asis.Text.Line_List :=
                 Asis.Text.Lines (Paths (J));
               Pattern : GNAT.Regpat.Pattern_Matcher :=
                 GNAT.Regpat.Compile ("--# line (\d+) ""(.*?)""");
               Matched : Boolean := False;
               Empty   : Boolean := True;
               Matches : GNAT.Regpat.Match_Array (0 .. 2);
               Text    : Unbounded_Wide_String_Vectors.Vector;
               Line    : Positive;
               File    : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;

            begin
               for J in Lines'Range loop
                  declare
                     Line_Image : constant Wide_String :=
                       Asis.Text.Line_Image (Lines (J));

                  begin
                     if not Matched then
                        GNAT.Regpat.Match
                         (Pattern,
                          Ada.Characters.Conversions.To_String (Line_Image),
                          Matches);

                        if Matches (0).First /= 0 then
                           Matched := True;
                           Line :=
                             Positive'Wide_Value
                              (Line_Image
                                (Matches (1).First .. Matches (1).Last));
                           File :=
                             Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String
                              (Line_Image
                                (Matches (2).First .. Matches (2).Last));
                        end if;

                     else
                        if Empty then
                           Empty := Line_Image'Length = 0;
                        end if;

                        if not Empty then
                           Text.Append
                             (Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String
                               (Line_Image));
                        end if;
                     end if;
                  end;
               end loop;

               if not Text.Is_Empty then
                  for J in Choices'Range loop
                     Process_Choice (Choices (J), Line, File, Text);
                  end loop;
               end if;
            end;
         end loop;
      end if;
   end Process_Case_Statement;

   ----------------------------------
   -- Process_Constant_Declaration --
   ----------------------------------

   procedure Process_Constant_Declaration (Element : Asis.Element) is

      procedure Process_Array_Of_Pair
       (Expression : Asis.Element;
        Values     : out Pair_Vectors.Vector);

      procedure Process_Array
       (Expression  : Asis.Element;
        Values      : out Integer_Vectors.Vector);

      ---------------------------
      -- Process_Array_Of_Pair --
      ---------------------------

      procedure Process_Array_Of_Pair
       (Expression : Asis.Element;
        Values     : out Pair_Vectors.Vector)
      is
         Components : constant Asis.Element_List :=
           Asis.Expressions.Array_Component_Associations (Expression);

      begin
         for J in Components'Range loop
            declare
               Pair_Components : constant Asis.Element_List :=
                 Asis.Expressions.Record_Component_Associations
                  (Asis.Expressions.Component_Expression (Components (J)));
               Component_1     : constant Asis.Element :=
                 Asis.Expressions.Component_Expression (Pair_Components (1));
               Component_2     : constant Asis.Element :=
                 Asis.Expressions.Component_Expression (Pair_Components (2));
               Value           : Pair;

            begin
               case Asis.Elements.Expression_Kind (Component_1) is
                  when Asis.An_Integer_Literal =>
                     Value.First :=
                       Integer'Wide_Value
                        (Asis.Expressions.Value_Image (Component_1));

                  when Asis.A_Function_Call =>
                     declare
                        Parameters : constant Asis.Element_List :=
                          Asis.Expressions.Function_Call_Parameters (Component_1);
                        Parameter  : constant Asis.Element :=
                          Asis.Expressions.Actual_Parameter (Parameters (1));

                     begin
                        Value.First :=
                          -Integer'Wide_Value
                            (Asis.Expressions.Value_Image (Parameter));
                     end;

                  when others =>
                     null;
               end case;

               case Asis.Elements.Expression_Kind (Component_2) is
                  when Asis.An_Integer_Literal =>
                     Value.Second :=
                       Integer'Wide_Value
                        (Asis.Expressions.Value_Image (Component_2));

                  when Asis.A_Function_Call =>
                     declare
                        Parameters : constant Asis.Element_List :=
                          Asis.Expressions.Function_Call_Parameters (Component_2);
                        Parameter  : constant Asis.Element :=
                          Asis.Expressions.Actual_Parameter (Parameters (1));

                     begin
                        Value.Second :=
                          -Integer'Wide_Value
                            (Asis.Expressions.Value_Image (Parameter));
                     end;

                  when others =>
                     null;
               end case;

               Values.Append (Value);
            end;
         end loop;
      end Process_Array_Of_Pair;

      -------------------
      -- Process_Array --
      -------------------

      procedure Process_Array
       (Expression  : Asis.Element;
        Values      : out Integer_Vectors.Vector)
      is
         Components : constant Asis.Element_List :=
           Asis.Expressions.Array_Component_Associations (Expression);

      begin
         for J in Components'Range loop
            declare
               Expression : constant Asis.Element :=
                 Asis.Expressions.Component_Expression (Components (J));

            begin
               case Asis.Elements.Expression_Kind (Expression) is
                  when Asis.An_Integer_Literal =>
                     Values.Append
                      (Integer'Wide_Value
                        (Asis.Expressions.Value_Image (Expression)));

                  when Asis.A_Function_Call =>
                     declare
                        Parameters : constant Asis.Element_List :=
                          Asis.Expressions.Function_Call_Parameters
                           (Expression);
                        Parameter  : constant Asis.Element :=
                          Asis.Expressions.Actual_Parameter (Parameters (1));

                     begin
                        Values.Append
                         (-Integer'Wide_Value
                            (Asis.Expressions.Value_Image (Parameter)));
                     end;

                  when others =>
                     null;
               end case;
            end;
         end loop;
      end Process_Array;

      Names : constant Asis.Element_List := Asis.Declarations.Names (Element);

   begin
      for J in Names'Range loop
         declare
            Image       : constant Wide_String  :=
              To_Upper (Asis.Declarations.Defining_Name_Image (Names (J)));
            Expression  : constant Asis.Element :=
              Asis.Declarations.Initialization_Expression (Element);

         begin
            if Image = "GOTO_MATRIX" then
               Process_Array_Of_Pair (Expression, YY_Goto_Matrix);

            elsif Image = "GOTO_OFFSET" then
               Process_Array (Expression, YY_Goto_Offset);

            elsif Image = "RULE_LENGTH" then
               Process_Array (Expression, YY_Rule_Length);

            elsif Image = "GET_LHS_RULE" then
               Process_Array (Expression, YY_Get_LHS_Rule);

            elsif Image = "SHIFT_REDUCE_MATRIX" then
               Process_Array_Of_Pair (Expression, YY_Shift_Reduce_Matrix);

            elsif Image = "SHIFT_REDUCE_OFFSET" then
               Process_Array (Expression, YY_Shift_Reduce_Offset);
            end if;
         end;
      end loop;
   end Process_Constant_Declaration;

   ----------------------------------------
   -- Process_Integer_Number_Declaration --
   ----------------------------------------

   procedure Process_Integer_Number_Declaration (Element : Asis.Element) is
      Names : Asis.Element_List := Asis.Declarations.Names (Element);

   begin
      for J in Names'Range loop
         declare
            Image      : constant Wide_String  :=
              To_Upper (Asis.Declarations.Defining_Name_Image (Names (J)));
            Expression : constant Asis.Element :=
              Asis.Declarations.Initialization_Expression (Element);

         begin
            if Image = "DEFAULT" then
               YY_Default :=
                 -Integer'Wide_Value
                   (Asis.Expressions.Value_Image
                     (Asis.Expressions.Actual_Parameter
                       (Asis.Expressions.Function_Call_Parameters
                         (Expression) (1))));

            elsif Image = "FIRST_SHIFT_ENTRY" then
               YY_First_Shift_Entry :=
                 Integer'Wide_Value
                  (Asis.Expressions.Value_Image (Expression));

            elsif Image = "ACCEPT_CODE" then
               YY_Accept_Code :=
                 -Integer'Wide_Value
                   (Asis.Expressions.Value_Image
                     (Asis.Expressions.Actual_Parameter
                       (Asis.Expressions.Function_Call_Parameters
                         (Expression) (1))));

            elsif Image = "ERROR_CODE" then
               YY_Error_Code :=
                 -Integer'Wide_Value
                   (Asis.Expressions.Value_Image
                     (Asis.Expressions.Actual_Parameter
                       (Asis.Expressions.Function_Call_Parameters
                         (Expression) (1))));
            end if;
         end;
      end loop;
   end Process_Integer_Number_Declaration;

   --------------
   -- To_Upper --
   --------------

   function To_Upper (Item : Wide_String) return Wide_String is
   begin
      return
        Ada.Characters.Conversions.To_Wide_String
          (Ada.Characters.Handling.To_Upper
             (Ada.Characters.Conversions.To_String (Item)));
   end To_Upper;

end Parser_Extractor;
