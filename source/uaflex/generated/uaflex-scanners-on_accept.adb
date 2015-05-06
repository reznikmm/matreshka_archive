------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2015, Vadim Godunko <vgodunko@gmail.com>                --
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
separate (UAFLEX.Scanners)
procedure On_Accept
  (Self    : not null access UAFLEX.Handlers.Handler'Class;
   Scanner : not null access UAFLEX.Scanners.Scanner'Class;
   Rule    : UAFLEX.Lexer_Types.Rule_Index;
   Token   : out Parser_Tokens.Token_Kind;
   Skip    : in out Boolean) is
begin
   case Rule is
      when 1 | 6 | 13 | 15 =>
         Self.Skip_Line (Scanner, Rule, Token, Skip);

      when 2 =>
         Self.On_Start (Scanner, Rule, Token, Skip);

      when 3 =>
         Self.On_Exclusive (Scanner, Rule, Token, Skip);

      when 4 =>
         Self.On_Name (Scanner, Rule, Token, Skip);

      when 5 =>
         Self.On_Section_End (Scanner, Rule, Token, Skip);

      when 7 | 12 | 18 =>
         Self.Skip (Scanner, Rule, Token, Skip);

      when 8 =>
         Self.On_Regexp (Scanner, Rule, Token, Skip);

      when 9 =>
         Self.End_Of_Macro (Scanner, Rule, Token, Skip);

      when 10 =>
         Self.End_Of_Name_List (Scanner, Rule, Token, Skip);

      when 11 =>
         Self.On_Name_2 (Scanner, Rule, Token, Skip);

      when 14 =>
         Self.On_Regexp_2 (Scanner, Rule, Token, Skip);

      when 16 =>
         Self.On_Section_End_2 (Scanner, Rule, Token, Skip);

      when 17 =>
         Self.On_Action (Scanner, Rule, Token, Skip);

      when 19 =>
         Self.On_End_Of_Rule (Scanner, Rule, Token, Skip);

      when others =>
         raise Constraint_Error;
   end case;
end On_Accept;
