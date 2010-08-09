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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package Matreshka.Internals.XML.Element_Tables is

   pragma Preelaborate;

   type Element_Table is limited private;

   procedure New_Element
    (Self    : in out Element_Table;
     Element : out Element_Identifier);
   --  Allocates new element and returns its identifier.

   function Is_Declared
    (Self    : Element_Table;
     Element : Element_Identifier) return Boolean;
   --  Returns True when element was declared.

   procedure Set_Is_Declared
    (Self     : in out Element_Table;
     Element  : Element_Identifier;
     Declared : Boolean);
   --  Sets flag to specified value.

   function Is_Attributes_Declared
    (Self    : Element_Table;
     Element : Element_Identifier) return Boolean;
   --  Returns True when attribute list of element type was declared.

   procedure Set_Is_Attributes_Declared
    (Self     : in out Element_Table;
     Element  : Element_Identifier;
     Declared : Boolean);
   --  Sets flag to specified value.

   function Attributes
    (Self    : Element_Table;
     Element : Element_Identifier) return Attribute_Identifier;
   --  Returns first attribute in the list of declared attributes.

   procedure Set_Attributes
    (Self      : in out Element_Table;
     Element   : Element_Identifier;
     Attribute : Attribute_Identifier);
   --  Sets first attribute in the list of declared attributes.

   function Is_Mixed_Content
    (Self    : Element_Table;
     Element : Element_Identifier) return Boolean;

   procedure Set_Is_Mixed_Content
    (Self    : in out Element_Table;
     Element : Element_Identifier;
     Value   : Boolean);

   function Is_Any
    (Self    : Element_Table;
     Element : Element_Identifier) return Boolean;

   procedure Set_Is_Any
    (Self    : in out Element_Table;
     Element : Element_Identifier;
     Value   : Boolean);

   procedure Reset (Self : in out Element_Table);
   --  Resets internal structures to initial state.

   procedure Finalize (Self : in out Element_Table);
   --  Releases all ocupied resources.

private

   type Element_Record is record
      Attributes             : Attribute_Identifier;
      Is_Declared            : Boolean;
      Is_Attributes_Declared : Boolean;
      Is_Any                 : Boolean;
      Is_Mixed_Content       : Boolean;
   end record;

   type Element_Array is array (Element_Identifier range <>) of Element_Record;

   type Element_Array_Access is access all Element_Array;

   type Element_Table is limited record
      Table : Element_Array_Access := new Element_Array (1 .. 16);
      Last  : Element_Identifier   := No_Element;
   end record;

   pragma Inline (Attributes);
   pragma Inline (Is_Attributes_Declared);
   pragma Inline (Is_Declared);
   pragma Inline (Set_Attributes);
   pragma Inline (Set_Is_Attributes_Declared);
   pragma Inline (Set_Is_Declared);

end Matreshka.Internals.XML.Element_Tables;
