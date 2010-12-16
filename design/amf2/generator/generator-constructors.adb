with Ada.Strings.Fixed;
with Ada.Text_IO;

with Generator.Utilities;

package body Generator.Constructors is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Generator.Utilities;

   ------------------------------------------
   -- Generate_Constructors_Implementation --
   ------------------------------------------

   procedure Generate_Constructors_Implementation is

      procedure Generate_Constructor_Implementation
       (Position : Class_Sets.Cursor);
      --  Generates specification of class's constructor for non-abstract
      --  class.

      -----------------------------------------
      -- Generate_Constructor_Implementation --
      -----------------------------------------

      procedure Generate_Constructor_Implementation
       (Position : Class_Sets.Cursor)
      is
         Class             : constant Class_Access
           := Class_Sets.Element (Position);
         Constructor_Name  : constant String
           := "Create_" & To_Ada_Identifier (Class.Name);

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line ("   ---" & (Constructor_Name'Length * '-') & "---");
            Put_Line ("   -- " & Constructor_Name & " --");
            Put_Line ("   ---" & (Constructor_Name'Length * '-') & "---");
            New_Line;
            Put_Line
             ("   function "
                & Constructor_Name
                & " return Cmof_"
                & To_Ada_Identifier (Class.Name)
                & " is");
            Put_Line ("   begin");
            Put_Line ("      Elements.Increment_Last;");
            Put_Line ("      Elements.Table (Elements.Last) :=");
            Put_Line
             ("       (Kind   => E_" & To_Ada_Identifier (Class.Name) & ",");
            Put_Line
             ("        Member => (0      => 0,");
--                & " To_Internal (Allocate_Class_Collections ("
--                & Trim (Natural'Image (Class.Collection_Slots), Both)
--                & ")),");
            Put_Line ("                   others => 0));");
            Put_Line
             ("      Allocate_Collection_Of_Cmof_Element_Slots"
                & " (Elements.Last, "
                & Trim (Natural'Image (Class.Collection_Slots), Both)
                & ");");
            New_Line;
            Put_Line ("      return Elements.Last;");
            Put_Line ("   end " & Constructor_Name & ";");
         end if;
      end Generate_Constructor_Implementation;

   begin
      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Tables;");
      Put_Line ("with Cmof.Internals.Types;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Constructors is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Metamodel;");
      Put_Line ("   use Cmof.Internals.Tables;");
      Put_Line ("   use Cmof.Internals.Types;");

      Classes.Iterate (Generate_Constructor_Implementation'Access);

      New_Line;
      Put_Line ("end Cmof.Internals.Constructors;");
   end Generate_Constructors_Implementation;

   -----------------------------------------
   -- Generate_Constructors_Specification --
   -----------------------------------------

   procedure Generate_Constructors_Specification is

      procedure Generate_Constructor_Specification
       (Position : Class_Sets.Cursor);
      --  Generates specification of class's constructor for non-abstract
      --  class.

      ----------------------------------------
      -- Generate_Constructor_Specification --
      ----------------------------------------

      procedure Generate_Constructor_Specification
       (Position : Class_Sets.Cursor)
      is
         Class : constant Class_Access := Class_Sets.Element (Position);

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line
             ("   function Create_"
                & To_Ada_Identifier (Class.Name)
                & " return Cmof_"
                & To_Ada_Identifier (Class.Name)
                & ";");
         end if;
      end Generate_Constructor_Specification;

   begin
      New_Line;
      Put_Line ("package Cmof.Internals.Constructors is");

      Classes.Iterate (Generate_Constructor_Specification'Access);

      New_Line;
      Put_Line ("end Cmof.Internals.Constructors;");
   end Generate_Constructors_Specification;

end Generator.Constructors;
