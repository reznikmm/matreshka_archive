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
with XML.DOM.Nodes;

package XML.DOM.Character_Datas is

   pragma Preelaborate;

   type DOM_Character_Data is new XML.DOM.Nodes.DOM_Node with null record;

   function Data (Self : DOM_Character_Data'Class) return DOM_String;
   --  The character data of the node that implements this interface. The DOM
   --  implementation may not put arbitrary limits on the amount of data that
   --  may be stored in a CharacterData node. However, implementation limits
   --  may mean that the entirety of a node's data may not fit into a single
   --  DOMString. In such cases, the user may call substringData to retrieve
   --  the data in appropriately sized pieces.

   procedure Set_Data
    (Self : in out DOM_Character_Data'Class; To : DOM_String);
   --  The character data of the node that implements this interface. The DOM
   --  implementation may not put arbitrary limits on the amount of data that
   --  may be stored in a CharacterData node. However, implementation limits
   --  may mean that the entirety of a node's data may not fit into a single
   --  DOMString. In such cases, the user may call substringData to retrieve
   --  the data in appropriately sized pieces.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.

   function Length (Self : DOM_Character_Data'Class) return Natural;
   --  The number of Unicode characters that are available through data and the
   --  substringData method below. This may have the value zero, i.e.,
   --  CharacterData nodes may be empty.

   function Substring_Data
    (Self   : DOM_Character_Data'Class;
     Offset : Natural;
     Count  : Natural) return DOM_String;
   --  Extracts a range of data from the node. Returns specified substring. If
   --  the sum of offset and count exceeds the length, then all Unicode
   --  characters to the end of the data are returned.
   --
   --  Raises DOM_Exception:
   --
   --   - INDEX_SIZE_ERR: Raised if the specified offset is negative or greater
   --     than the number Unicode characters in data, or if the specified count
   --     is negative.
   --
   --   - DOMSTRING_SIZE_ERR: Raised if the specified range of text does not
   --     fit into a DOMString.

   procedure Append_Data
    (Self : in out DOM_Character_Data'Class; Arg : DOM_String);
   --  Append the string to the end of the character data of the node. Upon
   --  success, data provides access to the concatenation of data and the
   --  DOMString specified.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

   procedure Insert_Data
    (Self   : in out DOM_Character_Data'Class;
     Offset : Natural;
     Arg    : DOM_String);
   --  Insert a string at the specified Unicode character offset.
   --
   --  Raises DOM_Exception:
   --
   --   - INDEX_SIZE_ERR: Raised if the specified offset is negative or greater
   --     than the number of Unicode characters in data.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

   procedure Delete_Data
    (Self   : in out DOM_Character_Data'Class;
     Offset : Natural;
     Count  : Natural);
   --  Remove a range of Unicode characters from the node. Upon success, data
   --  and length reflect the change.
   --
   --  Raises DOM_Exception:
   --
   --   - INDEX_SIZE_ERR: Raised if the specified offset is negative or greater
   --     than the number of Unicode characters in data, or if the specified
   --     count is negative.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

   procedure Replace_Data
    (Self   : in out DOM_Character_Data'Class;
     Offset : Natural;
     Count  : Natural;
     Arg    : DOM_String);
   --  offset with the specified string.
   --
   --  If the sum of offset and count exceeds length, then all Unicode
   --  characters to the end of the data are replaced; (i.e., the effect is the
   --  same as a remove method call with the same range, followed by an append
   --  method invocation).
   --
   --  Raises DOMException:
   --
   --   - INDEX_SIZE_ERR: Raised if the specified offset is negative or greater
   --     than the number of Unicode characters in data, or if the specified
   --     count is negative.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

end XML.DOM.Character_Datas;
