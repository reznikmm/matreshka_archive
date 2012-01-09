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
with Parser;

with Ada.Directories;
with Ada.Streams.Stream_IO;
with Debug;
with Expand;
with Generator.Tables;
with Generator.OOP_Handler;
with Nodes;
with League.String_Vectors;
with League.Strings;
with League.Text_Codecs;
with Matreshka.Internals.Finite_Automatons;

with UAFLEX_Handler;
with Aaa.Scanners;
with String_Sources;

procedure UAFLEX is
   procedure Each_Condition (Cursor : Nodes.Start_Condition_Maps.Cursor);
   procedure Each
     (Name : League.Strings.Universal_String;
      Condition : Nodes.Start_Condition);
   
   function Read_File
     (File_Name : String)
     return League.Strings.Universal_String;

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
   
   function Read_File
     (File_Name : String)
     return League.Strings.Universal_String
   is
      Decoder : League.Text_Codecs.Text_Codec :=
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
   
   Initial : League.String_Vectors.Universal_String_Vector;
   Source  : aliased String_Sources.String_Source;
   Handler : aliased UAFLEX_Handler.Handler;
begin
   Source.Create (Read_File ("test"));
   Parser.Scanner.Set_Source (Source'Unchecked_Access);
   Parser.Scanner.Set_Handler (Handler'Unchecked_Access);
   
   Initial.Append (League.Strings.To_Universal_String ("INITIAL"));
   Nodes.Add_Start_Conditions (Initial, False);
   
   Parser.YYParse;
   Expand.RegExps;
   Debug.Print;
   
   Nodes.Conditions.Iterate (Each_Condition'Access);
   
   declare
      X : Matreshka.Internals.Finite_Automatons.DFA;
   begin
      DFA.Complete (Output => X);
      Matreshka.Internals.Finite_Automatons.Minimize (X);
      Generator.Tables.Go (X, "aaa", "Aaa");
   end;

   Generator.OOP_Handler (Nodes.Actions, "aaa-handlers", "Aaa");
end UAFLEX;
