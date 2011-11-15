------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Ordered_Sets;
with Ada.Strings.Wide_Wide_Fixed;

with Qt_Ada.Generic_Model_Index_Data;
with League.Strings;

with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Internals.Helpers;
with AMF.Elements.Collections;
with AMF.Holders.Reflective_Collections;
with AMF.Holders.Elements;
with AMF.Reflective_Collections;
with CMOF.Internals.Extents;

with CMOF_Tree_Models.MOC;
pragma Unreferenced (CMOF_Tree_Models.MOC);

package body CMOF_Tree_Models is

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

   function "<"
    (Left  : AMF.CMOF.Properties.CMOF_Property_Access;
     Right : AMF.CMOF.Properties.CMOF_Property_Access) return Boolean;

   package CMOF_Property_Sets is
     new Ada.Containers.Ordered_Sets
          (AMF.CMOF.Properties.CMOF_Property_Access,
           "<",
           AMF.CMOF.Properties."=");

   function All_Attributes
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Property_Sets.Set;

   ---------
   -- "<" --
   ---------

   function "<"
    (Left  : AMF.CMOF.Properties.CMOF_Property_Access;
     Right : AMF.CMOF.Properties.CMOF_Property_Access) return Boolean
   is
      use type League.Strings.Universal_String;
      use type AMF.Optional_String;

      LI : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Left));
      RI : constant AMF.Internals.CMOF_Element
        := AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Right));

   begin
      return Left.Get_Name < Right.Get_Name
        or (Left.Get_Name = Right.Get_Name and AMF.Internals."<" (LI, RI));
   end "<";

   --------------------
   -- All_Attributes --
   --------------------

   function All_Attributes
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Property_Sets.Set
   is
      A : AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
        := Class.Get_Owned_Attribute;
      S : AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
        := Class.Get_Super_Class;

   begin
      return Result : CMOF_Property_Sets.Set do
         for J in 1 .. A.Length loop
            Result.Insert (A.Element (J));
         end loop;

         for J in 1 .. S.Length loop
            Result.Union (All_Attributes (S.Element (J)));
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
                  return
                    Qt4.Variants.Create
                     (Qt4.Strings.From_Utf_8 ("Node description"));

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
      X              : Node_Access;
      Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

   begin
      if not Self.Is_Populated then
         Self.Is_Populated := True;
         Attribute_Type := Self.Attribute.Get_Type;

         if Attribute_Type.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            X :=
              new Attribute_Value_Node'
                   (Node_Access (Self),
                    Node_Vectors.Empty_Vector,
                    Self.Extent,
                    True,
                    Qt4.Strings.From_Ucs_4
                     (Self.Extent.Convert_To_String
                       (AMF.CMOF.Data_Types.CMOF_Data_Type_Access
                         (Attribute_Type),
                        Self.Element.Get
                         (Self.Attribute)).To_Wide_Wide_String));
            Self.Children.Append (X);

         else
            if Self.Attribute.Is_Multivalued then
               declare
                  C : constant AMF.Reflective_Collections.Reflective_Collection
                    := AMF.Holders.Reflective_Collections.Element
                        (Self.Element.Get (Self.Attribute));
                  E : AMF.Elements.Element_Access;

               begin
                  for J in 1 .. C.Length loop
                     E := AMF.Holders.Elements.Element (C.Element (J));
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             Self.Extent,
                             False,
                             Qt4.Strings.From_Ucs_4
                              (E.Get_Meta_Class.Get_Name.Value.To_Wide_Wide_String),
                             E);
                     Self.Children.Append (X);
                  end loop;
               end;

            else
               declare
                  use type AMF.Elements.Element_Access;

                  C : constant AMF.Elements.Element_Access
                    := AMF.Holders.Elements.Element
                        (Self.Element.Get (Self.Attribute));

               begin
                  if C = null then
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             Self.Extent,
                             True,
                             Qt4.Strings.From_Utf_8 ("<null>"),
                             null);

                  else
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             Self.Extent,
                             False,
                             Qt4.Strings.From_Ucs_4
                              (C.Get_Meta_Class.Get_Name.Value.
                                 To_Wide_Wide_String),
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
      use AMF;
      use League.Strings;

      procedure Process_Property (Position : CMOF_Property_Sets.Cursor) is
         Property : AMF.CMOF.Properties.CMOF_Property_Access
           := CMOF_Property_Sets.Element (Position);
         X        : Node_Access;
         Notation : League.Strings.Universal_String;
         Modifier : Boolean := False;

         procedure Append_Modifier (Text : Wide_Wide_String) is
         begin
            if Modifier then
               Notation.Append (To_Universal_String (", " & Text));

            else
               Notation.Append (To_Universal_String (" {" & Text));
               Modifier := True;
            end if;
         end Append_Modifier;

         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

      begin
         --  Construct property's notation.

         --  Derived indicator

         if Property.Get_Is_Derived then
            Notation.Append (League.Strings.To_Universal_String ("/ "));
         end if;

         --  Name and type

         Notation.Append (Property.Get_Name.Value);
         Notation.Append (League.Strings.To_Universal_String (" : "));
         Attribute_Type := Property.Get_Type;
         Notation.Append (Attribute_Type.Get_Name.Value);

         --  Multiplicity

         if Property.Lower_Bound /= 1 or Property.Upper_Bound /= 1 then
            if Property.Lower_Bound = Property.Upper_Bound then
               Notation.Append
                (League.Strings.To_Universal_String
                  (" ["
                     & Ada.Strings.Wide_Wide_Fixed.Trim
                        (Integer'Wide_Wide_Image (Property.Lower_Bound),
                         Ada.Strings.Both)
                     & "]"));

            elsif Property.Lower_Bound = 0
              and Property.Upper_Bound = Unlimited
            then
               Notation.Append (League.Strings.To_Universal_String (" [*]"));

            else
               Notation.Append
                (League.Strings.To_Universal_String
                  (" ["
                     & Ada.Strings.Wide_Wide_Fixed.Trim
                        (Integer'Wide_Wide_Image (Property.Lower_Bound),
                         Ada.Strings.Both)
                     & ".."));

               if Property.Upper_Bound = Unlimited then
                  Notation.Append
                   (League.Strings.To_Universal_String ("*]"));

               else
                  Notation.Append
                   (League.Strings.To_Universal_String
                     (Ada.Strings.Wide_Wide_Fixed.Trim
                       (Integer'Wide_Wide_Image (Property.Upper_Bound.Value),
                        Ada.Strings.Both)
                        & "]"));
               end if;
            end if;
         end if;

         --  Read only

         if Property.Get_Is_Read_Only then
            Append_Modifier ("readOnly");
         end if;

         --  Union

         if Property.Get_Is_Derived_Union then
            Append_Modifier ("union");
         end if;

         --  Subsets

         declare
            Subsetted_Property : constant
              AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
                := Property.Get_Subsetted_Property;

         begin
            for J in 1 .. Subsetted_Property.Length loop
               Append_Modifier
                ("subsets "
                   & Subsetted_Property.Element
                      (J).Get_Name.Value.To_Wide_Wide_String);
            end loop;
         end;

         --  Redefines

         declare
            Redefined_Property : constant
              AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
                := Property.Get_Redefined_Property;

         begin
            for J in 1 .. Redefined_Property.Length loop
               Append_Modifier
                ("redefines "
                   & Redefined_Property.Element
                      (J).Get_Name.Value.To_Wide_Wide_String);
            end loop;
         end;

         --  Ordered

         if Property.Get_Is_Ordered then
            Append_Modifier ("ordered");
         end if;

         --  Unique

         if Property.Get_Is_Unique then
            Append_Modifier ("unique");
         end if;

         --  Close modifier if necessary

         if Modifier then
            Notation.Append (To_Universal_String ("}"));
         end if;

         X :=
           new Attribute_Node'
                (Node_Access (Self),
                 Node_Vectors.Empty_Vector,
                 Self.Extent,
                 False,
                 Qt4.Strings.From_Ucs_4 (Notation.To_Wide_Wide_String),
                 Self.Element,
                 Property);

         Self.Children.Append (X);
      end Process_Property;

   begin
      if not Self.Is_Populated then
         Self.Is_Populated := True;
         All_Attributes
          (Self.Element.Get_Meta_Class).Iterate (Process_Property'Access);
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
              Self.Extent,
              False,
              Qt4.Strings.From_Ucs_4
               (Self.Element.Get_Meta_Class.Get_Name.Value.To_Wide_Wide_String),
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

   ----------------
   -- Set_Extent --
   ----------------

   procedure Set_Extent
    (Self : not null access CMOF_Tree_Model'Class;
     Root : AMF.URI_Stores.URI_Store_Access)
   is
      use type CMOF.CMOF_Element;

      E : constant AMF.Elements.Collections.Set_Of_Element
        := Root.Elements;
      X : AMF.Elements.Element_Access;

   begin
      for J in 1 .. E.Length loop
         X := E.Element (J);

         if CMOF.Internals.Extents.Container
             (AMF.Internals.Helpers.To_Element (X))
              = CMOF.Null_CMOF_Element
         then
            Self.Root :=
              new Root_Node'
                   (null,
                    Node_Vectors.Empty_Vector,
                    Root,
                    False,
                    Qt4.Strings.Create,
                    X);
         end if;
      end loop;
   end Set_Extent;

end CMOF_Tree_Models;
