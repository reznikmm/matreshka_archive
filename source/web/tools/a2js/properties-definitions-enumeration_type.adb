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

package body Properties.Definitions.Enumeration_Type is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Engine, Name);

      List : constant Asis.Declaration_List :=
        Asis.Definitions.Enumeration_Literal_Declarations (Element);
      Text  : League.Strings.Universal_String;
   begin
      Text.Append ("{");

      for J in List'Range loop
         declare
            Image : constant Wide_String :=
              Asis.Declarations.Defining_Name_Image
                (Asis.Declarations.Names (List (J)) (1));
            Name : constant League.Strings.Universal_String :=
              League.Strings.From_UTF_16_Wide_String (Image);
         begin
            Text.Append ("'");
            Text.Append (Name.To_Lowercase);
            Text.Append ("' : '");
            Text.Append (Name.To_Uppercase);
            if J = List'Last then
               Text.Append ("'");
            else
               Text.Append ("', ");
            end if;
         end;
      end loop;

      Text.Append ("};");

      return Text;
   end Code;

   ----------------
   -- Initialize --
   ----------------

   function Initialize
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Engine, Element, Name);
   begin
      return League.Strings.To_Universal_String ("undefined");
   end Initialize;

   --------------------
   -- Is_Simple_Type --
   --------------------

   function Is_Simple_Type
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Definition;
      Name    : Engines.Boolean_Property) return Boolean is
      pragma Unreferenced (Engine, Element, Name);
   begin
      return True;
   end Is_Simple_Type;

   -----------
   -- Lower --
   -----------

   function Lower
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      List : constant Asis.Declaration_List :=
        Asis.Definitions.Enumeration_Literal_Declarations (Element);
   begin
      return Engine.Text.Get_Property
        (Asis.Declarations.Names (List (List'First)) (1), Engines.Code);
   end Lower;

   -----------
   -- Upper --
   -----------

   function Upper
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      pragma Unreferenced (Name);
      List : constant Asis.Declaration_List :=
        Asis.Definitions.Enumeration_Literal_Declarations (Element);
   begin
      return Engine.Text.Get_Property
        (Asis.Declarations.Names (List (List'Last)) (1), Engines.Code);
   end Upper;

end Properties.Definitions.Enumeration_Type;
