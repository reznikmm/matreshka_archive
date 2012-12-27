with Ada.Characters.Conversions;
--with Ada.Command_Line;
--with Ada.Containers.Hashed_Maps;
--with Ada.Containers.Ordered_Sets;
--with Ada.Containers.Vectors;
--with Ada.Strings.Wide_Fixed;
--with Ada.Strings.Wide_Unbounded.Wide_Hash;
--with Ada.Unchecked_Conversion;
with Ada.Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with Asis.Ada_Environments;
with Asis.Compilation_Units;
with Asis.Declarations;
with Asis.Elements;
--with Asis.Expressions;
with Asis.Implementation;

with League.Application;
with League.String_Vectors;
with League.Strings;

with Documentation_Generator.Database;
with Documentation_Generator.Wiki;

procedure Documentation_Generator.Driver is

   use Documentation_Generator.Database;

   Extractor_Context   : Asis.Context;
   Specification_Unit  : Asis.Compilation_Unit;
   Implementation_Unit : Asis.Compilation_Unit;
   Module              : Module_Access;

--   type Subprogram_Information is record
--      Declaration : Asis.Element;
--   end record;
--
--   type Subprogram_Information_Access is access all Subprogram_Information;
--
--   package Subprogram_Vectors is
--     new Ada.Containers.Vectors (Positive, Subprogram_Information_Access);
--
--   type Homograph_Information is record
--      Name        : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
--      Subprograms : Subprogram_Vectors.Vector;
--   end record;
--
--   type Homograph_Information_Access is access all Homograph_Information;
--
--   function Is_Less
--    (Left  : Homograph_Information_Access;
--     Right : Homograph_Information_Access) return Boolean;
--
--   package Homograph_Maps is
--     new Ada.Containers.Hashed_Maps
--          (Ada.Strings.Wide_Unbounded.Unbounded_Wide_String,
--           Homograph_Information_Access,
--           Ada.Strings.Wide_Unbounded.Wide_Hash,
--           Ada.Strings.Wide_Unbounded."=");
--
--   package Homograph_Sets is
--     new Ada.Containers.Ordered_Sets
--          (Homograph_Information_Access, Is_Less);
--
--   type Type_Information is record
--      Declaration : Asis.Element;
----      Name        : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
----      Is_Tagged   : Boolean;
--      Name_To_Operation : Homograph_Maps.Map;
--      Operations        : Homograph_Sets.Set;
--      Name_To_Related   : Homograph_Maps.Map;
--      Related           : Homograph_Sets.Set;
--   end record;
--
--   type Type_Information_Access is access all Type_Information;
--
--   function Hash (Item : Asis.Element) return Ada.Containers.Hash_Type;
--
--   package Type_Maps is
--     new Ada.Containers.Hashed_Maps
--          (Asis.Element,
--           Type_Information_Access,
--           Hash,
--           Asis.Elements.Is_Equal);
--
--   function Is_Less
--    (Left  : Type_Information_Access;
--     Right : Type_Information_Access) return Boolean;
--
--   package Type_Sets is
--     new Ada.Containers.Ordered_Sets
--          (Type_Information_Access, Is_Less);

   procedure Process_Specification;

   procedure Generate;

   procedure Dump (Element : Asis.Element);
   --  Output element's information suitable for debug purpose.

   procedure Analyze_Type_Declaration (Declaration : Asis.Element);
   --  Analyzes type declaration.

   procedure Analyze_Subprogram_Declaration (Declaration : Asis.Element);
   --  Analyzes subprogram declaration.

--   function Name_Of (Item : Type_Information) return Wide_String;
--
--   function "+"
--    (Item : Wide_String)
--       return Ada.Strings.Wide_Unbounded.Unbounded_Wide_String
--         renames Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String;
--   function "+"
--    (Item : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String)
--       return Wide_String renames Ada.Strings.Wide_Unbounded.To_Wide_String;
--
--   All_Types       : Type_Sets.Set;
--   Element_To_Type : Type_Maps.Map;

   ------------------------------------
   -- Analyze_Subprogram_Declaration --
   ------------------------------------

   procedure Analyze_Subprogram_Declaration (Declaration : Asis.Element) is
--
--         procedure Analyze_Parameter_Type_View
--          (View : Asis.Element; Type_Declaration : out Asis.Element);
--
--         ---------------------------------
--         -- Analyze_Parameter_Type_View --
--         ---------------------------------
--
--         procedure Analyze_Parameter_Type_View
--          (View : Asis.Element; Type_Declaration : out Asis.Element)
--         is
--            use type Asis.Attribute_Kinds;
--
--            Aux : Asis.Element := View;
--
--         begin
--            case Asis.Elements.Element_Kind (Aux) is
--               when Asis.A_Definition =>
--                  --  XXX Not implemented
--
--                  raise Program_Error;
--
--               when Asis.An_Expression =>
--                  --  For classwide parameters take prefix.
--
--                  if Asis.Elements.Attribute_Kind (Aux)
--                       = Asis.A_Class_Attribute
--                  then
--                     Aux := Asis.Expressions.Prefix (Aux);
--                  end if;
--
--                  Type_Declaration :=
--                    Asis.Expressions.Corresponding_Name_Declaration (Aux);
--
------                        Ada.Wide_Text_IO.Put_Line
------                         (Asis.Elements.Debug_Image (Parameter));
----
------                        case Asis.Elements.Expression_Kind (Parameter) is
------                           when Asis.An_Attribute_Reference =>
------                              case Asis.Elements.Attribute_Kind (Parameter) is
------                                 when Asis.A_Class_Attribute =>
------                                    --  XXX Not implemented
------
------                                    Parameter :=
------                                      Asis.Expressions.Prefix (Parameter);
------                                    null;
------                                    Ada.Wide_Text_IO.Put_Line
------                                     (Asis.Elements.Debug_Image (Parameter));
------
------                                 when others =>
------                                    Ada.Wide_Text_IO.Put_Line
------                                     (Asis.Elements.Debug_Image (Parameter));
------                              end case;
------
------                           when Asis.An_Identifier =>
------                              --  XXX Not implemented
------
------                              null;
------
------                           when others =>
------                              Ada.Wide_Text_IO.Put_Line
------                               (Asis.Elements.Debug_Image (Parameter));
------                        end case;
----
--               when others =>
--                  raise Program_Error;
--            end case;
--         end Analyze_Parameter_Type_View;
--
--         Name             : constant Wide_String
--           := Asis.Declarations.Defining_Name_Image
--               (Asis.Declarations.Names (Subprogram_Declaration) (1));
--         Parameters       : constant Asis.Parameter_Specification_List
--           := Asis.Declarations.Parameter_Profile (Subprogram_Declaration);
--         Type_Declaration : Asis.Element;
--         Class            : Type_Information_Access;
--         Homograph        : Homograph_Information_Access;
--
--      begin
--         --  Analyze first parameter to determine whether this subprogram
--         --  belongs to one of types declared in the package; and potentially
--         --  can be called using prefix notation.
--
--         Analyze_Parameter_Type_View
--          (Asis.Declarations.Object_Declaration_View (Parameters (1)),
--           Type_Declaration);
--
--         if Element_To_Type.Contains (Type_Declaration) then
--            Class := Element_To_Type.Element (Type_Declaration);
--
--            if not Class.Name_To_Operation.Contains (+Name) then
--               Homograph :=
--                 new Homograph_Information'
--                      (Name        => +Name,
--                       Subprograms => Subprogram_Vectors.Empty_Vector);
--               Class.Operations.Insert (Homograph);
--               Class.Name_To_Operation.Insert (+Name, Homograph);
--
--            else
--               Homograph := Class.Name_To_Operation.Element (+Name);
--            end if;
--
--            Homograph.Subprograms.Append
--             (new Subprogram_Information'
--                   (Declaration => Subprogram_Declaration));
--
--            return;
--         end if;
--
--         --  Check whether specified subprogram is a function to implement
--         --  operator and add it to the list of operations when second
--         --  parameter has type declared in the package.
--
--         if Asis.Elements.Declaration_Kind (Subprogram_Declaration)
--              = Asis.A_Function_Declaration
--           and (Name = """=""" or Name = """&""")
--         then
--            Analyze_Parameter_Type_View
--             (Asis.Declarations.Object_Declaration_View (Parameters (2)),
--              Type_Declaration);
--
--            if Element_To_Type.Contains (Type_Declaration) then
--               Class := Element_To_Type.Element (Type_Declaration);
--
--               if not Class.Name_To_Operation.Contains (+Name) then
--                  Homograph :=
--                    new Homograph_Information'
--                         (Name        => +Name,
--                          Subprograms => Subprogram_Vectors.Empty_Vector);
--                  Class.Operations.Insert (Homograph);
--                  Class.Name_To_Operation.Insert (+Name, Homograph);
--
--               else
--                  Homograph := Class.Name_To_Operation.Element (+Name);
--               end if;
--
--               Homograph.Subprograms.Append
--                (new Subprogram_Information'
--                      (Declaration => Subprogram_Declaration));
--
--               return;
--            end if;
--         end if;
--
--         --  Analyze type of return value for the function to list subprogram
--         --  as related.
--
--         if Asis.Elements.Declaration_Kind (Subprogram_Declaration)
--              = Asis.A_Function_Declaration
--         then
--            Analyze_Parameter_Type_View
--             (Asis.Declarations.Result_Profile (Subprogram_Declaration),
--              Type_Declaration);
--
--            if Element_To_Type.Contains (Type_Declaration) then
--               Class := Element_To_Type.Element (Type_Declaration);
--
--               if not Class.Name_To_Related.Contains (+Name) then
--                  Homograph :=
--                    new Homograph_Information'
--                         (Name        => +Name,
--                          Subprograms => Subprogram_Vectors.Empty_Vector);
--                  Class.Related.Insert (Homograph);
--                  Class.Name_To_Related.Insert (+Name, Homograph);
--
--               else
--                  Homograph := Class.Name_To_Related.Element (+Name);
--               end if;
--
--               Homograph.Subprograms.Append
--                (new Subprogram_Information'
--                      (Declaration => Subprogram_Declaration));
--
--               return;
--            end if;
--         end if;
--
--         Ada.Wide_Text_IO.Put_Line (Name);
   begin
      null;
   end Analyze_Subprogram_Declaration;

   ------------------------------
   -- Analyze_Type_Declaration --
   ------------------------------

   procedure Analyze_Type_Declaration (Declaration : Asis.Element) is
      Type_Declaration : constant Type_Access := Lookup (Declaration);

   begin
      null;
   end Analyze_Type_Declaration;

   ----------
   -- Dump --
   ----------

   procedure Dump (Element : Asis.Element) is
   begin
      Ada.Wide_Text_IO.Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Ada.Wide_Text_IO.Put_Line
       ("Element Kind     : "
          & Asis.Element_Kinds'Wide_Image
             (Asis.Elements.Element_Kind (Element)));

      case Asis.Elements.Element_Kind (Element) is
         when Asis.A_Declaration =>
            Ada.Wide_Text_IO.Put_Line
             ("Declaration Kind : "
                & Asis.Declaration_Kinds'Wide_Image
                   (Asis.Elements.Declaration_Kind (Element)));

         when others =>
            null;
      end case;

      Ada.Wide_Text_IO.Put_Line (Asis.Elements.Debug_Image (Element));
   end Dump;

   --------------
   -- Generate --
   --------------

   procedure Generate is
--
--      procedure Put (Position : Type_Sets.Cursor);
--
--      procedure Dump_Subprograms (Position : Type_Sets.Cursor);
--
--      ----------------------
--      -- Dump_Subprograms --
--      ----------------------
--
--      procedure Dump_Subprograms (Position : Type_Sets.Cursor) is
--
--         procedure Dump_Homograph (Position : Homograph_Sets.Cursor);
--
--         --------------------
--         -- Dump_Homograph --
--         --------------------
--
--         procedure Dump_Homograph (Position : Homograph_Sets.Cursor) is
--            Homograph : constant Homograph_Information_Access
--              := Homograph_Sets.Element (Position);
--
--         begin
--            Ada.Wide_Text_IO.Put_Line ("  " & (+Homograph.Name));
----            Ada.Strings.Wide_Unbounded.Wide_Text_IO.Put_Line (Homograph.Name
--         end Dump_Homograph;
--
--         Info    : constant Type_Information_Access
--           := Type_Sets.Element (Position);
--         Section : constant Wide_String
--           := "Subprograms of " & Name_Of (Info.all);
--
--      begin
--         Ada.Wide_Text_IO.Put_Line (Section);
--         Ada.Wide_Text_IO.Put_Line
--          (Ada.Strings.Wide_Fixed."*" (Section'Length, '-'));
--
--         if not Info.Operations.Is_Empty then
--            Ada.Wide_Text_IO.New_Line;
--            Ada.Wide_Text_IO.Put_Line ("============");
--            Ada.Wide_Text_IO.Put_Line (" Operations");
--            Ada.Wide_Text_IO.Put_Line ("============");
--            Info.Operations.Iterate (Dump_Homograph'Access);
--         end if;
--
--         if not Info.Related.Is_Empty then
--            Ada.Wide_Text_IO.New_Line;
--            Ada.Wide_Text_IO.Put_Line ("====================");
--            Ada.Wide_Text_IO.Put_Line (" Related Operations");
--            Ada.Wide_Text_IO.Put_Line ("====================");
--            Info.Related.Iterate (Dump_Homograph'Access);
--         end if;
--      end Dump_Subprograms;
--
--      ---------
--      -- Put --
--      ---------
--
--      procedure Put (Position : Type_Sets.Cursor) is
--         Info : Type_Information_Access := Type_Sets.Element (Position);
--
--      begin
--         Ada.Wide_Text_IO.Put_Line ("  " & Name_Of (Info.all));
--      end Put;

      procedure Output_Type (The_Type : not null Type_Access) is
      begin
         Ada.Wide_Wide_Text_IO.Put_Line (The_Type.Name.To_Wide_Wide_String);
      end Output_Type;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("List of Types");
      Ada.Wide_Wide_Text_IO.Put_Line ("-------------");
      Iterate (Output_Type'Access);

--      All_Types.Iterate (Dump_Subprograms'Access);
      null;
   end Generate;

--   ----------
--   -- Hash --
--   ----------
--
--   function Hash (Item : Asis.Element) return Ada.Containers.Hash_Type is
--      function To_Hash_Type is
--        new Ada.Unchecked_Conversion
--             (Asis.Asis_Integer, Ada.Containers.Hash_Type);
--
--   begin
--      return To_Hash_Type (Asis.Elements.Hash (Item));
--   end Hash;
--
--   -------------
--   -- Is_Less --
--   -------------
--
--   function Is_Less
--    (Left  : Homograph_Information_Access;
--     Right : Homograph_Information_Access) return Boolean
--   is
--      use type Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
--
--   begin
--      return Left.Name < Right.Name;
--   end Is_Less;
--
--   -------------
--   -- Is_Less --
--   -------------
--
--   function Is_Less
--    (Left  : Type_Information_Access;
--     Right : Type_Information_Access) return Boolean
--   is
--      L : constant Wide_String
--        := Asis.Compilation_Units.Unit_Full_Name
--            (Asis.Elements.Enclosing_Compilation_Unit (Left.Declaration))
--             & '.'
--             & Name_Of (Left.all);
--      R : constant Wide_String
--        := Asis.Compilation_Units.Unit_Full_Name
--            (Asis.Elements.Enclosing_Compilation_Unit (Right.Declaration))
--             & '.'
--             & Name_Of (Right.all);
--
--   begin
--      return L < R;
--   end Is_Less;
--
--   -------------
--   -- Name_Of --
--   -------------
--
--   function Name_Of (Item : Type_Information) return Wide_String is
--      Name : constant Asis.Defining_Name
--        := Asis.Declarations.Names (Item.Declaration) (1);
--
--   begin
--      return Asis.Declarations.Defining_Name_Image (Name);
--   end Name_Of;

   ---------------------------
   -- Process_Specification --
   ---------------------------

   procedure Process_Specification is

--      use type Asis.Declaration_Kinds;
--
--      procedure Process_Type (Type_Declaration : Asis.Element);
--      --  Process type declaration.
--
--      procedure Process_Subprogram (Subprogram_Declaration : Asis.Element);
--      --  Process declaration of the subprogram and add it to corresponding
--      --  set of subprograms.
--
--      ------------------------
--      -- Process_Subprogram --
--      ------------------------
--
--      procedure Process_Subprogram (Subprogram_Declaration : Asis.Element) is
--
--         procedure Analyze_Parameter_Type_View
--          (View : Asis.Element; Type_Declaration : out Asis.Element);
--
--         ---------------------------------
--         -- Analyze_Parameter_Type_View --
--         ---------------------------------
--
--         procedure Analyze_Parameter_Type_View
--          (View : Asis.Element; Type_Declaration : out Asis.Element)
--         is
--            use type Asis.Attribute_Kinds;
--
--            Aux : Asis.Element := View;
--
--         begin
--            case Asis.Elements.Element_Kind (Aux) is
--               when Asis.A_Definition =>
--                  --  XXX Not implemented
--
--                  raise Program_Error;
--
--               when Asis.An_Expression =>
--                  --  For classwide parameters take prefix.
--
--                  if Asis.Elements.Attribute_Kind (Aux)
--                       = Asis.A_Class_Attribute
--                  then
--                     Aux := Asis.Expressions.Prefix (Aux);
--                  end if;
--
--                  Type_Declaration :=
--                    Asis.Expressions.Corresponding_Name_Declaration (Aux);
--
------                        Ada.Wide_Text_IO.Put_Line
------                         (Asis.Elements.Debug_Image (Parameter));
----
------                        case Asis.Elements.Expression_Kind (Parameter) is
------                           when Asis.An_Attribute_Reference =>
------                              case Asis.Elements.Attribute_Kind (Parameter) is
------                                 when Asis.A_Class_Attribute =>
------                                    --  XXX Not implemented
------
------                                    Parameter :=
------                                      Asis.Expressions.Prefix (Parameter);
------                                    null;
------                                    Ada.Wide_Text_IO.Put_Line
------                                     (Asis.Elements.Debug_Image (Parameter));
------
------                                 when others =>
------                                    Ada.Wide_Text_IO.Put_Line
------                                     (Asis.Elements.Debug_Image (Parameter));
------                              end case;
------
------                           when Asis.An_Identifier =>
------                              --  XXX Not implemented
------
------                              null;
------
------                           when others =>
------                              Ada.Wide_Text_IO.Put_Line
------                               (Asis.Elements.Debug_Image (Parameter));
------                        end case;
----
--               when others =>
--                  raise Program_Error;
--            end case;
--         end Analyze_Parameter_Type_View;
--
--         Name             : constant Wide_String
--           := Asis.Declarations.Defining_Name_Image
--               (Asis.Declarations.Names (Subprogram_Declaration) (1));
--         Parameters       : constant Asis.Parameter_Specification_List
--           := Asis.Declarations.Parameter_Profile (Subprogram_Declaration);
--         Type_Declaration : Asis.Element;
--         Class            : Type_Information_Access;
--         Homograph        : Homograph_Information_Access;
--
--      begin
--         --  Analyze first parameter to determine whether this subprogram
--         --  belongs to one of types declared in the package; and potentially
--         --  can be called using prefix notation.
--
--         Analyze_Parameter_Type_View
--          (Asis.Declarations.Object_Declaration_View (Parameters (1)),
--           Type_Declaration);
--
--         if Element_To_Type.Contains (Type_Declaration) then
--            Class := Element_To_Type.Element (Type_Declaration);
--
--            if not Class.Name_To_Operation.Contains (+Name) then
--               Homograph :=
--                 new Homograph_Information'
--                      (Name        => +Name,
--                       Subprograms => Subprogram_Vectors.Empty_Vector);
--               Class.Operations.Insert (Homograph);
--               Class.Name_To_Operation.Insert (+Name, Homograph);
--
--            else
--               Homograph := Class.Name_To_Operation.Element (+Name);
--            end if;
--
--            Homograph.Subprograms.Append
--             (new Subprogram_Information'
--                   (Declaration => Subprogram_Declaration));
--
--            return;
--         end if;
--
--         --  Check whether specified subprogram is a function to implement
--         --  operator and add it to the list of operations when second
--         --  parameter has type declared in the package.
--
--         if Asis.Elements.Declaration_Kind (Subprogram_Declaration)
--              = Asis.A_Function_Declaration
--           and (Name = """=""" or Name = """&""")
--         then
--            Analyze_Parameter_Type_View
--             (Asis.Declarations.Object_Declaration_View (Parameters (2)),
--              Type_Declaration);
--
--            if Element_To_Type.Contains (Type_Declaration) then
--               Class := Element_To_Type.Element (Type_Declaration);
--
--               if not Class.Name_To_Operation.Contains (+Name) then
--                  Homograph :=
--                    new Homograph_Information'
--                         (Name        => +Name,
--                          Subprograms => Subprogram_Vectors.Empty_Vector);
--                  Class.Operations.Insert (Homograph);
--                  Class.Name_To_Operation.Insert (+Name, Homograph);
--
--               else
--                  Homograph := Class.Name_To_Operation.Element (+Name);
--               end if;
--
--               Homograph.Subprograms.Append
--                (new Subprogram_Information'
--                      (Declaration => Subprogram_Declaration));
--
--               return;
--            end if;
--         end if;
--
--         --  Analyze type of return value for the function to list subprogram
--         --  as related.
--
--         if Asis.Elements.Declaration_Kind (Subprogram_Declaration)
--              = Asis.A_Function_Declaration
--         then
--            Analyze_Parameter_Type_View
--             (Asis.Declarations.Result_Profile (Subprogram_Declaration),
--              Type_Declaration);
--
--            if Element_To_Type.Contains (Type_Declaration) then
--               Class := Element_To_Type.Element (Type_Declaration);
--
--               if not Class.Name_To_Related.Contains (+Name) then
--                  Homograph :=
--                    new Homograph_Information'
--                         (Name        => +Name,
--                          Subprograms => Subprogram_Vectors.Empty_Vector);
--                  Class.Related.Insert (Homograph);
--                  Class.Name_To_Related.Insert (+Name, Homograph);
--
--               else
--                  Homograph := Class.Name_To_Related.Element (+Name);
--               end if;
--
--               Homograph.Subprograms.Append
--                (new Subprogram_Information'
--                      (Declaration => Subprogram_Declaration));
--
--               return;
--            end if;
--         end if;
--
--         Ada.Wide_Text_IO.Put_Line (Name);
--      end Process_Subprogram;
--
--      ------------------
--      -- Process_Type --
--      ------------------
--
--      procedure Process_Type (Type_Declaration : Asis.Element) is
--         Info : Type_Information_Access;
--
--      begin
--         Info :=
--           new Type_Information'
--                (Type_Declaration,
----                 Asis.Elements.Declaration_Kind (Type_Declaration)
----                   = Asis.A_Private_Type_Declaration
----                   and then Asis.Elements.Definition_Kind
----                             (Asis.Declarations.Type_Declaration_View
----                               (Type_Declaration))
----                     = Asis.A_Tagged_Private_Type_Definition,
--                 Homograph_Maps.Empty_Map,
--                 Homograph_Sets.Empty_Set,
--                 Homograph_Maps.Empty_Map,
--                 Homograph_Sets.Empty_Set);
--         All_Types.Insert (Info);
--         Element_To_Type.Insert (Type_Declaration, Info);
--      end Process_Type;

      Decls : constant Asis.Declarative_Item_List
        := Asis.Declarations.Visible_Part_Declarative_Items
            (Asis.Elements.Unit_Declaration (Specification_Unit));
      Unit  : constant Compilation_Unit_Access
        := Create (Specification_Unit, Module);

   begin
      for J in Decls'Range loop
         declare
            use type Asis.Element_Kinds;

            Element : constant Asis.Element := Decls (J);

         begin
            if Asis.Elements.Element_Kind (Element) /= Asis.A_Declaration then
               raise Program_Error;
            end if;

            case Asis.Elements.Declaration_Kind (Element) is
               when Asis.An_Ordinary_Type_Declaration =>
                  Analyze_Type_Declaration (Element);

               when Asis.A_Private_Type_Declaration =>
                  Analyze_Type_Declaration (Element);

               when Asis.A_Deferred_Constant_Declaration =>
                  null;

               when Asis.A_Procedure_Declaration =>
                  Analyze_Subprogram_Declaration (Element);

               when Asis.A_Function_Declaration =>
                  Analyze_Subprogram_Declaration (Element);

               when others =>
                  Dump (Element);

                  raise Program_Error;
            end case;
         end;
      end loop;
   end Process_Specification;

   Arguments : constant League.String_Vectors.Universal_String_Vector
     := League.Application.Arguments;
   Files     : League.Strings.Universal_String;
   Units     : League.String_Vectors.Universal_String_Vector;
   Index     : Positive := 1;

begin
   --  Process command line arguments.

   while Index < Arguments.Length loop
      Files.Append (' ');
      Files.Append (Arguments.Element (Index));
      Units.Append (Arguments.Element (Index + 1));
      Index := Index + 2;
   end loop;

   Asis.Implementation.Initialize ("-asis12");
   Asis.Ada_Environments.Associate
    (Extractor_Context,
     "Documentation_Extractor_Context",
     "-CN " & Files.To_UTF_16_Wide_String);
   Asis.Ada_Environments.Open (Extractor_Context);

   Module :=
     Create
      (League.Strings.To_Universal_String ("League"),
       League.Strings.To_Universal_String ("Core components"));

   for J in 1 .. Units.Length loop
      Specification_Unit :=
        Asis.Compilation_Units.Library_Unit_Declaration
         (Units.Element (J).To_UTF_16_Wide_String,
          Extractor_Context);
--      Implementation_Unit :=
--        Asis.Compilation_Units.Compilation_Unit_Body
--         (Units.Element (J).To_UTF_16_Wide_String,
--          Extractor_Context);

      Process_Specification;
   end loop;

   Generate;
   Wiki.Generate;

   Asis.Ada_Environments.Close (Extractor_Context);
   Asis.Ada_Environments.Dissociate (Extractor_Context);
   Asis.Implementation.Finalize;
end Documentation_Generator.Driver;
