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

package body Properties.Definitions.Tagged_Record_Type is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Asis.Type_Kinds;

      Decl : constant Asis.Declaration :=
        Asis.Elements.Enclosing_Element (Element);
      Parent : Asis.Subtype_Indication := Asis.Nil_Element;
      Result : League.Strings.Universal_String;
      Name_Image : League.Strings.Universal_String;
   begin
      if Asis.Elements.Type_Kind (Element) =
        Asis.A_Derived_Record_Extension_Definition
      then
         Parent := Asis.Definitions.Parent_Subtype_Indication (Element);
      end if;

      Name_Image := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1), Name);

      Result.Append ("_ec.");
      Result.Append (Name_Image);
      Result.Append (" =  function (");

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

      declare
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Components (Element);
      begin
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
               end loop;
            end;
         end loop;
      end;

      Result.Append ("};");
      Result.Append ("_ec.");
      Result.Append (Name_Image);
      Result.Append (".prototype = _ec._tag('");
      Result.Append (Name_Image);
      Result.Append ("', '');");

      declare
         List : constant Asis.Declaration_List :=
           Properties.Tools.Corresponding_Type_Subprograms (Element);
      begin
         for J in List'Range loop
            if Asis.Declarations.Is_Dispatching_Operation (List (J))
              and then Asis.Elements.Has_Abstract (List (J))
            then
               Result.Append ("_ec.");
               Result.Append (Name_Image);
               Result.Append (".prototype.");
               Result.Append
                 (Engine.Text.Get_Property
                         (Asis.Declarations.Names (List (J)) (1), Name));
               Result.Append (" = _ec._abstract;");
            end if;
         end loop;
      end;

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
      pragma Unreferenced (Engine, Element, Name);
   begin
      raise Program_Error with "Unimplemented";
      return League.Strings.Empty_Universal_String;
   end Initialize;

end Properties.Definitions.Tagged_Record_Type;
