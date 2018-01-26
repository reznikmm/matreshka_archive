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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Asis.Expressions;

with Properties.Tools;

package body Properties.Expressions.Indexed_Component is

   -------------
   -- Address --
   -------------

   function Address
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Text  : League.Strings.Universal_String;
      Down  : League.Strings.Universal_String;
      List  : constant Asis.Expression_List :=
        Asis.Expressions.Index_Expressions (Element);
      Prefix : constant Asis.Expression := Asis.Expressions.Prefix (Element);
   begin
      Down := Engine.Text.Get_Property
        (Prefix, Name);
      Text.Append (Down);

      Text.Append (".A[");
      Text.Append (Down);
      Text.Append ("._index(");

      for J in List'Range loop
         Down := Engine.Text.Get_Property (List (J), Engines.Code);
         Text.Append (Down);

         if J /= List'Last then
            Text.Append (", ");
         end if;
      end loop;

      Text.Append (")");
      Text.Append ("]");

      return Text;
   end Address;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Text            : League.Strings.Universal_String;
      Down            : League.Strings.Universal_String;
      List            : constant Asis.Expression_List :=
        Asis.Expressions.Index_Expressions (Element);
      Prefix          : constant Asis.Expression :=
        Asis.Expressions.Prefix (Element);
      Prefix_Tipe     : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Prefix);
      Element_Tipe    : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Element);
      Is_Simple_Type  : constant Boolean :=
        Engine.Boolean.Get_Property (Element_Tipe, Engines.Is_Simple_Type);
      Is_Simple_Ref   : constant Boolean :=
        Engine.Boolean.Get_Property (Element, Engines.Is_Simple_Ref);
      Is_Array_Buffer : Boolean := False;

   begin
      if not Asis.Elements.Is_Nil (Prefix_Tipe) then
         Is_Array_Buffer := Properties.Tools.Is_Array_Buffer (Prefix_Tipe);
      end if;

      Down := Engine.Text.Get_Property (Prefix, Name);
      Text.Append (Down);

      if Is_Array_Buffer and not Is_Simple_Type then
         Text.Append ("._get(");

      else
         Text.Append (".A[");
         Text.Append (Down);
         Text.Append ("._index(");
      end if;

      for J in List'Range loop
         Down := Engine.Text.Get_Property (List (J), Name);
         Text.Append (Down);

         if J /= List'Last then
            Text.Append (", ");
         end if;
      end loop;

      Text.Append (")");

      if not Is_Array_Buffer or else Is_Simple_Type then
         Text.Append ("]");

         if Is_Simple_Ref then
            Text.Append (".all");
         end if;
      end if;

      return Text;
   end Code;

   -------------------
   -- Is_Simple_Ref --
   -------------------

   function Is_Simple_Ref
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      Prefix : constant Asis.Expression :=
        Asis.Expressions.Prefix (Element);
      Prefix_Type : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Prefix);
      View        : Asis.Definition;
      Component   : Asis.Component_Definition;
   begin
      if Asis.Elements.Is_Nil (Prefix_Type) then
         declare
            Decl : constant Asis.Declaration :=
              Asis.Expressions.Corresponding_Name_Declaration (Prefix);
         begin
            View := Asis.Declarations.Object_Declaration_View (Decl);
         end;
      else
         View := Properties.Tools.Type_Declaration_View (Prefix_Type);
      end if;

      Component := Properties.Tools.Array_Component_Definition (View);

      return Engine.Boolean.Get_Property (Component, Name);
   end Is_Simple_Ref;

end Properties.Expressions.Indexed_Component;
