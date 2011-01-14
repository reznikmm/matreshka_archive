------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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

package body Scanner_Extractor is

   type State_Information is record
      States : Boolean := False;
   end record;

   procedure Process_Constant_Declaration
    (Element : Asis.Element;
     State   : in out State_Information);

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
                  Process_Constant_Declaration (Element, State);

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

            when Asis.A_Function_Call =>
               declare
                  Parameters_1 : constant Asis.Element_List :=
                    Asis.Expressions.Function_Call_Parameters (Choice);
                  Parameters_2 : constant Asis.Element_List :=
                    Asis.Expressions.Function_Call_Parameters
                     (Asis.Expressions.Actual_Parameter (Parameters_1 (1)));
                  Parameter_2  : constant Wide_String :=
                    To_Upper
                     (Asis.Expressions.Name_Image
                       (Asis.Expressions.Actual_Parameter (Parameters_2 (2))));

               begin
                  Number := YY_End_Of_Buffer;

                  for J in 1 .. Natural (State_Constants.Length) loop
                     if State_Constants.Element (J).Name = Parameter_2 then
                        Number :=
                          Number + State_Constants.Element (J).Value + 1;
                     end if;
                  end loop;
               end;

            when others =>
               null;
         end case;

         --  Skip jam state

         if Number /= YY_End_Of_Buffer - 1 then
            if Natural (Choices.Length) < Number then
               Choices.Set_Length (Ada.Containers.Count_Type (Number));
            end if;

            Choices.Replace_Element
             (Number, (False, Number, Line, File, Text));
         end if;
      end Process_Choice;

      Expression : constant Asis.Element :=
        Asis.Statements.Case_Expression (Element);
      Paths      : constant Asis.Element_List :=
        Asis.Statements.Statement_Paths (Element);

   begin
      if Asis.Elements.Expression_Kind (Expression) = Asis.An_Identifier
        and then To_Upper (Asis.Expressions.Name_Image (Expression)) = "YY_ACT"
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

   procedure Process_Constant_Declaration
    (Element : Asis.Element;
     State   : in out State_Information)
   is
      Names : Asis.Element_List := Asis.Declarations.Names (Element);

      procedure Process_Array
       (Declaration : Asis.Element;
        Expression  : Asis.Element;
        Values      : out Integer_Vectors.Vector);

      procedure Process_Plane
       (Expression : Asis.Element;
        Values     : out Integer_Vectors.Vector);

      -------------------
      -- Process_Array --
      -------------------

      procedure Process_Array
       (Declaration : Asis.Element;
        Expression  : Asis.Element;
        Values      : out Integer_Vectors.Vector)
      is
         Bounds     : constant Asis.Element_List :=
           Asis.Definitions.Discrete_Subtype_Definitions (Declaration);
         Upper      : constant Natural :=
           Natural'Wide_Value
            (Asis.Expressions.Value_Image
              (Asis.Definitions.Upper_Bound (Bounds (1))));
         Components : constant Asis.Element_List :=
           Asis.Expressions.Array_Component_Associations (Expression);

      begin
         Values.Set_Length (Ada.Containers.Count_Type (Upper + 1));

         for J in Components'Range loop
            Values.Replace_Element
             (J - 1,
              Natural'Wide_Value
               (Asis.Expressions.Value_Image
                 (Asis.Expressions.Component_Expression (Components (J)))));
         end loop;
      end Process_Array;

      -------------------
      -- Process_Plane --
      -------------------

      procedure Process_Plane
       (Expression : Asis.Element;
        Values     : out Integer_Vectors.Vector)
      is
         Components : constant Asis.Element_List :=
           Asis.Expressions.Array_Component_Associations (Expression);

      begin
         Values.Set_Length (256);

         for J in Components'Range loop
            Values.Replace_Element
             (J - 1,
              Natural'Wide_Value
               (Asis.Expressions.Value_Image
                 (Asis.Expressions.Component_Expression (Components (J)))));
         end loop;
      end Process_Plane;

   begin
      for J in Names'Range loop
         declare
            Image       : constant Wide_String  :=
              To_Upper (Asis.Declarations.Defining_Name_Image (Names (J)));
            Declaration : constant Asis.Element :=
              Asis.Declarations.Object_Declaration_View (Element);
            Expression  : constant Asis.Element :=
              Asis.Declarations.Initialization_Expression (Element);

         begin
            if Image = "INITIAL" then
               State.States := True;

               State_Constants.Append
                ((Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String (Image),
                  Integer'Wide_Value
                   (Asis.Expressions.Value_Image (Expression))));

            elsif Image = "YY_ACCEPT" then
               State.States := False;
               Process_Array (Declaration, Expression, YY_Accept);

            elsif Image = "YY_META" then
               Process_Array (Declaration, Expression, YY_Meta);

            elsif Image = "YY_BASE" then
               Process_Array (Declaration, Expression, YY_Base);

            elsif Image = "YY_DEF" then
               Process_Array (Declaration, Expression, YY_Def);

            elsif Image = "YY_NXT" then
               Process_Array (Declaration, Expression, YY_Nxt);

            elsif Image = "YY_CHK" then
               Process_Array (Declaration, Expression, YY_Chk);

            elsif Image = "YY_EC_BASE" then
               declare
                  Components : constant Asis.Element_List :=
                    Asis.Expressions.Array_Component_Associations (Expression);

               begin
                  for J in Components'Range loop
                     declare
                        Choices : constant Asis.Element_List :=
                          Asis.Expressions.Array_Component_Choices
                           (Components (J));
                        Image   : constant Wide_String :=
                          Asis.Expressions.Name_Image
                           (Asis.Expressions.Prefix
                             (Asis.Expressions.Component_Expression
                               (Components (J))));
                        Ref     : Natural :=
                          Natural'Wide_Value (Image (7 .. Image'Last));

                     begin
                        for J in Choices'Range loop
                           case Asis.Elements.Expression_Kind (Choices (J)) is
                              when Asis.An_Integer_Literal =>
                                 YY_EC_Base.Append
                                  ((Natural'Wide_Value
                                     (Asis.Expressions.Value_Image
                                       (Choices (J))),
                                    Ref));

                              when others =>
                                 null;
                           end case;

                           case Asis.Elements.Definition_Kind (Choices (J)) is
                              when Asis.An_Others_Choice =>
                                 YY_EC_Base_Others := Ref;

                              when others =>
                                 null;
                           end case;
                        end loop;
                     end;
                  end loop;
               end;

            elsif Image'Length > 6 and then Image (1 .. 6) = "YY_EC_" then
               declare
                  Data : Plane_Information;

               begin
                  Data.Number := Natural'Wide_Value (Image (7 .. Image'Last));
                  Process_Plane (Expression, Data.Values);
                  YY_EC_Planes.Append (Data);
               end;

            elsif State.States then
               State_Constants.Append
                ((Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String (Image),
                  Integer'Wide_Value
                   (Asis.Expressions.Value_Image (Expression))));
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
            if Image = "YY_END_OF_BUFFER" then
               YY_End_Of_Buffer :=
                 Integer'Wide_Value
                  (Asis.Expressions.Value_Image (Expression));

            elsif Image = "YY_JAMSTATE" then
               YY_Jam_State :=
                 Integer'Wide_Value
                  (Asis.Expressions.Value_Image (Expression));

            elsif Image = "YY_JAMBASE" then
               YY_Jam_Base :=
                 Integer'Wide_Value
                  (Asis.Expressions.Value_Image (Expression));

            elsif Image = "YY_FIRST_TEMPLATE" then
               YY_First_Template :=
                 Integer'Wide_Value
                  (Asis.Expressions.Value_Image (Expression));
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

end Scanner_Extractor;
