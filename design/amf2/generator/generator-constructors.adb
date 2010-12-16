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

      procedure Generate_Initializer_Implementation
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
            Put_Line ("      Initialize_" & To_Ada_Identifier (Class.Name) & " (Elements.Last);");
            New_Line;
            Put_Line ("      return Elements.Last;");
            Put_Line ("   end " & Constructor_Name & ";");
         end if;
      end Generate_Constructor_Implementation;

      -----------------------------------------
      -- Generate_Initializer_Implementation --
      -----------------------------------------

      procedure Generate_Initializer_Implementation
       (Position : Class_Sets.Cursor)
      is
         Class             : constant Class_Access
           := Class_Sets.Element (Position);
         Initializer_Name  : constant String
           := "Initialize_" & To_Ada_Identifier (Class.Name);

         procedure Generate_Property_Initialization
          (Position : Property_Full_Sets.Cursor);
         --  Generates code to initialize class's property.

         --------------------------------------
         -- Generate_Property_Initialization --
         --------------------------------------

         procedure Generate_Property_Initialization
          (Position : Property_Full_Sets.Cursor)
         is
            Property : constant Property_Access
              := Property_Full_Sets.Element (Position);

         begin
            if Get_Type (Property).all in Class_Record'Class then
               if Is_Multivalued (Property) then
                  if Property.Is_Ordered and Property.Is_Unique then
                     Put_Line
                      ("      Initialize_Ordered_Set_Collection ("
                         & "Internal_Get_"
                         & To_Ada_Identifier (Property.Name)
                         & " (Self));");

                  elsif Property.Is_Ordered and not Property.Is_Unique then
                     Put_Line
                      ("      Initialize_Sequence_Collection ("
                         & "Internal_Get_"
                         & To_Ada_Identifier (Property.Name)
                         & " (Self));");

                  elsif Property.Is_Unique then
                     Put_Line
                      ("      Initialize_Set_Collection ("
                         & "Internal_Get_"
                         & To_Ada_Identifier (Property.Name)
                         & " (Self));");

                  else
                     Put_Line
                      ("      Initialize_Bag_Collection ("
                         & "Internal_Get_"
                         & To_Ada_Identifier (Property.Name)
                         & " (Self));");
                  end if;
               end if;

            else
               null;
            end if;
         end Generate_Property_Initialization;

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line ("   ---" & (Initializer_Name'Length * '-') & "---");
            Put_Line ("   -- " & Initializer_Name & " --");
            Put_Line ("   ---" & (Initializer_Name'Length * '-') & "---");
            New_Line;
            Put_Line
             ("   procedure "
                & Initializer_Name
                & " (Self : CMOF_"
                & To_Ada_Identifier (Class.Name)
                & ") is");
            Put_Line ("   begin");
            Put_Line ("      Elements.Table (Self) :=");
            Put_Line
             ("       (Kind   => E_" & To_Ada_Identifier (Class.Name) & ",");
            Put_Line
             ("        Member => (0      => 0,");
            Put_Line ("                   others => 0));");
            Put_Line
             ("      Allocate_Collection_Of_Cmof_Element_Slots"
                & " (Self, "
                & Trim (Natural'Image (Class.Collection_Slots), Both)
                & ");");
            Class.All_Properties.Iterate
             (Generate_Property_Initialization'Access);
            Put_Line ("   end " & Initializer_Name & ";");
         end if;
      end Generate_Initializer_Implementation;

   begin
      Put_Line ("with Cmof.Internals.Attributes;");
      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Tables;");
      Put_Line ("with Cmof.Internals.Types;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Constructors is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Attributes;");
      Put_Line ("   use Cmof.Internals.Metamodel;");
      Put_Line ("   use Cmof.Internals.Tables;");
      Put_Line ("   use Cmof.Internals.Types;");

      Classes.Iterate (Generate_Constructor_Implementation'Access);
      Classes.Iterate (Generate_Initializer_Implementation'Access);

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

      procedure Generate_Initializer_Specification
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

      ----------------------------------------
      -- Generate_Initializer_Specification --
      ----------------------------------------

      procedure Generate_Initializer_Specification
       (Position : Class_Sets.Cursor)
      is
         Class : constant Class_Access := Class_Sets.Element (Position);

      begin
         if not Class.Is_Abstract then
            New_Line;
            Put_Line
             ("   procedure Initialize_"
                & To_Ada_Identifier (Class.Name)
                & " (Self : Cmof_"
                & To_Ada_Identifier (Class.Name)
                & ");");
         end if;
      end Generate_Initializer_Specification;

   begin
      New_Line;
      Put_Line ("package Cmof.Internals.Constructors is");

      Classes.Iterate (Generate_Constructor_Specification'Access);
      Classes.Iterate (Generate_Initializer_Specification'Access);

      New_Line;
      Put_Line ("end Cmof.Internals.Constructors;");
   end Generate_Constructors_Specification;

end Generator.Constructors;
