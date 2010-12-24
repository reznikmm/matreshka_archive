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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
private with Ada.Containers.Vectors;

with Qt4.Abstract_Item_Models;
private with Qt4.Abstract_Item_Models.Directors;
private with Qt4.Model_Indices;
private with Qt4.Strings;
private with Qt4.Variants;

with CMOF;

package CMOF_Tree_Models is

   type CMOF_Tree_Model is
     limited new Qt4.Abstract_Item_Models.Q_Abstract_Item_Model with private;
   type CMOF_Tree_Model_Access is access all CMOF_Tree_Model'Class;

   procedure Set_Extent
    (Self : not null access CMOF_Tree_Model'Class;
     Root : CMOF.CMOF_Extent);

   package Constructors is

      function Create return not null CMOF_Tree_Model_Access;

   end Constructors;

private

   procedure Set_Root
    (Self : not null access CMOF_Tree_Model'Class;
     Root : CMOF.CMOF_Element);

   type Abstract_Node is tagged;
   type Node_Access is access all Abstract_Node'Class;

   package Node_Vectors is
     new Ada.Containers.Vectors (Natural, Node_Access);

   type Abstract_Node is abstract tagged limited record
      Parent       : Node_Access;
      Children     : Node_Vectors.Vector;
      Is_Populated : Boolean := False;
      Name         : Qt4.Strings.Q_String;
   end record;

   procedure Populate (Self : not null access Abstract_Node) is abstract;

   type Root_Node is new Abstract_Node with record
      Element : CMOF.CMOF_Element;
   end record;

   procedure Populate (Self : not null access Root_Node);

   type Element_Node is new Abstract_Node with record
      Element : CMOF.CMOF_Element;
   end record;

   procedure Populate (Self : not null access Element_Node);

   type Attribute_Node is new Abstract_Node with record
      Element   : CMOF.CMOF_Element;
      Attribute : CMOF.CMOF_Property;
   end record;

   procedure Populate (Self : not null access Attribute_Node);

   type Attribute_Value_Node is new Abstract_Node with record
      null;
   end record;

   procedure Populate (Self : not null access Attribute_Value_Node);

   type CMOF_Tree_Model is
     limited new Qt4.Abstract_Item_Models.Directors.Q_Abstract_Item_Model_Director
       with
   record
      Root : Node_Access;
   end record;

   overriding function Column_Count
    (Self   : not null access constant CMOF_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Q_Integer;

   overriding function Data
    (Self  : not null access CMOF_Tree_Model;
     Index : Qt4.Model_Indices.Q_Model_Index;
     Role  : Qt4.Item_Data_Role)
       return Qt4.Variants.Q_Variant;

   overriding function Has_Children
    (Self   : not null access constant CMOF_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Boolean;

   overriding function Header_Data
    (Self        : not null access CMOF_Tree_Model;
     Section     : Qt4.Q_Integer;
     Orientation : Qt4.Orientations;
     Role        : Qt4.Item_Data_Role)
       return Qt4.Variants.Q_Variant;

   overriding function Index
    (Self   : not null access constant CMOF_Tree_Model;
     Row    : Qt4.Q_Integer;
     Column : Qt4.Q_Integer;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index;

   overriding function Parent
    (Self  : not null access constant CMOF_Tree_Model;
     Child : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Model_Indices.Q_Model_Index;

   overriding function Row_Count
    (Self   : not null access constant CMOF_Tree_Model;
     Parent : Qt4.Model_Indices.Q_Model_Index)
       return Qt4.Q_Integer;

end CMOF_Tree_Models;
