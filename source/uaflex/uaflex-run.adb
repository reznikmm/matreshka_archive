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
-- Copyright © 2011-2017, Vadim Godunko <vgodunko@gmail.com>                --
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
with Parser;

with Ada.Directories;
with Ada.Exceptions;
with Ada.Streams.Stream_IO;
with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;
with UAFLEX.Expand;
with UAFLEX.Generator.Tables;
with UAFLEX.Generator.OOP_Handler;
with UAFLEX.Nodes;
with League.String_Vectors;
with League.Strings;
with League.Strings.Internals;
with League.Text_Codecs;
with Matreshka.Internals.Finite_Automatons;
with Matreshka.Internals.Regexps.Compiler;

with String_Sources;

procedure UAFLEX.Run
  (Handler : League.Strings.Universal_String;
   Input   : League.Strings.Universal_String;
   Tokens  : League.Strings.Universal_String;
   Types   : League.Strings.Universal_String;
   Scanner : League.Strings.Universal_String;
   Success : out Boolean)
is
   use type League.Strings.Universal_String;

   procedure Each_Condition (Cursor : Nodes.Start_Condition_Maps.Cursor);
   procedure Each
     (Name : League.Strings.Universal_String;
      Condition : Nodes.Start_Condition);

   function Read_File
     (File_Name : String)
     return League.Strings.Universal_String;

   function To_String
     (Item : League.Strings.Universal_String)
     return String
     renames League.Text_Codecs.To_Exception_Message;

   function To_File_Name
     (Item      : League.Strings.Universal_String;
      Extension : Wide_Wide_String)
     return String;

   function "+"
     (Item : Wide_Wide_String)
     return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   DFA : Matreshka.Internals.Finite_Automatons.DFA_Constructor;

   ----------
   -- Each --
   ----------

   procedure Each
     (Name : League.Strings.Universal_String;
      Condition : Nodes.Start_Condition)
   is
      Rule    : Positive;
      Actions : Matreshka.Internals.Finite_Automatons.Rule_Index_Array
        (1 .. Condition.Rules.Last_Index);
      Reg_Exp_List : Matreshka.Internals.Finite_Automatons.Shared_Pattern_Array
        (1 .. Condition.Rules.Last_Index);
   begin
      for J in Actions'Range loop
         Rule := Condition.Rules.Element (J);
         Actions (J) := Rule;
         Reg_Exp_List (J) := Nodes.Regexp (Rule);
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

   ---------------
   -- Read_File --
   ---------------

   function Read_File
     (File_Name : String)
     return League.Strings.Universal_String
   is
      Decoder : constant League.Text_Codecs.Text_Codec :=
        League.Text_Codecs.Codec_For_Application_Locale;

      Size : constant Ada.Directories.File_Size :=
        Ada.Directories.Size (File_Name);

      Length : constant Ada.Streams.Stream_Element_Offset :=
        Ada.Streams.Stream_Element_Count (Size);

      File   : Ada.Streams.Stream_IO.File_Type;
      Data   : Ada.Streams.Stream_Element_Array (1 .. Length);
      Last   : Ada.Streams.Stream_Element_Offset;
   begin
      Ada.Streams.Stream_IO.Open
        (File, Ada.Streams.Stream_IO.In_File, File_Name);
      Ada.Streams.Stream_IO.Read (File, Data, Last);
      Ada.Streams.Stream_IO.Close (File);

      return Decoder.Decode (Data (1 .. Last));
   end Read_File;

   ------------------
   -- To_File_Name --
   ------------------

   function To_File_Name
     (Item      : League.Strings.Universal_String;
      Extension : Wide_Wide_String)
     return String
   is
      List : League.String_Vectors.Universal_String_Vector;
      Name : League.Strings.Universal_String;
   begin
      List := Item.To_Lowercase.Split ('.');
      Name := List.Join ("-") & Extension;
      return Name.To_UTF_8_String;
   end To_File_Name;

   Initial  : League.String_Vectors.Universal_String_Vector;
   Source   : aliased String_Sources.String_Source;
   Classes  : Matreshka.Internals.Finite_Automatons.Vectors.Vector;
begin
   Source.Create (Read_File (To_String (Input)));
   Parser.Scanner.Set_Source (Source'Unchecked_Access);
   Parser.Scanner.Set_Handler (Parser.Handler'Unchecked_Access);

   Initial.Append (League.Strings.To_Universal_String ("INITIAL"));
   Nodes.Add_Start_Conditions (Initial, False);

   Parser.YYParse;

   if not Nodes.Success then
      Success := False;
      return;
   end if;

   Expand.RegExps;

   if not Nodes.Success then
      Success := False;
      return;
   end if;

   Nodes.Regexp := new
     Matreshka.Internals.Finite_Automatons.Shared_Pattern_Array
       (1 .. Nodes.Rules.Length);

   for J in 1 .. Nodes.Rules.Length loop
      begin
         Nodes.Regexp (J) := Matreshka.Internals.Regexps.Compiler.Compile
           (League.Strings.Internals.Internal (Nodes.Rules.Element (J)));
      exception
         when E : Constraint_Error | Program_Error =>
            Ada.Wide_Wide_Text_IO.Put_Line
              ("Line " & Natural'Wide_Wide_Image (Nodes.Lines.Element (J)) &
                 " error on compile regexp '" &
                 Nodes.Rules.Element (J).To_Wide_Wide_String & "'");
            Ada.Text_IO.Put_Line (Ada.Exceptions.Exception_Message (E));
            Nodes.Success := False;
      end;
   end loop;

   if not Nodes.Success then
      Success := False;
      return;
   end if;

   Nodes.Conditions.Iterate (Each_Condition'Access);

   declare
      X : Matreshka.Internals.Finite_Automatons.DFA;
   begin
      DFA.Complete (Output => X);
      Matreshka.Internals.Finite_Automatons.Minimize (X);
      Generator.Tables.Split_To_Distinct (X.Edge_Char_Set, Classes);

      declare
         Map   : Generator.Tables.State_Map (1 .. X.Graph.Node_Count);
         Dead  : Matreshka.Internals.Finite_Automatons.State;
         Final : Matreshka.Internals.Finite_Automatons.State;
      begin
         Generator.Tables.Map_Final_Dead_Ends (X, Dead, Final, Map);

         Generator.Tables.Types
           (X,
            Map,
            Dead,
            Final,
            Types,
            To_File_Name (Types, ".ads"),
            Classes);

         Generator.Tables.Go
           (X,
            Map,
            Dead,
            Final,
            +"Tables",
            To_File_Name (Scanner & ".Tables", ".adb"),
            Types,
            Scanner,
            Classes);
      end;
   end;

   Generator.OOP_Handler.Go
     (Nodes.Actions,
      To_File_Name (Handler, ".ads"),
      Types,
      Handler,
      Scanner,
      Tokens);

   Generator.OOP_Handler.On_Accept
     (Nodes.Actions,
      To_File_Name (Scanner & ".On_Accept", ".adb"),
      Types,
      Handler,
      Scanner,
      Tokens);

   Success := True;
end UAFLEX.Run;
