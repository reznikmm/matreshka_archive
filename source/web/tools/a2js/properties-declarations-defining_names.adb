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
with Ada.Containers.Hashed_Sets;

with Asis.Declarations;
with Asis.Elements;

with League.Strings.Hash;

with Properties.Tools;

package body Properties.Declarations.Defining_Names is

   package String_Maps is new Ada.Containers.Hashed_Sets
     (Element_Type        => League.Strings.Universal_String,
      Hash                => League.Strings.Hash,
      Equivalent_Elements => League.Strings."=",
      "="                 => League.Strings."=");

   Reserved : String_Maps.Set;

   Map : constant array (Asis.Operator_Kinds
                           range Asis.An_And_Operator .. Asis.A_Not_Operator)
     of League.Strings.Universal_String :=
       (Asis.An_And_Operator =>
          League.Strings.To_Universal_String ("_and"),
        Asis.An_Or_Operator =>
          League.Strings.To_Universal_String ("_or"),
        Asis.An_Xor_Operator =>
          League.Strings.To_Universal_String ("_xor"),
        Asis.An_Equal_Operator =>
          League.Strings.To_Universal_String ("_eq"),
        Asis.A_Not_Equal_Operator =>
          League.Strings.To_Universal_String ("_ne"),
        Asis.A_Less_Than_Operator =>
          League.Strings.To_Universal_String ("_lt"),
        Asis.A_Less_Than_Or_Equal_Operator =>
          League.Strings.To_Universal_String ("_le"),
        Asis.A_Greater_Than_Operator =>
          League.Strings.To_Universal_String ("_gt"),
        Asis.A_Greater_Than_Or_Equal_Operator =>
          League.Strings.To_Universal_String ("_ge"),
        Asis.A_Plus_Operator =>
          League.Strings.To_Universal_String ("_plus"),
        Asis.A_Minus_Operator =>
          League.Strings.To_Universal_String ("_minus"),
        Asis.A_Concatenate_Operator =>
          League.Strings.To_Universal_String ("_join"),
        Asis.A_Unary_Plus_Operator =>
          League.Strings.To_Universal_String ("_nop"),
        Asis.A_Unary_Minus_Operator =>
          League.Strings.To_Universal_String ("_neg"),
        Asis.A_Multiply_Operator =>
          League.Strings.To_Universal_String ("_mul"),
        Asis.A_Divide_Operator =>
          League.Strings.To_Universal_String ("_div"),
        Asis.A_Mod_Operator =>
          League.Strings.To_Universal_String ("_mod"),
        Asis.A_Rem_Operator =>
          League.Strings.To_Universal_String ("_rem"),
        Asis.An_Exponentiate_Operator =>
          League.Strings.To_Universal_String ("_power"),
        Asis.An_Abs_Operator =>
          League.Strings.To_Universal_String ("_abs"),
        Asis.A_Not_Operator =>
          League.Strings.To_Universal_String ("_not"));

   function Get_Name
     (Name : Asis.Defining_Name) return League.Strings.Universal_String;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Defining_Name;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is

      function Is_This return Boolean;
      function Get_Suffix return League.Strings.Universal_String;
      function Prev_Subprogram_Count return Natural;
      function Is_Subprogram (Kind : Asis.Declaration_Kinds) return Boolean;

      Decl : constant Asis.Declaration :=
        Properties.Tools.Enclosing_Declaration (Element);
      Kind  : constant Asis.Declaration_Kinds :=
        Asis.Elements.Declaration_Kind (Decl);

      Text : League.Strings.Universal_String := Get_Name (Element);

      ----------------
      -- Get_Suffix --
      ----------------

      function Get_Suffix return League.Strings.Universal_String is
         Result : League.Strings.Universal_String;
      begin
         if Is_Subprogram (Kind)
           and then not Asis.Elements.Is_Nil
             (Asis.Elements.Enclosing_Element (Decl))
         then
            declare
               Count : constant Natural := Prev_Subprogram_Count;
               Image : Wide_Wide_String := Natural'Wide_Wide_Image (Count);
            begin
               if Count > 0 then
                  Image (1) := '$';
                  Result.Append (Image);
                  return Result;
               end if;
            end;
         end if;

         if Reserved.Contains (Text) then
            Result.Append ("$");
         end if;

         return Result;
      end Get_Suffix;

      -------------------
      -- Is_Subprogram --
      -------------------

      function Is_Subprogram (Kind : Asis.Declaration_Kinds) return Boolean is
      begin
         return Kind in Asis.A_Procedure_Declaration
           | Asis.A_Procedure_Body_Declaration
             | Asis.An_Expression_Function_Declaration
               | Asis.A_Procedure_Renaming_Declaration
                 | Asis.A_Procedure_Body_Stub
                   | Asis.A_Procedure_Instantiation
                     | Asis.A_Function_Declaration
                       | Asis.A_Function_Body_Declaration
                         | Asis.A_Function_Renaming_Declaration
                           | Asis.A_Function_Body_Stub
                             | Asis.A_Function_Instantiation;
      end Is_Subprogram;

      -------------
      -- Is_This --
      -------------

      function Is_This return Boolean is
         use type Asis.Declaration_Kinds;

         Proc : Asis.Declaration;
      begin
         if Kind = Asis.A_Parameter_Specification then
            Proc := Asis.Elements.Enclosing_Element (Decl);

            if Engine.Boolean.Get_Property (Proc, Engines.Is_Dispatching)
              and then Asis.Elements.Is_Equal
                (Decl, Asis.Declarations.Parameter_Profile (Proc) (1))
            then
               return True;
            end if;
         end if;

         return False;
      end Is_This;

      ---------------------------
      -- Prev_Subprogram_Count --
      ---------------------------

      function Prev_Subprogram_Count return Natural is
         Parent : constant Asis.Declaration :=
           Properties.Tools.Enclosing_Declaration (Decl);
         Kind  : constant Asis.Declaration_Kinds :=
           Asis.Elements.Declaration_Kind (Parent);
      begin
         case Kind is
            when Asis.A_Package_Declaration =>
               declare
                  use type Asis.Declaration_List;
                  Result : Natural := 0;
                  List : constant Asis.Declaration_List :=
                    Asis.Declarations.Visible_Part_Declarative_Items (Parent) &
                    Asis.Declarations.Private_Part_Declarative_Items (Parent);
               begin
                  for J in List'Range loop
                     if Asis.Elements.Is_Equal (Decl, List (J)) then
                        return Result;
                     elsif Is_Subprogram
                       (Asis.Elements.Declaration_Kind (List (J)))
                     then
                        declare
                           use type League.Strings.Universal_String;

                           Name : constant Asis.Defining_Name :=
                             Asis.Declarations.Names (List (J)) (1);
                           Image : constant League.Strings.Universal_String :=
                             Get_Name (Name);
                        begin
                           if Image = Text then
                              Result := Result + 1;
                           end if;
                        end;
                     end if;
                  end loop;

                  return 0;
               end;
            when others =>
               return 0;
         end case;
      end Prev_Subprogram_Count;

      Link_Name : constant Wide_String :=
        Properties.Tools.Get_Aspect (Decl, "Link_Name");
      Spec : constant Asis.Declaration :=
        (if Is_Subprogram (Kind) then
              Asis.Declarations.Corresponding_Declaration (Decl)
         else
            Asis.Nil_Element);
   begin
      if Link_Name = "" then
         if Is_This then
            return League.Strings.To_Universal_String ("this");
         elsif not Asis.Elements.Is_Nil (Spec)
           and then Kind not in Asis.A_Generic_Instantiation
           and then not Asis.Elements.Is_Equal (Decl, Spec)
         then
            --  If this is subprogram body, return name of its specification
            return Engine.Text.Get_Property
              (Asis.Declarations.Names (Spec) (1), Name);
         end if;

         Text.Append (Get_Suffix);
      else
         Text := League.Strings.From_UTF_16_Wide_String (Link_Name);
      end if;

      return Text;
   end Code;

   --------------
   -- Get_Name --
   --------------

   function Get_Name
     (Name : Asis.Defining_Name) return League.Strings.Universal_String is
   begin
      case Asis.Elements.Defining_Name_Kind (Name) is
         when Asis.A_Defining_Operator_Symbol =>
            return Map (Asis.Elements.Operator_Kind (Name));
         when others =>
            declare
               Image : constant Wide_String :=
                 Asis.Declarations.Defining_Name_Image (Name);
               Text : constant League.Strings.Universal_String :=
                 League.Strings.From_UTF_16_Wide_String (Image)
                 .To_Lowercase;
            begin
               return Text;
            end;
      end case;
   end Get_Name;

   -----------------
   -- Method_Name --
   -----------------

   function Method_Name
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Defining_Name;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Engine, Name);
      Decl : constant Asis.Declaration :=
        Properties.Tools.Enclosing_Declaration (Element);
      Link_Name : constant Wide_String :=
        Properties.Tools.Get_Aspect (Decl, "Link_Name");
      Text : League.Strings.Universal_String := Get_Name (Element);
   begin
      if Link_Name /= "" then
         Text := League.Strings.From_UTF_16_Wide_String (Link_Name);
      end if;

      return Text;
   end Method_Name;

begin
   Reserved.Insert (League.Strings.To_Universal_String ("break"));
   Reserved.Insert (League.Strings.To_Universal_String ("case"));
   Reserved.Insert (League.Strings.To_Universal_String ("class"));
   Reserved.Insert (League.Strings.To_Universal_String ("catch"));
   Reserved.Insert (League.Strings.To_Universal_String ("const"));
   Reserved.Insert (League.Strings.To_Universal_String ("continue"));
   Reserved.Insert (League.Strings.To_Universal_String ("debugger"));
   Reserved.Insert (League.Strings.To_Universal_String ("default"));
   Reserved.Insert (League.Strings.To_Universal_String ("delete"));
   Reserved.Insert (League.Strings.To_Universal_String ("do"));
   Reserved.Insert (League.Strings.To_Universal_String ("else"));
   Reserved.Insert (League.Strings.To_Universal_String ("export"));
   Reserved.Insert (League.Strings.To_Universal_String ("extends"));
   Reserved.Insert (League.Strings.To_Universal_String ("finally"));
   Reserved.Insert (League.Strings.To_Universal_String ("for"));
   Reserved.Insert (League.Strings.To_Universal_String ("function"));
   Reserved.Insert (League.Strings.To_Universal_String ("if"));
   Reserved.Insert (League.Strings.To_Universal_String ("import"));
   Reserved.Insert (League.Strings.To_Universal_String ("in"));
   Reserved.Insert (League.Strings.To_Universal_String ("instanceof"));
   Reserved.Insert (League.Strings.To_Universal_String ("let"));
   Reserved.Insert (League.Strings.To_Universal_String ("new"));
   Reserved.Insert (League.Strings.To_Universal_String ("return"));
   Reserved.Insert (League.Strings.To_Universal_String ("super"));
   Reserved.Insert (League.Strings.To_Universal_String ("switch"));
   Reserved.Insert (League.Strings.To_Universal_String ("this"));
   Reserved.Insert (League.Strings.To_Universal_String ("throw"));
   Reserved.Insert (League.Strings.To_Universal_String ("try"));
   Reserved.Insert (League.Strings.To_Universal_String ("typeof"));
   Reserved.Insert (League.Strings.To_Universal_String ("var"));
   Reserved.Insert (League.Strings.To_Universal_String ("void"));
   Reserved.Insert (League.Strings.To_Universal_String ("while"));
   Reserved.Insert (League.Strings.To_Universal_String ("with"));
   Reserved.Insert (League.Strings.To_Universal_String ("yield"));

   Reserved.Insert (League.Strings.To_Universal_String ("self"));
end Properties.Declarations.Defining_Names;
