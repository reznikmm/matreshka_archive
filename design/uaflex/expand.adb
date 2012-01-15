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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Nodes;
with Matreshka.Internals.Unicode.Ucd;
with League.Character_Sets.Internals;
with League.Characters;
with League.Regexps;
with League.Strings;
with League.String_Vectors;

package body Expand is

   procedure Expand_Macro
     (Text : in out League.Strings.Universal_String;
      Line : Positive);

   procedure To_Regexp (Text : in out League.Strings.Universal_String);

   Macro_1 : constant Wide_Wide_String := "^\{([a-zA-Z][a-zA-Z0-9_]*)\}";
   Macro_2 : constant Wide_Wide_String := "[^pP]\{([a-zA-Z][a-zA-Z0-9_]*)\}";
   Macro_3 : constant Wide_Wide_String :=
     "[^\\][pP]\{([a-zA-Z][a-zA-Z0-9_]*)\}";

   Macro_Pattern : constant Wide_Wide_String :=
     Macro_1 & '|' & Macro_2 & '|' & Macro_3;

   Macro_Reference : constant League.Strings.Universal_String :=
     League.Strings.To_Universal_String (Macro_Pattern);

   Macro : constant League.Regexps.Regexp_Pattern :=
     League.Regexps.Compile (Macro_Reference);

   use type League.Character_Sets.Universal_Character_Set;

   Pattern_Set : constant League.Character_Sets.Universal_Character_Set :=
     League.Character_Sets.Internals.To_Set
       (Matreshka.Internals.Unicode.Ucd.Pattern_Syntax)
     or
     League.Character_Sets.Internals.To_Set
       (Matreshka.Internals.Unicode.Ucd.Pattern_White_Space );

   Operations : constant League.Character_Sets.Universal_Character_Set :=
     League.Character_Sets.To_Set ("\{}[]^$?.*+|()");

   Escape : constant League.Character_Sets.Universal_Character_Set :=
     League.Character_Sets.To_Set ("aefnrtvcuUpP");

   ------------------
   -- Expand_Macro --
   ------------------

   procedure Expand_Macro
     (Text : in out League.Strings.Universal_String;
      Line : Positive)
   is
      Found : constant League.Regexps.Regexp_Match := Macro.Find_Match (Text);
      Index : Positive := 1;
   begin
      if not Found.Is_Matched then
         return;
      end if;

      for J in 1 .. 3 loop
         if Found.Last_Index (J) > Found.First_Index (J) then
            Index := J;
         end if;
      end loop;

      declare
         Name : constant League.Strings.Universal_String :=
           Found.Capture (Index);
         Pos  : constant Nodes.Macro_Maps.Cursor := Nodes.Macros.Find (Name);
      begin
         if Nodes.Macro_Maps.Has_Element (Pos) then
            Text.Replace
              (Found.First_Index (Index) - 1,
               Found.Last_Index (Index) + 1,
               Nodes.Macro_Maps.Element (Pos));
         else
            Ada.Wide_Wide_Text_IO.Put_Line
              ("Line " & Natural'Wide_Wide_Image (Line) &
                 " Macro's definition not found for: " &
                 Name.To_Wide_Wide_String);
            Nodes.Success := False;

            return;
         end if;

         Expand_Macro (Text, Line);
      end;
   end Expand_Macro;

   -------------
   -- RegExps --
   -------------

   procedure RegExps is
      Result : League.String_Vectors.Universal_String_Vector;
   begin
      for J in 1 .. Nodes.Rules.Length loop
         declare
            Item : League.Strings.Universal_String :=
              Nodes.Rules.Element (J);
         begin
            Expand_Macro (Item, Nodes.Lines.Element (J));
            To_Regexp (Item);
            Result.Append (Item);
         end;
      end loop;

      Nodes.Rules := Result;
   end RegExps;

   ---------------
   -- To_Regexp --
   ---------------

   procedure To_Regexp (Text : in out League.Strings.Universal_String) is
      type States is (Normal, In_Quote, Masked, Class);
      --  [/First/ ^ /C1/ x /c2/ - /c3/ y ]
      type Class_States is (First, C1, C2, C3);
      Result   : League.Strings.Universal_String;
      State    : States := Normal;
      In_Class : Class_States;
   begin
      for J in 1 .. Text.Length loop
         declare
            use type League.Characters.Universal_Character;

            Item : constant League.Characters.Universal_Character :=
              Text.Element (J);
         begin
            case State is
               when Normal =>
                  if Item = '"' then
                     Result.Append ("\Q");
                     State := In_Quote;
                  elsif Item = '\' then
                     State := Masked;
                     In_Class := First;
                  elsif Item = '[' then
                     Result.Append (Item);
                     State := Class;
                     In_Class := First;
                  elsif Operations.Has (Item) then
                     Result.Append (Item);
                  elsif Pattern_Set.Has (Item) then
                     Result.Append ('\');
                     Result.Append (Item);
                  else
                     Result.Append (Item);
                  end if;

               when In_Quote =>
                  if Item = '"' then
                     Result.Append ("\E");
                     State := Normal;
                  else
                     Result.Append (Item);
                  end if;

               when Masked =>
                  if Pattern_Set.Has (Item) or Escape.Has (Item) then
                     Result.Append ('\');
                     Result.Append (Item);
                  else
                     Result.Append (Item);
                  end if;

                  if In_Class = First then
                     State := Normal;
                  else
                     State := Class;
                  end if;

               when Class =>
                  if Item = ']' then
                     Result.Append (Item);
                     State := Normal;
                  elsif In_Class = First and Item = '^' then
                     Result.Append (Item);
                     In_Class := C1;
                  elsif In_Class = C2 and Item = '-' then
                     Result.Append (Item);
                     In_Class := C3;
                  else
                     if In_Class = C3 then
                        In_Class := C1;
                     else
                        In_Class := C2;
                     end if;

                     if Item = '\' then
                        State := Masked;
                     elsif Pattern_Set.Has (Item) then
                        Result.Append ('\');
                        Result.Append (Item);
                     else
                        Result.Append (Item);
                     end if;
                  end if;

            end case;
         end;
      end loop;

      Text := Result;
   end To_Regexp;

end Expand;
