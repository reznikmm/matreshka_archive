------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with System.Address_To_Access_Conversions;

with AMF.URI_Extents;

with Modeler.Containment_Tree_Models.Moc;
pragma Unreferenced (Modeler.Containment_Tree_Models.Moc);

package body Modeler.Containment_Tree_Models is

   package Node_Conversions is
     new System.Address_To_Access_Conversions (Node);

   function To_Node
    (Self  : not null access constant Containment_Tree_Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index) return Node_Access;

   ------------------
   -- Column_Count --
   ------------------

   overriding function Column_Count
    (Self   : not null access constant Containment_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index) return Qt4.Q_Integer
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Parent);

   begin
      --  All rows has exactly one column.

      return 1;
   end Column_Count;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      procedure Initialize
       (Self   : not null access Containment_Tree_Model'Class;
        Parent : access Qt4.Objects.Q_Object'Class);

      ------------
      -- Create --
      ------------

      function Create
       (Parent : access Qt4.Objects.Q_Object'Class := null)
          return not null Containment_Tree_Model_Access is
      begin
         return Self : constant not null Containment_Tree_Model_Access
           := new Containment_Tree_Model
         do
            Initialize (Self, Parent);
         end return;
      end Create;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self   : not null access Containment_Tree_Model'Class;
        Parent : access Qt4.Objects.Q_Object'Class) is
      begin
         Qt4.Abstract_Item_Models.Directors.Constructors.Initialize
          (Self, Parent);

         --  Create root node.

         Self.Root := new Node (N_Root);

         --  Register self as AMF listener.

         AMF.Listeners.Register (AMF.Listeners.Listener_Access (Self));
         --  GNAT Pro 7.1w (20120405): explicit type conversion is needed to
         --  workaround compiler's bug.
      end Initialize;

   end Constructors;

   ----------
   -- Data --
   ----------

   overriding function Data
    (Self  : not null access Containment_Tree_Model;
     Index : Qt4.Model_Indices.Q_Model_Index;
     Role  : Qt4.Item_Data_Role) return Qt4.Variants.Q_Variant
   is
      Node : constant Node_Access := Self.To_Node (Index);

   begin
      case Role is
         when Qt4.Display_Role =>
            case Node.Kind is
               when N_Root =>
                  return Qt4.Variants.Create;

               when N_Extent =>
                  return
                    Qt4.Variants.Create
                     (+AMF.URI_Extents.URI_Extent'Class
                        (Node.Extent.all).Context_URI.To_Wide_Wide_String);

               when N_Element =>
                  return Qt4.Variants.Create;
            end case;

         when others =>
            return Qt4.Variants.Create;
      end case;
   end Data;

   -------------------
   -- Extent_Create --
   -------------------

   overriding procedure Extent_Create
    (Self   : not null access Containment_Tree_Model;
     Extent : not null AMF.Extents.Extent_Access)
   is
      Position : constant Natural := Natural (Self.Root.Children.Length);
      Child    : Node_Access
        := new Node'(N_Extent, Self.Root, Node_Vectors.Empty_Vector, Extent);

   begin
      Self.Begin_Insert_Rows
       (Qt4.Model_Indices.Create,
        Qt4.Q_Integer (Self.Root.Children.Length),
        Qt4.Q_Integer (Self.Root.Children.Length));
      Self.Root.Children.Append (Child);
      Self.Extents.Insert (Extent, Child);
      Self.End_Insert_Rows;
   end Extent_Create;

   -------------------
   -- Extent_Remove --
   -------------------

   overriding procedure Extent_Remove
    (Self   : not null access Containment_Tree_Model;
     Extent : not null AMF.Extents.Extent_Access) is
   begin
      null;
   end Extent_Remove;

   -----------------
   -- Header_Data --
   -----------------

   overriding function Header_Data
    (Self        : not null access Containment_Tree_Model;
     Section     : Qt4.Q_Integer;
     Orientation : Qt4.Orientations;
     Role        : Qt4.Item_Data_Role) return Qt4.Variants.Q_Variant is
   begin
      return Qt4.Variants.Create;
   end Header_Data;

   -----------
   -- Index --
   -----------

   overriding function Index
    (Self   : not null access constant Containment_Tree_Model;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index
   is
      use type Qt4.Q_Integer;

      Parent_Node : constant Node_Access := Self.To_Node (Parent);

   begin
      if Column /= 0
        or else Row >= Qt4.Q_Integer (Parent_Node.Children.Length)
      then
         return Qt4.Model_Indices.Create;

      else
         return
           Self.Create_Index
            (Row,
             Column,
             Node_Conversions.To_Address
              (Node_Conversions.Object_Pointer
                (Parent_Node.Children.Element (Natural (Row)))));
      end if;
   end Index;

   ---------------------
   -- Instance_Create --
   ---------------------

   overriding procedure Instance_Create
    (Self    : not null access Containment_Tree_Model;
     Element : not null AMF.Elements.Element_Access)
   is
      Parent   : constant Node_Access := Self.Extents.Element (Element.Extent);
      Position : constant Natural := Natural (Parent.Children.Length);
      Child    : Node_Access
        := new Node'(N_Element, Parent, Node_Vectors.Empty_Vector, Element);

   begin
      Self.Begin_Insert_Rows
       (Qt4.Model_Indices.Create,
        Qt4.Q_Integer (Parent.Children.Length),
        Qt4.Q_Integer (Parent.Children.Length));
      Parent.Children.Append (Child);
      Self.Elements.Insert (Element, Child);
      Self.End_Insert_Rows;
   end Instance_Create;

   ---------------------
   -- Instance_Remove --
   ---------------------

   overriding procedure Instance_Remove
    (Self    : not null access Containment_Tree_Model;
     Element : not null AMF.Elements.Element_Access) is
   begin
      null;
   end Instance_Remove;

   ------------
   -- Parent --
   ------------

   overriding function Parent
    (Self  : not null access constant Containment_Tree_Model;
     Child : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index
   is
      Child_Node  : constant not null Node_Access := Self.To_Node (Child);
      Parent_Node : Node_Access := Child_Node.Parent;

   begin
      if Parent_Node = null
        or else Parent_Node.Parent = null
      then
         return Qt4.Model_Indices.Create;

      else
         return
           Self.Create_Index
            (0,
             Qt4.Q_Integer
              (Parent_Node.Parent.Children.Find_Index (Parent_Node)),
             Node_Conversions.To_Address
              (Node_Conversions.Object_Pointer (Parent_Node)));
      end if;
   end Parent;

   ---------------
   -- Row_Count --
   ---------------

   overriding function Row_Count
    (Self   : not null access constant Containment_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index) return Qt4.Q_Integer
   is
      Parent_Node : constant not null Node_Access := Self.To_Node (Parent);

   begin
      return Qt4.Q_Integer (Parent_Node.Children.Length);
   end Row_Count;

   -------------
   -- To_Node --
   -------------

   function To_Node
    (Self  : not null access constant Containment_Tree_Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index) return Node_Access is
   begin
      if not Index.Is_Valid then
         return Self.Root;

      else
         return
           Node_Access
            (Node_Conversions.To_Pointer (Index.Internal_Pointer));
      end if;
   end To_Node;

end Modeler.Containment_Tree_Models;
