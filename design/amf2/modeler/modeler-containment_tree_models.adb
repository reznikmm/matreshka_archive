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
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Named_Elements;
with AMF.UML.Operations.Collections;
with AMF.UML.Parameters.Collections;
with AMF.UML.Properties.Collections;
with AMF.UML.Types;

with Modeler.Containment_Tree_Models.Moc;
pragma Unreferenced (Modeler.Containment_Tree_Models.Moc);

package body Modeler.Containment_Tree_Models is

   use type AMF.UML.Types.UML_Type_Access;
   use type League.Strings.Universal_String;

   package Node_Conversions is
     new System.Address_To_Access_Conversions (Node);

   function To_Node
    (Self  : not null access constant Containment_Tree_Model'Class;
     Index : Qt4.Model_Indices.Q_Model_Index) return Node_Access;

   function To_Index
    (Self : not null access constant Containment_Tree_Model'Class;
     Node : Node_Access) return Qt4.Model_Indices.Q_Model_Index;

   function Get_UML_Operation_Image
    (Element : not null AMF.UML.Operations.UML_Operation_Access)
       return League.Strings.Universal_String;

   function Get_UML_Property_Image
    (Element : not null AMF.UML.Properties.UML_Property_Access)
       return League.Strings.Universal_String;

   function Image
    (Item : AMF.UML.Optional_UML_Visibility_Kind)
       return League.Strings.Universal_String;
   --  Returns image of visibility kind
   --   - empty string when no visibility kind specified
   --   - '+' for 'public'
   --   - '-' for 'private'
   --   - '#' for 'protected'
   --   - '~' for 'package'

   function Multiplicity_Image
    (Element : not null access
       AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element'Class)
         return League.Strings.Universal_String;
   --  Returns textual representation of multiplicity of
   --  UML::MultiplicityElement.

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
                       in AMF.UML.Operations.UML_Operation'Class
                  then
                     return
                       Qt4.Variants.Create
                        (+Get_UML_Operation_Image
                           (AMF.UML.Operations.UML_Operation_Access
                             (Node.Element)).To_Wide_Wide_String);

                  elsif Node.Element.all
                       in AMF.UML.Properties.UML_Property'Class
                  then
                     return
                       Qt4.Variants.Create
                        (+Get_UML_Property_Image
                           (AMF.UML.Properties.UML_Property_Access
                             (Node.Element)).To_Wide_Wide_String);

                  elsif Node.Element.all
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

   -----------------------------
   -- Get_UML_Operation_Image --
   -----------------------------

   function Get_UML_Operation_Image
    (Element : not null AMF.UML.Operations.UML_Operation_Access)
       return League.Strings.Universal_String
   is
      use type AMF.UML.UML_Parameter_Direction_Kind;

      Name                 : AMF.Optional_String := Element.Get_Name;
      Default              : AMF.Optional_String;
      Owned_Parameters     : constant
        AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter
          := Element.Get_Owned_Parameter;
      Returns              : constant
        AMF.UML.Parameters.Collections.Set_Of_UML_Parameter
          := Element.Return_Result;
      Redefined_Operations : constant
        AMF.UML.Operations.Collections.Set_Of_UML_Operation
          := Element.Get_Redefined_Operation;
      The_Operation        : AMF.UML.Operations.UML_Operation_Access;
      The_Parameter        : AMF.UML.Parameters.UML_Parameter_Access;
      The_Type             : AMF.UML.Types.UML_Type_Access;
      Result               : League.Strings.Universal_String;
      Modifiers            : League.Strings.Universal_String;
      First                : Boolean;

   begin
      --  visibility

      Result.Append (Image (Element.Get_Visibility));

      --  name

      if not Name.Is_Empty then
         Result.Append (Name.Value);
      end if;

      --  parameter list

      Result.Append ('(');
      First := True;

      for J in 1 .. Owned_Parameters.Length loop
         The_Parameter := Owned_Parameters.Element (J);

         if The_Parameter.Get_Direction /= AMF.UML.Return_Parameter then
            if First then
               First := False;

            else
               Result.Append (", ");
            end if;

            The_Type := The_Parameter.Get_Type;

            --  name

            Name := The_Parameter.Get_Name;

            if not Name.Is_Empty then
               Result.Append (Name.Value);
            end if;

            Result.Append (+" : ");

            --  direction

            case The_Parameter.Get_Direction is
               when AMF.UML.In_Parameter =>
                  Result.Append (" in ");

               when AMF.UML.In_Out_Parameter =>
                  Result.Append (" in out ");

               when AMF.UML.Out_Parameter =>
                  Result.Append (" out ");

               when AMF.UML.Return_Parameter =>
                  raise Program_Error;
            end case;

            --  type

            if The_Type /= null then
               Name := The_Type.Get_Name;

               if not Name.Is_Empty then
                  Result.Append (Name.Value);
               end if;
            end if;

            --  multiplicty

            Result.Append (Multiplicity_Image (The_Parameter));

            --  default

            Default := The_Parameter.Get_Default;
         end if;
      end loop;

      Result.Append (')');

      --  result

      if not Returns.Is_Empty then
         The_Parameter := Returns.Element (1);
         The_Type      := The_Parameter.Get_Type;

         --  type

         Result.Append (" : ");

         if The_Type /= null then
            Name := The_Type.Get_Name;

            if not Name.Is_Empty then
               Result.Append (Name.Value);
            end if;
         end if;

         --  multiplicty

         Result.Append (Multiplicity_Image (The_Parameter));
      end if;

      --  redefines

      for J in 1 .. Redefined_Operations.Length loop
         if not Modifiers.Is_Empty then
            Modifiers.Append (+", ");
         end if;

         The_Operation := Redefined_Operations.Element (J);
--         Name := The_Operation.Get_Name;

         Modifiers.Append (+"redefines ");
         Modifiers.Append (The_Operation.Qualified_Name);

--         if not Name.Is_Empty then
--            Modifiers.Append (Name.Value);
--         end if;
      end loop;

      --  Append operation properties.

      if not Modifiers.Is_Empty then
         Result.Append ('{');
         Result.Append (Modifiers);
         Result.Append ('}');
      end if;

      return Result;
   end Get_UML_Operation_Image;

   ----------------------------
   -- Get_UML_Property_Image --
   ----------------------------

   function Get_UML_Property_Image
    (Element : not null AMF.UML.Properties.UML_Property_Access)
       return League.Strings.Universal_String
   is
      Name         : constant AMF.Optional_String := Element.Get_Name;
      Default      : constant AMF.Optional_String := Element.Get_Default;
      Visibility   : constant AMF.UML.Optional_UML_Visibility_Kind
        := Element.Get_Visibility;
      The_Type     : constant AMF.UML.Types.UML_Type_Access
        := Element.Get_Type;
      Lower        : constant AMF.Optional_Integer := Element.Lower_Bound;
      Upper        : constant AMF.Optional_Unlimited_Natural
        := Element.Upper_Bound;
      Properties   : AMF.UML.Properties.Collections.Set_Of_UML_Property;
      Has_Modifier : Boolean := False;
      Result       : League.Strings.Universal_String;

      procedure Add (Item : League.Strings.Universal_String);

      procedure Add_Modifier (Item : League.Strings.Universal_String);

      ---------
      -- Add --
      ---------

      procedure Add (Item : League.Strings.Universal_String) is
      begin
         if not Result.Is_Empty and not Item.Is_Empty then
            Result.Append (' ');
         end if;

         Result.Append (Item);
      end Add;

      ------------------
      -- Add_Modifier --
      ------------------

      procedure Add_Modifier (Item : League.Strings.Universal_String) is
      begin
         if not Has_Modifier then
            Add (+"{");
            Has_Modifier := True;

         else
            Result.Append (", ");
         end if;

         Result.Append (Item);
      end Add_Modifier;

   begin
      --  visibility

      Result.Append (Image (Visibility));

      --  isDerived

      if Element.Get_Is_Derived then
         Result.Append (+"/");
      end if;

      --  name

      if not Name.Is_Empty then
         Result.Append (Name.Value);
      end if;

      --  type

      if The_Type /= null then
         Add (": " & The_Type.Get_Name.Value);
      end if;

      --  multiplicity

      Add (Multiplicity_Image (Element));

      --  default

      if not Default.Is_Empty then
         Add ("= " & Default.Value);
      end if;

      --  readOnly

      if Element.Get_Is_Read_Only then
         Add_Modifier (+"readOnly");
      end if;

      --  isDerivedUnion

      if Element.Get_Is_Derived_Union then
         Add_Modifier (+"union");
      end if;

      --  subsettedProperty

      Properties := Element.Get_Subsetted_Property;

      for J in 1 .. Properties.Length loop
         Add_Modifier ("subsets " & Properties.Element (J).Get_Name.Value);
      end loop;

      --  redefinedProperty

      Properties := Element.Get_Redefined_Property;

      for J in 1 .. Properties.Length loop
         Add_Modifier ("redefines " & Properties.Element (J).Get_Name.Value);
      end loop;

      --  isOrdered

      if Element.Get_Is_Ordered then
         Add_Modifier (+"ordered");
      end if;

      --  isUnique

      if Element.Get_Is_Unique then
         Add_Modifier (+"unique");
      end if;

      --  isID

      if Element.Get_Is_Id then
         Add_Modifier (+"id");
      end if;

      --  constraints is not implemented

      --  Close modifiers if any.

      if Has_Modifier then
         Result.Append (+"}");
      end if;

      return Result;
   end Get_UML_Property_Image;

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
   -- Image --
   -----------

   function Image
    (Item : AMF.UML.Optional_UML_Visibility_Kind)
       return League.Strings.Universal_String is
   begin
      if Item.Is_Empty then
         return League.Strings.Empty_Universal_String;

      else
         case Item.Value is
            when AMF.UML.Public_Visibility =>
               return +"+";

            when AMF.UML.Private_Visibility =>
               return +"-";

            when AMF.UML.Protected_Visibility =>
               return +"#";

            when AMF.UML.Package_Visibility =>
               return +"~";
         end case;
      end if;
   end Image;

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

   ------------------------
   -- Multiplicity_Image --
   ------------------------

   function Multiplicity_Image
    (Element : not null access
       AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element'Class)
         return League.Strings.Universal_String
   is
      use type AMF.Optional_Integer;
      use type AMF.Optional_Unlimited_Natural;

      function Image
       (Item : AMF.Optional_Integer) return League.Strings.Universal_String;

      function Image
       (Item : AMF.Optional_Unlimited_Natural)
          return League.Strings.Universal_String;

      -----------
      -- Image --
      -----------

      function Image
       (Item : AMF.Optional_Integer) return League.Strings.Universal_String is
      begin
         if Item.Is_Empty then
            return League.Strings.Empty_Universal_String;

         else
            declare
               Image : constant Wide_Wide_String
                 := Integer'Wide_Wide_Image (Item.Value);

            begin
               if Image (Image'First) = ' ' then
                  return +Image (Image'First + 1 .. Image'Last);

               else
                  return +Image;
               end if;
            end;
         end if;
      end Image;

      -----------
      -- Image --
      -----------

      function Image
       (Item : AMF.Optional_Unlimited_Natural)
          return League.Strings.Universal_String is
      begin
         if Item.Is_Empty then
            return League.Strings.Empty_Universal_String;

         elsif Item.Value.Unlimited then
            return +"*";

         else
            declare
               Image : constant Wide_Wide_String
                 := Integer'Wide_Wide_Image (Item.Value.Value);

            begin
               if Image (Image'First) = ' ' then
                  return +Image (Image'First + 1 .. Image'Last);

               else
                  return +Image;
               end if;
            end;
         end if;
      end Image;

      Lower : constant AMF.Optional_Integer           := Element.Lower_Bound;
      Upper : constant AMF.Optional_Unlimited_Natural := Element.Upper_Bound;

   begin
      if not Lower.Is_Empty and not Upper.Is_Empty then
         if Lower = 1 and Upper = 1 then
            return League.Strings.Empty_Universal_String;

         elsif Lower = 0 and Upper = AMF.Unlimited then
            return +"[*]";

         elsif Lower = Upper then
            return +"[" & Image (Lower) & "]";

         else
            return +"[" & Image (Lower) & ".." & Image (Upper) & "]";
         end if;

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Multiplicity_Image;

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
