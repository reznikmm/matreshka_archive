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
with Asis.Elements;
with Asis.Statements;

with Properties.Tools;

package body Properties.Statements.If_Statement is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      List  : constant Asis.Path_List :=
        Asis.Statements.Statement_Paths (Element);
      Text  : League.Strings.Universal_String;
      Down  : League.Strings.Universal_String;
   begin
      for J in List'Range loop
         case Asis.Elements.Path_Kind (List (J)) is
            when Asis.An_If_Path =>
               Text.Append ("if (");

               Down := Engine.Text.Get_Property
                 (Asis.Statements.Condition_Expression (List (J)), Name);

               Text.Append (Down);
               Text.Append (") {");
            when Asis.An_Elsif_Path =>
               Text.Append ("} else if (");

               Down := Engine.Text.Get_Property
                 (Asis.Statements.Condition_Expression (List (J)), Name);

               Text.Append (Down);
               Text.Append (") {");
            when Asis.An_Else_Path =>
               Text.Append ("} else {");
            when others =>
               raise Program_Error;
         end case;

         declare
            Nested : constant Asis.Statement_List :=
              Asis.Statements.Sequence_Of_Statements (List (J));
         begin
            Down := Engine.Text.Get_Property
              (List  => Nested,
               Name  => Name,
               Empty => League.Strings.Empty_Universal_String,
               Sum   => Properties.Tools.Join'Access);

            Text.Append (Down);
         end;
      end loop;

      Text.Append ("};");

      return Text;
   end Code;

end Properties.Statements.If_Statement;
