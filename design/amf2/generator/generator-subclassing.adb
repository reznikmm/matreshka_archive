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

      procedure Generate_Is_Subclass_Declaration;
      --  Generates declaration of the internal Is_Subclass function.

      procedure Generate_Is_Subclass_Implementation;
      --  Generates implementation of the internal Is_Subclass function.

      procedure Generate_Element_Classes_Declaration;
      --  Generates declaration of Element_Classes enumeration.

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
               Put (" => C_" & Ada_Name);
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
--         Put_Line ("   Class : constant");
--         Put_Line ("     array (Class_Element_Kinds)");
--         Put_Line
--           ("     array (Element_Kinds range E_"
--              & To_Ada_Identifier (To_String (First_Non_Abstract.Name))
--              & " .. E_"
--              & To_Ada_Identifier (To_String (Last_Non_Abstract.Name))
--              & ")");
--         Put_Line ("       of Element_Classes :=");
         Put_Line ("   Class : constant array (Class_Element_Kinds) of Element_Classes :=");
         Put ("     (");
         Offset := Col;
         Classes.Iterate (Generate_Kind_Class_Association'Access);
         Put_Line (");");
      end Generate_Class_Declaration;

      ------------------------------------------
      -- Generate_Element_Classes_Declaration --
      ------------------------------------------

      procedure Generate_Element_Classes_Declaration is

         procedure Generate_Enumeration_Literal_Declaration
           (Position : Class_Sets.Cursor);

         First_Literal : Boolean := True;

         ----------------------------------------------
         -- Generate_Enumeration_Literal_Declaration --
         ----------------------------------------------

         procedure Generate_Enumeration_Literal_Declaration
           (Position : Class_Sets.Cursor)
         is
            Element  : constant Class_Access := Class_Sets.Element (Position);
            Ada_Name : constant String :=
              "C_" & To_Ada_Identifier (To_String (Element.Name));

         begin
            if not First_Literal then
               Put_Line (",");
               Put ("      ");

            else
               First_Literal := False;
            end if;

            Put (Ada_Name);
         end Generate_Enumeration_Literal_Declaration;

      begin
         New_Line;
         Put_Line ("   type Element_Classes is");
         Put ("     (");
         Classes.Iterate (Generate_Enumeration_Literal_Declaration'Access);
         Put_Line (");");
      end Generate_Element_Classes_Declaration;

      --------------------------------------
      -- Generate_Is_Subclass_Declaration --
      --------------------------------------

      procedure Generate_Is_Subclass_Declaration is
      begin
         New_Line;
         Put_Line ("   function Is_Subclass");
         Put_Line ("     (Self       : Cmof_Element;");
         Put_Line ("      Superclass : Element_Classes) return Boolean;");
      end Generate_Is_Subclass_Declaration;

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
            Put_Line ("      Superclass : Element_Classes) return Boolean");
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
           ("      return Is_Subclass (Self, C_"
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
                 ("C_"
                    & To_Ada_Identifier
                        (To_String
                           (Unbounded_String_Sets.Element (Position))));
            end Generate_Superclass_Name;

            Element  : constant Class_Access := Class_Sets.Element (Position);
            Ada_Name : constant String :=
              "C_" & To_Ada_Identifier (To_String (Element.Name));
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
           ("   type Class_Bits is array (Element_Classes) of Boolean;");
         Put_Line ("   pragma Pack (Class_Bits);");
         New_Line;
         Put_Line
           ("   Tag : constant array (Element_Classes) of Class_Bits :=");
         Put ("     (");
         Classes.Iterate (Generate_Class_Association'Access);
         Put_Line (");");
      end Generate_Tag_Declaration;

   begin
      Put_Line ("with Cmof.Internals.Tables;");
      Put_Line ("with Cmof.Internals.Types;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Subclassing is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Tables;");
      Put_Line ("   use Cmof.Internals.Types;");

      Generate_Element_Classes_Declaration;
      Generate_Is_Subclass_Declaration;
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

   begin
      New_Line;
      Put_Line ("package Cmof.Internals.Subclassing is");
      Classes.Iterate (Generate_Subprogram_Declaration'Access);
      New_Line;
      Put_Line ("end Cmof.Internals.Subclassing;");
   end Generate_Subclassing_Specification;

end Generator.Subclassing;
