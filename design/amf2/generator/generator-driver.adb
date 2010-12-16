with Ada.Command_Line;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with Ada.Strings.Unbounded;
with Ada.Text_IO;

with Dom.Core.Elements;
with Dom.Core.Nodes;
with Dom.Readers;
with Sax.Readers;
with Input_Sources.File;

with Analyzer;
with Generator.Attributes;
with Generator.Constructors;
with Generator.Metamodel;
with Generator.Subclassing;

procedure Generator.Driver is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Maps;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Analyzer;
   use Generator.Attributes;
   use Generator.Constructors;
   use Generator.Metamodel;
   use Generator.Subclassing;

   Cmof_Namespace : constant String :=
     "http://schema.omg.org/spec/MOF/2.0/cmof.xml";
   Xmi_Namespace  : constant String := "http://schema.omg.org/spec/XMI/2.1";

   procedure Process_Tree (N : Dom.Core.Node);

   procedure Process_Element (N : Dom.Core.Node);

   procedure Process_Children (N : Dom.Core.Node);

   procedure Process_Class (N : Dom.Core.Node);

   procedure Process_Package (N : Dom.Core.Node);

   procedure Process_Property (N : Dom.Core.Node);

   procedure Process_Association (N : Dom.Core.Node);

   procedure Process_Primitive_Type (N : Dom.Core.Node);

   procedure Process_Enumeration (N : Dom.Core.Node);

   function Get_Attribute
     (Node    : Dom.Core.Node;
      Name    : String;
      Default : Boolean) return Boolean;

   function Get_Attribute
     (Node    : Dom.Core.Node;
      Name    : String;
      Default : Natural) return Natural;

   function Get_Attribute
     (Node : Dom.Core.Node;
      Name : String) return Unbounded_String_Sets.Set;

   function Get_Attribute
     (Node : Dom.Core.Node;
      Name : String) return Unbounded_String_Vectors.Vector;

   --  Current context

   Current_Association : Association_Access := null;
   Current_Class       : Class_Access := null;

   -------------------
   -- Get_Attribute --
   -------------------

   function Get_Attribute
     (Node    : Dom.Core.Node;
      Name    : String;
      Default : Boolean) return Boolean
   is
      use Dom.Core.Elements;

      V : constant String := Get_Attribute (Node, Name);

   begin
      if V'Length = 0 then
         return Default;

      else
         return Boolean'Value (V);
      end if;
   end Get_Attribute;

   -------------------
   -- Get_Attribute --
   -------------------

   function Get_Attribute
     (Node    : Dom.Core.Node;
      Name    : String;
      Default : Natural) return Natural
   is
      use Dom.Core.Elements;

      V : constant String := Get_Attribute (Node, Name);

   begin
      if V'Length = 0 then
         return Default;

      else
         if V = "*" then
            return Natural'Last;

         else
            return Natural'Value (V);
         end if;
      end if;
   end Get_Attribute;

   -------------------
   -- Get_Attribute --
   -------------------

   function Get_Attribute
     (Node : Dom.Core.Node;
      Name : String) return Unbounded_String_Sets.Set
   is
      use Dom.Core.Elements;

      Separators : constant Character_Set := To_Set (" ");
      Value      : constant String := Get_Attribute (Node, Name);
      First      : Positive := Value'First;
      Last       : Natural;

   begin
      return Result : Unbounded_String_Sets.Set do
         loop
            Find_Token
              (Value (First .. Value'Last), Separators, Outside, First, Last);

            exit when First > Last;

            Result.Insert (To_Unbounded_String (Value (First .. Last)));
            First := Last + 1;
         end loop;
      end return;
   end Get_Attribute;

   -------------------
   -- Get_Attribute --
   -------------------

   function Get_Attribute
     (Node : Dom.Core.Node;
      Name : String) return Unbounded_String_Vectors.Vector
   is
      use Dom.Core.Elements;

      Separators : constant Character_Set := To_Set (" ");
      Value      : constant String := Get_Attribute (Node, Name);
      First      : Positive := Value'First;
      Last       : Natural;

   begin
      return Result : Unbounded_String_Vectors.Vector do
         loop
            Find_Token
              (Value (First .. Value'Last), Separators, Outside, First, Last);

            exit when First > Last;

            Result.Append (To_Unbounded_String (Value (First .. Last)));
            First := Last + 1;
         end loop;
      end return;
   end Get_Attribute;

   ----------
   -- Hash --
   ----------

--   function Hash (Item : Class_Access) return Ada.Containers.Hash_Type is
--   begin
--      return Ada.Strings.Unbounded.Hash (Item.Name);
--   end Hash;

   ----------
   -- Hash --
   ----------

--   function Hash (Item : Element_Access) return Ada.Containers.Hash_Type is
--   begin
--      return Ada.Strings.Unbounded.Hash (Item.Name);
--   end Hash;

   -------------------------
   -- Process_Association --
   -------------------------

   procedure Process_Association (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Id              : constant String :=
        Get_Attribute_NS (N, Xmi_Namespace, "id");
      Name            : constant String  := Get_Attribute (N, "name");
      Member_End      : Unbounded_String_Vectors.Vector :=
        Get_Attribute (N, "memberEnd");
      New_Association : Association_Access;

   begin
--      Put_Line (Standard_Error, "  Process association: '" & Name & "' [" & Id & ']');

      New_Association :=
        new Association_Record'
              (Id         => To_Unbounded_String (Id),
               Name       => To_Unbounded_String (Name),
               First_End  => Member_End.First_Element,
               Second_End => Member_End.Last_Element,
               Owned_End  => Property_Sets.Empty_Set);
      Elements.Insert (New_Association.Id, Element_Access (New_Association));
      Associations.Insert (New_Association);

      Current_Association := New_Association;
      Process_Children (N);
      Current_Association := null;
   end Process_Association;

   ----------------------
   -- Process_Children --
   ----------------------

   procedure Process_Children (N : Dom.Core.Node) is
      use Dom.Core;
      use Dom.Core.Nodes;

      C : Node := First_Child (N);

   begin
      while C /= null loop
         case Node_Type (C) is
            when Element_Node =>
               Process_Element (C);

            when others =>
               null;
         end case;

         C := Next_Sibling (C);
      end loop;
   end Process_Children;

   -------------------
   -- Process_Class --
   -------------------

   procedure Process_Class (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Id            : constant String
        := Get_Attribute_NS (N, Xmi_Namespace, "id");
      Name          : constant String  := Get_Attribute (N, "name");
      Is_Abstract   : constant Boolean
        := Get_Attribute (N, "isAbstract", False);
      Super_Classes : constant Unbounded_String_Sets.Set
        := Get_Attribute (N, "superClass");
      New_Class     : Class_Access;

   begin
--      Ada.Text_IO.Put_Line ("Process class: '" & Name & "' [" & Id & ']');

      New_Class :=
        new Class_Record'
             (Id               => To_Unbounded_String (Id),
              Name             => To_Unbounded_String (Name),
              Is_Abstract      => Is_Abstract,
              Super_Classes    => Super_Classes,
              Properties       => Property_Sets.Empty_Set,
              All_Properties   => Property_Full_Sets.Empty_Set,
              Expansion        => Property_Expansion_Maps.Empty_Map,
              Collection_Slots => 0);
      Elements.Insert (New_Class.Id, Element_Access (New_Class));
      Classes.Insert (New_Class);

      Current_Class := New_Class;
      Process_Children (N);
      Current_Class := null;
   end Process_Class;

   ---------------------
   -- Process_Element --
   ---------------------

   procedure Process_Element (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Type_Name : constant String :=
        Get_Attribute_NS (N, Xmi_Namespace, "type");

   begin
      if Type_Name = "cmof:Association" then
         Process_Association (N);

      elsif Type_Name = "cmof:Class" then
         Process_Class (N);

      elsif Type_Name = "cmof:Comment" then
         null;

      elsif Type_Name = "cmof:Constraint" then
         null;

      elsif Type_Name = "cmof:Enumeration" then
         Process_Enumeration (N);

      elsif Type_Name = "cmof:Operation" then
         null;

      elsif Type_Name = "cmof:Package" then
         Process_Package (N);

      elsif Type_Name = "cmof:PackageImport" then
         null;

      elsif Type_Name = "cmof:PrimitiveType" then
         Process_Primitive_Type (N);

      elsif Type_Name = "cmof:Property" then
         Process_Property (N);

      else
         raise Program_Error with "Unable to dispatch " & Type_Name;
      end if;
   end Process_Element;

   ----------------------------
   -- Process_Enumeration --
   ----------------------------

   procedure Process_Enumeration (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Id              : constant String
        := Get_Attribute_NS (N, Xmi_Namespace, "id");
      Name            : constant String := Get_Attribute (N, "name");
      New_Enumeration : Enumeration_Access;

   begin 
      New_Enumeration :=
        new Enumeration_Record'
              (Id   => To_Unbounded_String (Id),
               Name => To_Unbounded_String (Name));
      Elements.Insert
        (New_Enumeration.Id, Element_Access (New_Enumeration));
      Enumerations.Insert (New_Enumeration);
   end Process_Enumeration;

   ---------------------
   -- Process_Package --
   ---------------------

   procedure Process_Package (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Name : constant String := Get_Attribute (N, "name");

   begin
      if Name = "Core"
        or else Name = "Constructs"
        or else Name = "PrimitiveTypes"
      then
         Process_Children (N);
      end if;
   end Process_Package;

   ----------------------------
   -- Process_Primitive_Type --
   ----------------------------

   procedure Process_Primitive_Type (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Id                 : constant String
        := Get_Attribute_NS (N, Xmi_Namespace, "id");
      Name               : constant String := Get_Attribute (N, "name");
      New_Primitive_Type : Primitive_Type_Access;

   begin
      New_Primitive_Type :=
        new Primitive_Type_Record'
              (Id   => To_Unbounded_String (Id),
               Name => To_Unbounded_String (Name));
      Elements.Insert
        (New_Primitive_Type.Id, Element_Access (New_Primitive_Type));
      Primitive_Types.Insert (New_Primitive_Type);
   end Process_Primitive_Type;

   ----------------------
   -- Process_Property --
   ----------------------

   procedure Process_Property (N : Dom.Core.Node) is
      use Dom.Core.Elements;

      Id               : constant String :=
        Get_Attribute_NS (N, Xmi_Namespace, "id");
      Name             : constant String := Get_Attribute (N, "name");
      Type_Id          : Unbounded_String :=
        To_Unbounded_String (Get_Attribute (N, "type"));
      Lower            : constant Natural := Get_Attribute (N, "lower", 1);
      Upper_Value      : constant String  := Get_Attribute (N, "upper");
      Upper            : Natural;
      Is_Read_Only     : constant Boolean :=
        Get_Attribute (N, "isReadOnly", False);
      Is_Derived       : constant Boolean :=
        Get_Attribute (N, "isDerived", False);
      Is_Derived_Union : constant Boolean :=
        Get_Attribute (N, "isDerivedUnion", False);
      Redefined_Property : constant String :=
        Get_Attribute (N, "redefinedProperty");

--  subsettedProperty
--  association
      New_Property : Property_Access;

   begin
      if Length (Type_Id) = 0 then
        if Name = "raisedException" then
           Type_Id := To_Unbounded_String ("Core-Constructs-Type");

        elsif Name = "ownedParameter" then
           Type_Id := To_Unbounded_String ("Core-Constructs-Parameter");

        else
           Put_Line
             (Standard_Error,
              "Property '" & Id & "'/'" & Name & "' type not specified");
        end if;
      end if;

      if Upper_Value = "" then
         Upper := 1;

      elsif Upper_Value = "*" then
         Upper := Natural'Last;

      else
         Upper := Natural'Value (Upper_Value);
      end if;

      New_Property :=
        new Property_Record'
              (Id                    => To_Unbounded_String (Id),
               Name                  => To_Unbounded_String (Name),
               Type_Id               => Type_Id,
               Lower                 => Lower,
               Upper                 => Upper,
               Is_Read_Only          => Is_Read_Only,
               Is_Derived            => Is_Derived,
               Is_Derived_Union      => Is_Derived_Union,
               Owned_Class           => Current_Class,
               Owned_Association     => Current_Association,
               Redefined_Property_Id =>
                 To_Unbounded_String (Redefined_Property),
               Redefined_Property    => null);
      Elements.Insert (New_Property.Id, Element_Access (New_Property));

      if Current_Class /= null then
         Current_Class.Properties.Insert (New_Property);

      elsif Current_Association /= null then
         Current_Association.Owned_End.Insert (New_Property);
      end if;
   end Process_Property;

   ------------------
   -- Process_Tree --
   ------------------

   procedure Process_Tree (N : Dom.Core.Node) is
      use Dom.Core;
      use Dom.Core.Elements;
      use Dom.Core.Nodes;

      C : Node := First_Child (First_Child (N));

   begin
      while C /= null loop
         case Node_Type (C) is
            when Element_Node =>
               if Local_Name (C) = "Package" then
                  if Get_Attribute (C, "name") = "InfrastructureLibrary" then
                     Process_Children (C);
                  end if;
               end if;

            when others =>
               null;
         end case;

         C := Next_Sibling (C);
      end loop;
   end Process_Tree;

   ----------------------------
   -- Generate_Element_Kinds --
   ----------------------------

--   procedure Generate_Element_Kinds;
   --  Generates kinds of items in the element table. The set consists from
   --  all non-abstract classes and special value N_None.

--   procedure Generate_Element_Kinds is
--
--      procedure Process_Class (Position : Class_Sets.Cursor);
--
--      function To_Ada (Name : String) return String;
--
--      function To_Ada (Name : String) return String is
--         Aux  : String (1 .. Name'Length * 2);
--         Last : Natural := 0;
--
--      begin
--         for J in Name'Range loop
--            if J = Name'First then
--               Last := Last + 1;
--               Aux (Last) := To_Upper (Name (J));
--
--            else
--               if Is_Upper (Name (J)) then
--                  Last := Last + 1;
--                  Aux (Last) := '_';
--               end if;
--
--               Last := Last + 1;
--               Aux (Last) := Name (J);
--            end if;
--         end loop;
--
--         return Aux (Aux'First .. Last);
--      end To_Ada;
--
--      -------------------
--      -- Process_Class --
--      -------------------
--
--      procedure Process_Class (Position : Class_Sets.Cursor) is
--         Element : Class_Access := Class_Sets.Element (Position);
--
--      begin
--         if not Element.Is_Abstract then
--            Ada.Text_IO.Put_Line (",");
--            Ada.Text_IO.Put ("     E_" & To_Ada (To_String (Element.Name)));
--         end if;
--      end Process_Class;
--
--   begin
--      Ada.Text_IO.New_Line;
--      Ada.Text_IO.Put_Line ("   type Element_Kinds is");
--      Ada.Text_IO.Put ("    (E_None");
--      Classes.Iterate (Process_Class'Access);
--      Ada.Text_IO.Put_Line (");");
--   end Generate_Element_Kinds;

   File   : Input_Sources.File.File_Input;
   Reader : Dom.Readers.Tree_Reader;

begin
   Input_Sources.File.Open (Ada.Command_Line.Argument (1), File);
   Dom.Readers.Set_Feature (Reader, Sax.Readers.Namespace_Feature, True);
   Dom.Readers.Set_Feature
     (Reader, Sax.Readers.Namespace_Prefixes_Feature, True);
   Dom.Readers.Parse (Reader, File);

   Process_Tree (Dom.Readers.Get_Tree (Reader));

   Dom.Readers.Free (Reader);
   Input_Sources.File.Close (File);

   Analyze;

--   Generate_Element_Kinds;
   Generate_Metamodel_Specification;
   Generate_Metamodel_Implementation;
   Generate_Subclassing_Specification;
   Generate_Subclassing_Implementation;
   Generate_Attribute_Mappings_Specification;
   Generate_Attributes_Specification;
   Generate_Attributes_Implementation;
   Generate_Constructors_Specification;
   Generate_Constructors_Implementation;
end Generator.Driver;
