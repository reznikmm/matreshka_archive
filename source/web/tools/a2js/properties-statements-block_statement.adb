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
with Asis.Statements;

package body Properties.Statements.Block_Statement is

   ----------
   -- Code --
   ----------

   function Code
     (Engine  : access Engines.Contexts.Context;
      Element : Asis.Declaration;
      Name    : Engines.Text_Property) return League.Strings.Universal_String
   is
      Text : League.Strings.Universal_String;
   begin
      Text.Append ("{");

      declare
         List : constant Asis.Element_List :=
           Asis.Statements.Block_Declarative_Items (Element);
      begin
         for J in List'Range loop
            declare
               Var_Code : constant League.Strings.Universal_String :=
                 Engine.Text.Get_Property (List (J), Name);
            begin
               Text.Append (Var_Code);
            end;
         end loop;
      end;

      declare
         List : constant Asis.Element_List :=
           Asis.Statements.Block_Statements (Element);
      begin
         for J in List'Range loop
            declare
               Stmt_Code : constant League.Strings.Universal_String :=
                 Engine.Text.Get_Property (List (J), Name);
            begin
               Text.Append (Stmt_Code);
            end;
         end loop;
      end;

      Text.Append ("};");

      return Text;
   end Code;

end Properties.Statements.Block_Statement;
