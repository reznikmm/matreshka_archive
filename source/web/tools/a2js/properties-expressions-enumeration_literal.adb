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
with Asis.Compilation_Units;
with Asis.Declarations;
with Asis.Elements;
with Asis.Expressions;

with Properties.Expressions.Identifiers;

package body Properties.Expressions.Enumeration_Literal is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Tipe   : constant Asis.Declaration :=
        Asis.Expressions.Corresponding_Expression_Type (Element);
      Unit   : constant Asis.Compilation_Unit :=
        Asis.Elements.Enclosing_Compilation_Unit (Tipe);
      Image  : constant Wide_String := Asis.Expressions.Name_Image (Element);
      Down   : League.Strings.Universal_String;
      Result : League.Strings.Universal_String;
   begin
      if not Asis.Compilation_Units.Is_Nil
        (Asis.Compilation_Units.Corresponding_Parent_Declaration (Unit))
      then
         --  if not in Standard
         Result := Properties.Expressions.Identifiers.Name_Prefix
           (Engine, Element, Tipe);
         Down := Engine.Text.Get_Property
           (Asis.Declarations.Names (Tipe) (1), Name);
         Result.Append (Down);
         Result.Append (".");

      end if;

      Result.Append (League.Strings.From_UTF_16_Wide_String (Image));

      return Result.To_Lowercase;
   end Code;

end Properties.Expressions.Enumeration_Literal;
