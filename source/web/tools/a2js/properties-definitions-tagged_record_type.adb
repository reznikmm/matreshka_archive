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

with Properties.Tools;
with Properties.Expressions.Identifiers;

package body Properties.Definitions.Tagged_Record_Type is

   function Is_Universal_String
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration) return Boolean;

   function Is_Null_Procedure (Decl : Asis.Declaration) return Boolean;
   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Asis.Type_Kinds;

      Parent : Asis.Subtype_Indication := Asis.Nil_Element;
      Result : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
   begin
      if Asis.Elements.Type_Kind (Element) =
        Asis.A_Derived_Record_Extension_Definition
      then
         Parent := Asis.Definitions.Parent_Subtype_Indication (Element);
      end if;

      Result.Append ("(function (){");  --  Wrapper
      Result.Append ("var _result =  function (");  --  Constructor

      --  Declare type's discriminant
      declare
         List : constant Asis.Discriminant_Association_List :=
           Properties.Tools.Corresponding_Type_Discriminants (Element);
      begin
         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
            begin
               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);
                  Result.Append (Id);

                  if J /= List'Last or N /= Names'Last then
                     Result.Append (",");
                  end if;
               end loop;
            end;
         end loop;

         Result.Append ("){");

         --  Copy type's discriminant
         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
               Init  : constant Asis.Expression :=
                 Asis.Declarations.Initialization_Expression (List (J));
            begin
               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);

                  if not Asis.Elements.Is_Nil (Init) then
                     Result.Append ("if (typeof ");
                     Result.Append (Id);
                     Result.Append ("=== 'undefined')");
                     Result.Append (Id);
                     Result.Append ("=");
                     Result.Append (Engine.Text.Get_Property (Init, Name));
                     Result.Append (";");
                  end if;

                  Result.Append ("this.");
                  Result.Append (Id);
                  Result.Append (" = ");
                  Result.Append (Id);
                  Result.Append (";");
               end loop;
            end;
         end loop;

         if not Asis.Elements.Is_Nil (Parent) then
            Result.Append
              (Engine.Text.Get_Property (Parent, Name));
            Result.Append (".call (this");

            for J in List'Range loop
               declare
                  Id    : League.Strings.Universal_String;
                  Names : constant Asis.Defining_Name_List :=
                    Asis.Declarations.Names (List (J));
               begin
                  for N in Names'Range loop
                     Result.Append (",");
                     Id := Engine.Text.Get_Property (Names (N), Name);
                     Result.Append (Id);
                  end loop;
               end;
            end loop;

            Result.Append (");");
         end if;
      end;

      --  Initialize type's components
      declare
         Props : League.Strings.Universal_String;
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Components (Element);
      begin
         Props.Append ("var _props = {");
         for J in List'Range loop
            declare
               Id    : League.Strings.Universal_String;
               Init  : constant Asis.Expression :=
                 Asis.Declarations.Initialization_Expression (List (J));
               Names : constant Asis.Defining_Name_List :=
                 Asis.Declarations.Names (List (J));
               Value : League.Strings.Universal_String;
            begin
               if not Asis.Elements.Is_Nil (Init) then
                  Value := Engine.Text.Get_Property (Init, Name);
               end if;

               for N in Names'Range loop
                  Id := Engine.Text.Get_Property (Names (N), Name);
                  Result.Append ("this.");
                  Result.Append (Id);
                  Result.Append (" = ");

                  if Asis.Elements.Is_Nil (Init) then
                     Result.Append
                       (Engine.Text.Get_Property
                          (List (J), Engines.Initialize));
                  else
                     Result.Append (Value);
                  end if;

                  Result.Append (";");
                  Props.Append ("_pos_");
                  Props.Append (Id);
                  Props.Append (": {value: '");
                  Props.Append (Id);
                  Props.Append ("'},");
               end loop;
            end;
         end loop;
         Result.Append ("};");  --  End of Constructor
         Props.Append ("};");
         Result.Append (Props);
      end;

      --  Set prototype
      Result.Append ("_result.prototype = _ec._tag('");
      Text := Engine.Text.Get_Property (Element, Engines.Tag_Name);
      Result.Append (Text);
      Text := League.Strings.Empty_Universal_String;

      if not Asis.Elements.Is_Nil (Parent) then
         Text := Engine.Text.Get_Property (Parent, Engines.Tag_Name);
      end if;

      Result.Append ("', '");
      Result.Append (Text);
      Result.Append ("');");
      Result.Append ("Object.defineProperties(_result.prototype, _props);");


      --  Define null and abstract methods
      declare
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Subprograms (Element);
      begin
         for J in List'Range loop
            if Asis.Declarations.Is_Dispatching_Operation (List (J))
              and then (Asis.Elements.Has_Abstract (List (J))
                        or else Is_Null_Procedure (List (J)))
            then
               Result.Append ("_result.prototype.");
               Result.Append
                 (Engine.Text.Get_Property
                    (Asis.Declarations.Names (List (J)) (1),
                     Engines.Method_Name));

               if Is_Null_Procedure (List (J)) then
                  declare
                     Params : constant Asis.Parameter_Specification_List :=
                       Asis.Declarations.Parameter_Profile (List (J));
                  begin
                     Result.Append (" = _ec._null_proc({");
                     for P in Params'Range loop
                        if Engine.Boolean.Get_Property
                          (Element => Params (P),
                           Name    => Engines.Has_Simple_Output)
                        then
                           Result.Append ("'");
                           Result.Append
                             (Engine.Text.Get_Property
                                (Asis.Declarations.Names (Params (P)) (1), Name));
                           Result.Append ("':");
                           Result.Append (Natural'Wide_Wide_Image (J - 1));
                           Result.Append (",");
                        end if;
                     end loop;
                     Result.Append ("});");
                  end;
               else
                  Result.Append (" = _ec._abstract;");
               end if;
            end if;
         end loop;
      end;

      Result.Append ("return _result;");
      Result.Append ("})();");  --  End of Wrapper and call it

      return Result;
   end Code;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);

      Decl   : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Element);
      Result : League.Strings.Universal_String;
      Text   : League.Strings.Universal_String;
   begin
      if Is_Universal_String (Engine, Element) then
         Result.Append ("""""");

         return Result;
      end if;

      Result.Append (" new ");

      Text :=
        Properties.Expressions.Identifiers.Name_Prefix (Engine, Element, Decl);

      Result.Append (Text);

      Text := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1),
         Engines.Code);

      Result.Append (Text);
      Result.Append ("()");

      return Result;
   end Initialize;

   -----------------------
   -- Is_Null_Procedure --
   -----------------------

   function Is_Null_Procedure (Decl : Asis.Declaration) return Boolean is
   begin
      return Asis.Elements.Declaration_Kind (Decl) in
        Asis.A_Null_Procedure_Declaration;
   end Is_Null_Procedure;

   --------------------
   -- Is_Simple_Type --
   --------------------

   function Is_Simple_Type
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      pragma Unreferenced (Name);
   begin
      return Is_Universal_String (Engine, Element);
   end Is_Simple_Type;

   -------------------------
   -- Is_Universal_String --
   -------------------------

   function Is_Universal_String
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration) return Boolean
   is
      Tag : constant League.Strings.Universal_String :=
        Engine.Text.Get_Property (Element, Engines.Tag_Name);
   begin
      return Tag.To_Wide_Wide_String = "universal_string";
   end Is_Universal_String;

   --------------
   -- Tag_Name --
   --------------

   function Tag_Name
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);

      Decl   : Asis.Declaration := Asis.Elements.Enclosing_Element (Element);
      Text   : League.Strings.Universal_String;
      Result : League.Strings.Universal_String;
   begin
      Result := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1), Engines.Code);

      while not Asis.Elements.Is_Nil (Decl)
        and then Asis.Elements.Is_Part_Of_Instance (Decl)
      loop
         Decl := Tools.Enclosing_Declaration (Decl);

         if Asis.Elements.Declaration_Kind (Decl) in
           Asis.A_Generic_Instantiation
         then
            Text := Engine.Text.Get_Property
              (Asis.Declarations.Names (Decl) (1), Engines.Code);
            Text.Append (".");
            Result.Prepend (Text);
         end if;
      end loop;

      return Result;
   end Tag_Name;

end Properties.Definitions.Tagged_Record_Type;
