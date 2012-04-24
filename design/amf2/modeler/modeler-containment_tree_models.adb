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

with AMF.CMOF.Properties.Collections;
with AMF.URI_Extents;

with AMF.UML.Comments;
with AMF.UML.Named_Elements;

with Modeler.Containment_Tree_Models.Moc;
pragma Unreferenced (Modeler.Containment_Tree_Models.Moc);

package body Modeler.Containment_Tree_Models is

   package Node_Conversions is
     new System.Address_To_Access_Conversions (Node);

   function To_Node
    (Self  : not null access constant Containment_Tree_Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index) return Node_Access;

   function To_Index
    (Self : not null access constant Containment_Tree_Model'Class;
     Node : Node_Access) return Qt4.Model_Indices.Q_Model_Index;

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
                  if Node.Element.all
                    in AMF.UML.Named_Elements.UML_Named_Element'Class
                  then
                     declare
                        Name : constant AMF.Optional_String
                          := AMF.UML.Named_Elements.UML_Named_Element'Class
                              (Node.Element.all).Get_Name;

                     begin
                        if Name.Is_Empty then
                           return Qt4.Variants.Create;

                        else
                           return
                             Qt4.Variants.Create
                              (+Name.Value.To_Wide_Wide_String);
                        end if;
                     end;

                  elsif Node.Element.all
                    in AMF.UML.Comments.UML_Comment'Class
                  then
                     return
                       Qt4.Variants.Create
                        (+AMF.UML.Comments.UML_Comment'Class
                           (Node.Element.all).Get_Body.Value.To_Wide_Wide_String);

                  else
                     return Qt4.Variants.Create;
                  end if;
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
         return Self.To_Index (Parent_Node.Children.Element (Natural (Row)));
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

   --------------
   -- Link_Add --
   --------------

   overriding procedure Link_Add
    (Self           : not null access Containment_Tree_Model;
     Association    : not null AMF.CMOF.Associations.CMOF_Association_Access;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
   is
      use type AMF.Elements.Element_Access;

      Member_End   : constant
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := Association.Get_Member_End;
      Owner        : AMF.Elements.Element_Access;
      Owned        : AMF.Elements.Element_Access;
      Owner_Node   : Node_Access;
      Owned_Node   : Node_Access;
      Source_First : Natural;
      Aux          : Boolean;

   begin
      --  Check whether one of the ends is composite. Determine owner and owned
      --  elements.
      --
      --  XXX For profiles, it is needed to check navigability too.

      if Member_End.Element (1).Get_Is_Composite then
         Owner := First_Element;
         Owned := Second_Element;

      elsif Member_End.Element (2).Get_Is_Composite then
         Owner := Second_Element;
         Owned := First_Element;
      end if;

      if Owner /= null and Owned /= null then
         Owner_Node := Self.Elements.Element (Owner);
         Owned_Node := Self.Elements.Element (Owned);

         --  Check whether ownership is changed and move rows when necessary.

         if Owned_Node.Parent /= Owner_Node then
            Source_First := Owned_Node.Parent.Children.Find_Index (Owned_Node);
            Aux :=
              Self.Begin_Move_Rows
               (Self.To_Index (Owned_Node.Parent),
                Qt4.Q_Integer (Source_First),
                Qt4.Q_Integer (Source_First),
                Self.To_Index (Owner_Node),
                Qt4.Q_Integer (Owner_Node.Children.Length));
            Owned_Node.Parent.Children.Delete (Source_First);
            Owned_Node.Parent := Owner_Node;
            Owner_Node.Children.Append (Owned_Node);
            Self.End_Move_Rows;
         end if;
      end if;
   end Link_Add;

   -----------------
   -- Link_Remove --
   -----------------

   overriding procedure Link_Remove
    (Self : not null access Containment_Tree_Model) is
   begin
      null;
   end Link_Remove;

   ------------
   -- Parent --
   ------------

   overriding function Parent
    (Self  : not null access constant Containment_Tree_Model;
     Child : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index is
   begin
      return Self.To_Index (Self.To_Node (Child).Parent);
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
           Node_Access (Node_Conversions.To_Pointer (Index.Internal_Pointer));
      end if;
   end To_Node;

   --------------
   -- To_Index --
   --------------

   function To_Index
    (Self : not null access constant Containment_Tree_Model'Class;
     Node : Node_Access) return Qt4.Model_Indices.Q_Model_Index is
   begin
      if Node = null
        or else Node.Parent = null
      then
         return Qt4.Model_Indices.Create;

      else
         return
           Self.Create_Index
            (Qt4.Q_Integer (Node.Parent.Children.Find_Index (Node)),
             0,
             Node_Conversions.To_Address
              (Node_Conversions.Object_Pointer (Node)));
      end if;
   end To_Index;

end Modeler.Containment_Tree_Models;
