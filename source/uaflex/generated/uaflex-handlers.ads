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
limited with UAFLEX.Scanners;
with Parser_Tokens;
with UAFLEX.Lexer_Types;

package UAFLEX.Handlers is

   type Handler is abstract tagged limited null record;

   procedure Skip_Line
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Start
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Exclusive
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Name
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Section_End
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure Skip
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Regexp
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure End_Of_Macro
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure End_Of_Name_List
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Name_2
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Regexp_2
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Section_End_2
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_Action
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   procedure On_End_Of_Rule
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : UAFLEX.Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token_Kind;
      Skip    : in out Boolean) is abstract;

   type Handler_Access is access all Handler'Class;

end UAFLEX.Handlers;
