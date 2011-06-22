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

with Modeler.Containment_Tree_Models.MOC;
pragma Unreferenced (Modeler.Containment_Tree_Models.MOC);

package body Modeler.Containment_Tree_Models is

   package Node_Conversions is
     new System.Address_To_Access_Conversions (Node);

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
      use type Qt4.Q_Integer;

   begin
      if Column = 0 then
         if not Parent.Is_Valid then
            if Row <= Self.Root.Children.Last_Index then
               return
                 Self.Create_Index
                  (Row,
                   Column,
                   Node_Conversions.To_Address
                    (Node_Conversions.Object_Pointer
                      (Self.Root.Children.Element (Row))));
            end if;
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
      N : constant Node_Access
        := new Node'(Element => E, Parent => null, Children => <>);
      L : constant Qt4.Q_Integer := Qt4.Q_Integer (Self.Root.Children.Length);

   begin
      --  New elements are added to root level always and are moved later when
      --  containment link is established.

      Self.Begin_Insert_Rows (Qt4.Model_Indices.Create, L, L);
      Self.Map.Insert (E, N);
      Self.Root.Children.Append (N);
      Self.End_Insert_Rows;
   end Instance_Create;

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
