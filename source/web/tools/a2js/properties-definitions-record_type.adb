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
with Asis.Elements;
with Asis.Declarations;
with Asis.Definitions;

with Properties.Tools;

package body Properties.Definitions.Record_Type is

   ---------------
   -- Alignment --
   ---------------

   function Alignment
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Integer_Property) return Integer
   is
      List : constant Asis.Declaration_List :=
        Properties.Tools.Corresponding_Type_Components (Element);
      Result : Integer := 1;
      Down   : Integer;
   begin
      for J in List'Range loop
         Down := Engine.Integer.Get_Property (List (J), Name);
         Result := Integer'Max (Result, Down);
      end loop;

      return Result;
   end Alignment;

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
      Result     : League.Strings.Universal_String;
      Name_Image : League.Strings.Universal_String;
   begin
      Name_Image := Engine.Text.Get_Property
        (Asis.Declarations.Names (Decl) (1), Name);

      Result.Append ("_ec.");
      Result.Append (Name_Image);
      Result.Append (" =  (function (){");

      --  Write constructor function
      Result.Append ("function _constructor (");

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

                  if J /= List'Last and N /= Names'Last then
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

      if not Asis.Elements.Has_Limited (Decl) then
         --  Write _assign in prototype
         declare
            Down : League.Strings.Universal_String;
            List : constant Asis.Declaration_List :=
              Properties.Tools.Corresponding_Type_Discriminants (Element);
         begin
            Result.Append ("_constructor.prototype._assign = function(src){");

            Down := Engine.Text.Get_Property
              (List  => List,
               Name  => Engines.Assign,
               Empty => League.Strings.Empty_Universal_String,
               Sum   => Properties.Tools.Join'Access);

            Result.Append (Down);

         end;

         declare
            Down : League.Strings.Universal_String;
            Def  : constant Asis.Definition :=
              Asis.Definitions.Record_Definition (Element);
            List : constant Asis.Declaration_List :=
              Asis.Definitions.Record_Components (Def);
         begin
            Down := Engine.Text.Get_Property
              (List  => List,
               Name  => Engines.Assign,
               Empty => League.Strings.Empty_Universal_String,
               Sum   => Properties.Tools.Join'Access);

            Result.Append (Down);

            Result.Append ("};");
         end;
      end if;

      --  Write _new function
      Result.Append ("function _new(){");
      Result.Append ("var result=Object.create(_constructor.prototype);");
      Result.Append ("_constructor.apply(result, arguments);");
      Result.Append ("return result;");
      Result.Append ("};");

      --  Return resulting object
      Result.Append ("return {_constructor: _constructor, _new: _new};");
      Result.Append ("})();");

      return Result;
   end Code;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      List : constant Asis.Declaration_List :=
        Properties.Tools.Corresponding_Type_Components (Element);
      Text : League.Strings.Universal_String;
      Down : League.Strings.Universal_String;
   begin
      Text.Append ("{");

      for J in List'Range loop
         declare
            Id    : League.Strings.Universal_String;
            Names : constant Asis.Defining_Name_List :=
              Asis.Declarations.Names (List (J));
         begin
            Down := Engine.Text.Get_Property (List (J), Name);

            for N in Names'Range loop
               Id := Engine.Text.Get_Property (Names (N), Engines.Code);
               Text.Append (Id);
               Text.Append (":");
               Text.Append (Down);

               if N /= Names'Last then
                  Text.Append (",");
               end if;
            end loop;

            if J /= List'Last then
               Text.Append (",");
            end if;
         end;
      end loop;

      Text.Append ("}");
      return Text;
   end Initialize;

   ----------
   -- Size --
   ----------

   function Size
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      List : constant Asis.Declaration_List :=
        Properties.Tools.Corresponding_Type_Components (Element);
      Result : League.Strings.Universal_String;
      Down   : League.Strings.Universal_String;
   begin
      Result.Append ("(0");

      for J in List'Range loop
         Down := Engine.Text.Get_Property (List (J), Name);
         Result.Append ("+");
         Result.Append (Down);
      end loop;

      Result.Append (")");
      return Result;
   end Size;

end Properties.Definitions.Record_Type;
