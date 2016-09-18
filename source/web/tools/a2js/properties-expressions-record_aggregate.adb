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
with League.String_Vectors;

with Asis.Declarations;
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;

with Properties.Tools;
with Properties.Expressions.Identifiers;

package body Properties.Expressions.Record_Aggregate is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      use type League.Strings.Universal_String;
      use type Asis.Declaration_List;

      procedure Append
        (Names  : League.Strings.Universal_String;
         Code   : League.Strings.Universal_String);

      procedure Mark_Done (Name : League.Strings.Universal_String);

      function Get_Name
        (Index : Positive) return League.Strings.Universal_String;

      function Get_Type_Name return League.Strings.Universal_String;

      Tipe   : constant Asis.Element :=
        Asis.Expressions.Corresponding_Expression_Type_Definition (Element);
      Parts  : constant Asis.Declaration_List :=
        Tools.Corresponding_Type_Discriminants (Tipe) &
        Tools.Corresponding_Type_Components (Tipe);
      Done   : array (Parts'Range) of Boolean := (others => False);
      Last   : Natural := 0;
      Result : League.Strings.Universal_String;

      ------------
      -- Append --
      ------------

      procedure Append
        (Names  : League.Strings.Universal_String;
         Code   : League.Strings.Universal_String)
      is
         Text : League.Strings.Universal_String;
         List : constant League.String_Vectors.Universal_String_Vector :=
           Names.Split (',');
      begin
         if List.Length = 0 then  --  positional association
            Last := Last + 1;
            Done (Last) := True;
            Text := Get_Name (Last);
            Result.Append (Text);
            Result.Append (":");
            Result.Append (Code);
         else
            for J in 1 .. List.Length loop
               Mark_Done (List.Element (J));
               Result.Append (List.Element (J));
               Result.Append (":");
               Result.Append (Code);
            end loop;
         end if;
      end Append;

      --------------
      -- Get_Name --
      --------------

      function Get_Name
        (Index : Positive) return League.Strings.Universal_String
      is
         Names : constant Asis.Defining_Name_List :=
           Asis.Declarations.Names (Parts (Index));
      begin
         pragma Assert (Names'Length = 1);

         return Engine.Text.Get_Property (Names (Names'First), Code.Name);
      end Get_Name;

      -------------------
      -- Get_Type_Name --
      -------------------

      function Get_Type_Name return League.Strings.Universal_String is
         use type Asis.Definition_Kinds;
         use type Asis.Expression_Kinds;

         Result : League.Strings.Universal_String;
         Name   : League.Strings.Universal_String;
         X      : Asis.Element := Tipe;
         Decl   : Asis.Declaration;
      begin
         --  Unwind all subtype declarations
         while Asis.Elements.Definition_Kind (X)
           = Asis.A_Subtype_Indication
         loop
            X := Asis.Definitions.Subtype_Mark (X);

            if Asis.Elements.Expression_Kind (X)
              = Asis.A_Selected_Component
            then
               X := Asis.Expressions.Selector (X);
            end if;

            X := Asis.Expressions.Corresponding_Name_Declaration (X);
            X := Asis.Declarations.Type_Declaration_View (X);
         end loop;

         if Asis.Elements.Definition_Kind (X) = Asis.A_Type_Definition then
            Decl := Asis.Elements.Enclosing_Element (X);

            Result := Properties.Expressions.Identifiers.Name_Prefix
              (Engine => Engine,
               Name   => Element,
               Decl   => Asis.Elements.Enclosing_Element (X));

            Name := Engine.Text.Get_Property
              (Asis.Declarations.Names (Decl) (1), Code.Name);

            Result.Append (Name);
         end if;

         return Result;
      end Get_Type_Name;

      ---------------
      -- Mark_Done --
      ---------------

      procedure Mark_Done (Name : League.Strings.Universal_String) is
         Text : League.Strings.Universal_String;
      begin
         for J in Parts'Range loop
            if not Done (J) then
               Text := Get_Name (J);

               if Text = Name then
                  Done (J) := True;

                  return;
               end if;
            end if;
         end loop;
      end Mark_Done;

      Names : League.Strings.Universal_String;
      Text  : League.Strings.Universal_String;
      List  : constant Asis.Association_List :=
        Asis.Expressions.Record_Component_Associations (Element);

      Tipe_Name : constant League.Strings.Universal_String := Get_Type_Name;
   begin
      if not Tipe_Name.Is_Empty then
         Result.Append (Tipe_Name);
         Result.Append ("._cast(");
      end if;

      Result.Append ("{");

      for J in List'Range loop
         Names := Engine.Text.Get_Property (List (J), Engines.Associations);

         if Names /= League.Strings.To_Universal_String ("others") then
            Text := Engine.Text.Get_Property (List (J), Name);

            if not Text.Is_Empty then
               --  Box <> expression returns empty Code. We ignore such assoc.
               if J /= List'First then
                  Result.Append (",");
               end if;

               Append (Names, Text);
            end if;
         end if;
      end loop;

      for J in Parts'Range loop
         if not Done (J) then
            Text := Get_Name (J);
            Result.Append (",");
            Result.Append (Text);
            Result.Append (":");
            Text := Engine.Text.Get_Property (Parts (J), Engines.Initialize);
            Result.Append (Text);
         end if;
      end loop;

      Result.Append ("}");

      if not Tipe_Name.Is_Empty then
         Result.Append (")");
      end if;

      return Result;
   end Code;

   ----------------------------
   -- Typed_Array_Initialize --
   ----------------------------

   function Typed_Array_Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;
      Down   : League.Strings.Universal_String;
      Item   : Asis.Expression;
      List   : constant Asis.Association_List :=
        Asis.Expressions.Record_Component_Associations (Element);
   begin
      Result.Append ("_result._TA_allign(4);");

      for J in List'Range loop
         pragma Assert (Asis.Expressions.Record_Component_Choices
                        (List (J))'Length = 0,
                        "Named associations in Typed_Array aggregate"
                        & " are not supported");

         Item := Asis.Expressions.Component_Expression (List (J));
         Down := Engine.Text.Get_Property (Item, Name);
         Result.Append (Down);
      end loop;

      return Result;
   end Typed_Array_Initialize;

end Properties.Expressions.Record_Aggregate;
