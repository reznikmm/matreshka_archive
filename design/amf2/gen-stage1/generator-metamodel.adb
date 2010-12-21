with Ada.Strings.Fixed;
with Ada.Text_IO;

with Generator.Utilities;

package body Generator.Metamodel is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Generator.Utilities;

   Last_Cmof_Element : Natural := 0;

   ---------------------------------------
   -- Generate_Metamodel_Implementation --
   ---------------------------------------

   procedure Generate_Metamodel_Implementation is

      procedure Generate_Class_Initialization (Position : Class_Sets.Cursor);
      --  Generates initialization of metaclass.

      procedure Generate_Association_Initialization
       (Position : Association_Sets.Cursor);
      --  Generates initialization of metaassociation.

      procedure Generate_Class_Property_Initialization
       (Position : Class_Sets.Cursor);
      --  Generates initialization of properties of metaclass.

      procedure Generate_Association_Property_Initialization
       (Position : Association_Sets.Cursor);
      --  Generates initialization of properties of metaassocation.

      procedure Generate_Property_Initialization
       (Position : Property_Sets.Cursor);
      --  Generates initialization of the specified property.

      procedure Generate_Class_Property_Links
       (Position : Class_Sets.Cursor);
      --  Generates link establishment for class <-> property association.

      procedure Generate_Association_Property_Links
       (Position : Association_Sets.Cursor);
      --  Generates link establishment for association <-> property association.

      procedure Generate_Class_Class_Links (Position : Class_Sets.Cursor);
      --  Generates link establishment for class <-> class association.

      procedure Generate_Package_Class_Links (Position : Class_Sets.Cursor);
      --  Generates link establishment for package <-> class association.

      procedure Generate_Primitive_Type_Initialization
       (Position : Primitive_Type_Sets.Cursor);

      procedure Generate_Enumeration_Initialization
       (Position : Enumeration_Sets.Cursor);

      -----------------------------------------
      -- Generate_Association_Initialization --
      -----------------------------------------

      procedure Generate_Association_Initialization
       (Position : Association_Sets.Cursor)
      is
         Association : constant Association_Access
           := Association_Sets.Element (Position);

      begin
         Put_Line
          ("   Initialize_Association ("
             & Constant_Name_In_Metamodel (Association)
             & ");");
         Put_Line ("   Internal_Set_Name");
         Put_Line
          ("    ("
             & Constant_Name_In_Metamodel (Association)
             & ",");
         Put_Line
          ("     League.Strings.To_Universal_String ("""
             & To_String (Association.Name)
             & """));");
      end Generate_Association_Initialization;

      --------------------------------------------------
      -- Generate_Association_Property_Initialization --
      --------------------------------------------------

      procedure Generate_Association_Property_Initialization
       (Position : Association_Sets.Cursor) is
      begin
         Association_Sets.Element (Position).Owned_End.Iterate
          (Generate_Property_Initialization'Access);
      end Generate_Association_Property_Initialization;

      -----------------------------------------
      -- Generate_Association_Property_Links --
      -----------------------------------------

      procedure Generate_Association_Property_Links
       (Position : Association_Sets.Cursor)
      is
         Association : constant Association_Access
           := Association_Sets.Element (Position);
         First_End   : constant Property_Access
           := Property_Access (To_Element (Association.First_End));
         Second_End  : constant Property_Access
           := Property_Access (To_Element (Association.Second_End));
         First_Type  : constant Element_Access := Get_Type (First_End);
         Second_Type : constant Element_Access := Get_Type (Second_End);

      begin
         --  Generates ownership link.

         if First_End.Owned_Association /= null then
            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Owned_End_Owning_Association,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Association) & ",");
            Put_Line ("     MP_Cmof_Association_Owned_End,");
            Put_Line ("     " & Constant_Name_In_Metamodel (First_End) & ",");
            Put_Line ("     MP_Cmof_Property_Owning_Association);");

            --  Generates link between property and type.

            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Type_Typed_Element,");
            Put_Line ("     " & Constant_Name_In_Metamodel (First_End) & ",");
            Put_Line ("     MP_Cmof_Typed_Element_Type,");

            if First_Type.all in Class_Record'Class then
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Class_Access (First_Type)) & ",");

            elsif First_Type.all in Primitive_Type_Record'Class then
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Primitive_Type_Access (First_Type)) & ",");

            else
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Enumeration_Access (First_Type)) & ",");
            end if;

            Put_Line ("     MP_Cmof_Type_Typed_Element);");
         end if;

         if Second_End.Owned_Association /= null then
            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Owned_End_Owning_Association,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Association) & ",");
            Put_Line ("     MP_Cmof_Association_Owned_End,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Second_End) & ",");
            Put_Line ("     MP_Cmof_Property_Owning_Association);");

            --  Generates link between property and type.

            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Type_Typed_Element,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Second_End) & ",");
            Put_Line ("     MP_Cmof_Typed_Element_Type,");

            if Second_Type.all in Class_Record'Class then
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Class_Access (Second_Type)) & ",");

            elsif Second_Type.all in Primitive_Type_Record'Class then
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Primitive_Type_Access (Second_Type)) & ",");

            else
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Enumeration_Access (Second_Type)) & ",");
            end if;

            Put_Line ("     MP_Cmof_Type_Typed_Element);");
         end if;

         --  Generates memberEnd link.

         Put_Line ("   Internal_Create_Link");
         Put_Line ("    (MA_Cmof_Member_End_Association,");
         Put_Line ("     " & Constant_Name_In_Metamodel (Association) & ",");
         Put_Line ("     MP_Cmof_Association_Member_End,");
         Put_Line ("     " & Constant_Name_In_Metamodel (First_End) & ",");
         Put_Line ("     MP_Cmof_Property_Association);");

         Put_Line ("   Internal_Create_Link");
         Put_Line ("    (MA_Cmof_Member_End_Association,");
         Put_Line ("     " & Constant_Name_In_Metamodel (Association) & ",");
         Put_Line ("     MP_Cmof_Association_Member_End,");
         Put_Line ("     " & Constant_Name_In_Metamodel (Second_End) & ",");
         Put_Line ("     MP_Cmof_Property_Association);");
      end Generate_Association_Property_Links;

      --------------------------------
      -- Generate_Class_Class_Links --
      --------------------------------

      procedure Generate_Class_Class_Links (Position : Class_Sets.Cursor) is
         Class : constant Class_Access := Class_Sets.Element (Position);

         procedure Generate_Link (Position : Unbounded_String_Sets.Cursor);

         -------------------
         -- Generate_Link --
         -------------------

         procedure Generate_Link (Position : Unbounded_String_Sets.Cursor) is
            Super_Class : constant Class_Access
              := Class_Access
                  (To_Element (Unbounded_String_Sets.Element (Position)));

         begin
            --  Generates link between class and superclass.

            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Super_Class_Class,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Class) & ",");
            Put_Line ("     MP_Cmof_Class_Super_Class,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Super_Class) & ",");
            Put_Line ("     MP_Cmof_Super_Class_Class);");
         end Generate_Link;

      begin
         Class.Super_Classes.Iterate (Generate_Link'Access);
      end Generate_Class_Class_Links;

      -----------------------------------
      -- Generate_Class_Initialization --
      -----------------------------------

      procedure Generate_Class_Initialization (Position : Class_Sets.Cursor) is
         Class : constant Class_Access := Class_Sets.Element (Position);

      begin
         Put_Line
          ("   Initialize_Class ("
             & Constant_Name_In_Metamodel (Class)
             & ");");
         Put_Line ("   Internal_Set_Name");
         Put_Line
          ("    ("
             & Constant_Name_In_Metamodel (Class)
             & ",");
         Put_Line
          ("     League.Strings.To_Universal_String ("""
             & To_String (Class.Name)
             & """));");
      end Generate_Class_Initialization;

      --------------------------------------------
      -- Generate_Class_Property_Initialization --
      --------------------------------------------

      procedure Generate_Class_Property_Initialization
       (Position : Class_Sets.Cursor) is
      begin
         Class_Sets.Element (Position).Properties.Iterate
          (Generate_Property_Initialization'Access);
      end Generate_Class_Property_Initialization;

      -----------------------------------
      -- Generate_Class_Property_Links --
      -----------------------------------

      procedure Generate_Class_Property_Links
       (Position : Class_Sets.Cursor)
      is
         Class : constant Class_Access := Class_Sets.Element (Position);

         procedure Generate_Class_Property_Link
          (Position : Property_Sets.Cursor);

         ----------------------------------
         -- Generate_Class_Property_Link --
         ----------------------------------

         procedure Generate_Class_Property_Link
          (Position : Property_Sets.Cursor)
         is
            Property : constant Property_Access
              := Property_Sets.Element (Position);
            The_Type : constant Element_Access := Get_Type (Property);

         begin
            --  Generates link between class and property.

            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Owned_Attribute_Class,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Class) & ",");
            Put_Line ("     MP_Cmof_Class_Owned_Attribute,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Property) & ",");
            Put_Line ("     MP_Cmof_Property_Class);");

            --  Generates link between property and type.

            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (MA_Cmof_Type_Typed_Element,");
            Put_Line ("     " & Constant_Name_In_Metamodel (Property) & ",");
            Put_Line ("     MP_Cmof_Typed_Element_Type,");

            if The_Type.all in Class_Record'Class then
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Class_Access (The_Type)) & ",");

            elsif The_Type.all in Primitive_Type_Record'Class then
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Primitive_Type_Access (The_Type)) & ",");

            else
               Put_Line
                ("     " & Constant_Name_In_Metamodel (Enumeration_Access (The_Type)) & ",");
            end if;

            Put_Line ("     MP_Cmof_Type_Typed_Element);");
         end Generate_Class_Property_Link;

      begin
         Class.Properties.Iterate (Generate_Class_Property_Link'Access);
      end Generate_Class_Property_Links;

      -----------------------------------------
      -- Generate_Enumeration_Initialization --
      -----------------------------------------

      procedure Generate_Enumeration_Initialization
       (Position : Enumeration_Sets.Cursor)
      is
         Enumeration : constant Enumeration_Access
           := Enumeration_Sets.Element (Position);

      begin
         Put_Line
          ("   Initialize_Enumeration ("
             & Constant_Name_In_Metamodel (Enumeration)
             & ");");
         Put_Line ("   Internal_Set_Name");
         Put_Line
          ("    ("
             & Constant_Name_In_Metamodel (Enumeration)
             & ",");
         Put_Line
          ("     League.Strings.To_Universal_String ("""
             & To_String (Enumeration.Name)
             & """));");
      end Generate_Enumeration_Initialization;

      ----------------------------------
      -- Generate_Package_Class_Links --
      ----------------------------------

      procedure Generate_Package_Class_Links (Position : Class_Sets.Cursor) is
         Class : constant Class_Access := Class_Sets.Element (Position);

      begin
         --  Generates link between package and class.

         Put_Line ("   Internal_Create_Link");
         Put_Line ("    (MA_Cmof_Packaged_Element_Owning_Package,");
         Put_Line ("     MM_CMOF,");
         Put_Line ("     MP_Cmof_Package_Packaged_Element,");
         Put_Line ("     " & Constant_Name_In_Metamodel (Class) & ",");
         Put_Line ("     MP_Cmof_Packaged_Element_Owning_Package);");
      end Generate_Package_Class_Links;

      --------------------------------------------
      -- Generate_Primitive_Type_Initialization --
      --------------------------------------------

      procedure Generate_Primitive_Type_Initialization
       (Position : Primitive_Type_Sets.Cursor)
      is
         Primitive_Type : constant Primitive_Type_Access
           := Primitive_Type_Sets.Element (Position);

      begin
         Put_Line
          ("   Initialize_Primitive_Type ("
             & Constant_Name_In_Metamodel (Primitive_Type)
             & ");");
         Put_Line ("   Internal_Set_Name");
         Put_Line
          ("    ("
             & Constant_Name_In_Metamodel (Primitive_Type)
             & ",");
         Put_Line
          ("     League.Strings.To_Universal_String ("""
             & To_String (Primitive_Type.Name)
             & """));");
      end Generate_Primitive_Type_Initialization;

      --------------------------------------
      -- Generate_Property_Initialization --
      --------------------------------------

      procedure Generate_Property_Initialization
       (Position : Property_Sets.Cursor)
      is
         Property : constant Property_Access
           := Property_Sets.Element (Position);

      begin
         Put_Line
          ("   Initialize_Property ("
             & Constant_Name_In_Metamodel (Property)
             & ");");
         Put_Line ("   Internal_Set_Name");
         Put_Line
          ("    ("
             & Constant_Name_In_Metamodel (Property)
             & ",");
         Put_Line
          ("     League.Strings.To_Universal_String ("""
             & To_String (Property.Name)
             & """));");
         Put_Line
          ("   Internal_Set_Lower ("
             & Constant_Name_In_Metamodel (Property)
             & ","
             & Integer'Image (Property.Lower)
             & ");");
         Put
          ("   Internal_Set_Upper ("
             & Constant_Name_In_Metamodel (Property)
             & ",");

         if Property.Upper = Integer'Last then
            Put (" (Unlimited => True)");

         else
            Put (" (False, " & Integer'Image (Property.Upper) & ")");
         end if;

         Put_Line (");");
      end Generate_Property_Initialization;

   begin
      Put_Line ("with League.Strings;");
      New_Line;
      Put_Line ("with Cmof.Internals.Attributes;");
      Put_Line ("with Cmof.Internals.Constructors;");
      Put_Line ("with Cmof.Internals.Links;");
      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Tables;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Setup is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Attributes;");
      Put_Line ("   use Cmof.Internals.Constructors;");
      Put_Line ("   use Cmof.Internals.Links;");
      Put_Line ("   use Cmof.Internals.Metamodel;");
      Put_Line ("   use Cmof.Internals.Tables;");
      New_Line;
      Put_Line
        ("   Last_Cmof_Metaelement : constant Cmof_Element :="
           & Positive'Image (Last_Cmof_Element) & ";");
      New_Line;
      Put_Line ("begin");
      Put_Line ("   Elements.Set_Last (Last_Cmof_Metaelement);");
      New_Line;
      Put_Line ("   --  Initialization of CMOF package.");
      New_Line;
      Put_Line ("   Initialize_Package (MM_CMOF);");
      Put_Line
       ("   Internal_Set_Name"
          & " (MM_CMOF, League.Strings.To_Universal_String (""CMOF""));");
      New_Line;
      Put_Line ("   --  Initialization of CMOF primitive types.");
      New_Line;
      Primitive_Types.Iterate (Generate_Primitive_Type_Initialization'Access);
      New_Line;
      Put_Line ("   --  Initialization of CMOF enumerations.");
      New_Line;
      Enumerations.Iterate (Generate_Enumeration_Initialization'Access);
      New_Line;
      Put_Line ("   --  Initialization of CMOF classes.");
      New_Line;
      Classes.Iterate (Generate_Class_Initialization'Access);
      New_Line;
      Put_Line ("   --  Initialization of CMOF associations.");
      New_Line;
      Associations.Iterate (Generate_Association_Initialization'Access);
      New_Line;
      Put_Line ("   --  Initialization of CMOF properties.");
      New_Line;
      Classes.Iterate (Generate_Class_Property_Initialization'Access);
      Associations.Iterate
       (Generate_Association_Property_Initialization'Access);
      New_Line;
      Put_Line ("   --  Link establishment for class <-> property and propery <-> type");
      New_Line;
      Classes.Iterate (Generate_Class_Property_Links'Access);
      New_Line;
      Put_Line ("   --  Link establishment for association <-> property and property <-> type");
      New_Line;
      Associations.Iterate (Generate_Association_Property_Links'Access);
      New_Line;
      Put_Line ("   --  Link establishment for class <-> class");
      New_Line;
      Classes.Iterate (Generate_Class_Class_Links'Access);
      New_Line;
      Put_Line ("   --  Link establishment for package <-> class");
      New_Line;
      Classes.Iterate (Generate_Package_Class_Links'Access);
--      New_Line;
--      Put_Line ("   --  Link establishment for property <-> type");
--      New_Line;
--      Classes.Iterate (Generate_Class_Property_Type_Initialization'Access);
--      Associations.Iterate
--       (Generate_Association_Property_Type_Initialization'Access);
      Put_Line ("end Cmof.Internals.Setup;");
   end Generate_Metamodel_Implementation;

   --------------------------------------
   -- Generate_Metamodel_Specification --
   --------------------------------------

   procedure Generate_Metamodel_Specification is

      procedure Generate_Association (Position : Association_Sets.Cursor);

      procedure Generate_Class (Position : Class_Sets.Cursor);

      procedure Generate_Property (Position : Unbounded_String_Sets.Cursor);

      procedure Analyze_Class (Position : Class_Sets.Cursor);
      --  Compute maximum length of the class's name; compute set of
      --  properties.

      procedure Generate_Primitive_Type
       (Position : Primitive_Type_Sets.Cursor);

      procedure Generate_Enumeration (Position : Enumeration_Sets.Cursor);

      Max_Class_Length                     : Ada.Text_IO.Count := 0;
      First_Collection_Of_Element          : Natural := 0;
      Last_Collection_Of_Element           : Natural := 0;
      First_Non_Collection_Of_Element      : Natural := 0;
      Last_Non_Collection_Of_Element       : Natural := 0;
      Element_Collection_Properties        : Unbounded_String_Sets.Set;
      Element_Properties                   : Unbounded_String_Sets.Set;
      Primitive_Type_Collection_Properties : Unbounded_String_Sets.Set;
      Primitive_Type_Properties            : Unbounded_String_Sets.Set;
      Association_Properties               : Unbounded_String_Sets.Set;

      -------------------------
      -- Analyze_Association --
      -------------------------

      procedure Analyze_Association (Position : Association_Sets.Cursor) is

         procedure Add_Property (Position : Property_Sets.Cursor);

         A_Element : constant Association_Access :=
           Association_Sets.Element (Position);

         ------------------
         -- Add_Property --
         ------------------

         procedure Add_Property (Position : Property_Sets.Cursor) is
            P_Element  : constant Property_Access :=
              Property_Sets.Element (Position);
            First_End  : constant Property_Access :=
              Property_Access (To_Element (A_Element.First_End));
            Second_End : constant Property_Access :=
              Property_Access (To_Element (A_Element.Second_End));
            Ada_Name   : Unbounded_String;

         begin
            if Length (First_End.Name) = 0 then
               Append
                 (Ada_Name, To_Ada_Identifier (Get_Type (First_End).Name));

            else
              Append (Ada_Name, To_Ada_Identifier (First_End.Name));
            end if;

            Append (Ada_Name, '_');

            if Length (Second_End.Name) = 0 then
               Append
                 (Ada_Name, To_Ada_Identifier (Get_Type (Second_End).Name));

            else
               Append
                 (Ada_Name, To_Ada_Identifier (Second_End.Name));
            end if;

            Association_Properties.Insert (Ada_Name);
         end Add_Property;

      begin
         A_Element.Owned_End.Iterate (Add_Property'Access);
      end Analyze_Association;

      -------------------
      -- Analyze_Class --
      -------------------

      procedure Analyze_Class (Position : Class_Sets.Cursor) is

         procedure Add_Property (Position : Property_Sets.Cursor);

         C_Element  : constant Class_Access := Class_Sets.Element (Position);
         C_Ada_Name : constant String := To_Ada_Identifier (C_Element.Name);

         ------------------
         -- Add_Property --
         ------------------

         procedure Add_Property (Position : Property_Sets.Cursor) is
            P_Element  : constant Property_Access :=
              Property_Sets.Element (Position);
            P_Ada_Name : constant String := To_Ada_Identifier (P_Element.Name);

         begin
            if Get_Type (P_Element).all in Class_Record'Class then
               if P_Element.Upper > 1 then
                  Element_Collection_Properties.Insert
                    (To_Unbounded_String (C_Ada_Name & '_' & P_Ada_Name));

               else
                  Element_Properties.Insert
                    (To_Unbounded_String (C_Ada_Name & '_' & P_Ada_Name));
               end if;

            else
               if P_Element.Upper > 1 then
                  Primitive_Type_Collection_Properties.Insert
                    (To_Unbounded_String (C_Ada_Name & '_' & P_Ada_Name));

               else
                  Primitive_Type_Properties.Insert
                    (To_Unbounded_String (C_Ada_Name & '_' & P_Ada_Name));
               end if;
            end if;
         end Add_Property;

      begin
         if Max_Class_Length < C_Ada_Name'Length then
            Max_Class_Length := C_Ada_Name'Length;
         end if;

         C_Element.Properties.Iterate (Add_Property'Access);
      end Analyze_Class;

      --------------------------
      -- Generate_Association --
      --------------------------

      procedure Generate_Association (Position : Association_Sets.Cursor) is
      begin
         Last_Cmof_Element := Last_Cmof_Element + 1;
         Put
          ("   "
             & Constant_Name_In_Metamodel
                (Association_Sets.Element (Position)));
         Set_Col (44);
         Put_Line
           (" : constant Cmof_Association :="
              & Positive'Image (Last_Cmof_Element)
              & ";");
      end Generate_Association;

      --------------------
      -- Generate_Class --
      --------------------

      procedure Generate_Class (Position : Class_Sets.Cursor) is
      begin
         Last_Cmof_Element := Last_Cmof_Element + 1;
         Put ("   " & Constant_Name_In_Metamodel (Class_Sets.Element (Position)));
         Set_Col (Max_Class_Length + 12);
         Put_Line
           (" : constant Cmof_Class :="
              & Positive'Image (Last_Cmof_Element)
              & ";");
      end Generate_Class;

      --------------------------
      -- Generate_Enumeration --
      --------------------------

      procedure Generate_Enumeration (Position : Enumeration_Sets.Cursor) is
      begin
         Last_Cmof_Element := Last_Cmof_Element + 1;
         Put
          ("   "
             & Constant_Name_In_Metamodel
                (Enumeration_Sets.Element (Position)));
         Set_Col (29);
--         Set_Col (Max_Enumeration_Length + 12);
         Put_Line
           (" : constant CMOF_Enumeration :="
              & Positive'Image (Last_Cmof_Element)
              & ";");
      end Generate_Enumeration;

      -----------------------------
      -- Generate_Primitive_Type --
      -----------------------------

      procedure Generate_Primitive_Type
       (Position : Primitive_Type_Sets.Cursor) is
      begin
         Last_Cmof_Element := Last_Cmof_Element + 1;
         Put
          ("   "
             & Constant_Name_In_Metamodel
                (Primitive_Type_Sets.Element (Position)));
         Set_Col (29);
--         Set_Col (Max_Primitive_Type_Length + 12);
         Put_Line
           (" : constant CMOF_Primitive_Type :="
              & Positive'Image (Last_Cmof_Element)
              & ";");
      end Generate_Primitive_Type;

      -----------------------
      -- Generate_Property --
      -----------------------

      procedure Generate_Property (Position : Unbounded_String_Sets.Cursor) is
         Element : constant Unbounded_String
           := Unbounded_String_Sets.Element (Position);

      begin
         Last_Cmof_Element := Last_Cmof_Element + 1;
         Put ("   MP_Cmof_" & To_String (Element));
         Set_Col (47);
         Put_Line
           (" : constant CMOF_Property :="
              & Positive'Image (Last_Cmof_Element)
              & ";");
      end Generate_Property;

   begin
      Classes.Iterate (Analyze_Class'Access);
      Associations.Iterate (Analyze_Association'Access);

      New_Line;
      Put_Line ("package CMOF.Internals.Metamodel is");

      New_Line;
      Put_Line ("   pragma Pure;");

      --  Merged CMOF model has only one package, it is hardcoded here.

      New_Line;
      Put_Line ("   --------------");
      Put_Line ("   -- Packages --");
      Put_Line ("   --------------");
      New_Line;
      Last_Cmof_Element := Last_Cmof_Element + 1;
      Put_Line ("   MM_CMOF : constant CMOF_Package := 1;");

      New_Line;
      Put_Line ("   ---------------------");
      Put_Line ("   -- Primitive types --");
      Put_Line ("   ---------------------");
      New_Line;
      Primitive_Types.Iterate (Generate_Primitive_Type'Access);

      New_Line;
      Put_Line ("   ------------------");
      Put_Line ("   -- Enumerations --");
      Put_Line ("   ------------------");
      New_Line;
      Enumerations.Iterate (Generate_Enumeration'Access);

      New_Line;
      Put_Line ("   -------------");
      Put_Line ("   -- Classes --");
      Put_Line ("   -------------");
      New_Line;
      Classes.Iterate (Generate_Class'Access);

      New_Line;
      Put_Line ("   ------------------");
      Put_Line ("   -- Associations --");
      Put_Line ("   ------------------");
      New_Line;
      Associations.Iterate (Generate_Association'Access);

      New_Line;
      Put_Line ("   ----------------");
      Put_Line ("   -- Properties --");
      Put_Line ("   ----------------");
      New_Line;
      Put_Line ("   --  Collections of CMOF::Element");
      New_Line;
      First_Collection_Of_Element := Last_Cmof_Element + 1;
      Element_Collection_Properties.Iterate (Generate_Property'Access);
      Last_Collection_Of_Element := Last_Cmof_Element;
      New_Line;
      Put_Line ("   --  Single CMOF::Element");
      New_Line;
      First_Non_Collection_Of_Element := Last_Cmof_Element + 1;
      Element_Properties.Iterate (Generate_Property'Access);
      New_Line;
      Put_Line ("   --  Collections of primitive type");
      New_Line;
      Primitive_Type_Collection_Properties.Iterate (Generate_Property'Access);
      New_Line;
      Put_Line ("   --  Primitive type");
      New_Line;
      Primitive_Type_Properties.Iterate (Generate_Property'Access);
      Last_Non_Collection_Of_Element := Last_Cmof_Element;
      New_Line;
      Put_Line ("   --  Owned by associations");
      New_Line;
      Association_Properties.Iterate (Generate_Property'Access);

      New_Line;
      Put_Line ("   subtype Cmof_Collection_Of_Element_Property is");
      Put_Line
        ("     CMOF_Property range"
           & Positive'Image (First_Collection_Of_Element)
           & " .."
           & Positive'Image (Last_Collection_Of_Element)
           & ";");
      New_Line;
      Put_Line ("   subtype Cmof_Non_Collection_Of_Element_Property is");
      Put_Line
        ("     CMOF_Property range"
           & Positive'Image (First_Non_Collection_Of_Element)
           & " .."
           & Positive'Image (Last_Non_Collection_Of_Element)
           & ";");
      New_Line;
      Put_Line ("end CMOF.Internals.Metamodel;");
   end Generate_Metamodel_Specification;

end Generator.Metamodel;
