------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Strings.Fixed;
with Ada.Text_IO;

package body Generator.Subclassing is

   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;

   function All_Superclasses_Names
     (Element : Class_Access) return Unbounded_String_Sets.Set
   is
      Result : Unbounded_String_Sets.Set;

      procedure Include (Position : Unbounded_String_Sets.Cursor);

      procedure Include (Position : Unbounded_String_Sets.Cursor) is
         Id      : constant Unbounded_String :=
           Unbounded_String_Sets.Element (Position);
         Element : constant Class_Access := Class_Access (To_Element (Id));

      begin
         Result.Include (Element.Name);
         Element.Super_Classes.Iterate (Include'Access);
      end Include;

   begin
      Result.Include (Element.Name);
      Element.Super_Classes.Iterate (Include'Access);

      return Result;
   end All_Superclasses_Names;

   -----------------------------------------
   -- Generate_Subclassing_Implementation --
   -----------------------------------------

   procedure Generate_Subclassing_Implementation is

      procedure Generate_Subprogram_Implementation
        (Position : Class_Sets.Cursor);
      --  Generates implementation of class membership check subprogram for
      --  the specified class.

      procedure Generate_Is_Subclass_Implementation;
      --  Generates implementation of the internal Is_Subclass function.

      procedure Generate_Class_Declaration;
      --  Generate declaration of Element_Kinds to Element_Classes conversion
      --  table.

      procedure Generate_Tag_Declaration;
      --  Generate declaration of subclassing data array.

      Is_Subclass_Generated : Boolean := False;

      --------------------------------
      -- Generate_Class_Declaration --
      --------------------------------

      procedure Generate_Class_Declaration is

         procedure Generate_Kind_Class_Association
           (Position : Class_Sets.Cursor);

         procedure Compute_Max_Length (Position : Class_Sets.Cursor);

         First_Association  : Boolean := True;
         Max_Length         : Ada.Text_IO.Count := 0;
         Offset             : Ada.Text_IO.Count;
         First_Non_Abstract : Class_Access;
         Last_Non_Abstract  : Class_Access;

         ------------------------
         -- Compute_Max_Length --
         ------------------------

         procedure Compute_Max_Length (Position : Class_Sets.Cursor) is
            Element  : constant Class_Access := Class_Sets.Element (Position);
            Ada_Name : constant String :=
              To_Ada_Identifier (To_String (Element.Name));

         begin
            if not Element.Is_Abstract
              and then Ada_Name'Length + 2 > Max_Length
            then
               Max_Length := Ada_Name'Length + 2;
            end if;
         end Compute_Max_Length;

         -------------------------------------
         -- Generate_Kind_Class_Association --
         -------------------------------------

         procedure Generate_Kind_Class_Association
           (Position : Class_Sets.Cursor)
         is
            Element  : constant Class_Access := Class_Sets.Element (Position);
            Ada_Name : constant String :=
              To_Ada_Identifier (To_String (Element.Name));

         begin
            if not Element.Is_Abstract then
               if not First_Association then
                  Put_Line (",");
                  Put ("      ");

               else
                  First_Association := False;
               end if;

               Put ("E_" & Ada_Name);
               Set_Col (Offset + Max_Length);
               Put (" => MC_CMOF_" & Ada_Name);
            end if;
         end Generate_Kind_Class_Association;

      begin
         --  Compute maximum length of the identifier.

         Classes.Iterate (Compute_Max_Length'Access);

         --  Look for first non abstract class (it forms a first literal for
         --  element kinds).

         declare
            Position : Class_Sets.Cursor := Classes.First;

         begin
            while Class_Sets.Has_Element (Position)
              and then Class_Sets.Element (Position).Is_Abstract
            loop
               Class_Sets.Next (Position);
            end loop;

            if Class_Sets.Has_Element (Position) then
               First_Non_Abstract := Class_Sets.Element (Position);
            end if;
         end;

         --  Look for last non abstract class (it forms a last literal for
         --  element kinds).

         declare
            Position : Class_Sets.Cursor := Classes.Last;

         begin
            while Class_Sets.Has_Element (Position)
              and then Class_Sets.Element (Position).Is_Abstract
            loop
               Class_Sets.Previous (Position);
            end loop;

            if Class_Sets.Has_Element (Position) then
               Last_Non_Abstract := Class_Sets.Element (Position);
            end if;
         end;

         New_Line;
         Put_Line ("   Class : constant array (Class_Element_Kinds) of CMOF_Meta_Class :=");
         Put ("     (");
         Offset := Col;
         Classes.Iterate (Generate_Kind_Class_Association'Access);
         Put_Line (");");
      end Generate_Class_Declaration;

      -----------------------------------------
      -- Generate_Is_Subclass_Implementation --
      -----------------------------------------

      procedure Generate_Is_Subclass_Implementation is
      begin
         if not Is_Subclass_Generated then
            New_Line;
            Put_Line ("   -----------------");
            Put_Line ("   -- Is_Subclass --");
            Put_Line ("   -----------------");
            New_Line;
            Put_Line ("   function Is_Subclass");
            Put_Line ("     (Self       : Cmof_Element;");
            Put_Line ("      Superclass : CMOF_Class) return Boolean");
            Put_Line ("   is");
            Put_Line ("      pragma Assert (not Is_Null (Self));");
            Put_Line ("      pragma Assert (Is_Valid (Self));");
            New_Line;
            Put_Line ("   begin");
            Put_Line ("      return");
            Put_Line
              ("        (Tag (Class (Elements.Table (Self).Kind))"
                 & " and Tag (Superclass))");
            Put_Line ("           = Tag (Superclass);");
            Put_Line ("   end Is_Subclass;");

            Is_Subclass_Generated := True;
         end if;
      end Generate_Is_Subclass_Implementation;

      ----------------------------------------
      -- Generate_Subprogram_Implementation --
      ----------------------------------------

      procedure Generate_Subprogram_Implementation
        (Position : Class_Sets.Cursor)
      is
         Element  : constant Class_Access := Class_Sets.Element (Position);
         Ada_Name : constant String :=
           "Is_" & To_Ada_Identifier (To_String (Element.Name));

      begin
         if not Is_Subclass_Generated
           and then "Is_Subclass" < Ada_Name
         then
            Generate_Is_Subclass_Implementation;
         end if;

         New_Line;
         Put_Line ("   ---" & (Ada_Name'Length * '-') & "---");
         Put_Line ("   -- " & Ada_Name & " --");
         Put_Line ("   ---" & (Ada_Name'Length * '-') & "---");
         New_Line;
         Put_Line
           ("   function "
              & Ada_Name & " (Self : Cmof_Element) return Boolean is");
         Put_Line ("   begin");
         Put_Line
           ("      return Is_Subclass (Self, MC_CMOF_"
              & To_Ada_Identifier (To_String (Element.Name)) & ");");
         Put_Line ("   end " & Ada_Name & ";");
      end Generate_Subprogram_Implementation;

      ------------------------------
      -- Generate_Tag_Declaration --
      ------------------------------

      procedure Generate_Tag_Declaration is

         procedure Generate_Class_Association (Position : Class_Sets.Cursor);

         First_Association : Boolean := True;

         procedure Generate_Class_Association (Position : Class_Sets.Cursor) is

            procedure Generate_Superclass_Name
              (Position : Unbounded_String_Sets.Cursor);

            First_Name : Boolean := True;

            ------------------------------
            -- Generate_Superclass_Name --
            ------------------------------

            procedure Generate_Superclass_Name
              (Position : Unbounded_String_Sets.Cursor)
            is
            begin
               if not First_Name then
                  New_Line;
                  Put ("           | ");

               else
                  First_Name := False;
               end if;

               Put
                 ("MC_CMOF_"
                    & To_Ada_Identifier
                        (To_String
                           (Unbounded_String_Sets.Element (Position))));
            end Generate_Superclass_Name;

            Element  : constant Class_Access := Class_Sets.Element (Position);
            Ada_Name : constant String :=
              "MC_CMOF_" & To_Ada_Identifier (To_String (Element.Name));
            Super    : Unbounded_String_Sets.Set :=
              All_Superclasses_Names (Element);

         begin
            if not First_Association then
               Put_Line (",");
               Put ("      ");

            else
               First_Association := False;
            end if;

            Put_Line (Ada_Name & " =>");
            Put ("        (");
            Super.Iterate (Generate_Superclass_Name'Access);
            Put_Line (" => True,");
            Put ("         others => False)");
         end Generate_Class_Association;

      begin
         New_Line;
         Put_Line
           ("   type Class_Bits is array (CMOF_Meta_Class) of Boolean;");
         Put_Line ("   pragma Pack (Class_Bits);");
         New_Line;
         Put_Line
           ("   Tag : constant array (CMOF_Meta_Class) of Class_Bits :=");
         Put ("     (");
         Classes.Iterate (Generate_Class_Association'Access);
         Put_Line (");");
      end Generate_Tag_Declaration;

   begin
      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Tables;");
      Put_Line ("with Cmof.Internals.Types;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Subclassing is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Metamodel;");
      Put_Line ("   use Cmof.Internals.Tables;");
      Put_Line ("   use Cmof.Internals.Types;");

      Generate_Tag_Declaration;
      Generate_Class_Declaration;
      Classes.Iterate (Generate_Subprogram_Implementation'Access);
      Generate_Is_Subclass_Implementation;

      New_Line;
      Put_Line ("end Cmof.Internals.Subclassing;");
   end Generate_Subclassing_Implementation;

   ----------------------------------------
   -- Generate_Subclassing_Specification --
   ----------------------------------------

   procedure Generate_Subclassing_Specification is

      procedure Generate_Is_Subclass_Declaration;
      --  Generates declaration of the internal Is_Subclass function.

      procedure Generate_Subprogram_Declaration (Position : Class_Sets.Cursor);

      -------------------------------------
      -- Generate_Subprogram_Declaration --
      -------------------------------------

      procedure Generate_Subprogram_Declaration
        (Position : Class_Sets.Cursor)
      is
         Element  : constant Class_Access := Class_Sets.Element (Position);
         Ada_Name : constant String :=
           "Is_" & To_Ada_Identifier (To_String (Element.Name));

      begin
         New_Line;
         Put_Line
           ("   function "
              & Ada_Name & " (Self : Cmof_Element) return Boolean;");
         Put_Line ("   pragma Inline (" & Ada_Name & ");");
      end Generate_Subprogram_Declaration;

      --------------------------------------
      -- Generate_Is_Subclass_Declaration --
      --------------------------------------

      procedure Generate_Is_Subclass_Declaration is
      begin
         New_Line;
         Put_Line ("   function Is_Subclass");
         Put_Line ("     (Self       : Cmof_Element;");
         Put_Line ("      Superclass : CMOF_Class) return Boolean;");
      end Generate_Is_Subclass_Declaration;

   begin
      New_Line;
      Put_Line ("package Cmof.Internals.Subclassing is");
      Generate_Is_Subclass_Declaration;
      Classes.Iterate (Generate_Subprogram_Declaration'Access);
      New_Line;
      Put_Line ("end Cmof.Internals.Subclassing;");
   end Generate_Subclassing_Specification;

end Generator.Subclassing;
