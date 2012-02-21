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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Nodes;
with Ada.Containers;
with Ada.Containers.Ordered_Maps;
with Ada.Wide_Wide_Text_IO;
with League.Character_Sets;

with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Graphs;
--  with Debug;

package body Generator.Tables is

   package Char_Set_Vectors renames
     Matreshka.Internals.Finite_Automatons.Vectors;

   package Start_Maps renames Matreshka.Internals.Finite_Automatons.Start_Maps;
   package State_Maps renames Matreshka.Internals.Finite_Automatons.State_Maps;

   subtype State is Matreshka.Internals.Finite_Automatons.State;
   use type State;

   subtype Character_Class is Matreshka.Internals.Graphs.Edge_Identifier'Base;

   subtype First_Stage_Index is
     Matreshka.Internals.Unicode.Ucd.First_Stage_Index;

   subtype Second_Stage_Index is
     Matreshka.Internals.Unicode.Ucd.Second_Stage_Index;

   type First_Stage_Array is array (First_Stage_Index) of Natural;

   type Second_Stage_Array is array (Second_Stage_Index) of Character_Class;

   package Second_Stage_Array_Maps is new Ada.Containers.Ordered_Maps
     (Second_Stage_Array, Natural);

   procedure Split_To_Distinct
     (List   : Char_Set_Vectors.Vector;
      Result : out Char_Set_Vectors.Vector);

   --------
   -- Go --
   --------

   procedure Go
     (DFA     : Matreshka.Internals.Finite_Automatons.DFA;
      Unit    : League.Strings.Universal_String;
      File    : String;
      Scanner : League.Strings.Universal_String;
      Classes : Matreshka.Internals.Finite_Automatons.Vectors.Vector)
   is
      procedure P (Text : Wide_Wide_String);
      procedure N (Text : Wide_Wide_String);
      procedure Print_Char_Classes;
      procedure Print_Switch;
      procedure Print_Rules;
      procedure Print_Classes
        (Id    : Matreshka.Internals.Graphs.Edge_Identifier;
         Count : in out Natural);
      function Get_Second (X : First_Stage_Index) return Second_Stage_Array;

      Output  : Ada.Wide_Wide_Text_IO.File_Type;

      ----------------
      -- Get_Second --
      ----------------

      function Get_Second (X : First_Stage_Index) return Second_Stage_Array is
         Result : Second_Stage_Array := (others => 0);
         Char   : Wide_Wide_Character;
      begin
         for J in Result'Range loop
            Char := Wide_Wide_Character'Val (Natural (X) * 256 + Natural (J));

            for C in Classes.First_Index .. Classes.Last_Index loop
               if Classes.Element (C).Has (Char) then
                  Result (J) := C;
                  exit;
               end if;
            end loop;
         end loop;

         return Result;
      end Get_Second;

      procedure N (Text : Wide_Wide_String) is
      begin
         --  Ada.Wide_Wide_Text_IO.Put (Text);
         Ada.Wide_Wide_Text_IO.Put (Output, Text);
      end N;

      procedure P (Text : Wide_Wide_String) is
      begin
         --  Ada.Wide_Wide_Text_IO.Put_Line (Text);
         Ada.Wide_Wide_Text_IO.Put_Line (Output, Text);
      end P;

      procedure Print_Char_Classes is
         use Second_Stage_Array_Maps;
         use type First_Stage_Index;
         use type Second_Stage_Index;
         Known  : Map;
         Pos    : Cursor;
         First  : First_Stage_Array;
         Second : Second_Stage_Array;
      begin
         for F in First_Stage_Index loop
            Second := Get_Second (F);

            Pos := Known.Find (Second);

            if Has_Element (Pos) then
               First (F) := Element (Pos);
            else
               First (F) := Natural (Known.Length);
               Known.Insert (Second, First (F));

               P ("   Second_" & Image (First (F)) &
                    " : aliased constant Second_Stage_Array :=");

               for J in Second_Stage_Index'Range loop
                  if J = 0 then
                     N ("     (");
                  elsif J mod 8 = 0 then
                     P ("");
                     N ("      ");
                  else
                     N (" ");
                  end if;

                  N (Image (Natural (Second (J))));

                  if J = Second_Stage_Index'Last then
                     P (");");
                     P ("");
                  else
                     N (",");
                  end if;
               end loop;
            end if;
         end loop;

         P ("   First : constant First_Stage_Array :=");

         for F in First_Stage_Index loop
            if F = 0 then
               N ("     (");
            elsif F mod 4 = 0 then
               P ("");
               N ("      ");
            else
               N (" ");
            end if;

            N ("Second_" & Image (First (F)) & "'Access");

            if F = First_Stage_Index'Last then
               P (");");
               P ("");
            else
               N (",");
            end if;
         end loop;
      end Print_Char_Classes;

      procedure Print_Classes
        (Id    : Matreshka.Internals.Graphs.Edge_Identifier;
         Count : in out Natural)
      is
         Set : constant League.Character_Sets.Universal_Character_Set :=
           DFA.Edge_Char_Set.Element (Id);
         First : Boolean := True;
      begin
         for J in Classes.First_Index .. Classes.Last_Index loop
            if Classes.Element (J).Is_Subset (Set) then
               if First then
                  First := False;
               else
                  N (" | ");
               end if;

               N (Image (Positive (J)));
               Count := Count + 1;
            end if;
         end loop;
      end Print_Classes;

      procedure Print_Rules is
         Count : Natural := 0;

         procedure Each_Rule (Cursor : State_Maps.Cursor) is
         begin
            if Count = 0 then
               N ("     (");
            elsif Count mod 6 = 0 then
               P (",");
               N ("      ");
            else
               N (", ");
            end if;

            N (Image (Natural (State_Maps.Key (Cursor)) - 1) &
                 " => " & Image (State_Maps.Element (Cursor)));

            Count := Count + 1;
         end Each_Rule;
      begin
         P ("   Rule_Table : constant array (State) of Rule_Index :=");
         DFA.Final.Iterate (Each_Rule'Access);
         P (", others => 0);");
         P ("");
      end Print_Rules;

      procedure Print_Switch is
      begin
         P ("   Switch_Table : constant array " &
              "(Valid_State, Character_Class) of State :=");

         for J in 1 .. DFA.Graph.Node_Count loop
            declare
               use type Matreshka.Internals.Graphs.Edge_Index;

               Count : Natural := 0;
               Edge : Matreshka.Internals.Graphs.Edge;
               Item : constant Matreshka.Internals.Graphs.Node :=
                 DFA.Graph.Get_Node (J);
               F : constant Matreshka.Internals.Graphs.Edge_Index :=
                 Item.First_Edge_Index;
               L : constant Matreshka.Internals.Graphs.Edge_List_Length :=
                 Item.Last_Edge_Index;
            begin
               if J = 1 then
                  N ("     (");
               else
                  P (",");
                  N ("      ");
               end if;

               P (Image (Positive (J) - 1) & " =>");

               for K in F .. L loop
                  Edge := DFA.Graph.Get_Edge (K);

                  if K = F then
                     N ("        (");
                  else
                     N (" ");
                  end if;

                  Print_Classes (Edge.Edge_Id, Count);

                  N (" =>" &
                       State'Wide_Wide_Image (Edge.Target_Node.Index - 1));

                  if K /= L then
                     N (",");
                  end if;
               end loop;

               if Count /= Positive (Classes.Length) + 1 then
                  if Count = 0 then
                     N ("        (");
                  else
                     N (", ");
                  end if;

                  N ("others =>" &
                       State'Wide_Wide_Image (DFA.Graph.Node_Count));
               end if;

               N (")");
            end;
         end loop;

         P (");");
         P ("");
      end Print_Switch;

   begin
      Ada.Wide_Wide_Text_IO.Create (Output, Name => File);

      P ("with Matreshka.Internals.Unicode.Ucd;");
      P ("");
      P ("separate (" & Scanner.To_Wide_Wide_String & ")");
      P ("package body " & Unit.To_Wide_Wide_String & " is");
      P ("   subtype First_Stage_Index is");
      P ("     Matreshka.Internals.Unicode.Ucd.First_Stage_Index;");
      P ("");
      P ("   subtype Second_Stage_Index is");
      P ("     Matreshka.Internals.Unicode.Ucd.Second_Stage_Index;");
      P ("");
      P ("   type Second_Stage_Array is array (Second_Stage_Index) " &
           "of Character_Class;");
      P ("");
      P ("   type Second_Stage_Array_Access is");
      P ("     not null access constant Second_Stage_Array;");
      P ("");
      P ("   type First_Stage_Array is array (First_Stage_Index) " &
           "of Second_Stage_Array_Access;");
      P ("");
      Print_Char_Classes;
      Print_Switch;
      Print_Rules;
      P ("   function To_Class (Value : " &
           "Matreshka.Internals.Unicode.Code_Point)");
      P ("     return Character_Class");
      P ("   is");
      P ("      function Element is new " &
           "Matreshka.Internals.Unicode.Ucd.Generic_Element");
      P ("        (Character_Class, Second_Stage_Array,");
      P ("         Second_Stage_Array_Access, First_Stage_Array);");
      P ("   begin");
      P ("      return Element (First, Value);");
      P ("   end To_Class;");
      P ("");
      P ("   function Rule (S : State) return Rule_Index is");
      P ("   begin");
      P ("      return Rule_Table (S);");
      P ("   end Rule;");
      P ("");
      P ("   function Switch (S : State; Class : Character_Class) " &
           "return State is");
      P ("   begin");
      P ("      return Switch_Table (S, Class);");
      P ("   end Switch;");
      P ("");
      P ("end " & Unit.To_Wide_Wide_String & ";");
   end Go;

   -----------------------
   -- Split_To_Distinct --
   -----------------------

   procedure Split_To_Distinct
     (List   : Char_Set_Vectors.Vector;
      Result : out Char_Set_Vectors.Vector) is
   begin
      for J in List.First_Index .. List.Last_Index loop
         declare
            use League.Character_Sets;
            Rest : Universal_Character_Set := List.Element (J);
         begin
            for K in Result.First_Index .. Result.Last_Index loop
               declare
                  Item : constant Universal_Character_Set :=
                    Result.Element (K);
                  Intersection : constant Universal_Character_Set :=
                    Item and Rest;
               begin
                  if not Intersection.Is_Empty then
                     declare
                        Extra : constant Universal_Character_Set :=
                          Item - Rest;
                     begin
                        if not Extra.Is_Empty then
                           Result.Append (Extra);
                        end if;

                        Result.Replace_Element (K, Intersection);
                        Rest := Rest - Item;

                        exit when Rest.Is_Empty;
                     end;
                  end if;
               end;
            end loop;

            if not Rest.Is_Empty then
               Result.Append (Rest);
            end if;
         end;
      end loop;
   end Split_To_Distinct;

   -----------
   -- Types --
   -----------

   procedure Types
     (DFA     : Matreshka.Internals.Finite_Automatons.DFA;
      Unit    : League.Strings.Universal_String;
      File    : String;
      Classes : out Char_Set_Vectors.Vector)
   is
      use type Ada.Containers.Count_Type;

      procedure P (Text : Wide_Wide_String);
      procedure N (Text : Wide_Wide_String);
      procedure Print_Start (Cursor : Start_Maps.Cursor);

      Output  : Ada.Wide_Wide_Text_IO.File_Type;

      procedure N (Text : Wide_Wide_String) is
      begin
         --  Ada.Wide_Wide_Text_IO.Put (Text);
         Ada.Wide_Wide_Text_IO.Put (Output, Text);
      end N;

      procedure P (Text : Wide_Wide_String) is
      begin
         --  Ada.Wide_Wide_Text_IO.Put_Line (Text);
         Ada.Wide_Wide_Text_IO.Put_Line (Output, Text);
      end P;

      procedure Print_Start (Cursor : Start_Maps.Cursor) is
      begin
         P ("   " & Start_Maps.Key (Cursor).To_Wide_Wide_String &
              " : constant State :=" &
              State'Wide_Wide_Image (Start_Maps.Element (Cursor) - 1) &
              ";");
      end Print_Start;

   begin
      Ada.Wide_Wide_Text_IO.Create (Output, Name => File);
      Split_To_Distinct (DFA.Edge_Char_Set, Classes);

      --  Debug.Print_Character_Classes (Classes);

      P ("package " & Unit.To_Wide_Wide_String & " is");
      P ("");
      P ("   type State is mod" &
           State'Wide_Wide_Image (DFA.Graph.Node_Count + 1) &
           ";");

      P ("   subtype Valid_State is State range 0 .. State'Last - 1;");
      P ("");
      DFA.Start.Iterate (Print_Start'Access);

      P ("");
      P ("   type Character_Class is mod" &
           Ada.Containers.Count_Type'Wide_Wide_Image (Classes.Length + 1) &
           ";");

      P ("");
      P ("   type Rule_Index is range 0 .." &
           Natural'Wide_Wide_Image (Nodes.Actions.Length) &
           ";");
      P ("");
      P ("end " & Unit.To_Wide_Wide_String & ";");
   end Types;

end Generator.Tables;
