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
with Asis.Definitions;
with Asis.Elements;
with Asis.Expressions;

with Properties.Tools;

package body Properties.Expressions.Attribute_Reference is

   function Call_Convention
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Convention_Property)
      return Engines.Convention_Kind
   is
      pragma Unreferenced (Engine, Name);
      Kind   : constant Asis.Attribute_Kinds :=
        Asis.Elements.Attribute_Kind (Element);
   begin
      case Kind is
         when Asis.An_Image_Attribute |
              Asis.A_Ceiling_Attribute |
              Asis.A_Floor_Attribute |
              Asis.A_Max_Attribute |
              Asis.A_Min_Attribute |
              Asis.A_Pos_Attribute |
              Asis.A_Pred_Attribute |
              Asis.A_Succ_Attribute |
              Asis.A_Val_Attribute |
              Asis.A_Rounding_Attribute |
              Asis.A_Wide_Wide_Image_Attribute |
              Asis.A_Wide_Wide_Value_Attribute =>
            return Engines.Intrinsic;
         when others =>
            raise Program_Error with
              "Unimplemented Call_Convention attribute: " &
              Asis.Attribute_Kinds'Image (Kind);
      end case;
   end Call_Convention;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      function Array_Property (Kind : Asis.Attribute_Kinds) return
        League.Strings.Universal_String;

      --------------------
      -- Array_Property --
      --------------------

      function Array_Property (Kind : Asis.Attribute_Kinds) return
        League.Strings.Universal_String is
      begin
         case Kind is
            when Asis.A_Length_Attribute =>
               return League.Strings.To_Universal_String ("_length");
            when Asis.A_First_Attribute =>
               return League.Strings.To_Universal_String ("_first");
            when Asis.A_Last_Attribute =>
               return League.Strings.To_Universal_String ("_last");
            when others =>
               raise Program_Error;
         end case;
      end Array_Property;

      Prefix : constant Asis.Expression :=
        Asis.Expressions.Prefix (Element);
      Text   : League.Strings.Universal_String;
      Kind   : constant Asis.Attribute_Kinds :=
        Asis.Elements.Attribute_Kind (Element);
   begin
      case Kind is
         when Asis.An_Address_Attribute =>
            Text := Engine.Text.Get_Property (Prefix, Engines.Address);

            if Tools.Is_Array (Prefix) then
               Text.Append (".A");
            end if;

            return Text;

         when Asis.An_Access_Attribute |
              Asis.An_Unchecked_Access_Attribute =>
            return Engine.Text.Get_Property (Prefix, Engines.Address);

         when Asis.A_Class_Attribute =>
            --  FIX ME, but I have no idea how
            return Engine.Text.Get_Property (Prefix, Name);

         when Asis.A_Component_Size_Attribute =>
            declare
               Decl : constant Asis.Declaration :=
                 Properties.Tools.Corresponding_Declaration (Prefix);
               View : constant Asis.Definition :=
                 Properties.Tools.Type_Declaration_View (Decl);
               Comp : constant Asis.Definition :=
                 Asis.Definitions.Array_Component_Definition (View);
            begin
               return Engine.Text.Get_Property (Comp, Engines.Size);
            end;

         when Asis.A_Length_Attribute |
              Asis.A_First_Attribute |
              Asis.A_Last_Attribute =>

            declare
               Args : constant Asis.Expression_List :=
                 Asis.Expressions.Attribute_Designator_Expressions (Element);
            begin
               Text := Engine.Text.Get_Property (Prefix, Name);
               Text.Append (".");
               Text.Append (Array_Property (Kind));
               Text.Append ("[");

               if Args'Length = 0 then
                  Text.Append ("0]");
               else
                  Text.Append
                    (Engine.Text.Get_Property (Args (Args'First), Name));
                  Text.Append ("-1]");
               end if;

               return Text;
            end;

         when Asis.A_Position_Attribute =>
            declare
               Parent : constant Asis.Identifier :=
                 Asis.Expressions.Prefix (Prefix);
               Selector : constant Asis.Identifier :=
                 Asis.Expressions.Selector (Prefix);
               Down : League.Strings.Universal_String;
            begin
               Text := Engine.Text.Get_Property (Parent, Name);
               Text.Append ("._pos_");
               Down := Engine.Text.Get_Property (Selector, Name);
               Text.Append (Down);

               return Text;
            end;

         when Asis.A_Model_Epsilon_Attribute =>
               Text.Append ("Number.EPSILON");

               return Text;
         when Asis.An_Implementation_Defined_Attribute =>
            declare
               Id : constant Asis.Identifier :=
                 Asis.Expressions.Attribute_Designator_Identifier(Element);
               Attr : constant Asis.Program_Text :=
                 Asis.Expressions.Name_Image (Id);
            begin
               if Attr = "Unrestricted_Access" then
                  return Engine.Text.Get_Property (Prefix, Engines.Address);
               else
                  raise Program_Error with
                    "Unimplemented implementation defined attribute";
               end if;
            end;

         when others =>
            raise Program_Error with "Unimplemented attribute: " &
              Asis.Attribute_Kinds'Image (Kind);
      end case;
   end Code;

   --------------------
   -- Intrinsic_Name --
   --------------------

   function Intrinsic_Name
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Engine, Name);
      Kind   : constant Asis.Attribute_Kinds :=
        Asis.Elements.Attribute_Kind (Element);
   begin
      return League.Strings.To_Universal_String
        (Asis.Attribute_Kinds'Wide_Wide_Image (Kind));
   end Intrinsic_Name;

end Properties.Expressions.Attribute_Reference;
