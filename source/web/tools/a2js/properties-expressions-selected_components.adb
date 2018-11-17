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
-- Copyright © 2015-2016, Vadim Godunko <vgodunko@gmail.com>                --
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
with Asis.Expressions;
with Asis.Elements;

package body Properties.Expressions.Selected_Components is

   ---------------
   -- Alignment --
   ---------------

   function Alignment
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Integer_Property) return Integer is
   begin
      return Engine.Integer.Get_Property
        (Asis.Expressions.Selector (Element), Name);
   end Alignment;

   ---------------------
   -- Call_Convention --
   ---------------------

   function Call_Convention
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Convention_Property)
      return Engines.Convention_Kind is
   begin
      return Engine.Call_Convention.Get_Property
        (Asis.Expressions.Selector (Element), Name);
   end Call_Convention;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Prefix   : constant Asis.Expression := Asis.Expressions.Prefix (Element);
      Selector : constant Asis.Expression :=
        Asis.Expressions.Selector (Element);
      Def_Name : constant Asis.Defining_Name :=
        Asis.Expressions.Corresponding_Name_Definition (Selector);
      Decl     : Asis.Declaration;
      Kind     : Asis.Declaration_Kinds;
   begin
      if not Asis.Elements.Is_Nil (Def_Name) then
         Decl := Asis.Elements.Enclosing_Element (Def_Name);
         Kind := Asis.Elements.Declaration_Kind (Decl);

         case Kind is
            when Asis.A_Component_Declaration |
                 Asis.A_Discriminant_Specification =>
               declare
                  Left  : League.Strings.Universal_String;
                  Right : League.Strings.Universal_String;
               begin
                  Left := Engine.Text.Get_Property (Prefix, Engines.Code);
-- This causes inop element (A_Component_Decl) in Corresp_Subprogram_Declar
                  Right := Engine.Text.Get_Property (Selector, Name);
--                  Right := Engine.Text.Get_Property (Def_Name, Name);
                  Left.Append (".");
                  Left.Append (Right);

                  return Left;
               end;

            when Asis.A_Subtype_Declaration =>

               return Engine.Text.Get_Property
                 (Asis.Declarations.Type_Declaration_View (Decl), Name);

            when Asis.A_Function_Declaration |
                 Asis.A_Procedure_Declaration |
                 Asis.A_Function_Instantiation |
                 Asis.A_Function_Renaming_Declaration |
                 Asis.A_Procedure_Instantiation |
                 Asis.A_Private_Extension_Declaration |
                 Asis.An_Enumeration_Literal_Specification |
                 Asis.An_Ordinary_Type_Declaration |
                 Asis.A_Private_Type_Declaration |
                 Asis.A_Constant_Declaration |
                 Asis.A_Deferred_Constant_Declaration |
                 Asis.A_Variable_Declaration |
                 Asis.An_Integer_Number_Declaration |
                 Asis.A_Real_Number_Declaration =>

               null;
            when others =>
               raise Program_Error with
                 "Unimplemented Selected_Component";
         end case;
      end if;

      return Engine.Text.Get_Property (Selector, Name);
   end Code;

   --------------------
   -- Intrinsic_Name --
   --------------------

   function Intrinsic_Name
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String is
   begin
      return Engine.Text.Get_Property
        (Asis.Expressions.Selector (Element), Name);
   end Intrinsic_Name;

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
     renames Intrinsic_Name;

   function Method_Name
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
     renames Intrinsic_Name;

   function Typed_Array_Item_Type
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
     renames Intrinsic_Name;

   function Size
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
     renames Intrinsic_Name;

   --------------------
   -- Is_Dispatching --
   --------------------

   function Is_Dispatching
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean is
   begin
      return Engine.Boolean.Get_Property
        (Asis.Expressions.Selector (Element), Name);
   end Is_Dispatching;

end Properties.Expressions.Selected_Components;
