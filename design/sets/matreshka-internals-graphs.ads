------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
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

package Matreshka.Internals.Graphs is

   pragma Preelaborate;

   type Graph is tagged limited private;

   type Node is tagged private;
   type Node_Index is new Positive;
   subtype Node_List_Length is Node_Index'Base range 0 .. Node_Index'Last;
   type Node_Array is array (Node_Index range <>) of Node;
   type Node_Array_Access is access Node_Array;

   type Edge is tagged private;
   type Edge_Index is new Positive;
   subtype Edge_List_Length is Edge_Index'Base range 0 .. Edge_Index'Last;
   type Edge_Array is array (Edge_Index range <>) of Edge;
   type Edge_Array_Access is access Edge_Array;

   function Node_Count (Self : Graph) return Node_List_Length;
   function Get_Nodes  (Self : Graph) return Node_Array;
   function Edge_Count (Self : Graph) return Edge_List_Length;
   function Get_Edges  (Self : Graph) return Edge_Array;

   function Edge_Count (Self : Node) return Edge_List_Length;
   function Outgoing_Edges  (Self : Node) return Edge_Array;

   function Source_Node (Self : Edge'Class) return Node;
   function Target_Node (Self : Edge'Class) return Node;

   function Index (Self : Node) return Node_Index;
   function Index (Self : Edge) return Edge_Index;

   function Get_Node (Self : Graph'Class; Index : Node_Index) return Node;
   function Get_Edge (Self : Graph'Class; Index : Edge_Index) return Edge;
   function Get_Edge (Self : Node'Class;  Index : Edge_Index) return Edge;

   function First_Edge_Index (Self : Node) return Edge_Index;
   function Last_Edge_Index  (Self : Node) return Edge_List_Length;
   
   type Edge_Identifier is new Positive;
   
   function Edge_Id (Self : Edge) return Edge_Identifier;
   
   procedure Clear (Self : in out Graph);

   package Constructor is

      type Graph is tagged limited private;
      type Node is tagged private;

      function New_Node (Self : Graph'Class) return Node;

      function Index (Self : Node) return Node_Index;

      procedure New_Edge (From, To : Node);

      function New_Edge (From, To : Node) return Edge_Identifier; 

      procedure Complete
        (Input  : in out Graph'Class;
         Output : out Graphs.Graph);
      --  Convert Input to Output and clear Input

      procedure Clear (Self : in out Graph);
      
   private

      type Graph_Access is access all Graph;

      type Node is tagged record
         Graph : Graph_Access;
         Index : Node_Index;
      end record;

      type Graph is tagged limited record
         Self      : Graph_Access := Graph'Unchecked_Access;
         Last_Node : Node_List_Length := 0;
         Last_Edge : Edge_List_Length := 0;
         Nodes     : Node_Array_Access;
         Edges     : Edge_Array_Access;
      end record;
   end Constructor;

private
   type Graph_Access is access all Graph;

   type Edge is tagged record
      Graph  : Graph_Access;
      Index  : Edge_Index;
      Id     : Edge_Identifier;
      Source : Node_Index;
      Target : Node_Index;
   end record;

   type Node is tagged record
      Graph  : Graph_Access;
      Index  : Node_Index;
      First  : Edge_Index;
      Last   : Edge_List_Length;
   end record;

   type Graph is tagged limited record
      Self      : Graph_Access := Graph'Unchecked_Access;
      Sorted    : Boolean := False;
      Last_Node : Node_List_Length := 0;
      Last_Edge : Edge_List_Length := 0;
      Nodes     : Node_Array_Access;
      Edges     : Edge_Array_Access;
   end record;

end Matreshka.Internals.Graphs;
