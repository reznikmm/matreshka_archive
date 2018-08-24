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
with Asis.Elements;

with Properties.Tools;

package body Properties.Declarations.Procedure_Body_Declarations is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is

      Spec : constant Asis.Declaration :=
        Asis.Declarations.Corresponding_Declaration (Element);

      Is_Generic : constant Boolean :=
        Asis.Elements.Declaration_Kind (Spec) in Asis.A_Generic_Declaration;

      Is_Library_Level : constant Boolean := Asis.Elements.Is_Nil
        (Asis.Elements.Enclosing_Element (Element));

      Inside_Package : constant Boolean := Engine.Boolean.Get_Property
        (Element, Engines.Inside_Package);

      Is_Dispatching : constant Boolean := Engine.Boolean.Get_Property
        (Element, Engines.Is_Dispatching);

      Subprogram_Name : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property
          (Element => Asis.Declarations.Names (Element) (1),
           Name    => Name);

      List : constant Asis.Parameter_Specification_List :=
        Asis.Declarations.Parameter_Profile (Element);

      Has_Output : constant Boolean :=
        Has_Simple_Output (Engine, Element, Engines.Has_Simple_Output);

      Names : array (List'Range) of League.Strings.Universal_String;
      First : Boolean := True;

      Text : League.Strings.Universal_String;
   begin
      if Is_Generic then
         return Text;
      elsif Is_Library_Level then
         Text.Append
           (Properties.Tools.Library_Level_Header
              (Asis.Elements.Enclosing_Compilation_Unit (Element)));
         Text.Append ("return _ec.");
         Text.Append (Subprogram_Name);
         Text.Append ("=");
      elsif Is_Dispatching then
         declare
            Tipe     : constant Asis.Declaration :=
              Tools.Corresponding_Type (Spec);
            Type_Name : constant Asis.Defining_Name :=
              Asis.Declarations.Names (Tipe) (1);
            Image : constant League.Strings.Universal_String :=
              Engine.Text.Get_Property (Type_Name, Name);
            Method_Name : constant League.Strings.Universal_String :=
              Engine.Text.Get_Property
                (Element => Asis.Declarations.Names (Element) (1),
                 Name    => Engines.Method_Name);
         begin
            if Inside_Package then
               Text.Append ("_ec.");
               Text.Append (Subprogram_Name);
               Text.Append ("=");
               Text.Append ("_ec.");
            end if;

            Text.Append (Image);
            Text.Append (".prototype.");
            Text.Append (Method_Name);
            Text.Append (" = ");
         end;
      elsif Inside_Package then
         Text.Append ("_ec.");
         Text.Append (Subprogram_Name);
         Text.Append ("=");
      end if;

      Text.Append ("function ");
      Text.Append (Subprogram_Name);
      Text.Append (" (");

      declare
         Default : League.Strings.Universal_String;
      begin
         for J in List'Range loop
            declare
               Init_Code : League.Strings.Universal_String;
               Init      : constant Asis.Expression :=
                 Asis.Declarations.Initialization_Expression (List (J));
               Arg_Code  : constant League.Strings.Universal_String :=
                 Engine.Text.Get_Property
                   (Asis.Declarations.Names (List (J)) (1), Name);
            begin
               Names (J) := Arg_Code;
               if not Is_Dispatching or J /= List'First then
                  Text.Append (Arg_Code);

                  if J /= List'Last then
                     Text.Append (",");
                  end if;

                  if not Asis.Elements.Is_Nil (Init) then
                     Init_Code := Engine.Text.Get_Property (Init, Name);

                     Default.Append (Arg_Code);
                     Default.Append (" = typeof ");
                     Default.Append (Arg_Code);
                     Default.Append (" === 'undefined' ? ");
                     Default.Append (Init_Code);
                     Default.Append (" : ");
                     Default.Append (Arg_Code);
                     Default.Append (";");
                  end if;
               end if;
            end;
         end loop;

         Text.Append ("){");
         Text.Append (Default);
      end;

      if Has_Output then
         Text.Append ("function _return(){ return {");

         for J in List'Range loop
            if Engine.Boolean.Get_Property
                (Element => List (J),
                 Name    => Engines.Has_Simple_Output)
            then
               if First then
                  First := False;
               else
                  Text.Append (", ");
               end if;

               Text.Append (Names (J));
               Text.Append (": ");
               Text.Append (Names (J));
            end if;
         end loop;

         Text.Append ("}; };");
      end if;

      declare
         Down : League.Strings.Universal_String;
         List : constant Asis.Element_List :=
           Asis.Declarations.Body_Declarative_Items (Element);
      begin
         Down := Engine.Text.Get_Property
           (List  => List,
            Name  => Name,
            Empty => League.Strings.Empty_Universal_String,
            Sum   => Properties.Tools.Join'Access);

         Text.Append (Down);
      end;

      declare
         Down : League.Strings.Universal_String;
         List : constant Asis.Element_List :=
           Asis.Declarations.Body_Statements (Element);
      begin
         Down := Engine.Text.Get_Property
           (List  => List,
            Name  => Name,
            Empty => League.Strings.Empty_Universal_String,
            Sum   => Properties.Tools.Join'Access);

         Text.Append (Down);
      end;

      if Has_Output then
         Text.Append ("return _return();");
      end if;

      Text.Append ("};");

      if Is_Library_Level then
         Text.Append ("});");
      end if;

      return Text;
   end Code;

   ------------
   -- Export --
   ------------

   function Export
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      Spec   : constant Asis.Declaration :=
        Asis.Declarations.Corresponding_Declaration (Element);

      Result : constant Wide_String :=
        Properties.Tools.Get_Aspect (Element, "Export");
   begin
      if Result = "True" then
         return True;
      elsif Asis.Elements.Is_Nil (Spec) then
         return False;
      else
         return Engine.Boolean.Get_Property (Spec, Name);
      end if;
   end Export;

   -----------------------
   -- Has_Simple_Output --
   -----------------------

   function Has_Simple_Output
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      pragma Unreferenced (Name);

      List : constant Asis.Parameter_Specification_List :=
        Asis.Declarations.Parameter_Profile (Element);

      Output : constant Boolean :=
        Engine.Boolean.Get_Property
          (List  => List,
           Name  => Engines.Has_Simple_Output,
           Empty => False,
           Sum   => Properties.Tools."or"'Access);

   begin
      return Output;
   end Has_Simple_Output;

   --------------------
   -- Is_Dispatching --
   --------------------

   function Is_Dispatching
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      Spec : constant Asis.Declaration :=
        Asis.Declarations.Corresponding_Declaration (Element);
   begin
      if Asis.Elements.Is_Nil (Spec) then
         return False;
      else
         return Engine.Boolean.Get_Property (Spec, Name);
      end if;
   end Is_Dispatching;

end Properties.Declarations.Procedure_Body_Declarations;
