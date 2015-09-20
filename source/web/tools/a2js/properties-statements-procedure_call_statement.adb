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
with Asis.Elements;
with Asis.Expressions;
with Asis.Statements;

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
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Engines.Call_Convention_Kind;

      Text   : League.Strings.Universal_String;
      Prefix : constant Asis.Expression :=
        Asis.Statements.Called_Name (Element);
      Conv   : constant Engines.Call_Convention_Kind :=
        Engine.Call_Convention.Get_Property
          (Prefix,
           Engines.Call_Convention);
      Is_Dispatching : Boolean;
   begin
      Is_Dispatching := Engine.Boolean.Get_Property
        (Prefix, Engines.Is_Dispatching);

      if Conv = Engines.Intrinsic then
         Text := Intrinsic (Engine, Element, Name);
      elsif not Is_Dispatching then
         declare
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Statements.Call_Statement_Parameters
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
      elsif Asis.Statements.Is_Dispatching_Call (Element) then
         declare
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Statements.Call_Statement_Parameters
                (Element, Normalized => False);
         begin
            Text := Engine.Text.Get_Property
              (Asis.Expressions.Actual_Parameter (List (1)), Name);
            Text.Append (".");
            Text.Append
              (Engine.Text.Get_Property (Prefix, Engines.Method_Name));

            Text.Append ("(");

            for J in 2 .. List'Last loop
               Arg := Engine.Text.Get_Property
                 (Asis.Expressions.Actual_Parameter (List (J)), Name);

               Text.Append (Arg);

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
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Statements.Call_Statement_Parameters
                (Element, Normalized => False);
         begin
            while Asis.Elements.Is_Part_Of_Inherited (Proc) loop
               Proc :=
                 Asis.Declarations.Corresponding_Subprogram_Derivation (Proc);
            end loop;

            Text := Properties.Expressions.Identifiers.Name_Prefix
              (Engine => Engine,
               Name   => Element,
               Decl   => Proc);

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
