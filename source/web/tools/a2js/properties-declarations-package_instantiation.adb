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
with Asis.Expressions;

with Properties.Tools;

package body Properties.Declarations.Package_Instantiation is

   function Is_Predefined (Name : Asis.Expression) return Boolean;

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property)
      return League.Strings.Universal_String
   is
      Generic_Name : constant Asis.Expression :=
        Asis.Declarations.Generic_Unit_Name (Element);

      Spec : constant Asis.Declaration :=
        Asis.Declarations.Corresponding_Declaration (Element);

      Text  : League.Strings.Universal_String;
      Down  : League.Strings.Universal_String;
      Named : League.Strings.Universal_String;

      Is_Library_Level : constant Boolean := Asis.Elements.Is_Nil
        (Asis.Elements.Enclosing_Element (Element));

      Inside_Package   : constant Boolean :=
        Engine.Boolean.Get_Property (Element, Engines.Inside_Package);
   begin
      Named := Engine.Text.Get_Property
        (Asis.Declarations.Names (Element) (1), Name);

      case Asis.Elements.Expression_Kind (Generic_Name) is
         when Asis.A_Selected_Component =>
            if Is_Predefined (Generic_Name) then
               declare
                  Selector : constant Asis.Identifier :=
                    Asis.Expressions.Selector (Generic_Name);
                  Image : constant Asis.Program_Text :=
                    Asis.Expressions.Name_Image (Selector);
               begin
                  if Is_Library_Level then
                     Text.Append
                       (Properties.Tools.Library_Level_Header
                          (Asis.Elements.Enclosing_Compilation_Unit
                               (Element)));
                     Text.Append ("return ");
                  end if;

                  if Inside_Package then
                     Text.Append ("_ec.");
                  else
                     Text.Append ("var ");
                  end if;

                  Text.Append (Named);
                  Text.Append ("= _ec._");

                  Named := League.Strings.From_UTF_16_Wide_String (Image);
                  Named := Named.To_Lowercase;
                  Text.Append (Named);
                  Text.Append ("(_ec);");
                  return Text;
               end;
            end if;
         when others =>
            null;
      end case;

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

      Down := Engine.Text.Get_Property (Spec, Name);
      Text.Append (Down);

      if Is_Library_Level then
         Text.Append ("});");
      end if;

      return Text;
   end Code;

   -------------------
   -- Is_Predefined --
   -------------------

   function Is_Predefined (Name : Asis.Expression) return Boolean is
      Selector : constant Asis.Identifier :=
        Asis.Expressions.Selector (Name);
      Image : constant Asis.Program_Text :=
        Asis.Expressions.Name_Image (Selector);
   begin
      return Image = "Generic_Elementary_Functions" or else
        Image = "Address_To_Access_Conversions" or else
        Image = "Unchecked_Deallocation" or else
        Image = "Generic_Holders";  --  Matreshka Generic_Holders
   end Is_Predefined;

end Properties.Declarations.Package_Instantiation;
