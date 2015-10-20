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

--  with League.String_Vectors;

with Properties.Tools;

package body Properties.Declarations.Package_Declaration is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Asis.Element_List;

      function Body_Declarative_Items
        (Element : Asis.Declaration) return Asis.Element_List;

      ----------------------------
      -- Body_Declarative_Items --
      ----------------------------

      function Body_Declarative_Items
        (Element : Asis.Declaration) return Asis.Element_List
      is
         Impl : constant Asis.Declaration :=
           Asis.Declarations.Corresponding_Body (Element);
      begin
         if Asis.Elements.Is_Nil (Impl) then
            return Asis.Nil_Element_List;
         else
            return Asis.Declarations.Body_Declarative_Items (Impl);
         end if;
      end Body_Declarative_Items;

      Is_Library_Level : constant Boolean := Asis.Elements.Is_Nil
        (Asis.Elements.Enclosing_Element (Element));

      Inside_Package : constant Boolean := Engine.Boolean.Get_Property
        (Element, Engines.Inside_Package);

      Named : League.Strings.Universal_String;
      Down  : League.Strings.Universal_String;
      Text  : League.Strings.Universal_String;
      List  : constant Asis.Element_List :=
        Asis.Declarations.Visible_Part_Declarative_Items (Element) &
        Asis.Declarations.Private_Part_Declarative_Items (Element) &
        Body_Declarative_Items (Element);
   begin
      Named := Engine.Text.Get_Property
        (Asis.Declarations.Names (Element) (1), Name);

      if Is_Library_Level then
         Text.Append
           (Properties.Tools.Library_Level_Header
              (Asis.Elements.Enclosing_Compilation_Unit (Element)));
         Text.Append ("return ");
      end if;

      if not Inside_Package then
         Text.Append ("var ");
         Text.Append (Named);
         Text.Append ("=");
      end if;

      Text.Append ("(function (_ec){");
      Text.Append ("_ec._nested = function (){};");
      Text.Append ("_ec._nested.prototype = _ec;");

      Down := Engine.Text.Get_Property
        (List  => List,
         Name  => Name,
         Empty => League.Strings.Empty_Universal_String,
         Sum   => Properties.Tools.Join'Access);

      Text.Append (Down);

      Text.Append ("return _ec;");
      Text.Append ("})(");

      if Inside_Package then
         Text.Append ("_ec.");
         Text.Append (Named);
         Text.Append ("=");
      end if;

      Text.Append ("new _ec._nested());");

      if Is_Library_Level then
         Text.Append ("});");
      end if;

      return Text;
   end Code;

end Properties.Declarations.Package_Declaration;
