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
   begin
      case Asis.Elements.Expression_Kind (Generic_Name) is
         when Asis.A_Selected_Component =>
            if Is_Predefined (Generic_Name) then
               declare
                  Text     : League.Strings.Universal_String;
                  Named    : League.Strings.Universal_String;
                  Selector : constant Asis.Identifier :=
                    Asis.Expressions.Selector (Generic_Name);
                  Image : constant Asis.Program_Text :=
                    Asis.Expressions.Name_Image (Selector);
                  Inside_Package : constant Boolean :=
                    Engine.Boolean.Get_Property
                      (Element, Engines.Inside_Package);
               begin
                  if Inside_Package then
                     Text.Append ("_ec.");
                  else
                     Text.Append ("var ");
                  end if;

                  Named := Engine.Text.Get_Property
                    (Asis.Declarations.Names (Element) (1), Name);

                  Text.Append (Named);
                  Text.Append ("= _ec._");

                  Named := League.Strings.From_UTF_16_Wide_String (Image);
                  Named := Named.To_Lowercase;
                  Text.Append (Named);
                  Text.Append (";");
                  return Text;
               end;
            end if;
         when others =>
            null;
      end case;

      return Engine.Text.Get_Property (Spec, Name);
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
        Image = "Address_To_Access_Conversions";
   end Is_Predefined;

end Properties.Declarations.Package_Instantiation;
