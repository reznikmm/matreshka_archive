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
with League.Strings;

with XML.DOM.Nodes;

package XML.DOM.Character_Datas is

   pragma Preelaborate;

   type DOM_Character_Data is limited interface and XML.DOM.Nodes.DOM_Node;

   type DOM_Character_Data_Access is access all DOM_Character_Data'Class
     with Storage_Size => 0;

   not overriding function Get_Data
    (Self : not null access constant DOM_Character_Data)
       return League.Strings.Universal_String is abstract;
   not overriding procedure Set_Data
    (Self      : not null access DOM_Character_Data;
     New_Value : League.Strings.Universal_String) is abstract;
   --  The character data of the node that implements this interface. The DOM
   --  implementation may not put arbitrary limits on the amount of data that
   --  may be stored in a CharacterData node. However, implementation limits
   --  may mean that the entirety of a node's data may not fit into a single
   --  DOMString. In such cases, the user may call substringData to retrieve
   --  the data in appropriately sized pieces.
   --
   --  Exceptions on setting
   --
   --    DOMException
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.
   --
   --  Exceptions on retrieval
   --
   --    DOMException
   --
   --      DOMSTRING_SIZE_ERR: Raised when it would return more characters than
   --      fit in a DOMString variable on the implementation platform.

   not overriding procedure Replace_Data
    (Self   : not null access DOM_Character_Data;
     Offset : Positive;
     Count  : Natural;
     Arg    : League.Strings.Universal_String) is abstract;
   --  Replace the characters starting at the specified 16-bit unit offset with
   --  the specified string.
   --
   --  Parameters
   --
   --    offset of type unsigned long
   --      The offset from which to start replacing.
   --
   --    count of type unsigned long
   --      The number of 16-bit units to replace. If the sum of offset and
   --      count exceeds length, then all 16-bit units to the end of the data
   --      are replaced; (i.e., the effect is the same as a remove method call
   --      with the same range, followed by an append method invocation).
   --
   --    arg of type DOMString
   --      The DOMString with which the range must be replaced.
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      INDEX_SIZE_ERR: Raised if the specified offset is negative or
   --      greater than the number of 16-bit units in data, or if the specified
   --      count is negative.
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

end XML.DOM.Character_Datas;
