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
-- Copyright © 2015-2017, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Wide_Wide_Text_IO;

with Asis.Declarations;
with Asis.Elements;
with Asis.Expressions;
with Asis.Statements;

with League.String_Vectors;

with Properties.Expressions.Identifiers;
with Properties.Tools;

package body Properties.Expressions.Function_Calls is

   function Intrinsic
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String;

   Op_From : League.String_Vectors.Universal_String_Vector;
   Op_To   : League.String_Vectors.Universal_String_Vector;
   Arr_To  : League.String_Vectors.Universal_String_Vector;

   Fn_From : League.String_Vectors.Universal_String_Vector;
   Fn_To   : League.String_Vectors.Universal_String_Vector;

   ---------------------
   -- Call_Convention --
   ---------------------

   function Call_Convention
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Convention_Property)
      return Engines.Convention_Kind is
   begin
      return Engine.Call_Convention.Get_Property
        (Asis.Expressions.Prefix (Element), Name);
   end Call_Convention;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Engines.Convention_Kind;

      Text   : League.Strings.Universal_String;
      Prefix : constant Asis.Expression := Asis.Expressions.Prefix (Element);
      Conv   : constant Engines.Convention_Kind :=
        Engine.Call_Convention.Get_Property
          (Element, Engines.Call_Convention);
      Is_Dispatching : Boolean;
      Is_Prefixed    : constant Boolean :=
        Conv in Engines.JavaScript_Property_Getter |
                Engines.JavaScript_Getter |
                Engines.JavaScript_Method;
   begin
      if Conv = Engines.Intrinsic then
         return Intrinsic (Engine, Element, Name);
      end if;

      Is_Dispatching := Engine.Boolean.Get_Property
        (Prefix, Engines.Is_Dispatching);

      if not Is_Dispatching and not Is_Prefixed then
         declare
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Expressions.Function_Call_Parameters
                (Element, Normalized => False);
         begin
            Text := Engine.Text.Get_Property (Prefix, Name);

            Text.Append ("(");

            for J in 1 .. List'Last loop
               Arg := Engine.Text.Get_Property
                 (Asis.Expressions.Actual_Parameter (List (J)), Name);

               Text.Append (Arg);

               if J /= List'Last then
                  Text.Append (", ");
               end if;
            end loop;

            Text.Append (")");
         end;
      elsif Asis.Statements.Is_Dispatching_Call (Element) or Is_Prefixed then
         declare
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Expressions.Function_Call_Parameters
                (Element, Normalized => False);
         begin
            Text := Engine.Text.Get_Property
              (Asis.Expressions.Actual_Parameter (List (1)), Name);

            Text.Append (".");

            Text.Append
              (Engine.Text.Get_Property (Prefix, Engines.Method_Name));

            if Conv /= Engines.JavaScript_Property_Getter then
               Text.Append ("(");

               for J in 2 .. List'Last loop
                  Arg := Engine.Text.Get_Property
                    (Asis.Expressions.Actual_Parameter (List (J)), Name);

                  Text.Append (Arg);

                  if Conv = Engines.JavaScript_Getter then
                     Text.Append (" - 1");
                  end if;

                  if J /= List'Last then
                     Text.Append (", ");
                  end if;
               end loop;

               Text.Append (")");
            end if;
         end;
      else
         declare
            use type Asis.Operator_Kinds;

            Func   : Asis.Declaration :=
              Asis.Expressions.Corresponding_Called_Function (Element);
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Expressions.Function_Call_Parameters
                (Element, Normalized => False);
            Origin : constant Asis.Operator_Kinds :=
              Asis.Elements.Operator_Kind
                (Asis.Declarations.Names (Func)(1));
            Final : Asis.Operator_Kinds;
         begin
            while Asis.Elements.Is_Part_Of_Inherited (Func) loop
               Func :=
                 Asis.Declarations.Corresponding_Subprogram_Derivation (Func);
            end loop;

             Final := Asis.Elements.Operator_Kind
              (Asis.Declarations.Names (Func)(1));

            --  It seems there is a bug in ASIS4GNAT, it turns "/=" into "="
            if Final = Asis.An_Equal_Operator
              and Origin = Asis.A_Not_Equal_Operator
            then
               Text.Append ("!");
            end if;

            Arg := Properties.Expressions.Identifiers.Name_Prefix
              (Engine => Engine,
               Name   => Element,
               Decl   => Func);

            Text.Append (Arg);

            Text.Append
              (Engine.Text.Get_Property
                 (Asis.Declarations.Names (Func) (1), Name));

            Text.Append (".call(");

            Text.Append
              (Engine.Text.Get_Property
                 (Asis.Expressions.Actual_Parameter (List (1)), Name));

            for J in 2 .. List'Last loop
               Arg := Engine.Text.Get_Property
                 (Asis.Expressions.Actual_Parameter (List (J)), Name);

               Text.Append (", ");
               Text.Append (Arg);
            end loop;

            Text.Append (")");
         end;
      end if;

      return Text;
   end Code;

   ---------------
   -- Intrinsic --
   ---------------

   function Intrinsic
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Func : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property
          (Asis.Expressions.Prefix (Element),
           Engines.Intrinsic_Name);

      Index  : Natural;
      Fn_Ind : Natural;
      List   : constant Asis.Association_List :=
        Asis.Expressions.Function_Call_Parameters
          (Element, Normalized => False);
      Is_Array : constant Boolean :=
        Properties.Tools.Is_Array
          (Asis.Expressions.Actual_Parameter (List (List'First)));
      Args   : array (List'Range) of League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
   begin
      for J in List'Range loop
         Args (J) := Engine.Text.Get_Property
           (Asis.Expressions.Actual_Parameter (List (J)), Name);
      end loop;

      Index := Op_From.Index (Func);
      Fn_Ind := Fn_From.Index (Func);

      if Func.To_Wide_Wide_String = "League.Strings.To_Universal_String"
        or else Func.To_Wide_Wide_String = "League.Strings.To_UTF_8_String"
        or else Func.To_Wide_Wide_String = "League.Strings.To_Wide_Wide_String"
      then
         return Args (1);
      elsif Is_Array and Args'Length = 2 and Index <= Arr_To.Length then
         Text.Append (Args (1));
         Text.Append (".");
         Text.Append (Arr_To.Element (Index));
         Text.Append ("(");
         Text.Append (Args (2));
         Text.Append (")");

         return Text;
      elsif Args'Length = 2 and Index > 0 then
         Text.Append (Args (1));
         Text.Append (Op_To.Element (Index));
         Text.Append (Args (2));

         return Text;
      elsif Index > 0 then
         Text.Append (Op_To.Element (Index));
         Text.Append (Args (1));

         return Text;
      elsif Fn_Ind > 0 then
         Text.Append (Fn_To.Element (Fn_Ind));
         Text.Append ("(");

         for J in Args'Range loop
            Text.Append (Args (J));

            if J /= Args'Last then
               Text.Append (", ");
            end if;
         end loop;

         Text.Append (")");

         return Text;
      elsif Func.To_Wide_Wide_String = "League.Strings.Is_Empty" then
         Text.Append (Args (1));
         Text.Append (".length == 0");

         return Text;
      elsif Func.To_Wide_Wide_String = "League.Strings.Length" then
         Text.Append (Args (1));
         Text.Append (".length");

         return Text;
      elsif Func.To_Wide_Wide_String = "League.Strings.Head" then
         Text.Append (Args (1));
         Text.Append (".slice(0, ");
         Text.Append (Args (2));
         Text.Append (")");

         return Text;
      elsif Func.To_Wide_Wide_String = "League.Strings.Tail_From" then
         Text.Append (Args (1));
         Text.Append (".slice(");
         Text.Append (Args (2));
         Text.Append ("-1)");

         return Text;
      elsif Func.To_Wide_Wide_String = "League.Strings.Slice" then
         Text.Append (Args (1));
         Text.Append (".slice(");
         Text.Append (Args (2));
         Text.Append ("-1, ");
         Text.Append (Args (3));
         Text.Append (")");

         return Text;
      elsif Func.To_Wide_Wide_String = "System.Storage_Elements.""+""" then
         Text.Append (Args (1));
         Text.Append ("[");
         Text.Append (Args (2));
         Text.Append ("]");

         return Text;
      else
         Ada.Wide_Wide_Text_IO.Put ("Unimplemented Intrinsic: ");
         Ada.Wide_Wide_Text_IO.Put (Func.To_Wide_Wide_String);
         raise Program_Error;
      end if;
   end Intrinsic;

begin
   Op_From.Append (League.Strings.To_Universal_String ("""="""));
   Op_To.Append (League.Strings.To_Universal_String ("==="));
   Arr_To.Append (League.Strings.To_Universal_String ("_eq"));
   Op_From.Append (League.Strings.To_Universal_String ("""/="""));
   Op_To.Append (League.Strings.To_Universal_String ("!=="));
   Arr_To.Append (League.Strings.To_Universal_String ("_ne"));
   Op_From.Append (League.Strings.To_Universal_String ("""&"""));
   Op_To.Append (League.Strings.To_Universal_String ("+"));
   Op_From.Append (League.Strings.To_Universal_String ("""+"""));
   Op_To.Append (League.Strings.To_Universal_String ("+"));
   Op_From.Append (League.Strings.To_Universal_String ("""-"""));
   Op_To.Append (League.Strings.To_Universal_String ("-"));
   Op_From.Append (League.Strings.To_Universal_String ("""*"""));
   Op_To.Append (League.Strings.To_Universal_String ("*"));
   Op_From.Append (League.Strings.To_Universal_String ("""/"""));
   Op_To.Append (League.Strings.To_Universal_String ("/"));
   Op_From.Append (League.Strings.To_Universal_String (""">"""));
   Op_To.Append (League.Strings.To_Universal_String (">"));
   Op_From.Append (League.Strings.To_Universal_String ("""<"""));
   Op_To.Append (League.Strings.To_Universal_String ("<"));
   Op_From.Append (League.Strings.To_Universal_String ("""<="""));
   Op_To.Append (League.Strings.To_Universal_String ("<="));
   Op_From.Append (League.Strings.To_Universal_String (""">="""));
   Op_To.Append (League.Strings.To_Universal_String (">="));
   Op_From.Append (League.Strings.To_Universal_String ("""and"""));
   Op_To.Append (League.Strings.To_Universal_String ("&"));
   Op_From.Append (League.Strings.To_Universal_String ("""or"""));
   Op_To.Append (League.Strings.To_Universal_String ("|"));
   Op_From.Append (League.Strings.To_Universal_String ("""not"""));
   Op_To.Append (League.Strings.To_Universal_String ("!"));
   Op_From.Append (League.Strings.To_Universal_String ("""mod"""));
   Op_To.Append (League.Strings.To_Universal_String ("%"));
   Op_From.Append (League.Strings.To_Universal_String ("League.Strings.""="""));
   Op_To.Append (League.Strings.To_Universal_String ("==="));
   Op_From.Append (League.Strings.To_Universal_String ("League.Strings.""/="""));
   Op_To.Append (League.Strings.To_Universal_String ("!=="));
   Op_From.Append (League.Strings.To_Universal_String ("League.Strings.""&"""));
   Op_To.Append (League.Strings.To_Universal_String ("+"));

   Fn_From.Append (League.Strings.To_Universal_String ("""abs"""));
   Fn_To.Append (League.Strings.To_Universal_String ("Math.abs"));
   Fn_From.Append (League.Strings.To_Universal_String ("AN_IMAGE_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._image"));
   Fn_From.Append (League.Strings.To_Universal_String
                   ("A_WIDE_WIDE_IMAGE_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._image"));
   Fn_From.Append (League.Strings.To_Universal_String
                   ("A_WIDE_WIDE_VALUE_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("parseFloat"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_MAX_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("Math.max"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_MIN_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("Math.min"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_FLOOR_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("Math.floor"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_CEILING_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("Math.ceil"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_POS_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._pos"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_VAL_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._val"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_PRED_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._pred"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_SUCC_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._succ"));
   Fn_From.Append (League.Strings.To_Universal_String ("A_ROUNDING_ATTRIBUTE"));
   Fn_To.Append (League.Strings.To_Universal_String ("_ec._rounding"));

end Properties.Expressions.Function_Calls;
