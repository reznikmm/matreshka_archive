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
private with Ada.Containers.Hashed_Maps;
private with Ada.Containers.Vectors;

with Qt4.Abstract_Item_Models;
private with Qt4.Abstract_Item_Models.Directors;
private with Qt4.Model_Indices;
with Qt4.Objects;
private with Qt4.Variants;

private with AMF.CMOF.Associations;
private with AMF.CMOF.Elements.Hash;
private with AMF.CMOF.Properties;
private with AMF.Elements;
with AMF.Listeners;
private with League.Holders;

package Modeler.Containment_Tree_Models is

   type Containment_Tree_Model is
     limited new Qt4.Abstract_Item_Models.Q_Abstract_Item_Model
       and AMF.Listeners.Abstract_Listener with private;

   type Containment_Tree_Model_Access is
     access all Containment_Tree_Model'Class;

   package Constructors is

      function Create
       (Parent : access Qt4.Objects.Q_Object'Class := null)
          return not null Containment_Tree_Model_Access;

   end Constructors;

private

   subtype Q_Natural is Qt4.Q_Integer range 0 .. Qt4.Q_Integer'Last;

   type Node;
   type Node_Access is access all Node;

   package Node_Vectors is
     new Ada.Containers.Vectors (Q_Natural, Node_Access);

   package Node_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.CMOF.Elements.CMOF_Element_Access,
           Node_Access,
           AMF.CMOF.Elements.Hash,
           AMF.CMOF.Elements."=");

   type Node is record
      Element  : AMF.CMOF.Elements.CMOF_Element_Access;
      Parent   : Node_Access;
      Children : Node_Vectors.Vector;
   end record;

   type Containment_Tree_Model is limited
     new Qt4.Abstract_Item_Models.Directors.Q_Abstract_Item_Model_Director
       and AMF.Listeners.Abstract_Listener with
   record
      Root : Node_Access := new Node;
      Map  : Node_Maps.Map;
   end record;

   -------------------------------------
   -- QAbstractItemModel's operations --
   -------------------------------------

   overriding function Column_Count
    (Self   : not null access constant Containment_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index) return Qt4.Q_Integer;

   overriding function Data
    (Self  : not null access Containment_Tree_Model;
     Index : Qt4.Model_Indices.Q_Model_Index;
     Role  : Qt4.Item_Data_Role) return Qt4.Variants.Q_Variant;

   overriding function Index
    (Self   : not null access constant Containment_Tree_Model;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index;

   overriding function Parent
    (Self  : not null access constant Containment_Tree_Model;
     Child : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index;

   overriding function Row_Count
    (Self   : not null access constant Containment_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index) return Qt4.Q_Integer;

   ------------------------------------
   -- Abstract_Listener's operations --
   ------------------------------------

   overriding procedure Attribute_Set
    (Self      : not null access Containment_Tree_Model;
     Element   : not null AMF.Elements.Element_Access;
     Property  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Position  : AMF.Optional_Integer;
     Old_Value : League.Holders.Holder;
     New_Value : League.Holders.Holder);

   overriding procedure Instance_Create
    (Self    : not null access Containment_Tree_Model;
     Element : not null AMF.Elements.Element_Access);

   overriding procedure Link_Add
    (Self           : not null access Containment_Tree_Model;
     Association    : not null AMF.CMOF.Associations.CMOF_Association_Access;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access);

end Modeler.Containment_Tree_Models;
