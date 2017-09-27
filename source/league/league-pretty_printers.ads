------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2015-2017, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This project provides facilities for pretty printing texts.
--
--  User creates documents from strings, new lines and empty documents,
--  composes them toghether with append, indent them as required and marks
--  logicaly parts as groups to fold new lines all together when all parts of
--  a group fits desired width. Resulting document is formatted then to given
--  width by printer.
--

with League.Strings;
with League.String_Vectors;
private with Ada.Containers.Vectors;
private with Ada.Containers.Hashed_Maps;

package League.Pretty_Printers is

   type Printer is tagged limited private;
   type Printer_Access is access all Printer'Class;

   type Document is tagged private;

   not overriding function New_Document
     (Self : access Printer'Class) return Document;
   --  Create empty document

   not overriding function Put
     (Self  : Document'Class;
      Right : League.Strings.Universal_String) return Document;
   --  Append a string to given document

   not overriding procedure Put
     (Self   : in out Document;
      Right  : League.Strings.Universal_String);
   --  Append a string to given document

   not overriding function Put
     (Self  : Document'Class;
      Right : Wide_Wide_String) return Document;
   --  Append a string to given document

   not overriding procedure Put
     (Self   : in out Document;
      Right  : Wide_Wide_String);
   --  Append a string to given document

   not overriding procedure Put_Line
     (Self  : in out Document;
      Right : Wide_Wide_String);
   --  Append a string to given document and then new line

   not overriding function New_Line
     (Self : Document'Class;
      Gap  : Wide_Wide_String := " ") return Document;
   --  Append a new line to given document

   not overriding procedure New_Line
     (Self : in out Document;
      Gap  : Wide_Wide_String := " ");
   --  Append a new line to given document

   not overriding function Nest
     (Self   : Document'Class;
      Indent : Natural) return Document;
   --  Create document where each new line appended with Indent spaces

   not overriding procedure Nest
     (Self   : in out Document;
      Indent : Natural);
   --  Append each new line with Indent spaces

   not overriding function Append
     (Self  : Document'Class;
      Right : Document'Class) return Document;
   --  Create document as join text from two documents

   not overriding procedure Append
     (Self   : in out Document;
      Right  : Document'Class);
   --  Append a document to Self

   not overriding function Group (Self : Document'Class) return Document;
   --  Group all new lines in Self documend to fold them altogether

   not overriding procedure Group
     (Self : in out Document);
   --  Group all new lines in Self documend to fold them altogether

   function Pretty
     (Self   : in out Printer;
      Width  : Positive;
      Input  : Document'Class)
        return League.String_Vectors.Universal_String_Vector;
   --  Convert Input document to string with given prefered line Width

private

   type Document_Index is new Positive;

   type Output_Kinds is
     (Empty_Output,
      Text_Output,
      New_Line_Output,
      Nest_Output,
      Concat_Output,
      Union_Output);

   type Output_Item (Kind : Output_Kinds := Empty_Output) is record
      case Kind is
         when Empty_Output =>
            null;
         when New_Line_Output =>
            Gap  : League.Strings.Universal_String;
         when Text_Output =>
            Text : League.Strings.Universal_String;
         when Nest_Output =>
            Indent : Natural := 0;
            Down   : Document_Index;
         when Union_Output | Concat_Output =>
            Left, Right : Document_Index;
            --  For union there is next invariant:
            --  Length (First_Line (left)) >= Max (Length (First_Line (right)))
      end case;
   end record;

   function Hash (Item : Output_Item) return Ada.Containers.Hash_Type;

   package Maps is new Ada.Containers.Hashed_Maps
     (Key_Type        => Output_Item,
      Element_Type    => Document_Index,
      Hash            => Hash,
      Equivalent_Keys => "=",
      "="             => "=");

   package Output_Item_Vectors is new Ada.Containers.Vectors
     (Index_Type   => Document_Index,
      Element_Type => Output_Item,
      "="          => "=");

   type Printer is tagged limited record
      Store : Output_Item_Vectors.Vector;
      Back  : Maps.Map;
   end record;

   procedure Concat
     (Self   : in out Printer;
      Left   : Document_Index;
      Right  : Document_Index;
      Result : out Document_Index);

   procedure Group
     (Self   : in out Printer;
      Input  : Document_Index;
      Result : out Document_Index);

   procedure Nest
     (Self   : in out Printer;
      Indent : Natural;
      Input  : Document_Index;
      Result : out Document_Index);

   procedure New_Line
     (Self   : in out Printer;
      Result : out Document_Index;
      Gap    : League.Strings.Universal_String);

   procedure Nil
     (Self   : in out Printer;
      Result : out Document_Index);

   procedure Text
     (Self   : in out Printer;
      Line   : League.Strings.Universal_String;
      Result : out Document_Index);

   procedure Append
     (Self  : in out Printer;
      Item  : Output_Item;
      Index : out Document_Index);

   procedure Flatten
     (Self   : in out Printer;
      Input  : Document_Index;
      Result : out Document_Index);

   type Document is tagged record
      Printer : Printer_Access;
      Index   : Document_Index;
   end record;

end League.Pretty_Printers;
