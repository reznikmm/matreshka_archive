with Ada.Containers.Ordered_Sets;
--with Ada.Containers.Hashed_Sets;
with Ada.Wide_Wide_Text_IO;
with Ada.Unchecked_Conversion;
with Interfaces;

with Qt_Ada.Generic_Model_Index_Data;
with League.Strings;

with CMOF.Classes;
with CMOF.Collections;
with CMOF.Factory;
with CMOF.Multiplicity_Elements;
with CMOF.Named_Elements;
with CMOF.Reflection;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;

with CMOF_Tree_Models.Moc;

package body CMOF_Tree_Models is

   use Ada.Wide_Wide_Text_IO;
   use CMOF;
   use CMOF.Collections;
   use CMOF.Named_Elements;
   use CMOF.Reflection;
   use CMOF.Typed_Elements;

   package Model_Index_Data is
     new Qt_Ada.Generic_Model_Index_Data
          (CMOF_Tree_Model, Abstract_Node'Class, Node_Access);

   function Get_Node
    (Self  : not null access constant CMOF_Tree_Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index) return Node_Access;

   function Create_Index
    (Self   : not null access constant CMOF_Tree_Model'Class;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Data   : Node_Access)
       return Qt4.Model_Indices.Q_Model_Index;

--   type CMOF_Element_Array is array (Positive range <>) of CMOF.CMOF_Element;

--   function Hash (Item : CMOF.CMOF_Element) return Ada.Containers.Hash_Type;

   function "<" (Left : CMOF.CMOF_Element; Right : CMOF.CMOF_Element) return Boolean;

   package CMOF_Property_Sets is
     new Ada.Containers.Ordered_Sets (CMOF.CMOF_Element); -- , Hash, CMOF."=", CMOF."=");
--     new Ada.Containers.Hashed_Sets (CMOF.CMOF_Element, Hash, CMOF."=", CMOF."=");

   function All_Attributes (Class : CMOF.CMOF_Class) return CMOF_Property_Sets.Set;
--   function All_Attributes (Class : CMOF.CMOF_Class) return CMOF_Element_Array;

   ---------
   -- "<" --
   ---------

   function "<" (Left : CMOF.CMOF_Element; Right : CMOF.CMOF_Element) return Boolean is
      use type Interfaces.Integer_32;
      use type League.Strings.Universal_String;

      function To_Integer_32 is
        new Ada.Unchecked_Conversion (CMOF.CMOF_Element, Interfaces.Integer_32);

   begin
      return Get_Name (Left) < Get_Name (Right)
        or (Get_Name (Left) = Get_Name (Right)
              and To_Integer_32 (Left) < To_Integer_32 (Right));
   end "<";

   --------------------
   -- All_Attributes --
   --------------------

   function All_Attributes
    (Class : CMOF.CMOF_Class) return CMOF_Property_Sets.Set
   is
      use CMOF;
      use CMOF.Classes;
      use CMOF.Collections;

      A : Ordered_Set_Of_CMOF_Property := Get_Owned_Attribute (Class);
      S : Set_Of_CMOF_Class            := Get_Super_Class (Class);

   begin
      return Result : CMOF_Property_Sets.Set do
         for J in 1 .. Length (A) loop
            Result.Insert (Element (A, J));
         end loop;

         for J in 1 .. Length (S) loop
            Result.Union (All_Attributes (Element (S, J)));
         end loop;
      end return;
   end All_Attributes;

   ------------------
   -- Column_Count --
   ------------------

   overriding function Column_Count
    (Self   : not null access constant CMOF_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Q_Integer is
   begin
      return 1;
   end Column_Count;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ------------
      -- Create --
      ------------

      function Create return not null CMOF_Tree_Model_Access is
      begin
         return Self : constant not null CMOF_Tree_Model_Access
           := new CMOF_Tree_Model
         do
            Qt4.Abstract_Item_Models.Directors.Constructors.Initialize (Self);
         end return;
      end Create;

   end Constructors;

   ------------------
   -- Create_Index --
   ------------------

   function Create_Index
    (Self   : not null access constant CMOF_Tree_Model'Class;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Data   : Node_Access)
       return Qt4.Model_Indices.Q_Model_Index
         renames Model_Index_Data.Create_Index;

   ----------
   -- Data --
   ----------

   overriding function Data
    (Self  : not null access CMOF_Tree_Model;
     Index : Qt4.Model_Indices.Q_Model_Index;
     Role  : Qt4.Item_Data_Role)
       return Qt4.Variants.Q_Variant
   is
      Node : constant Node_Access := Self.Get_Node (Index);

   begin
     case Role is
         when Qt4.Display_Role =>
            case Index.Column is
               when 0 =>
                  return Qt4.Variants.Create (Node.Name);

               when others =>
                  return Qt4.Variants.Create;
            end case;

         when others =>
            return Qt4.Variants.Create;
      end case;
   end Data;

   --------------
   -- Get_Node --
   --------------

   function Get_Node
    (Self  : not null access constant CMOF_Tree_Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index) return Node_Access is
   begin
      if Index.Is_Valid then
         return Model_Index_Data.Get_Data (Self, Index);

      else
         return Self.Root;
      end if;
   end Get_Node;

   ------------------
   -- Has_Children --
   ------------------

   overriding function Has_Children
    (Self   : not null access constant CMOF_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Boolean
   is
      Parent_Node : constant Node_Access := Self.Get_Node (Parent);

   begin
      if Parent_Node.Is_Populated then
         return not Parent_Node.Children.Is_Empty;

      else
         return True;
      end if;
   end Has_Children;

   ----------
   -- Hash --
   ----------

   function Hash (Item : CMOF.CMOF_Element) return Ada.Containers.Hash_Type is
   begin
      return Ada.Containers.Hash_Type (CMOF.Named_Elements.Get_Name (Item).Hash);
   end Hash;

   -----------------
   -- Header_Data --
   -----------------

   overriding function Header_Data
    (Self        : not null access CMOF_Tree_Model;
     Section     : Qt4.Q_Integer;
     Orientation : Qt4.Orientations;
     Role        : Qt4.Item_Data_Role)
       return Qt4.Variants.Q_Variant is
   begin
     case Role is
         when Qt4.Display_Role =>
            case Section is
               when 0 =>
                  return Qt4.Variants.Create (Qt4.Strings.From_Utf_8 ("Node description"));

               when others =>
                  return Qt4.Variants.Create;
            end case;

         when others =>
            return Qt4.Variants.Create;
      end case;
   end Header_Data;

   -----------
   -- Index --
   -----------

   overriding function Index
    (Self   : not null access constant CMOF_Tree_Model;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index
   is
      use type Qt4.Q_Integer;

      Parent_Node : constant Node_Access := Self.Get_Node (Parent);

   begin
      if Parent.Is_Valid and Parent.Column /= 0 then
         return Qt4.Model_Indices.Create;

      else
         return
           Self.Create_Index
            (Row, Column, Parent_Node.Children.Element (Integer (Row)));
      end if;
   end Index;

   ------------
   -- Parent --
   ------------

   overriding function Parent
    (Self  : not null access constant CMOF_Tree_Model;
     Child : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index
   is
      Child_Node : constant Node_Access := Self.Get_Node (Child);

   begin
      if Child_Node = Self.Root
        or Child_Node.Parent = Self.Root
      then
         return Qt4.Model_Indices.Create;

      else
         return
           Self.Create_Index
            (Qt4.Q_Integer
              (Child_Node.Parent.Children.Find_Index (Child_Node)),
             0,
             Child_Node.Parent);
      end if;
   end Parent;

   --------------
   -- Populate --
   --------------

   procedure Populate (Self : not null access Attribute_Node) is
      use CMOF.Multiplicity_Elements;
      use CMOF.XMI_Helper;

      X : Node_Access;

   begin
      if not Self.Is_Populated then
         Self.Is_Populated := True;

         if Is_Data_Type (Get_Type (Self.Attribute)) then
            X :=
              new Attribute_Value_Node'
                   (Node_Access (Self),
                    Node_Vectors.Empty_Vector,
                    True,
                    Qt4.Strings.From_Ucs_4
                     (CMOF.Factory.Convert_To_String
                       (Get_Type (Self.Attribute),
                        Get (Self.Element, Self.Attribute)).To_Wide_Wide_String));
            Self.Children.Append (X);

         else
            if Is_Multivalued (Self.Attribute) then
               declare
                  C : constant Collection_Of_CMOF_Element
                    := Get (Self.Element, Self.Attribute).Collection_Value;

               begin
                  for J in 1 .. Length (C) loop
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             False,
                             Qt4.Strings.From_Ucs_4
                              (Get_Name (Get_Meta_Class (Element (C, J))).To_Wide_Wide_String),
                             Element (C, J));
                     Self.Children.Append (X);
                  end loop;
               end;

            else
               declare
                  C : constant CMOF_Element
                    := Get (Self.Element, Self.Attribute).Element_Value;

               begin
                  if C = Null_CMOF_Element then
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             True,
                             Qt4.Strings.From_Utf_8 ("<null>"),
                             Null_CMOF_Element);

                  else
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             False,
                             Qt4.Strings.From_Ucs_4
                              (Get_Name (Get_Meta_Class (C)).To_Wide_Wide_String),
                             C);
                  end if;

                  Self.Children.Append (X);
               end;
            end if;
         end if;
      end if;
   end Populate;

   --------------
   -- Populate --
   --------------

   procedure Populate (Self : not null access Attribute_Value_Node) is
   begin
      if not Self.Is_Populated then
         Self.Is_Populated := True;
      end if;
   end Populate;

   --------------
   -- Populate --
   --------------

   procedure Populate (Self : not null access Element_Node) is
      use CMOF.Classes;
      use League.Strings;

      procedure Process_Property (Position : CMOF_Property_Sets.Cursor) is
         Property : CMOF_Property := CMOF_Property_Sets.Element (Position);
         X        : Node_Access;

      begin
         X :=
           new Attribute_Node'
                (Node_Access (Self),
                 Node_Vectors.Empty_Vector,
                 False,
                 Qt4.Strings.From_Ucs_4
                  ((Get_Name (Property).To_Wide_Wide_String
                     & ": "
                     & Get_Name (Get_Type (Property)).To_Wide_Wide_String)),
                 Self.Element,
                 Property);

         Self.Children.Append (X);
      end Process_Property;

   begin
      if not Self.Is_Populated then
         Self.Is_Populated := True;
         All_Attributes (Get_Meta_Class (Self.Element)).Iterate (Process_Property'Access);
      end if;
   end Populate;

   --------------
   -- Populate --
   --------------

   procedure Populate (Self : not null access Root_Node) is
      X : Node_Access;

   begin
      X :=
        new Element_Node'
             (Node_Access (Self),
              Node_Vectors.Empty_Vector,
              False,
              Qt4.Strings.From_Ucs_4
               (Get_Name (Get_Meta_Class (Self.Element)).To_Wide_Wide_String),
              Self.Element);
      Self.Children.Append (X);
   end Populate;

   ---------------
   -- Row_Count --
   ---------------

   overriding function Row_Count
    (Self   : not null access constant CMOF_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Q_Integer
   is
      Parent_Node : constant Node_Access := Self.Get_Node (Parent);

   begin
      Parent_Node.Populate;

      return Qt4.Q_Integer (Parent_Node.Children.Length);
   end Row_Count;

   --------------
   -- Set_Root --
   --------------

   procedure Set_Root
    (Self : not null access CMOF_Tree_Model'Class;
     Root : CMOF.CMOF_Element) is
   begin
      Self.Root :=
        new Root_Node'
             (null,
              Node_Vectors.Empty_Vector,
              False,
              Qt4.Strings.Create,
              Root);
   end Set_Root;

end CMOF_Tree_Models;
