------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.DOM_Documents;
with Matreshka.DOM_Elements;

package body Matreshka.DOM_Lists is

   use type Matreshka.DOM_Nodes.Node_Access;

   ----------------------------
   -- Insert_Into_Attributes --
   ----------------------------

   procedure Insert_Into_Attributes
    (Element   : not null Matreshka.DOM_Nodes.Element_Access;
     Attribute : not null Matreshka.DOM_Nodes.Node_Access) is
   begin
      Attribute.Parent := Matreshka.DOM_Nodes.Node_Access (Element);

      if Element.First_Attribute = null then
         Attribute.Previous := null;
         Attribute.Next := null;
         Element.First_Attribute := Attribute;
         Element.Last_Attribute := Attribute;

      else
         Attribute.Previous := Element.Last_Attribute;
         Attribute.Next := null;
         Element.Last_Attribute.Next := Attribute;
         Element.Last_Attribute := Attribute;
      end if;
   end Insert_Into_Attributes;

   --------------------------
   -- Insert_Into_Children --
   --------------------------

   procedure Insert_Into_Children
    (Parent : not null Matreshka.DOM_Nodes.Node_Access;
     Node   : not null Matreshka.DOM_Nodes.Node_Access) is
   begin
      Node.Parent := Parent;

      if Parent.First = null then
         Node.Previous := null;
         Node.Next := null;
         Parent.First := Node;
         Parent.Last := Node;

      else
         Node.Previous := Parent.Last;
         Node.Next := null;
         Parent.Last.Next := Node;
         Parent.Last := Node;
      end if;
   end Insert_Into_Children;

   --------------------------
   -- Insert_Into_Detached --
   --------------------------

   procedure Insert_Into_Detached
    (Node : not null Matreshka.DOM_Nodes.Node_Access)
   is
      Document : constant Matreshka.DOM_Nodes.Document_Access := Node.Document;

   begin
      if Document.First_Detached = null then
         Node.Previous := null;
         Node.Next := null;
         Document.First_Detached := Node;
         Document.Last_Detached := Node;

      else
         Node.Previous := Document.Last_Detached;
         Node.Next := null;
         Document.Last_Detached.Next := Node;
         Document.Last_Detached := Node;
      end if;
   end Insert_Into_Detached;

   ----------------------------
   -- Remove_From_Attributes --
   ----------------------------

   procedure Remove_From_Attributes
    (Attribute : not null Matreshka.DOM_Nodes.Node_Access)
   is
      Element : constant Matreshka.DOM_Nodes.Element_Access
        := Matreshka.DOM_Nodes.Element_Access (Attribute.Parent);

   begin
      if Element.First_Attribute = Attribute then
         Element.First_Attribute := Attribute.Next;
      end if;

      if Element.Last_Attribute = Attribute then
         Element.Last_Attribute := Attribute.Previous;
      end if;

      if Attribute.Previous /= null then
         Attribute.Previous.Next := Attribute.Next;
      end if;

      if Attribute.Next /= null then
         Attribute.Next.Previous := Attribute.Previous;
      end if;

      Attribute.Parent := null;
      Attribute.Previous := null;
      Attribute.Next := null;
   end Remove_From_Attributes;

   --------------------------
   -- Remove_From_Children --
   --------------------------

   procedure Remove_From_Children
    (Node : not null Matreshka.DOM_Nodes.Node_Access)
   is
      Parent : constant Matreshka.DOM_Nodes.Node_Access := Node.Parent;

   begin
      if Parent /= null then
         if Parent.First = Node then
            Parent.First := Node.Next;
         end if;

         if Parent.Last = Node then
            Parent.Last := Node.Previous;
         end if;

         if Node.Previous /= null then
            Node.Previous.Next := Node.Next;
         end if;

         if Node.Next /= null then
            Node.Next.Previous := Node.Previous;
         end if;

         Node.Parent   := null;
         Node.Previous := null;
         Node.Next     := null;
      end if;
   end Remove_From_Children;

   --------------------------
   -- Remove_From_Detached --
   --------------------------

   procedure Remove_From_Detached
    (Node : not null Matreshka.DOM_Nodes.Node_Access)
   is
      Document : constant Matreshka.DOM_Nodes.Document_Access := Node.Document;

   begin
      if Document.First_Detached = Node then
         Document.First_Detached := Node.Next;
      end if;

      if Document.Last_Detached = Node then
         Document.Last_Detached := Node.Previous;
      end if;

      if Node.Previous /= null then
         Node.Previous.Next := Node.Next;
      end if;

      if Node.Next /= null then
         Node.Next.Previous := Node.Previous;
      end if;
   end Remove_From_Detached;

end Matreshka.DOM_Lists;
