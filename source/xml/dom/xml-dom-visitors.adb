------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Open Document Toolkit                           --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.DOM_Nodes;

package body XML.DOM.Visitors is

   -----------
   -- Visit --
   -----------

   procedure Visit
    (Self    : in out Abstract_Iterator'Class;
     Visitor : in out Abstract_Visitor'Class;
     Node    : not null XML.DOM.Nodes.DOM_Node_Access;
     Control : in out Traverse_Control)
   is
      N : Matreshka.DOM_Nodes.Node'Class
        renames Matreshka.DOM_Nodes.Node'Class (Node.all);

   begin
      N.Enter_Node (Visitor, Control);

      if Control = Continue then
         N.Visit_Node (Self, Visitor, Control);
      end if;

      if Control in Continue | Abandon_Children | Abandon_Sibling then
         if Control = Abandon_Children then
            Control := Continue;
         end if;

         N.Leave_Node (Visitor, Control);
      end if;

      if Control = Abandon_Children then
         Control := Continue;
      end if;
   end Visit;

   -------------------------
   -- Visit_CDATA_Section --
   -------------------------

   overriding procedure Visit_CDATA_Section
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.CDATA_Sections.DOM_CDATA_Section_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_CDATA_Section;

   --------------------
   -- Visit_Children --
   --------------------

   procedure Visit_Children
    (Self    : in out Abstract_Iterator'Class;
     Visitor : in out Abstract_Visitor'Class;
     Node    : not null access XML.DOM.Nodes.DOM_Node'Class;
     Control : in out Traverse_Control)
   is
      use type XML.DOM.Nodes.DOM_Node_Access;

      Child : XML.DOM.Nodes.DOM_Node_Access := Node.Get_First_Child;

   begin
      while Child /= null loop
         Self.Visit (Visitor, Child, Control);

         if Control = Abandon_Sibling then
            Control := Continue;

            exit;

         elsif Control = Terminate_Immediately then
            exit;
         end if;

         Child := Child.Get_Next_Sibling;
      end loop;
   end Visit_Children;

   -------------------
   -- Visit_Comment --
   -------------------

   overriding procedure Visit_Comment
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Comments.DOM_Comment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Comment;

   --------------------
   -- Visit_Document --
   --------------------

   overriding procedure Visit_Document
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Documents.DOM_Document_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Document;

   -----------------------------
   -- Visit_Document_Fragment --
   -----------------------------

   overriding procedure Visit_Document_Fragment
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    :
       not null XML.DOM.Document_Fragments.DOM_Document_Fragment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Document_Fragment;

   -------------------------
   -- Visit_Document_Type --
   -------------------------

   overriding procedure Visit_Document_Type
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Document_Types.DOM_Document_Type_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Document_Type;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Elements.DOM_Element_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Element;

   ------------------
   -- Visit_Entity --
   ------------------

   overriding procedure Visit_Entity
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Entities.DOM_Entity_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Entity;

   ----------------------------
   -- Visit_Entity_Reference --
   ----------------------------

   overriding procedure Visit_Entity_Reference
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Entity_References.DOM_Entity_Reference_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Entity_Reference;

   --------------------
   -- Visit_Notation --
   --------------------

   overriding procedure Visit_Notation
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Notations.DOM_Notation_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Notation;

   ----------------------------------
   -- Visit_Processing_Instruction --
   ----------------------------------

   overriding procedure Visit_Processing_Instruction
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null
       XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Processing_Instruction;

   ----------------
   -- Visit_Text --
   ----------------

   overriding procedure Visit_Text
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Texts.DOM_Text_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Self.Visit_Children (Visitor, Node, Control);
   end Visit_Text;

end XML.DOM.Visitors;
