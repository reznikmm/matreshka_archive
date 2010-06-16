------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.Internals.Regexps.Compiler.Semantic is

   procedure Analyze_Node
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural);

   -------------
   -- Analyze --
   -------------

   procedure Analyze (Pattern : not null Shared_Pattern_Access) is
   begin
      Analyze_Node (Pattern, Pattern.List (Pattern.Start).Head);
   end Analyze;

   ------------------
   -- Analyze_Node --
   ------------------

   procedure Analyze_Node
    (Pattern : not null Shared_Pattern_Access;
     Node    : Natural) is
   begin
      case Pattern.AST (Node).Kind is
         when N_Subexpression =>
            if Pattern.AST (Node).Capture then
               Pattern.Captures := Pattern.Captures + 1;
               Pattern.AST (Node).Index := Pattern.Captures;
            end if;

            Analyze_Node (Pattern, Get_Expression (Pattern, Node));

         when N_Character_Class =>
            Analyze_Node (Pattern, Get_Members (Pattern, Node));

         when N_Multiplicity =>
            Analyze_Node (Pattern, Get_Expression (Pattern, Node));

         when N_Alternation =>
            Analyze_Node (Pattern, Get_Preferred (Pattern, Node));
            Analyze_Node (Pattern, Get_Fallback (Pattern, Node));

         when others =>
            null;
      end case;

      if Pattern.AST (Node).Next /= 0 then
         Analyze_Node (Pattern, Pattern.AST (Node).Next);
      end if;
   end Analyze_Node;

end Matreshka.Internals.Regexps.Compiler.Semantic;
