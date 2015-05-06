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

with UAFLEX.Handlers;
with UAFLEX.Lexer_Types;
with Parser_Tokens;
limited with UAFLEX.Scanners;

package UAFLEX.Handler is
   type Handler is new UAFLEX.Handlers.Handler with private;

   procedure Skip
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean) is null;

   procedure Skip_Line
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Start
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Exclusive
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Name
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Section_End
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Regexp
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure End_Of_Macro
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure End_Of_Name_List
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Name_2
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Regexp_2
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Section_End_2
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_Action
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   procedure On_End_Of_Rule
     (Self    : not null access Handler;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class;
      Rule    : Lexer_Types.Rule_Index;
      Token   : out Parser_Tokens.Token;
      Skip    : in out Boolean);

   function Get_Line (Self : Handler) return Positive;

private

   procedure New_Line
     (Self    : not null access Handler'Class;
      Scanner : not null access UAFLEX.Scanners.Scanner'Class);

   procedure Check_New_Line (Self : not null access Handler'Class);

   type Handler is new UAFLEX.Handlers.Handler with record
      Line      : Positive := 1;
      Line_Feed : Boolean := False;  --  The token is last in line
   end record;

end UAFLEX.Handler;
