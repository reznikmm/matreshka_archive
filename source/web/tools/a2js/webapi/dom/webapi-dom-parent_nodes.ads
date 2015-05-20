------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
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
--  This package provides binding to interface ParentNode.
------------------------------------------------------------------------------
with League.Strings;

limited with WebAPI.DOM.Elements;
with WebAPI.DOM.HTML_Collections;
with WebAPI.DOM.Node_Lists;

package WebAPI.DOM.Parent_Nodes is

   pragma Preelaborate;

   type Parent_Node is limited interface;

   not overriding function Get_Children
    (Self : not null access constant Parent_Node)
       return WebAPI.DOM.HTML_Collections.HTML_Collection
         is abstract
           with Import        => True,
                Convention    => JavaScript_Property_Getter,
                External_Name => "children";
   --  Returns the child elements.
   --
   --  The children attribute must return an HTMLCollection collection rooted
   --  at the context object matching only element children.

   not overriding function Get_First_Element_Child
    (Self : not null access constant Parent_Node)
       return WebAPI.DOM.Elements.Element_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "firstElementChild";
   --  Returns the first child that is an element, and null otherwise.
   --
   --  The firstElementChild attribute must return the first child that is an
   --  element, and null otherwise.

   not overriding function Get_Last_Element_Child
    (Self : not null access constant Parent_Node)
       return WebAPI.DOM.Elements.Element_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "lastElementChild";
   --  Returns the last child that is an element, and null otherwise.
   --
   --  The lastElementChild attribute must return the last child that is an
   --  element, and null otherwise.

   not overriding function Get_Child_Element_Count
    (Self : not null access constant Parent_Node)
       return Natural is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "childElementCount";
   --  The childElementCount attribute must return the number of children of
   --  the context object that are elements.

   not overriding function Query_Selector
    (Self      : not null access constant Parent_Node;
     Selectors : League.Strings.Universal_String)
       return WebAPI.DOM.Elements.Element_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "querySelector";
   --  Returns the first element that is a descendant of node that matches
   --  selectors. 
   --
   --  The querySelector(selectors) method must return the first result of
   --  running scope-match a selectors string selectors against the context
   --  object, and null if the result is an empty list otherwise.

   not overriding function Query_Selector_All
    (Self      : not null access constant Parent_Node;
     Selectors : League.Strings.Universal_String)
       return WebAPI.DOM.Node_Lists.Node_List is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "querySelectorAll";
   --  Returns all element descendants of node that match selectors.
   --
   --  The querySelectorAll(selectors) method must return the static result of
   --  running scope-match a selectors string selectors against the context
   --  object.

end WebAPI.DOM.Parent_Nodes;
