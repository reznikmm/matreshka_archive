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
--  This package provides binding to interface HTMLCollection.
------------------------------------------------------------------------------
with League.Strings;

limited with WebAPI.DOM.Elements;

package WebAPI.DOM.HTML_Collections is

   pragma Preelaborate;

   type HTML_Collection is tagged private
     with Constant_Indexing => Item;

   function Length (Self : HTML_Collection'Class) return Natural
     with Import        => True,
          Convention    => JavaScript_Property_Getter,
          External_Name => "length";
   --  Returns the number of elements in the collection.
   --
   --  The length attribute must return the number of nodes represented by the
   --  collection.

   function Item
    (Self  : HTML_Collection'Class;
     Index : Positive) return WebAPI.DOM.Elements.Element_Access
       with Import        => True,
            Convention    => JavaScript_Getter,
            External_Name => "item";
   --  Returns the element with index index from the collection. The elements
   --  are sorted in tree order.
   --
   --  The item(index) method must return the indexth element in the
   --  collection. If there is no indexth element in the collection, then the
   --  method must return null.

   function Named_Item
    (Self : HTML_Collection'Class;
     Name : League.Strings.Universal_String)
       return WebAPI.DOM.Elements.Element_Access
         with Import        => True,
              Convention    => JavaScript_Getter,
              External_Name => "namedItem";
   --  Returns the first element with ID or name name from the collection.
   --
   --  The namedItem(key) method must run these steps:
   --
   --   1. If key is the empty string, return null.
   --
   --   2. Return the first element in the collection for which at least one of
   --      the following is true:
   --
   --       - it has an ID which is key.
   --
   --       - it has a name attribute whose value is key; 
   --
   --      or null if there is no such element. 

   function Item
    (Self : HTML_Collection'Class;
     Name : League.Strings.Universal_String)
       return WebAPI.DOM.Elements.Element_Access renames Named_Item;
   --  To allow Ada compiler to resolve constant indexing.

private

   type HTML_Collection is tagged null record;

end WebAPI.DOM.HTML_Collections;
