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
--  This package provides DOM document builder component to construct DOM
--  document from SAX events stream.
------------------------------------------------------------------------------
private with Ada.Containers.Vectors;

private with League.Strings;
with XML.DOM.Documents;
private with XML.DOM.Nodes;
private with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Lexical_Handlers;

package Matreshka.DOM_Builders is

   type DOM_Builder is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with private;

   procedure Set_Document
    (Self     : in out DOM_Builder'Class;
     Document : not null XML.DOM.Documents.DOM_Document_Access);

   function Get_Document
    (Self : DOM_Builder'Class) return XML.DOM.Documents.DOM_Document_Access;
   --  Returns constructed document.

private

   package Node_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           XML.DOM.Nodes.DOM_Node_Access,
           XML.DOM.Nodes."=");

   type DOM_Builder is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with
   record
      Document : XML.DOM.Documents.DOM_Document_Access;
      Current  : XML.DOM.Nodes.DOM_Node_Access;
      Parent   : XML.DOM.Nodes.DOM_Node_Access;
      Stack    : Node_Vectors.Vector;
   end record;

   overriding procedure Characters
    (Self    : in out DOM_Builder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out DOM_Builder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding function Error_String
    (Self : DOM_Builder) return League.Strings.Universal_String;

   overriding procedure Start_Document
    (Self    : in out DOM_Builder;
     Success : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out DOM_Builder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

end Matreshka.DOM_Builders;
