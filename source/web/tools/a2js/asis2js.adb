------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Directories;
with Ada.Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;
with Ada.Command_Line;

with GNAT.Directory_Operations;
with GNAT.OS_Lib;
with GNAT.Strings;

with Asis;
with Asis.Ada_Environments;
with Asis.Compilation_Units;
with Asis.Elements;
with Asis.Errors;
with Asis.Exceptions;
with Asis.Extensions;
with Asis.Implementation;

with League.Application;
with League.Strings;
with League.String_Vectors;

with Engines.Contexts;
with Engines.Registry_All_Actions;

procedure Asis2JS is

   use type League.Strings.Universal_String;

   procedure Compile_Unit
    (Unit        : Asis.Compilation_Unit;
     Output_File : League.Strings.Universal_String);
   procedure Compile_File
    (Source_File : League.Strings.Universal_String;
     Output_File : League.Strings.Universal_String);

   procedure Create_ADT_File (Source_File : League.Strings.Universal_String);
   --  Runs GNAT compiler to generate ADT file.

   procedure Print_Runtime_Directory (Arg : League.Strings.Universal_String);
   --  Print adalib directory in format expected by gprconfig.
   --  Escape '..' to work with regexp. Avoid windows style pathes
   --  because gprconfig doesn't understand it well enought.

   function Relative_Path
     (From : League.Strings.Universal_String;
      To   : League.Strings.Universal_String;
      Escape : Wide_Wide_String)
      return League.Strings.Universal_String;

   Engine        : aliased Engines.Contexts.Context;
   Context       : Asis.Context;
   Source_File   : League.Strings.Universal_String;
   Options       : League.String_Vectors.Universal_String_Vector;
   ADT_File      : League.Strings.Universal_String;
   Output_File   : League.Strings.Universal_String;

   ------------------
   -- Compile_File --
   ------------------

   procedure Compile_File
    (Source_File : League.Strings.Universal_String;
     Output_File : League.Strings.Universal_String)
   is
      File_Name : constant Wide_String := Source_File.To_UTF_16_Wide_String;
      Units     : constant Asis.Compilation_Unit_List :=
        Asis.Compilation_Units.Compilation_Units (Context);
      Success   : Boolean := False;

   begin
      for J in Units'Range loop
         if Asis.Compilation_Units.Text_Name (Units (J)) = File_Name then
            case Asis.Compilation_Units.Unit_Kind (Units (J)) is
               when Asis.A_Package_Body =>
                  Success := True;
                  Compile_Unit
                   (Asis.Compilation_Units.Corresponding_Declaration
                     (Units (J)),
                    Output_File);

                  exit;

               when Asis.A_Package
                  | Asis.A_Generic_Unit_Instance
                  | Asis.A_Renaming
                  | Asis.A_Generic_Unit_Declaration =>

                  Success := True;
                  Compile_Unit (Units (J), Output_File);

                  exit;

               when Asis.A_Procedure
                  | Asis.A_Function =>
                  --  Specification for subprogram body is optional, process it
                  --  when available or process body directly.

                  if not Asis.Compilation_Units.Is_Nil
                      (Asis.Compilation_Units.Corresponding_Body
                        (Units (J)))
                  then
                     Success := True;

                     Compile_Unit
                      (Asis.Compilation_Units.Corresponding_Body (Units (J)),
                       Output_File);
                  end if;

               when Asis.A_Procedure_Body
                  | Asis.A_Function_Body =>

                  Success := True;

                  Compile_Unit (Units (J), Output_File);

               when others =>
                  Ada.Wide_Text_IO.Put
                   (Asis.Compilation_Units.Debug_Image (Units (J)));

                  raise Program_Error;
            end case;
         end if;
      end loop;

      if not Success then
         raise Program_Error;
      end if;
   end Compile_File;

   ------------------
   -- Compile_Unit --
   ------------------

   procedure Compile_Unit
    (Unit        : Asis.Compilation_Unit;
     Output_File : League.Strings.Universal_String)
   is
      List   : constant Asis.Context_Clause_List :=
        Asis.Elements.Context_Clause_Elements (Unit);
      Result : League.Strings.Universal_String;
      Code   : League.Strings.Universal_String;
      File   : Ada.Wide_Wide_Text_IO.File_Type;

   begin
      for J in List'Range loop
         Result := Engine.Text.Get_Property
           (List (J), Engines.Code);
         Code.Append (Result);
      end loop;

      Result :=
        Engine.Text.Get_Property
         (Element => Asis.Elements.Unit_Declaration (Unit),
          Name    => Engines.Code);

      Code.Append (Result);

      Ada.Wide_Wide_Text_IO.Create
       (File,
        Ada.Wide_Wide_Text_IO.Out_File,
        Output_File.To_UTF_8_String,
        "wcem=8");
      Ada.Wide_Wide_Text_IO.Put_Line (File, Code.To_Wide_Wide_String);
      Ada.Wide_Wide_Text_IO.Close (File);
   end Compile_Unit;

   ---------------------
   -- Create_ADT_File --
   ---------------------

   procedure Create_ADT_File (Source_File : League.Strings.Universal_String) is
      Success   : Boolean;
      Source    : GNAT.Strings.String_Access
        := new String'(Source_File.To_UTF_8_String);
      Arguments : GNAT.Strings.String_List (1 .. Options.Length);

   begin
      for J in 1 .. Options.Length loop
         Arguments (J) := new String'(Options (J).To_UTF_8_String);
      end loop;

      Asis.Extensions.Compile (Source, Arguments, Success);

      GNAT.Strings.Free (Source);

      for J in Arguments'Range loop
         GNAT.Strings.Free (Arguments (J));
      end loop;

      if not Success then
         raise Program_Error;
      end if;
   end Create_ADT_File;

   -----------------------------
   -- Print_Runtime_Directory --
   -----------------------------

   procedure Print_Runtime_Directory (Arg : League.Strings.Universal_String) is
      procedure Launch_GCC
        (GCC    : League.Strings.Universal_String;
         Output : out League.Strings.Universal_String);
      --  gcc -print-file-name=adalib

      procedure Launch_GCC
        (GCC    : League.Strings.Universal_String;
         Output : out League.Strings.Universal_String)
      is
         Code : Integer;
         Name : constant String := GCC.To_UTF_8_String;
         Full : GNAT.OS_Lib.String_Access;
         Temp : GNAT.OS_Lib.String_Access;
         FD   : GNAT.OS_Lib.File_Descriptor;
         Args : GNAT.OS_Lib.Argument_List :=
           (1 => new String'("-print-file-name=adalib"));
      begin
         if Ada.Directories.Simple_Name (Name) = Name then
            Full := GNAT.OS_Lib.Locate_Exec_On_Path (Name);
         else
            Full := new String'(GCC.To_UTF_8_String);
         end if;

         GNAT.OS_Lib.Create_Temp_Output_File (FD, Temp);
         GNAT.OS_Lib.Spawn
           (Program_Name           => Full.all,
            Args                   => Args,
            Output_File_Descriptor => FD,
            Return_Code            => Code);

         declare
            Input : Ada.Wide_Wide_Text_IO.File_Type;
         begin
            Ada.Wide_Wide_Text_IO.Open
              (Input, Ada.Wide_Wide_Text_IO.In_File, Temp.all);
            while not Ada.Wide_Wide_Text_IO.End_Of_File (Input) loop
               Output.Append (Ada.Wide_Wide_Text_IO.Get_Line (Input));
            end loop;

            Ada.Wide_Wide_Text_IO.Close (Input);
            GNAT.OS_Lib.Close (FD);
            Ada.Directories.Delete_File (Temp.all);

            GNAT.Strings.Free (Args (1));
            GNAT.Strings.Free (Full);
            GNAT.Strings.Free (Temp);

            if Code = 0 then
               declare
                  Cmd  : constant String := Ada.Directories.Full_Name
                    (Ada.Command_Line.Command_Name);
                  Real : constant String := Ada.Directories.Full_Name
                    (Output.To_UTF_8_String);
               begin
                  Output := Relative_Path
                    (League.Strings.From_UTF_8_String (Cmd),
                     League.Strings.From_UTF_8_String (Real),
                     Escape => "\.\.");
               end;
            else
               Ada.Command_Line.Set_Exit_Status (Ada.Command_Line.Failure);
            end if;
         end;
      end Launch_GCC;

      GCC : League.Strings.Universal_String :=
        League.Strings.To_Universal_String ("gcc");
      Output : League.Strings.Universal_String;
   begin
      if Arg.Index ("=") > 0 then
         GCC := Arg.Tail_From (Arg.Index ("=") + 1);
      end if;

      Launch_GCC (GCC, Output);
      Ada.Wide_Wide_Text_IO.Put_Line (Output.To_Wide_Wide_String);
   end Print_Runtime_Directory;

   -------------------
   -- Relative_Path --
   -------------------

   function Relative_Path
     (From   : League.Strings.Universal_String;
      To     : League.Strings.Universal_String;
      Escape : Wide_Wide_String)
      return League.Strings.Universal_String
   is
      Sep : constant Character := GNAT.Directory_Operations.Dir_Separator;
      W_Sep : constant Wide_Wide_Character :=
        Wide_Wide_Character'Val (Character'Pos (Sep));
      F : constant League.String_Vectors.Universal_String_Vector :=
        From.Split (W_Sep);
      T : constant League.String_Vectors.Universal_String_Vector :=
        To.Split (W_Sep);
      Common : Natural := Natural'Min (F.Length, T.Length);
      Result : League.Strings.Universal_String;
   begin
      for J in 1 .. Common loop
         if F (J) /= T (J) then
            Common := J - 1;
            exit;
         end if;
      end loop;

      for J in Common + 1 .. F.Length - 1 loop
         Result.Append (Escape);
         Result.Append ("/");
      end loop;

      for J in Common + 1 .. T.Length loop
         Result.Append (T (J));
         Result.Append ("/");
      end loop;

      return Result;
   end Relative_Path;

begin
   --  Process command line parameters.

   declare
      Arguments : constant League.String_Vectors.Universal_String_Vector
        := League.Application.Arguments;

   begin
      for J in 1 .. Arguments.Length loop
         if Arguments (J).Starts_With ("-I")
           or Arguments (J).Starts_With ("-g")
         then
            Options.Append (Arguments (J));

         elsif Arguments (J) = League.Strings.To_Universal_String ("-g") then
            Ada.Wide_Text_IO.Put_Line
             (Ada.Wide_Text_IO.Standard_Error,
              "warning: -g switch is not supported yet");

         elsif Arguments (J).Starts_With ("--print-runtime-dir") then
            Print_Runtime_Directory (Arguments (J));
            return;

         elsif Source_File.Is_Empty then
            Source_File := Arguments (J);

         else
            raise Program_Error;
         end if;
      end loop;
   end;

   ADT_File := Source_File.Head (Source_File.Length - 1) & 't';
   ADT_File :=
     League.Strings.From_UTF_8_String
      (Ada.Directories.Simple_Name (ADT_File.To_UTF_8_String));
   Output_File := ADT_File.Head (ADT_File.Length - 4) & ".js";

   --  Enable use of UTF-8 as source code encoding.

   Options.Append (League.Strings.From_UTF_8_String ("-gnatW8"));

   --  Execute GNAT to generate ADT files.

   Create_ADT_File (Source_File);

   --  Initialize ASIS-for-GNAT and load ADT file.

   Asis.Implementation.Initialize ("-ws");

   Asis.Ada_Environments.Associate
     (The_Context => Context,
      Name        => Asis.Ada_Environments.Default_Name,
      Parameters  => "-C1 " & ADT_File.To_UTF_16_Wide_String);

   Asis.Ada_Environments.Open (Context);

   --  Register processing actions.

   Engines.Registry_All_Actions (Engine);

   --  Process file.

   Compile_File (Source_File, Output_File);

   --  Finalize ASIS.

   Asis.Ada_Environments.Close (Context);
   Asis.Ada_Environments.Dissociate (Context);
   Asis.Implementation.Finalize;

exception
   when Asis.Exceptions.ASIS_Inappropriate_Context          |
        Asis.Exceptions.ASIS_Inappropriate_Container        |
        Asis.Exceptions.ASIS_Inappropriate_Compilation_Unit |
        Asis.Exceptions.ASIS_Inappropriate_Element          |
        Asis.Exceptions.ASIS_Inappropriate_Line             |
        Asis.Exceptions.ASIS_Inappropriate_Line_Number      |
        Asis.Exceptions.ASIS_Failed                         =>

      Ada.Wide_Text_IO.Put ("ASIS Error Status is ");
      Ada.Wide_Text_IO.Put
        (Asis.Errors.Error_Kinds'Wide_Image (Asis.Implementation.Status));
      Ada.Wide_Text_IO.New_Line;

      Ada.Wide_Text_IO.Put ("ASIS Diagnosis is ");
      Ada.Wide_Text_IO.New_Line;
      Ada.Wide_Text_IO.Put (Asis.Implementation.Diagnosis);
      Ada.Wide_Text_IO.New_Line;

      Asis.Implementation.Set_Status;
      Ada.Command_Line.Set_Exit_Status (Ada.Command_Line.Failure);
end Asis2JS;
