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
--  This package provides binding to interface DOM::NonDocumentTypeChildNode.
------------------------------------------------------------------------------
limited with WebAPI.DOM.Elements;

package WebAPI.DOM.Non_Document_Type_Child_Nodes is

   pragma Preelaborate;

   type Non_Document_Type_Child_Node is limited interface;

   not overriding function Get_Previous_Element_Sibling
    (Self : not null access constant Non_Document_Type_Child_Node)
       return WebAPI.DOM.Elements.Element_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "previousElementSibling";
   --  Returns the first preceding sibling that is an element, and null
   --  otherwise.
   --
   --  The previousElementSibling attribute must return the first preceding
   --  sibling that is an element, and null otherwise.

   not overriding function Get_Next_Element_Sibling
    (Self : not null access constant Non_Document_Type_Child_Node)
       return WebAPI.DOM.Elements.Element_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "nextElementSibling";
   --  Returns the first following sibling that is an element, and null
   --  otherwise.
   --
   --  The nextElementSibling attribute must return the first following sibling
   --  that is an element, and null otherwise.

end WebAPI.DOM.Non_Document_Type_Child_Nodes;
