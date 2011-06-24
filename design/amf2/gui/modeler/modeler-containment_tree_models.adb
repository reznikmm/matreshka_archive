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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Wide_Wide_Text_IO;
with System.Address_To_Access_Conversions;

with Qt4.Strings;

with AMF.CMOF.Named_Elements;
with AMF.CMOF.Properties.Collections;

with Modeler.Containment_Tree_Models.MOC;
pragma Unreferenced (Modeler.Containment_Tree_Models.MOC);

package body Modeler.Containment_Tree_Models is

   use type Qt4.Q_Integer;

   package Node_Conversions is
     new System.Address_To_Access_Conversions (Node);

   -------------------
   -- Attribute_Set --
   -------------------

   overriding procedure Attribute_Set
    (Self      : not null access Containment_Tree_Model;
     Element   : not null AMF.Elements.Element_Access;
     Property  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Position  : AMF.Optional_Integer;
     Old_Value : League.Holders.Holder;
     New_Value : League.Holders.Holder) is
   begin
      null;
   end Attribute_Set;

   ------------------
   -- Column_Count --
   ------------------

   overriding function Column_Count
    (Self   : not null access constant Containment_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index) return Qt4.Q_Integer is
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

      function Create
       (Parent : access Qt4.Objects.Q_Object'Class := null)
          return not null Containment_Tree_Model_Access is
      begin
         return Self : constant not null Containment_Tree_Model_Access
           := new Containment_Tree_Model
         do
            Qt4.Abstract_Item_Models.Directors.Constructors.Initialize
             (Self, Parent);

            AMF.Listeners.Register (AMF.Listeners.Listener_Access (Self));
         end return;
      end Create;

   end Constructors;

   ----------
   -- Data --
   ----------

   overriding function Data
    (Self  : not null access Containment_Tree_Model;
     Index : Qt4.Model_Indices.Q_Model_Index;
     Role  : Qt4.Item_Data_Role) return Qt4.Variants.Q_Variant
   is
      N    : constant Node_Access
        := Node_Access (Node_Conversions.To_Pointer (Index.Internal_Pointer));
      Name : AMF.Optional_String;

      pragma Assert (N /= null);

   begin
      case Role is
         when Qt4.Display_Role =>
            if N.Element.all
                 in AMF.CMOF.Named_Elements.CMOF_Named_Element'Class
            then
               Name :=
                 AMF.CMOF.Named_Elements.CMOF_Named_Element'Class
                  (N.Element.all).Get_Name;

               if not Name.Is_Empty then
                  return
                    Qt4.Variants.Create
                     (Qt4.Strings.From_Ucs_4 (Name.Value.To_Wide_Wide_String));
               end if;
            end if;

         when others =>
            null;
      end case;

      return Qt4.Variants.Create;
   end Data;

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
      N : Node_Access
        := Node_Access (Node_Conversions.To_Pointer (Parent.Internal_Pointer));

   begin
      --  Fix root node.

      if N = null then
         N := Self.Root;
      end if;

      if Column = 0 then
         if Row <= N.Children.Last_Index then
            return
              Self.Create_Index
               (Row,
                Column,
                Node_Conversions.To_Address
                 (Node_Conversions.Object_Pointer (N.Children.Element (Row))));
         end if;
      end if;

      Ada.Wide_Wide_Text_IO.Put_Line ("index");

      return Qt4.Model_Indices.Create;
   end Index;

   ---------------------
   -- Instance_Create --
   ---------------------

   overriding procedure Instance_Create
    (Self    : not null access Containment_Tree_Model;
     Element : not null AMF.Elements.Element_Access)
   is
      E : constant not null AMF.CMOF.Elements.CMOF_Element_Access
        := AMF.CMOF.Elements.CMOF_Element_Access (Element);
      N : constant not null Node_Access
        := new Node'(Element => E, Parent => Self.Root, Children => <>);
      L : constant Qt4.Q_Integer := Qt4.Q_Integer (Self.Root.Children.Length);

   begin
      --  New elements are added to root level always and are moved later when
      --  containment link is established.

      Self.Begin_Insert_Rows (Qt4.Model_Indices.Create, L, L);
      Self.Map.Insert (E, N);
      Self.Root.Children.Append (N);
      Self.End_Insert_Rows;
   end Instance_Create;

   --------------
   -- Link_Add --
   --------------

   overriding procedure Link_Add
    (Self           : not null access Containment_Tree_Model;
     Association    : not null AMF.CMOF.Associations.CMOF_Association_Access;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
   is
      FE : constant not null AMF.CMOF.Elements.CMOF_Element_Access
        := AMF.CMOF.Elements.CMOF_Element_Access (First_Element);
      SE : constant not null AMF.CMOF.Elements.CMOF_Element_Access
        := AMF.CMOF.Elements.CMOF_Element_Access (Second_Element);
      ME : constant
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := Association.Get_Member_End;
      FN : constant not null Node_Access := Self.Map.Element (FE);
      SN : constant not null Node_Access := Self.Map.Element (SE);
      SP : Qt4.Model_Indices.Q_Model_Index;
      DP : Qt4.Model_Indices.Q_Model_Index;

   begin
      if ME.Element (1).Get_Is_Composite then
         --  Move second element to be child of first element.

         if SN.Parent.Parent /= null then
            Ada.Wide_Wide_Text_IO.Put_Line ("link add 1");
         end if;

         DP :=
           Self.Create_Index
            (FN.Parent.Children.Find_Index (FN),
             0,
             Node_Conversions.To_Address
              (Node_Conversions.Object_Pointer (FN)));

         if Self.Begin_Move_Rows
             (SP,
              SN.Parent.Children.Find_Index (SN),
              SN.Parent.Children.Find_Index (SN),
              DP,
              FN.Children.Last_Index + 1)
         then
            SN.Parent.Children.Delete (SN.Parent.Children.Find_Index (SN));
            FN.Children.Append (SN);
            SN.Parent := FN;

            Self.End_Move_Rows;

         else
            Ada.Wide_Wide_Text_IO.Put_Line ("link add 3");
         end if;

      elsif ME.Element (2).Get_Is_Composite then
         Ada.Wide_Wide_Text_IO.Put_Line ("link add 2");
      end if;
   end Link_Add;

   ------------
   -- Parent --
   ------------

   overriding function Parent
    (Self  : not null access constant Containment_Tree_Model;
     Child : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index
   is
      N : constant Node_Access
        := Node_Access (Node_Conversions.To_Pointer (Child.Internal_Pointer));

   begin
      if N /= null and then N.Parent /= null then
         if N.Parent.Parent /= null then
            return
              Self.Create_Index
               (N.Parent.Parent.Children.Find_Index (N.Parent),
                0,
                Node_Conversions.To_Address
                 (Node_Conversions.Object_Pointer (N.Parent)));
         end if;

      else
         Ada.Wide_Wide_Text_IO.Put_Line ("parent");
      end if;

      return Qt4.Model_Indices.Create;
   end Parent;

   ---------------
   -- Row_Count --
   ---------------

   overriding function Row_Count
    (Self   : not null access constant Containment_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index) return Qt4.Q_Integer
   is
      N : Node_Access
        := Node_Access (Node_Conversions.To_Pointer (Parent.Internal_Pointer));

   begin
      if N = null then
         N := Self.Root;
      end if;

      return Qt4.Q_Integer (N.Children.Length);
   end Row_Count;

end Modeler.Containment_Tree_Models;
