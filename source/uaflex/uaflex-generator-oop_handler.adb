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
-- Copyright © 2012-2015, Vadim Godunko <vgodunko@gmail.com>                --
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

with Ada.Wide_Wide_Text_IO;
with UAFLEX.Nodes;

package body UAFLEX.Generator.OOP_Handler is

   --------
   -- Go --
   --------

   procedure Go
     (Actions : League.String_Vectors.Universal_String_Vector;
      File    : String;
      Types   : League.Strings.Universal_String;
      Unit    : League.Strings.Universal_String;
      Scanner : League.Strings.Universal_String;
      Tokens  : League.Strings.Universal_String)
   is
      procedure P (Text : Wide_Wide_String);

      Output  : Ada.Wide_Wide_Text_IO.File_Type;

      procedure P (Text : Wide_Wide_String) is
      begin
         Ada.Wide_Wide_Text_IO.Put_Line (Output, Text);
      end P;

   begin
      Ada.Wide_Wide_Text_IO.Create (Output, Name => File);

      P ("limited with " & Scanner.To_Wide_Wide_String & ";");
      P ("with " & Tokens.To_Wide_Wide_String & ";");

      if not Unit.Starts_With (Types) then
         P ("with " & Types.To_Wide_Wide_String & ";");
      end if;

      P ("");
      P ("package " & Unit.To_Wide_Wide_String & " is");
      P ("   pragma Preelaborate;");
      P ("");
      P ("   type Handler is abstract tagged limited null record;");
      P ("");

      for J in 1 .. Actions.Length loop
         P ("   procedure " & Actions.Element (J).To_Wide_Wide_String);
         P ("     (Self    : not null access Handler;");
         P ("      Scanner : not null access " &
              Scanner.To_Wide_Wide_String & ".Scanner'Class;");
         P ("      Rule    : " & Types.To_Wide_Wide_String & ".Rule_Index;");
         P ("      Token   : out " & Tokens.To_Wide_Wide_String &
             ".Token_Kind;");
         P ("      Skip    : in out Boolean) is abstract;");
         P ("");
      end loop;

      P ("   type Handler_Access is access all Handler'Class;");
      P ("");
      P ("end " & Unit.To_Wide_Wide_String & ";");

      Ada.Wide_Wide_Text_IO.Close (Output);
   end Go;

   ---------------
   -- On_Accept --
   ---------------

   procedure On_Accept
     (Actions : League.String_Vectors.Universal_String_Vector;
      File    : String;
      Types   : League.Strings.Universal_String;
      Handler : League.Strings.Universal_String;
      Scanner : League.Strings.Universal_String;
      Tokens  : League.Strings.Universal_String)
   is
      procedure P (Text : Wide_Wide_String);
      procedure N (Text : Wide_Wide_String);

      Output  : Ada.Wide_Wide_Text_IO.File_Type;
      First   : Boolean;

      procedure N (Text : Wide_Wide_String) is
      begin
         Ada.Wide_Wide_Text_IO.Put (Output, Text);
      end N;

      procedure P (Text : Wide_Wide_String) is
      begin
         Ada.Wide_Wide_Text_IO.Put_Line (Output, Text);
      end P;

   begin
      Ada.Wide_Wide_Text_IO.Create (Output, Name => File);

      P ("separate (" & Scanner.To_Wide_Wide_String & ")");
      P ("procedure On_Accept");
      P ("  (Self    : not null access " &
           Handler.To_Wide_Wide_String & ".Handler'Class;");
      P ("   Scanner : not null access " &
           Scanner.To_Wide_Wide_String & ".Scanner'Class;");
      P ("   Rule    : " & Types.To_Wide_Wide_String & ".Rule_Index;");
      P ("   Token   : out " & Tokens.To_Wide_Wide_String & ".Token_Kind;");
      P ("   Skip    : in out Boolean) is");
      P ("begin");
      P ("   case Rule is");

      for J in 1 .. Actions.Length loop
         First := True;

         for R in Nodes.Indexes.First_Index .. Nodes.Indexes.Last_Index loop
            if Nodes.Indexes (R) /= J then
               null;
            elsif First then
               N ("      when " & Image (R));
               First := False;
            else
               N (" | " & Image (R));

               if R mod 10 = 0 then
                  P ("");
                  N ("        ");
               end if;
            end if;
         end loop;

         P (" =>");
         P ("         Self." & Actions.Element (J).To_Wide_Wide_String &
              " (Scanner, Rule, Token, Skip);");
         P ("");
      end loop;

      P ("      when others =>");
      P ("         raise Constraint_Error;");
      P ("   end case;");
      P ("end On_Accept;");

      Ada.Wide_Wide_Text_IO.Close (Output);
   end On_Accept;
end UAFLEX.Generator.OOP_Handler;
