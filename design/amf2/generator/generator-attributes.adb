with Ada.Strings.Fixed;
with Ada.Text_IO;

with Generator.Utilities;

package body Generator.Attributes is

   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   use Generator.Utilities;

   package Property_Vectors is
     new Ada.Containers.Vectors (Positive, Property_Access);

   type Attribute_Record is record
      Generate_Setter : Boolean := False;
      Properties      : Property_Vectors.Vector;
   end record;

   type Attribute_Access is access all Attribute_Record;

   function "<"
     (Left  : Attribute_Access;
      Right : Attribute_Access) return Boolean;

   package Attribute_Sets is
     new Ada.Containers.Ordered_Sets (Attribute_Access);
   package Attribute_Maps is
     new Ada.Containers.Hashed_Maps
           (Unbounded_String, Attribute_Access, Hash, "=");

   All_Attributes     : Attribute_Sets.Set;
   All_Attributes_Map : Attribute_Maps.Map;

   procedure Analyze_Class (Position : Class_Sets.Cursor);
   --  Copy class's properties to set All_Properties.

   procedure Generate_Getter_Specification
     (Property : not null Property_Access);
   --  Generates specification of getter subprogram.

   procedure Generate_Setter_Specification
     (Property : not null Property_Access);
   --  Generates specification of setter subprogram.

   procedure Generate_Collection_Of_Element_Resolve_Data;
   --  Generates data to resolve collection of element.

   procedure Generate_Member_Resolve_Data;
   --  Generates data to resolve others members.

   ---------
   -- "<" --
   ---------

   function "<"
     (Left  : Attribute_Access;
      Right : Attribute_Access) return Boolean
   is
   begin
      return
        Left.Properties.First_Element.Name
          < Right.Properties.First_Element.Name;
   end "<";

   -------------------
   -- Analyze_Class --
   -------------------

   procedure Analyze_Class (Position : Class_Sets.Cursor) is

      procedure Analyze_Property (Position : Property_Sets.Cursor);

      ----------------------
      -- Analyze_Property --
      ----------------------

      procedure Analyze_Property (Position : Property_Sets.Cursor) is
         Element            : constant Property_Access :=
           Property_Sets.Element (Position);
         Attribute_Position : constant Attribute_Maps.Cursor :=
           All_Attributes_Map.Find (Element.Name);
         Attribute          : Attribute_Access;

      begin
         if Attribute_Maps.Has_Element (Attribute_Position) then
            Attribute := Attribute_Maps.Element (Attribute_Position);

         else
            Attribute := new Attribute_Record;
         end if;

         Attribute.Properties.Append (Element);

         if not Element.Is_Read_Only
           and then not Element.Is_Derived
           and then not Element.Is_Derived_Union
           and then Element.Upper = 1
         then
            Attribute.Generate_Setter := True;
         end if;

         if not Attribute_Maps.Has_Element (Attribute_Position) then
            All_Attributes.Insert (Attribute);
            All_Attributes_Map.Insert (Element.Name, Attribute);

         else
            --  Property is presented in the set of attributes.

--            Put_Line (Standard_Error, To_String (Element.Id));

            declare
               use Property_Vectors;

               Position : Property_Vectors.Cursor
                 := Attribute.Properties.Last;
               Current  : Property_Access;

            begin
               Previous (Position);

               while Has_Element (Position) loop
                  Current := Property_Vectors.Element (Position);
--                  Put_Line (Standard_Error, "  " & To_String (Property_Vectors.Element (Position).Id));

                  --  Compatibility checks

                  if Is_Multivalued (Current) xor Is_Multivalued (Element) then
                     Put_Line (Standard_Error, To_String (Element.Id));
                     Put_Line
                      (Standard_Error,
                       "  multiplicity is incompatible with "
                         & To_String (Current.Id));
                  end if;

                  if Current.Type_Id /= Element.Type_Id then
                     Put_Line (Standard_Error, To_String (Element.Id));
                     Put_Line
                      (Standard_Error,
                       "  type is different with "
                         & To_String (Current.Id));
                  end if;

                  Previous (Position);
               end loop;
            end;
         end if;
      end Analyze_Property;

      Element : constant Class_Access := Class_Sets.Element (Position);

   begin
      Element.Properties.Iterate (Analyze_Property'Access);

--      if not Element.Is_Abstract then
--         Put_Line
--           (Standard_Error,
--            To_String (Element.Name)
--              & " has"
--              & Integer'Image (Integer (Element.All_Properties.Length))
--              & " attributes,"
--              & Integer'Image (Element.Collection_Slots)
--              & " collection of Element slots");
--
--         declare
--            P : Property_Full_Sets.Cursor := Element.All_Properties.First;
--
--         begin
--            while Property_Full_Sets.Has_Element (P) loop
--               Put_Line
--                 (Standard_Error,
--                  "  "
--                    & Integer'Image
--                        (Element.Expansion.Element
--                           (Property_Full_Sets.Element (P)).Index)
--                    & " "
--                    & To_String (Property_Full_Sets.Element (P).Id));
--
--               Property_Full_Sets.Next (P);
--            end loop;
--         end;
--      end if;
   end Analyze_Class;

   -----------------------------------------------
   -- Generate_Attribute_Mappings_Specification --
   -----------------------------------------------

   procedure Generate_Attribute_Mappings_Specification is
   begin
      Classes.Iterate (Analyze_Class'Access);

      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Types;");
      New_Line;
      Put_Line ("private package CMOF.Internals.Attribute_Mappings is");
      New_Line;
      Put_Line ("   pragma Pure;");

      Generate_Collection_Of_Element_Resolve_Data;
      Generate_Member_Resolve_Data;

      New_Line;
      Put_Line ("end CMOF.Internals.Attribute_Mappings;");
   end Generate_Attribute_Mappings_Specification;

   ----------------------------------------
   -- Generate_Attributes_Implementation --
   ----------------------------------------

   procedure Generate_Attributes_Implementation is

      procedure Generate_Getter (Position : Attribute_Sets.Cursor);
      --  Generates specification for attribute's getter and setter functions.
      --  Generation of setter function can be skipped when necessary.

      ---------------------
      -- Generate_Getter --
      ---------------------

      procedure Generate_Getter (Position : Attribute_Sets.Cursor) is

         procedure Generate_Return_Statement
          (Property : Property_Access;
           Indent   : Ada.Text_IO.Positive_Count);

         procedure Generate_Assignment_Statement
          (Property : Property_Access;
           Indent   : Ada.Text_IO.Positive_Count);

         -----------------------------------
         -- Generate_Assignment_Statement --
         -----------------------------------

         procedure Generate_Assignment_Statement
          (Property : Property_Access;
           Indent   : Ada.Text_IO.Positive_Count) is
         begin
            if Has_Boolean_Type (Property) then
               Set_Col (Indent);
               Put_Line ("Elements.Table (Self).Member");
               Set_Col (Indent);
               Put_Line (" (Member_Offset");
               Set_Col (Indent);
               Put_Line ("   (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                ("    "
                   & Constant_Name_In_Metamodel (Property)
                   & ")"
                   & ").Boolean_Value := To;");

            elsif Has_Integer_Type (Property) then
               Set_Col (Indent);
               Put_Line ("Elements.Table (Self).Member");
               Set_Col (Indent);
               Put_Line (" (Member_Offset");
               Set_Col (Indent);
               Put_Line ("   (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                ("    "
                   & Constant_Name_In_Metamodel (Property)
                   & ")"
                   & ").Integer_Value := To;");

            elsif Has_Unlimited_Natural_Type (Property) then
               Set_Col (Indent);
               Put_Line ("Elements.Table (Self).Member");
               Set_Col (Indent);
               Put_Line (" (Member_Offset");
               Set_Col (Indent);
               Put_Line ("   (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                ("    "
                   & Constant_Name_In_Metamodel (Property)
                   & ")"
                   & ").Natural_Value := To;");

            else
               Set_Col (Indent);
               Put_Line ("null;");
            end if;
         end Generate_Assignment_Statement;

         -------------------------------
         -- Generate_Return_Statement --
         -------------------------------

         procedure Generate_Return_Statement
          (Property : Property_Access;
           Indent   : Ada.Text_IO.Positive_Count) is
         begin
            Set_Col (Indent);
            Put_Line ("return");

            if Is_Collection_Of_Element (Property) then
               Set_Col (Indent);
               Put_Line ("  Elements.Table (Self).Member (0).Collection");
               Set_Col (Indent);
               Put_Line ("    + Collection_Of_CMOF_Element");
               Set_Col (Indent);
               Put_Line ("       (Collection_Offset");
               Set_Col (Indent);
               Put_Line ("         (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                 ("          "
                    & Constant_Name_In_Metamodel (Property)
                    & "));");

            elsif Has_Boolean_Type (Property) then
               Set_Col (Indent);
               Put_Line ("  Elements.Table (Self).Member");
               Set_Col (Indent);
               Put_Line ("   (Member_Offset");
               Set_Col (Indent);
               Put_Line ("     (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                ("      "
                   & Constant_Name_In_Metamodel (Property)
                   & ")"
                   & ").Boolean_Value;");

            elsif Has_Integer_Type (Property) then
               Set_Col (Indent);
               Put_Line ("  Elements.Table (Self).Member");
               Set_Col (Indent);
               Put_Line ("   (Member_Offset");
               Set_Col (Indent);
               Put_Line ("     (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                ("      "
                   & Constant_Name_In_Metamodel (Property)
                   & ")"
                   & ").Integer_Value;");

            elsif Has_Unlimited_Natural_Type (Property) then
               Set_Col (Indent);
               Put_Line ("  Elements.Table (Self).Member");
               Set_Col (Indent);
               Put_Line ("   (Member_Offset");
               Set_Col (Indent);
               Put_Line ("     (Elements.Table (Self).Kind,");
               Set_Col (Indent);
               Put_Line
                ("      "
                   & Constant_Name_In_Metamodel (Property)
                   & ")"
                   & ").Natural_Value;");

            else
               Set_Col (Indent);
               Put_Line ("  0;");
            end if;
         end Generate_Return_Statement;

         Element        : constant Attribute_Access :=
           Attribute_Sets.Element (Position);
         First_Property : constant Property_Access :=
           Element.Properties.First_Element;
         Getter_Name    : constant String :=
           "Internal_Get_" & To_Ada_Identifier (First_Property.Name);
         Setter_Name    : constant String :=
           "Internal_Set_" & To_Ada_Identifier (First_Property.Name);

      begin
         New_Line;
         Put_Line ("   ---" & (Getter_Name'Length * '-') & "---");
         Put_Line ("   -- " & Getter_Name & " --");
         Put_Line ("   ---" & (Getter_Name'Length * '-') & "---");
         Generate_Getter_Specification (First_Property);
         New_Line;
         Put_Line ("   is");
         Put_Line ("   begin");

         if Integer (Element.Properties.Length) = 1 then
            Generate_Return_Statement (First_Property, 7);

         else
            declare
               Position : Property_Vectors.Cursor :=
                 Element.Properties.First;
               Property : Property_Access;
               First    : Boolean := True;

            begin
               --  Order of comparison can be important, most derived type
               --  must be processed first. Nethertheless, in context of
               --  CMOF ordering is not important.
               --
               --  When operation redefines another co-named operation,
               --  they share the same collection/member and code for only
               --  one most general class need to be present here, other
               --  redefinitions can be suppressed.

               while Property_Vectors.Has_Element (Position) loop
                  if First then
                     Put ("      if ");
                     First := False;

                  else
                     New_Line;
                     Put ("      elsif ");
                  end if;

                  Property := Property_Vectors.Element (Position);
                  Put_Line
                    ("Is_"
                       & To_Ada_Identifier (Property.Owned_Class.Name)
                       & " (Self) then");
                  Generate_Return_Statement (Property, 10);
                  Property_Vectors.Next (Position);
               end loop;

               Put_Line ("      end if;");
            end;
         end if;

         Put_Line ("   end " & Getter_Name & ";");

         if Element.Generate_Setter then
            New_Line;
            Put_Line ("   ---" & (Setter_Name'Length * '-') & "---");
            Put_Line ("   -- " & Setter_Name & " --");
            Put_Line ("   ---" & (Setter_Name'Length * '-') & "---");
            Generate_Setter_Specification (Element.Properties.First_Element);
            Put_Line (" is");
            Put_Line ("   begin");
            if Integer (Element.Properties.Length) = 1 then
               Generate_Assignment_Statement (First_Property, 7);

            else
               declare
                  Position : Property_Vectors.Cursor :=
                    Element.Properties.First;
                  Property : Property_Access;
                  First    : Boolean := True;

               begin
                  --  Order of comparison can be important, most derived type
                  --  must be processed first. Nethertheless, in context of
                  --  CMOF ordering is not important.
                  --
                  --  When operation redefines another co-named operation,
                  --  they share the same collection/member and code for only
                  --  one most general class need to be present here, other
                  --  redefinitions can be suppressed.

                  while Property_Vectors.Has_Element (Position) loop
                     if First then
                        Put ("      if ");
                        First := False;

                     else
                        New_Line;
                        Put ("      elsif ");
                     end if;

                     Property := Property_Vectors.Element (Position);
                     Put_Line
                       ("Is_"
                          & To_Ada_Identifier (Property.Owned_Class.Name)
                          & " (Self) then");
                     Generate_Assignment_Statement (First_Property, 10);
                     Property_Vectors.Next (Position);
                  end loop;

                  Put_Line ("      end if;");
               end;
            end if;

            Put_Line ("   end " & Setter_Name & ";");
         end if;
      end Generate_Getter;

   begin
      Put_Line ("with Cmof.Internals.Attribute_Mappings;");
      Put_Line ("with Cmof.Internals.Metamodel;");
      Put_Line ("with Cmof.Internals.Subclassing;");
      Put_Line ("with Cmof.Internals.Tables;");
      New_Line;
      Put_Line ("package body Cmof.Internals.Attributes is");
      New_Line;
      Put_Line ("   use Cmof.Internals.Attribute_Mappings;");
      Put_Line ("   use Cmof.Internals.Metamodel;");
      Put_Line ("   use Cmof.Internals.Subclassing;");
      Put_Line ("   use Cmof.Internals.Tables;");

      All_Attributes.Iterate (Generate_Getter'Access);

      New_Line;
      Put_Line ("end Cmof.Internals.Attributes;");
   end Generate_Attributes_Implementation;

   ---------------------------------------
   -- Generate_Attributes_Specification --
   ---------------------------------------

   procedure Generate_Attributes_Specification is

      procedure Generate_Attribute_Specification
        (Position : Attribute_Sets.Cursor);
      --  Generates specification for attribute's getter and setter functions.
      --  Generation of setter function can be skipped when necessary.

      --------------------------------------
      -- Generate_Attribute_Specification --
      --------------------------------------

      procedure Generate_Attribute_Specification
        (Position : Attribute_Sets.Cursor)
      is
         Element : constant Attribute_Access :=
           Attribute_Sets.Element (Position);

      begin
         Generate_Getter_Specification (Element.Properties.First_Element);
         Put_Line (";");

         if Element.Generate_Setter then
            Generate_Setter_Specification (Element.Properties.First_Element);
            Put_Line (";");
         end if;
      end Generate_Attribute_Specification;

   begin
      New_Line;
      Put_Line ("package Cmof.Internals.Attributes is");

      All_Attributes.Iterate (Generate_Attribute_Specification'Access);
      New_Line;
      Put_Line ("end Cmof.Internals.Attributes;");
   end Generate_Attributes_Specification;

   -------------------------------------------------
   -- Generate_Collection_Of_Element_Resolve_Data --
   -------------------------------------------------

   procedure Generate_Collection_Of_Element_Resolve_Data is

      procedure Process_Class (Position : Class_Sets.Cursor);

      First_Class : Boolean := True;

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Position : Class_Sets.Cursor) is

         procedure Compute_Length (Position : Property_Full_Sets.Cursor);

         procedure Process_Property (Position : Property_Full_Sets.Cursor);

         Class          : Class_Access := Class_Sets.Element (Position);
         First_Property : Boolean := True;
         Max_Length     : Ada.Text_IO.Count := 0;

         --------------------
         -- Compute_Length --
         --------------------

         procedure Compute_Length (Position : Property_Full_Sets.Cursor) is
            Property : Property_Access :=
              Property_Full_Sets.Element (Position);

         begin
            if Is_Collection_Of_Element (Property) then
               Max_Length :=
                 Ada.Text_IO.Count'Max
                   (Max_Length, Constant_Name_In_Metamodel (Property)'Length);
            end if;
         end Compute_Length;

         ----------------------
         -- Process_Property --
         ----------------------

         procedure Process_Property (Position : Property_Full_Sets.Cursor) is
            Property : Property_Access :=
              Property_Full_Sets.Element (Position);

         begin
            if Is_Collection_Of_Element (Property) then
               if First_Property then
                  First_Property := False;

               else
                  Put_Line (",");
                  Put ("           ");
               end if;

               Put ("Metamodel." & Constant_Name_In_Metamodel (Property));
               Set_Col (23 + Max_Length);
               Put
                 ("=>"
                    & Positive'Image
                        (Class.Expansion.Element (Property).Index));
            end if;
         end Process_Property;

      begin
         if not Class.Is_Abstract then
            Class.All_Properties.Iterate (Compute_Length'Access);

            if First_Class then
               First_Class := False;

            else
               Put_Line (",");
               Put ("        ");
            end if;

            Put_Line ("Types.E_" & To_Ada_Identifier (Class.Name) & " =>");
            Put ("          (");
            Class.All_Properties.Iterate (Process_Property'Access);
            Put_Line (",");
            Put ("           others");
            Set_Col (23 + Max_Length);
            Put ("=> 0)");
         end if;
      end Process_Class;

   begin
      New_Line;
      Put_Line ("   Collection_Offset : constant");
      Put_Line ("     array (CMOF.Internals.Types.Class_Element_Kinds,");
      Put_Line
       ("            "
          & "CMOF.Internals.Metamodel.CMOF_Collection_Of_Element_Property)");
      Put_Line ("       of Interfaces.Integer_8 :=");
      Put ("       (");

      Classes.Iterate (Process_Class'Access);
      Put_Line (");");
   end Generate_Collection_Of_Element_Resolve_Data;

   -----------------------------------
   -- Generate_Getter_Specification --
   -----------------------------------

   procedure Generate_Getter_Specification
     (Property : not null Property_Access) is
   begin
      New_Line;
      Put_Line
       ("   function Internal_Get_" & To_Ada_Identifier (Property.Name));

      if Property.Type_Id = "Core-PrimitiveTypes-String" then
         if Is_Multivalued (Property) then
            Put
              ("     (Self : Cmof_Element)"
                 & " return Collection_Of_Cmof_String");

         else
            Put ("     (Self : Cmof_Element) return Cmof_String");
         end if;

      elsif Has_Boolean_Type (Property) then
         if Is_Multivalued (Property) then
            raise Program_Error;

         else
            Put ("     (Self : Cmof_Element) return Cmof_Boolean");
         end if;

      elsif Has_Integer_Type (Property) then
         if Is_Multivalued (Property) then
            raise Program_Error;

         else
            Put ("     (Self : Cmof_Element) return Cmof_Integer");
         end if;

      elsif Has_Unlimited_Natural_Type (Property) then
         if Is_Multivalued (Property) then
            raise Program_Error;

         else
            Put ("     (Self : Cmof_Element) return Cmof_Unlimited_Natural");
         end if;

      else
         if Is_Multivalued (Property) then
            Put
              ("     (Self : Cmof_Element)"
                 & " return Collection_Of_Cmof_Element");

         else
            Put ("     (Self : Cmof_Element) return Cmof_Element");
         end if;
      end if;
   end Generate_Getter_Specification;

   ----------------------------------
   -- Generate_Member_Resolve_Data --
   ----------------------------------

   procedure Generate_Member_Resolve_Data is

      procedure Process_Class (Position : Class_Sets.Cursor);

      First_Class : Boolean := True;

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Position : Class_Sets.Cursor) is

         procedure Compute_Length (Position : Property_Full_Sets.Cursor);

         procedure Process_Property (Position : Property_Full_Sets.Cursor);

         Class          : Class_Access := Class_Sets.Element (Position);
         First_Property : Boolean := True;
         Max_Length     : Ada.Text_IO.Count := 0;

         --------------------
         -- Compute_Length --
         --------------------

         procedure Compute_Length (Position : Property_Full_Sets.Cursor) is
            Property : Property_Access :=
              Property_Full_Sets.Element (Position);

         begin
            if not Is_Collection_Of_Element (Property) then
               Max_Length :=
                 Ada.Text_IO.Count'Max
                   (Max_Length, Constant_Name_In_Metamodel (Property)'Length);
            end if;
         end Compute_Length;

         ----------------------
         -- Process_Property --
         ----------------------

         procedure Process_Property (Position : Property_Full_Sets.Cursor) is
            Property : Property_Access :=
              Property_Full_Sets.Element (Position);

         begin
            if not Is_Collection_Of_Element (Property) then
               if First_Property then
                  First_Property := False;

               else
                  Put_Line (",");
                  Put ("           ");
               end if;

               Put ("Metamodel." & Constant_Name_In_Metamodel (Property));
               Set_Col (23 + Max_Length);
               Put
                 ("=>"
                    & Positive'Image
                        (Class.Expansion.Element (Property).Index));
            end if;
         end Process_Property;

      begin
         if not Class.Is_Abstract then
            Class.All_Properties.Iterate (Compute_Length'Access);

            if First_Class then
               First_Class := False;

            else
               Put_Line (",");
               Put ("        ");
            end if;

            Put_Line ("Types.E_" & To_Ada_Identifier (Class.Name) & " =>");
            Put ("          (");
            Class.All_Properties.Iterate (Process_Property'Access);
            Put_Line (",");
            Put ("           others");
            Set_Col (23 + Max_Length);
            Put ("=> 0)");
         end if;
      end Process_Class;

   begin
      New_Line;
      Put_Line ("   Member_Offset : constant");
      Put_Line
        ("     array (CMOF.Internals.Types.Class_Element_Kinds,");
      Put_Line
        ("            Metamodel.CMOF_Non_Collection_Of_Element_Property) of Natural :=");
      Put ("       (");

      Classes.Iterate (Process_Class'Access);
      Put_Line (");");
   end Generate_Member_Resolve_Data;

   -----------------------------------
   -- Generate_Setter_Specification --
   -----------------------------------

   procedure Generate_Setter_Specification
     (Property : not null Property_Access) is
   begin
      New_Line;
      Put_Line
       ("   procedure Internal_Set_" & To_Ada_Identifier (Property.Name));
      Put_Line ("     (Self : CMOF_Element;");

      if Property.Type_Id = "Core-PrimitiveTypes-String" then
         Put ("      To   : CMOF_String)");

      elsif Has_Boolean_Type (Property) then
         Put ("      To   : CMOF_Boolean)");

      elsif Has_Integer_Type (Property) then
         Put ("      To   : CMOF_Integer)");

      elsif Has_Unlimited_Natural_Type (Property) then
         Put ("      To   : CMOF_Unlimited_Natural)");

      else
         Put ("      To   : CMOF_Element)");
      end if;
   end Generate_Setter_Specification;

end Generator.Attributes;
