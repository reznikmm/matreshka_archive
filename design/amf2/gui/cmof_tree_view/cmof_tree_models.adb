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
with Ada.Unchecked_Conversion;
with Interfaces;

with Qt_Ada.Generic_Model_Index_Data;
with League.Strings;

with AMF.Element_Holders;
with CMOF.Classes;
with CMOF.Collections;
with CMOF.Extents;
with CMOF.Internals.Proxies;
with CMOF.Multiplicity_Elements;
with CMOF.Named_Elements;
with CMOF.Properties;
with CMOF.Reflection;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;

with CMOF_Tree_Models.Moc;

package body CMOF_Tree_Models is

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

   function "<"
    (Left : CMOF.CMOF_Element; Right : CMOF.CMOF_Element) return Boolean;

   package CMOF_Property_Sets is
     new Ada.Containers.Ordered_Sets (CMOF.CMOF_Element);

   function All_Attributes
    (Class : CMOF.CMOF_Class) return CMOF_Property_Sets.Set;

   ---------
   -- "<" --
   ---------

   function "<"
    (Left : CMOF.CMOF_Element; Right : CMOF.CMOF_Element) return Boolean
   is
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
                    Self.Extent,
                    True,
                    Qt4.Strings.From_Ucs_4
                     (CMOF.Extents.Factory (Self.Extent).Convert_To_String
                       (Get_Type (Self.Attribute),
                        Self.Element.Get
                         (Self.Attribute)).To_Wide_Wide_String));
            Self.Children.Append (X);

         else
            if Is_Multivalued (Self.Attribute) then
               declare
                  C : constant Collection_Of_CMOF_Element
                    := Self.Element.Get (Self.Attribute).Collection_Value;

               begin
                  for J in 1 .. Length (C) loop
                     X :=
                       new Element_Node'
                            (Node_Access (Self),
                             Node_Vectors.Empty_Vector,
                             Self.Extent,
                             False,
                             Qt4.Strings.From_Ucs_4
                              (Get_Name
                                (Get_Meta_Class
                                  (Element (C, J))).To_Wide_Wide_String),
                             Element (C, J));
                     Self.Children.Append (X);
                  end loop;
               end;

            else
               declare
                  use type AMF.Elements.Element_Access;

                  C : constant AMF.Elements.Element_Access
                    := AMF.Element_Holders.Element
                        (Self.Element.Get (Self.Attribute).Holder_Value);

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
      use CMOF.Classes;
      use CMOF.Multiplicity_Elements;
      use CMOF.Properties;
      use League.Strings;

      procedure Process_Property (Position : CMOF_Property_Sets.Cursor) is
         Property : CMOF_Property := CMOF_Property_Sets.Element (Position);
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

      begin
         --  Construct property's notation.

         --  Derived indicator

         if Get_Is_Derived (Property) then
            Notation.Append (League.Strings.To_Universal_String ("/ "));
         end if;

         --  Name and type

         Notation.Append (Get_Name (Property));
         Notation.Append (League.Strings.To_Universal_String (" : "));
         Notation.Append (Get_Name (Get_Type (Property)));

         --  Multiplicity

         if Get_Lower (Property) /= 1 or Get_Upper (Property) /= 1 then
            if Get_Lower (Property) = Get_Upper (Property) then
               Notation.Append
                (League.Strings.To_Universal_String
                  (" ["
                     & Ada.Strings.Wide_Wide_Fixed.Trim
                        (Integer'Wide_Wide_Image (Get_Lower (Property)),
                         Ada.Strings.Both)
                     & "]"));

            elsif Get_Lower (Property) = 0 and Get_Upper (Property) = Unlimited then
               Notation.Append (League.Strings.To_Universal_String (" [*]"));

            else
               Notation.Append
                (League.Strings.To_Universal_String
                  (" ["
                     & Ada.Strings.Wide_Wide_Fixed.Trim
                        (Integer'Wide_Wide_Image (Get_Lower (Property)),
                         Ada.Strings.Both)
                     & ".."));

               if Get_Upper (Property) = Unlimited then
                  Notation.Append
                   (League.Strings.To_Universal_String ("*]"));

               else
                  Notation.Append
                   (League.Strings.To_Universal_String
                     (Ada.Strings.Wide_Wide_Fixed.Trim
                       (Integer'Wide_Wide_Image (Get_Upper (Property).Value),
                        Ada.Strings.Both)
                        & "]"));
               end if;
            end if;
         end if;

         --  Read only

         if Get_Is_Read_Only (Property) then
            Append_Modifier ("readOnly");
         end if;

         --  Union

         if Get_Is_Derived_Union (Property) then
            Append_Modifier ("union");
         end if;

         --  Subsets

         declare
            Subsetted_Property : constant Set_Of_CMOF_Property
              := Get_Subsetted_Property (Property);

         begin
            for J in 1 .. Length (Subsetted_Property) loop
               Append_Modifier
                ("subsets "
                   & Get_Name (Element (Subsetted_Property, J)).To_Wide_Wide_String);
            end loop;
         end;

         --  Redefines

         declare
            Redefined_Property : constant Set_Of_CMOF_Property
              := Get_Redefined_Property (Property);

         begin
            for J in 1 .. Length (Redefined_Property) loop
               Append_Modifier
                ("redefines "
                   & Get_Name (Element (Redefined_Property, J)).To_Wide_Wide_String);
            end loop;
         end;

         --  Ordered

         if Get_Is_Ordered (Property) then
            Append_Modifier ("ordered");
         end if;

         --  Unique

         if Get_Is_Unique (Property) then
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
          (CMOF.XMI_Helper.CMOF_Element_Of
            (Self.Element.Get_Meta_Class)).Iterate (Process_Property'Access);
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
     Root : CMOF.CMOF_Extent)
   is
      use CMOF.Extents;

      procedure Dump (Position : CMOF_Element_Sets.Cursor);

      procedure Dump (Position : CMOF_Element_Sets.Cursor) is
         X : constant CMOF_Element := CMOF_Element_Sets.Element (Position);

      begin
         if Container (X) = Null_CMOF_Element then
            Self.Root :=
              new Root_Node'
                   (null,
                    Node_Vectors.Empty_Vector,
                    Root,
                    False,
                    Qt4.Strings.Create,
                    CMOF.Internals.Proxies.Get_Proxy (X));
         end if;
      end Dump;

   begin
      Elements (Root).Iterate (Dump'Access);
   end Set_Extent;

end CMOF_Tree_Models;
