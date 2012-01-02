------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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

with yyparse;
with scanner_io;

with Debug;
with Expand;
with Nodes;
with League.String_Vectors;
with League.Strings;
with Matreshka.Internals.Finite_Automatons;

procedure UAFLEX is
   procedure Each_Condition (Cursor : Nodes.Start_Condition_Maps.Cursor);
   procedure Each
     (Name : League.Strings.Universal_String;
      Condition : Nodes.Start_Condition);
   
   DFA : Matreshka.Internals.Finite_Automatons.DFA_Constructor;
   
   ----------
   -- Each --
   ----------
   
   procedure Each
     (Name : League.Strings.Universal_String;
      Condition : Nodes.Start_Condition)
   is
      Actions : Matreshka.Internals.Finite_Automatons.Rule_Index_Array
        (1 .. Condition.Rules.Last_Index);
      Reg_Exp_List : League.String_Vectors.Universal_String_Vector;
   begin
      for J in Actions'Range loop
         Actions (J) := Condition.Rules.Element (J);
         Reg_Exp_List.Append (Nodes.Rules.Element (Actions (J)));
      end loop;
      
      DFA.Compile (Name, Reg_Exp_List, Actions);
   end Each;
   
   --------------------
   -- Each_Condition --
   --------------------
   
   procedure Each_Condition (Cursor : Nodes.Start_Condition_Maps.Cursor) is
   begin
      Nodes.Start_Condition_Maps.Query_Element (Cursor, Each'Access);
   end Each_Condition;
   
   Initial : League.String_Vectors.Universal_String_Vector;
begin
   Initial.Append (League.Strings.To_Universal_String ("INITIAL"));
   Nodes.Add_Start_Conditions (Initial, False);
   
   scanner_io.Open_Input ("test");
   yyparse;
   Expand.RegExps;
   Debug.Print;
   
   Nodes.Conditions.Iterate (Each_Condition'Access);
   
   declare
      X : Matreshka.Internals.Finite_Automatons.DFA;
   begin
      DFA.Complete (Output => X);
      Matreshka.Internals.Finite_Automatons.Minimize (X);
   end;
end UAFLEX;
