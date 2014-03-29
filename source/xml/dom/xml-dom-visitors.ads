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
with XML.DOM.CDATA_Sections;
with XML.DOM.Comments;
with XML.DOM.Document_Fragments;
with XML.DOM.Document_Types;
with XML.DOM.Documents;
with XML.DOM.Elements;
with XML.DOM.Entities;
with XML.DOM.Entity_References;
with XML.DOM.Nodes;
with XML.DOM.Notations;
with XML.DOM.Processing_Instructions;
with XML.DOM.Texts;

package XML.DOM.Visitors is

   pragma Preelaborate;

   type Traverse_Control is
    (Continue,
     Abandon_Children,
     Abandon_Sibling,
     Terminate_Immediately);

   ----------------------
   -- Abstract_Visitor --
   ----------------------

   type Abstract_Visitor is limited interface;

   not overriding procedure Enter_CDATA_Section
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.CDATA_Sections.DOM_CDATA_Section_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_CDATA_Section
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.CDATA_Sections.DOM_CDATA_Section_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Comment
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Comments.DOM_Comment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Comment
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Comments.DOM_Comment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Document
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Documents.DOM_Document_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Document
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Documents.DOM_Document_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Document_Fragment
    (Self    : in out Abstract_Visitor;
     Node    :
       not null XML.DOM.Document_Fragments.DOM_Document_Fragment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Document_Fragment
    (Self    : in out Abstract_Visitor;
     Node    :
       not null XML.DOM.Document_Fragments.DOM_Document_Fragment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Document_Type
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Document_Types.DOM_Document_Type_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Document_Type
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Document_Types.DOM_Document_Type_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Element
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Elements.DOM_Element_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Element
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Elements.DOM_Element_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Entity
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Entities.DOM_Entity_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Entity
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Entities.DOM_Entity_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Entity_Reference
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Entity_References.DOM_Entity_Reference_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Entity_Reference
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Entity_References.DOM_Entity_Reference_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Notation
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Notations.DOM_Notation_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Notation
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Notations.DOM_Notation_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Processing_Instruction
    (Self    : in out Abstract_Visitor;
     Node    : not null
       XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Processing_Instruction
    (Self    : in out Abstract_Visitor;
     Node    : not null
       XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Enter_Text
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Texts.DOM_Text_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Leave_Text
    (Self    : in out Abstract_Visitor;
     Node    : not null XML.DOM.Texts.DOM_Text_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   -----------------------
   -- Abstract_Iterator --
   -----------------------

   type Abstract_Iterator is limited interface;

   procedure Visit
    (Self    : in out Abstract_Iterator'Class;
     Visitor : in out Abstract_Visitor'Class;
     Node    : not null XML.DOM.Nodes.DOM_Node_Access;
     Control : in out Traverse_Control);
   --  Visit specified element by calling:
   --
   --   - Enter_<Class> operation on visitor;
   --
   --   - Visit_<Class> operation on iterator;
   --
   --   - Leave_<Class> operation on visitor.

   procedure Visit_Children
    (Self    : in out Abstract_Iterator'Class;
     Visitor : in out Abstract_Visitor'Class;
     Node    : not null access XML.DOM.Nodes.DOM_Node'Class;
     Control : in out Traverse_Control);
   --  Visits children of the given node.

   not overriding procedure Visit_CDATA_Section
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.CDATA_Sections.DOM_CDATA_Section_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Comment
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Comments.DOM_Comment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Document
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Documents.DOM_Document_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Document_Fragment
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    :
       not null XML.DOM.Document_Fragments.DOM_Document_Fragment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Document_Type
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Document_Types.DOM_Document_Type_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Element
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Elements.DOM_Element_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Entity
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Entities.DOM_Entity_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Entity_Reference
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Entity_References.DOM_Entity_Reference_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Notation
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Notations.DOM_Notation_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Processing_Instruction
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null
       XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Text
    (Self    : in out Abstract_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Texts.DOM_Text_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control) is null;

   ----------------------
   -- Default Iterator --
   ----------------------

   type Default_Iterator is limited new Abstract_Iterator with private;

private

   type Default_Iterator is limited new Abstract_Iterator with null record;

   overriding procedure Visit_CDATA_Section
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.CDATA_Sections.DOM_CDATA_Section_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Comment
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Comments.DOM_Comment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Document
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Documents.DOM_Document_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Document_Fragment
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    :
       not null XML.DOM.Document_Fragments.DOM_Document_Fragment_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Document_Type
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Document_Types.DOM_Document_Type_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Elements.DOM_Element_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Entity
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Entities.DOM_Entity_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Entity_Reference
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Entity_References.DOM_Entity_Reference_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Notation
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Notations.DOM_Notation_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Processing_Instruction
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null
       XML.DOM.Processing_Instructions.DOM_Processing_Instruction_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

   overriding procedure Visit_Text
    (Self    : in out Default_Iterator;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Node    : not null XML.DOM.Texts.DOM_Text_Access;
     Control : in out XML.DOM.Visitors.Traverse_Control);

end XML.DOM.Visitors;
