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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
private with Ada.Containers.Hashed_Maps;
private with Ada.Containers.Ordered_Maps;
private with Ada.Containers.Vectors;

with League.Characters;
with League.Strings.Hash;
with XML.SAX.Attributes;
with XML.SAX.Writers;

package XML.SAX.Pretty_Writers is

   type XML_Version is (XML_1_0, XML_1_1);

   type SAX_Pretty_Writer is
     limited new XML.SAX.Writers.SAX_Writer with private;

   not overriding procedure Set_Version
    (Self    : in out SAX_Pretty_Writer;
     Version : XML_Version);

   not overriding procedure Set_Offset
    (Self   : in out SAX_Pretty_Writer;
     Offset : Natural);
   --  Sets offset for indentation.

   not overriding procedure Set_Value_Delimiter
    (Self      : in out SAX_Pretty_Writer;
     Delimiter : League.Characters.Universal_Character);
   --  Sets value delimiter for attributes.
   --  '"' (apostrophe) is used by default

   overriding procedure Set_Output
    (Self   : in out SAX_Pretty_Writer;
     Output : not null XML.SAX.Writers.SAX_Output_Destination_Access);
   --  Sets output destination to be used to output generated stream.

   overriding procedure Characters
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Comment
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_CDATA
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean);

   overriding procedure End_Document
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean);

   overriding procedure End_DTD
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out SAX_Pretty_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure End_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Prefix_Mapping
    (Self    : in out SAX_Pretty_Writer;
     Prefix  : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Success : in out Boolean);

   overriding function Error_String
    (Self : SAX_Pretty_Writer) return League.Strings.Universal_String;

   overriding procedure Ignorable_Whitespace
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Processing_Instruction
    (Self    : in out SAX_Pretty_Writer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Skipped_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Start_CDATA
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean);

   overriding procedure Start_Document
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean);

   overriding procedure Start_DTD
    (Self      : in out SAX_Pretty_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out SAX_Pretty_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self          : in out SAX_Pretty_Writer;
     Prefix        : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean);

private

   package Mappings is
      new Ada.Containers.Hashed_Maps
           (League.Strings.Universal_String,
            League.Strings.Universal_String,
            League.Strings.Hash,
            League.Strings."=",
            League.Strings."=");

   package Banks is
      new Ada.Containers.Ordered_Maps
           (League.Strings.Universal_String,
            League.Strings.Universal_String,
            League.Strings."<",
            League.Strings."=");

   type Element_Record is record
      Namespace_URI  : League.Strings.Universal_String;
      Local_Name     : League.Strings.Universal_String;
      Qualified_Name : League.Strings.Universal_String;
      Mapping        : Mappings.Map;
   end record;

   package Element_Vector is
      new Ada.Containers.Vectors (Natural, Element_Record);

   procedure Merge (Current : in out Mappings.Map; Bank : Banks.Map);
   --  Merges namespaces declared for current element into the set of all
   --  namespaces.

   type SAX_Pretty_Writer is
     limited new XML.SAX.Writers.SAX_Writer with
   record
      Nesting      : Natural := 0;
      Version      : XML_Version := XML_1_0;
      Tag_Opened   : Boolean := False;
      DTD_Opened   : Boolean := False;
      Error        : League.Strings.Universal_String;
      Destination  : XML.SAX.Writers.SAX_Output_Destination_Access;

      Indent       : Natural := 0;
      Offset       : Natural := 0;
      Chars        : Boolean := False;
      --  Indent, offset and chars are used for automatic indentation.

      Stack       : Element_Vector.Vector;
      --  Stack of elements.

      Requested_NS : Banks.Map;
      --  Set of namespace mappings requested for the next element.

      Current      : Element_Record;
      --  Current processing element including effective namespace mapping.

      Delimiter    : League.Characters.Universal_Character
        := League.Characters.To_Universal_Character (''');
      -- Delimiter for atribute='value'.
   end record;

   function Escape
    (Self       : SAX_Pretty_Writer;
     Text       : League.Strings.Universal_String;
     Escape_All : Boolean := False)
       return League.Strings.Universal_String;
   --  Replaces special characters by their entity references.

end XML.SAX.Pretty_Writers;
