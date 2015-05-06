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

%token Name Name_List_End Start Excl_Start Section_End Regexp Action
%with UAFLEX.Nodes;
{
   subtype YYSType is UAFLEX.Nodes.Node;
}

%%

file: definitions_section rule_section
;

definitions_section: macro_list Section_End;

macro_list:
  |
  macro_list macro
;

macro: Name_Token Regexp_Token
{
  UAFLEX.Nodes.Macros.Insert ($1.Value, $2.Value);
}
  | Start name_list Name_List_End
{
  UAFLEX.Nodes.Add_Start_Conditions ($2.List, False);
}
  | Excl_Start name_list Name_List_End
{
  UAFLEX.Nodes.Add_Start_Conditions ($2.List, True);
}
;

name_list: Name_Token
{
  $$ := UAFLEX.Nodes.Empty_Name_List;
  $$.List.Append ($1.Value);
}

  |  name_list Name_Token
{
  $1.List.Append ($2.Value);
  $$ := $1;
}
;

rule_section: rule_list Section_End
;

rule_list:
  |
  rule_list rule
{
  UAFLEX.Nodes.Add_Rule ($2.Regexp, $2.Action, Line);
}

;

rule: Regexp_Token Action_Token
  { $$ := (UAFLEX.Nodes.Rule, $1.Value, $2.Value); }
;

Name_Token: Name
  { $$ := UAFLEX.Nodes.To_Node (Scanner.Get_Text); }
;

Regexp_Token: Regexp
  { $$ := UAFLEX.Nodes.To_Node (Scanner.Get_Text); Line := Handler.Get_Line; }
;

Action_Token: Action
  { $$ := UAFLEX.Nodes.To_Action (Scanner.Get_Text); }
;

%%
with UAFLEX.Scanners;
with UAFLEX.Handler;
##
   Scanner : aliased UAFLEX.Scanners.Scanner;
   Handler : aliased UAFLEX.Handler.Handler;
   procedure YYParse;
##
with Ada.Wide_Wide_Text_IO;
with UAFLEX.Nodes;
##
procedure yyerror (X : Wide_Wide_String) is
begin
  Ada.Wide_Wide_Text_IO.Put_Line
   (X & " on line" & Positive'Wide_Wide_Image (Handler.Get_Line));
end;

function YYLex return Token is
   Result : Token;
begin
   Scanner.Get_Token (Result);
   return Result;
end YYLex;

Line : Positive;
