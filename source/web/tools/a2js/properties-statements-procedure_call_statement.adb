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
with Ada.Wide_Wide_Text_IO;

with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;
with Asis.Statements;

with Properties.Tools;
with Properties.Expressions.Identifiers;

package body Properties.Statements.Procedure_Call_Statement is

   function Intrinsic
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Statement;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Engines.Convention_Kind;

      function Get_Parameters
        (Prefix : Asis.Expression;
         Is_Dispatching : Boolean;
         Is_JavaScript  : Boolean)
         return Asis.Parameter_Specification_List
      is
      begin
         if not Is_Dispatching and not Is_JavaScript then
            return Properties.Tools.Parameter_Profile (Prefix);
         elsif Asis.Statements.Is_Dispatching_Call (Element) then
            declare
               Decl : constant Asis.Declaration :=
                 Properties.Tools.Corresponding_Declaration (Prefix);
            begin
               case Asis.Elements.Declaration_Kind (Decl) is
                  when
                       Asis.A_Procedure_Declaration |
                       Asis.A_Function_Declaration |
                       Asis.A_Procedure_Body_Declaration |
                       Asis.A_Function_Body_Declaration |
                       Asis.A_Null_Procedure_Declaration |
                       Asis.A_Procedure_Renaming_Declaration |
                       Asis.A_Function_Renaming_Declaration |
                       Asis.An_Entry_Declaration |
                       Asis.An_Entry_Body_Declaration |
                       Asis.A_Procedure_Body_Stub |
                       Asis.A_Function_Body_Stub |
                       Asis.A_Generic_Function_Declaration |
                       Asis.A_Generic_Procedure_Declaration |
                       Asis.A_Formal_Function_Declaration |
                       Asis.A_Formal_Procedure_Declaration |
                       Asis.An_Expression_Function_Declaration =>
                     return Asis.Declarations.Parameter_Profile (Decl);
                  when others =>
                     return Asis.Nil_Element_List;
               end case;
            end;
         else
            return Asis.Nil_Element_List;
         end if;
      end Get_Parameters;

      Text   : League.Strings.Universal_String;
      Prefix : constant Asis.Expression :=
        Asis.Statements.Called_Name (Element);
      Conv   : constant Engines.Convention_Kind :=
        Engine.Call_Convention.Get_Property
          (Prefix,
           Engines.Call_Convention);
      Is_Dispatching : constant Boolean := Engine.Boolean.Get_Property
        (Prefix, Engines.Is_Dispatching);
      Is_Prefixed    : constant Boolean :=
        Conv in Engines.JavaScript_Property_Setter |
                Engines.JavaScript_Method;
      Params : constant Asis.Parameter_Specification_List :=
        Get_Parameters (Prefix, Is_Dispatching, Is_Prefixed);
      Has_Output : constant Boolean :=
        Engine.Boolean.Get_Property
          (List  => Params,
           Name  => Engines.Has_Simple_Output,
           Empty => False,
           Sum   => Properties.Tools."or"'Access);
      List   : constant Asis.Association_List :=
        Asis.Statements.Call_Statement_Parameters
          (Element, Normalized => False);
      Arg    : League.Strings.Universal_String;
   begin
      if Has_Output  then
         Text.Append ("var _r=");
      end if;

      if Conv = Engines.Intrinsic then
         Arg := Intrinsic (Engine, Element, Name);
         Text.Append (Arg);
      elsif not Is_Dispatching and not Is_Prefixed then
         Arg := Engine.Text.Get_Property (Prefix, Name);
         Text.Append (Arg);

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
      elsif Conv = Engines.JavaScript_Property_Setter then
         Arg := Engine.Text.Get_Property
           (Asis.Expressions.Actual_Parameter (List (1)), Name);
         Text.Append (Arg);
         Text.Append (".");
         Text.Append
           (Engine.Text.Get_Property (Prefix, Engines.Method_Name));
         Text.Append (" = ");

         Arg := Engine.Text.Get_Property
           (Asis.Expressions.Actual_Parameter (List (2)), Name);

         Text.Append (Arg);
      elsif Asis.Statements.Is_Dispatching_Call (Element) or
        Conv = Engines.JavaScript_Method
      then
         declare
            Expr   : Asis.Expression;
            Decl   : Asis.Declaration;
            Comp   : Asis.Definition;
         begin
            Arg := Engine.Text.Get_Property
              (Asis.Expressions.Actual_Parameter (List (1)), Name);
            Text.Append (Arg);
            Text.Append (".");
            Text.Append
              (Engine.Text.Get_Property (Prefix, Engines.Method_Name));

            Text.Append ("(");

            for J in 2 .. List'Last loop
               Expr := Asis.Expressions.Actual_Parameter (List (J));
               Arg := Engine.Text.Get_Property (Expr, Name);

               Text.Append (Arg);
               Decl := Asis.Expressions.Corresponding_Expression_Type (Expr);

               if Tools.Is_Array (Expr)
                 and then Tools.Is_Array_Buffer (Decl)
               then
                  Comp := Asis.Definitions.Array_Component_Definition
                    (Tools.Type_Declaration_View (Decl));
                  Comp := Asis.Definitions.Component_Definition_View (Comp);

                  Arg := Engine.Text.Get_Property
                    (Comp, Engines.Typed_Array_Item_Type);

                  if not Arg.Is_Empty then
                     Text.Append (".");
                     Text.Append (Arg);
                  end if;
               end if;

               if J /= List'Last then
                  Text.Append (", ");
               end if;
            end loop;

            Text.Append (")");
         end;
      else
         declare
            Proc   : Asis.Declaration :=
              Asis.Statements.Corresponding_Called_Entity (Element);
         begin
            while Asis.Elements.Is_Part_Of_Inherited (Proc) loop
               Proc :=
                 Asis.Declarations.Corresponding_Subprogram_Derivation (Proc);
            end loop;

            Arg := Properties.Expressions.Identifiers.Name_Prefix
              (Engine => Engine,
               Name   => Element,
               Decl   => Proc);
            Text.Append (Arg);

            Text.Append
              (Engine.Text.Get_Property
                 (Asis.Declarations.Names (Proc) (1), Name));

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

      for J in Params'Range loop
         if Engine.Boolean.Get_Property
           (Params (J), Engines.Has_Simple_Output)
         then
            Text.Append (";");
            Arg := Engine.Text.Get_Property
              (Asis.Expressions.Actual_Parameter (List (J)), Name);
            Text.Append (Arg);
            Text.Append ("=_r.");
            Arg := Engine.Text.Get_Property
              (Asis.Declarations.Names (Params (J)) (1), Name);
            Text.Append (Arg);
         end if;
      end loop;

      Text.Append (";");
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
      pragma Unreferenced (Name);
      Func : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property
          (Asis.Statements.Called_Name (Element),
           Engines.Intrinsic_Name);

      List   : constant Asis.Association_List :=
        Asis.Statements.Call_Statement_Parameters
          (Element, Normalized => False);
      pragma Unreferenced (List);
   begin
      Ada.Wide_Wide_Text_IO.Put ("Unimplemented Intrinsic: ");
      Ada.Wide_Wide_Text_IO.Put (Func.To_Wide_Wide_String);
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Intrinsic;

end Properties.Statements.Procedure_Call_Statement;
