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

package body Properties.Statements.Case_Statement is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Expression;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      use type Asis.Path_Kinds;
      use type Asis.Definition_Kinds;
      use type Asis.Element_Kinds;

      List  : constant Asis.Path_List :=
        Asis.Statements.Statement_Paths (Element);
      Text  : League.Strings.Universal_String;
      Down  : League.Strings.Universal_String;
   begin
      Text.Append ("switch (");
      Down := Engine.Text.Get_Property
        (Asis.Statements.Case_Expression (Element), Name);

      Text.Append (Down);
      Text.Append (") {");

      for J in List'Range loop
         pragma Assert
           (Asis.Elements.Path_Kind (List (J)) = Asis.A_Case_Path);

         declare
            Nested : constant Asis.Statement_List :=
              Asis.Statements.Sequence_Of_Statements (List (J));
            Alt : constant Asis.Element_List :=
              Asis.Statements.Case_Path_Alternative_Choices (List (J));
         begin
            for K in Alt'Range loop
               if Asis.Elements.Element_Kind (Alt (K)) =
                 Asis.An_Expression
               then
                  Down := Engine.Text.Get_Property (Alt (K), Name);

                  Text.Append ("case ");
                  Text.Append (Down);
                  Text.Append (" : ");
               elsif Asis.Elements.Definition_Kind (Alt (K)) =
                 Asis.An_Others_Choice
               then
                  Text.Append ("default: ");
               else
                  raise Constraint_Error;
               end if;

               Down := Engine.Text.Get_Property
                 (List  => Nested,
                  Name  => Name,
                  Empty => League.Strings.Empty_Universal_String,
                  Sum   => Properties.Tools.Join'Access);

               Text.Append (Down);

               Text.Append ("break;");
            end loop;
         end;
      end loop;

      Text.Append ("};");

      return Text;
   end Code;

end Properties.Statements.Case_Statement;
