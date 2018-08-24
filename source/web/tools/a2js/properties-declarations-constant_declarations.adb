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

package body Properties.Declarations.Constant_Declarations is

   ------------
   -- Bounds --
   ------------

   function Bounds
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Tipe : constant Asis.Definition :=
        Asis.Declarations.Object_Declaration_View (Element);
   begin
      return Engine.Text.Get_Property (Tipe, Name);
   end Bounds;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      List : constant Asis.Defining_Name_List :=
        Asis.Declarations.Names (Element);

      Inside_Package : constant Boolean := Engine.Boolean.Get_Property
        (Element, Engines.Inside_Package);

      Init_Code : League.Strings.Universal_String;

      Constant_Name : League.Strings.Universal_String;
      Text  : League.Strings.Universal_String;
   begin
      Init_Code := Engine.Text.Get_Property (Element, Engines.Initialize);

      for J in List'Range loop
         if Inside_Package then
            Text.Append ("_ec.");
         else
            Text.Append ("var ");
         end if;

         Constant_Name := Engine.Text.Get_Property (List (J), Name);
         Text.Append (Constant_Name);

         if not Init_Code.Is_Empty then
            Text.Append (" = ");
            Text.Append (Init_Code);
         end if;

         Text.Append (";");
      end loop;

      return Text;
   end Code;

   -----------------------
   -- Has_Simple_Output --
   -----------------------

   function Has_Simple_Output
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      pragma Unreferenced (Name);
   begin
      return Asis.Elements.Mode_Kind (Element) in
               Asis.An_In_Out_Mode | Asis.An_Out_Mode
        and then Engine.Boolean.Get_Property
          (Asis.Declarations.Object_Declaration_View (Element),
           Engines.Is_Simple_Type);
   end Has_Simple_Output;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Is_Simple_Ref : constant Boolean :=
        Engine.Boolean.Get_Property (Element, Engines.Is_Simple_Ref);
      Tipe : constant Asis.Definition :=
        Asis.Declarations.Object_Declaration_View (Element);
      Init : constant Asis.Expression :=
        Asis.Declarations.Initialization_Expression (Element);
      Result : League.Strings.Universal_String;
   begin
      if Is_Simple_Ref then
         Result.Append ("{all: ");
      end if;

      if not Asis.Elements.Is_Nil (Init) then
         Result.Append (Engine.Text.Get_Property (Init, Engines.Code));
      else
         Result.Append (Engine.Text.Get_Property (Tipe, Name));
      end if;

      if Is_Simple_Ref then
         Result.Append ("}");
      end if;

      return Result;
   end Initialize;

   -------------------
   -- Is_Simple_Ref --
   -------------------

   function Is_Simple_Ref
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Boolean_Property) return Boolean
   is
      pragma Unreferenced (Name);
      Tipe : constant Asis.Definition :=
        Asis.Declarations.Object_Declaration_View (Element);
   begin
      return Asis.Elements.Has_Aliased (Element)
        and then
          Engine.Boolean.Get_Property (Tipe, Engines.Is_Simple_Type);
   end Is_Simple_Ref;

end Properties.Declarations.Constant_Declarations;
