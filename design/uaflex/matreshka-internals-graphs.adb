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

with Ada.Containers.Generic_Array_Sort;
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.Graphs is

   procedure Free is new Ada.Unchecked_Deallocation
     (Edge_Array, Edge_Array_Access);

   procedure Free is new Ada.Unchecked_Deallocation
     (Node_Array, Node_Array_Access);

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Graph) is
   begin
      Free (Self.Nodes);
      Free (Self.Edges);
      Self.Last_Node := 0;
      Self.Last_Edge := 0;
   end Clear;

   package body Constructor is

      -----------
      -- Clear --
      -----------

      procedure Clear (Self : in out Graph) is
      begin
         Free (Self.Nodes);
         Free (Self.Edges);
         Self.Last_Node := 0;
         Self.Last_Edge := 0;
      end Clear;

      -----------
      -- Index --
      -----------

      function Index (Self : Node) return Node_Index is
      begin
         return Self.Index;
      end Index;

      --------------
      -- New_Node --
      --------------

      function New_Node (Self : Graph'Class) return Node is
         procedure Resize is
         begin
            if Self.Nodes = null or else
              Self.Nodes'Length < Self.Last_Node + 1
            then
               declare  --  6 15 28 48 78 123 190
                  Old        : Node_Array_Access := Self.Nodes;
                  New_Length : constant Node_Index :=
                    (Self.Last_Node + 4) * 3 / 2;
               begin
                  Self.Self.Nodes := new Node_Array (1 .. New_Length);

                  if Old /= null then
                     Self.Nodes.all (Old'Range) := Old.all;
                     Free (Old);
                  end if;
               end;
            end if;

            Self.Self.Last_Node := Self.Self.Last_Node + 1;
         end Resize;
      begin
         Resize;

         Self.Nodes (Self.Last_Node) :=
           (Graph => <>,
            Index => Self.Last_Node,
            First => 1,
            Last  => 0);

         return (Self.Self, Self.Last_Node);
      end New_Node;

      --------------
      -- New_Edge --
      --------------

      procedure New_Edge (From, To : Node) is
         Ignore : constant Edge_Identifier := New_Edge (From, To);
      begin
         null;
      end New_Edge;

      --------------
      -- New_Edge --
      --------------

      function New_Edge (From, To : Node) return Edge_Identifier is
         Self : constant Graph_Access := From.Graph;

         procedure Resize is
         begin
            if Self.Edges = null or else
              Self.Edges'Length < Self.Last_Edge + 1
            then
               declare
                  Old        : Edge_Array_Access := Self.Edges;
                  New_Length : constant Edge_Index :=
                    (Self.Last_Edge + 2) * 2;
               begin
                  Self.Edges := new Edge_Array (1 .. New_Length);

                  if Old /= null then
                     Self.Edges.all (Old'Range) := Old.all;
                     Free (Old);
                  end if;
               end;
            end if;

            Self.Last_Edge := Self.Last_Edge + 1;
         end Resize;

      begin
         if To.Graph /= Self then
            raise Constraint_Error;
         end if;

         Resize;

         Self.Edges (Self.Last_Edge) :=
           (Graph  => <>,
            Index  => Self.Last_Edge,
            Id     => Edge_Identifier (Self.Last_Edge),
            Source => From.Index,
            Target => To.Index);

         return Edge_Identifier (Self.Last_Edge);
      end New_Edge;

      procedure Complete
        (Input  : in out Graph'Class;
         Output : out Graphs.Graph)
      is
         function Less (Left, Right : Edge) return Boolean;

         function Less (Left, Right : Edge) return Boolean is
         begin
            return Left.Source < Right.Source or
              (Left.Source = Right.Source and Left.Index < Right.Index);
         end Less;

         procedure Sort is new Ada.Containers.Generic_Array_Sort
           (Edge_Index, Edge, Edge_Array, Less);

      begin
         Sort (Input.Edges (1 .. Input.Last_Edge));

         for J in 1 .. Input.Last_Node loop
            Input.Nodes (J).Graph := Output.Self;
            Input.Nodes (J).First := 1;
            Input.Nodes (J).Last := 0;
         end loop;

         for J in 1 .. Input.Last_Edge loop
            Input.Edges (J).Graph := Output.Self;
            Input.Edges (J).Index := J;
            if Input.Nodes (Input.Edges (J).Source).Last = 0 then
               Input.Nodes (Input.Edges (J).Source).First := J;
            end if;

            Input.Nodes (Input.Edges (J).Source).Last := J;
         end loop;

         Output.Last_Node := Input.Last_Node;
         Output.Last_Edge := Input.Last_Edge;
         Output.Nodes     := Input.Nodes;
         Output.Edges     := Input.Edges;

         Input.Last_Node := 0;
         Input.Last_Edge := 0;
         Input.Nodes := null;
         Input.Edges := null;
      end Complete;

   end Constructor;

   ----------------
   -- Edge_Count --
   ----------------

   function Edge_Count (Self : Graph) return Edge_List_Length is
   begin
      return Self.Last_Edge;
   end Edge_Count;

   ----------------
   -- Edge_Count --
   ----------------

   function Edge_Count (Self : Node) return Edge_List_Length is
   begin
      return Self.Last - Self.First + 1;
   end Edge_Count;

   -------------
   -- Edge_Id --
   -------------

   function Edge_Id (Self : Edge) return Edge_Identifier is
   begin
      return Self.Id;
   end Edge_Id;

   ----------------------
   -- First_Edge_Index --
   ----------------------

   function First_Edge_Index (Self : Node) return Edge_Index is
   begin
      return Self.First;
   end First_Edge_Index;

   --------------
   -- Get_Edge --
   --------------

   function Get_Edge (Self : Graph'Class; Index : Edge_Index) return Edge is
   begin
      return Self.Edges (Index);
   end Get_Edge;

   --------------
   -- Get_Edge --
   --------------

   function Get_Edge (Self : Node'Class; Index : Edge_Index) return Edge is
   begin
      return Get_Edge (Self.Graph.all, Index);
   end Get_Edge;

   ---------------
   -- Get_Edges --
   ---------------

   function Get_Edges (Self : Graph) return Edge_Array is
   begin
      return Self.Edges (1 .. Self.Last_Edge);
   end Get_Edges;

   --------------
   -- Get_Node --
   --------------

   function Get_Node (Self : Graph'Class; Index : Node_Index) return Node is
   begin
      return Self.Nodes (Index);
   end Get_Node;

   ---------------
   -- Get_Nodes --
   ---------------

   function Get_Nodes (Self : Graph) return Node_Array is
   begin
      return Self.Nodes (1 .. Self.Last_Node);
   end Get_Nodes;

   -----------
   -- Index --
   -----------

   function Index (Self : Node) return Node_Index is
   begin
      return Self.Index;
   end Index;

   -----------
   -- Index --
   -----------

   function Index (Self : Edge) return Edge_Index is
   begin
      return Self.Index;
   end Index;

   ---------------------
   -- Last_Edge_Index --
   ---------------------

   function Last_Edge_Index (Self : Node) return Edge_List_Length is
   begin
      return Self.Last;
   end Last_Edge_Index;

   ----------------
   -- Node_Count --
   ----------------

   function Node_Count (Self : Graph) return Node_List_Length is
   begin
      return Self.Last_Node;
   end Node_Count;

   --------------------
   -- Outgoing_Edges --
   --------------------

   function Outgoing_Edges (Self : Node) return Edge_Array is
   begin
      return Self.Graph.Edges (Self.First .. Self.Last);
   end Outgoing_Edges;

   -----------------
   -- Source_Node --
   -----------------

   function Source_Node (Self : Edge'Class) return Node is
   begin
      return Self.Graph.Nodes (Self.Source);
   end Source_Node;

   -----------------
   -- Target_Node --
   -----------------

   function Target_Node (Self : Edge'Class) return Node is
   begin
      return Self.Graph.Nodes (Self.Target);
   end Target_Node;

end Matreshka.Internals.Graphs;
