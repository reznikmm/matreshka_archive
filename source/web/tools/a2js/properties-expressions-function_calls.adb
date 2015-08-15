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
with Asis.Expressions;
with Asis.Statements;

with League.String_Vectors;

with Properties.Expressions.Identifiers;

package body Properties.Expressions.Function_Calls is

   function Intrinsic
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String;

   From : League.String_Vectors.Universal_String_Vector;
   To   : League.String_Vectors.Universal_String_Vector;

   ---------------------
   -- Call_Convention --
   ---------------------

   function Call_Convention
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Call_Convention_Property)
      return Engines.Call_Convention_Kind is
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
      use type Engines.Call_Convention_Kind;

      Text   : League.Strings.Universal_String;
      Prefix : constant Asis.Expression := Asis.Expressions.Prefix (Element);
      Conv   : constant Engines.Call_Convention_Kind :=
        Engine.Call_Convention.Get_Property
          (Element, Engines.Call_Convention);
      Is_Dispatching : Boolean;
   begin
      if Conv = Engines.Intrinsic then
         return Intrinsic (Engine, Element, Name);
      end if;

      Is_Dispatching := Engine.Boolean.Get_Property
        (Prefix, Engines.Is_Dispatching);

      if not Is_Dispatching then
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
      elsif Asis.Statements.Is_Dispatching_Call (Element) then
         declare
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Expressions.Function_Call_Parameters
                (Element, Normalized => False);
         begin
            Text := Engine.Text.Get_Property
              (Asis.Expressions.Actual_Parameter (List (1)), Name);
            Text.Append (".");
            Text.Append (Engine.Text.Get_Property (Prefix, Name));

            if Conv /= Engines.JavaScript_Property_Getter then
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
            end if;
         end;
      else
         declare
            Func   : constant Asis.Declaration :=
              Asis.Expressions.Corresponding_Called_Function (Element);
            Arg    : League.Strings.Universal_String;
            List   : constant Asis.Association_List :=
              Asis.Expressions.Function_Call_Parameters
                (Element, Normalized => False);
         begin
            Text := Properties.Expressions.Identifiers.Name_Prefix
              (Engine => Engine,
               Name   => Element,
               Decl   => Func);

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
      List   : constant Asis.Association_List :=
        Asis.Expressions.Function_Call_Parameters
          (Element, Normalized => False);
      Args   : array (List'Range) of League.Strings.Universal_String;
   begin
      for J in List'Range loop
         Args (J) := Engine.Text.Get_Property
           (Asis.Expressions.Actual_Parameter (List (J)), Name);
      end loop;

      Index := From.Index (Func);

      if Func.To_Wide_Wide_String = "League.Strings.To_Universal_String"
        or else Func.To_Wide_Wide_String = "League.Strings.To_UTF_8_String"
        or else Func.Starts_With ("System.Address_To_Access_Conversions.")
      then
         return Args (1);
      elsif Args'Length = 2 and Index > 0 then
         declare
            Text : League.Strings.Universal_String;
         begin
            Text.Append (Args (1));
            Text.Append (To.Element (Index));
            Text.Append (Args (2));

            return Text;
         end;
      elsif Index > 0 then
         declare
            Text : League.Strings.Universal_String;
         begin
            Text.Append (To.Element (Index));
            Text.Append (Args (1));

            return Text;
         end;
      elsif Func.To_Wide_Wide_String = """abs""" then
         declare
            Text : League.Strings.Universal_String;
         begin
            Text.Append ("Math.abs(");
            Text.Append (Args (1));
            Text.Append (")");

            return Text;
         end;
      elsif Func.To_Wide_Wide_String = "System.Storage_Elements.""+""" then
         declare
            Text : League.Strings.Universal_String;
         begin
            Text.Append (Args (1));
            Text.Append ("[");
            Text.Append (Args (2));
            Text.Append ("]");

            return Text;
         end;
      elsif Func.To_Wide_Wide_String = "AN_IMAGE_ATTRIBUTE" then
         declare
            Text : League.Strings.Universal_String;
         begin
            Text.Append ("_ec._image(");
            Text.Append (Args (1));
            Text.Append (")");

            return Text;
         end;
      else
         Ada.Wide_Wide_Text_IO.Put ("Unimplemented Intrinsic: ");
         Ada.Wide_Wide_Text_IO.Put (Func.To_Wide_Wide_String);
         raise Program_Error;
      end if;
   end Intrinsic;

begin
   From.Append (League.Strings.To_Universal_String ("""="""));
   To.Append (League.Strings.To_Universal_String ("==="));
   From.Append (League.Strings.To_Universal_String ("""/="""));
   To.Append (League.Strings.To_Universal_String ("!=="));
   From.Append (League.Strings.To_Universal_String ("""&"""));
   To.Append (League.Strings.To_Universal_String ("+"));
   From.Append (League.Strings.To_Universal_String ("""+"""));
   To.Append (League.Strings.To_Universal_String ("+"));
   From.Append (League.Strings.To_Universal_String ("""-"""));
   To.Append (League.Strings.To_Universal_String ("-"));
   From.Append (League.Strings.To_Universal_String ("""*"""));
   To.Append (League.Strings.To_Universal_String ("*"));
   From.Append (League.Strings.To_Universal_String ("""/"""));
   To.Append (League.Strings.To_Universal_String ("/"));
   From.Append (League.Strings.To_Universal_String (""">"""));
   To.Append (League.Strings.To_Universal_String (">"));
   From.Append (League.Strings.To_Universal_String ("""<"""));
   To.Append (League.Strings.To_Universal_String ("<"));
   From.Append (League.Strings.To_Universal_String ("""<="""));
   To.Append (League.Strings.To_Universal_String ("<="));
   From.Append (League.Strings.To_Universal_String ("""and"""));
   To.Append (League.Strings.To_Universal_String ("&"));
   From.Append (League.Strings.To_Universal_String ("""or"""));
   To.Append (League.Strings.To_Universal_String ("|"));
   From.Append (League.Strings.To_Universal_String ("""not"""));
   To.Append (League.Strings.To_Universal_String ("!"));
   From.Append (League.Strings.To_Universal_String ("League.Strings.""="""));
   To.Append (League.Strings.To_Universal_String ("=="));
end Properties.Expressions.Function_Calls;
