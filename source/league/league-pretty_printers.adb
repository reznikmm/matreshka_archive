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

with League.Strings.Hash;

package body League.Pretty_Printers is

   ------------
   -- Append --
   ------------

   procedure Append
     (Self  : in out Printer;
      Item  : Output_Item;
      Index : out Document_Index)
   is
      Cursor : constant Maps.Cursor := Self.Back.Find (Item);
   begin
      if Maps.Has_Element (Cursor) then
         Index := Maps.Element (Cursor);
      else
         Self.Store.Append (Item);
         Index := Self.Store.Last_Index;
         Self.Back.Insert (Item, Index);
      end if;
   end Append;

   ------------
   -- Append --
   ------------

   not overriding function Append
     (Self  : Document'Class;
      Right : Document'Class) return Document
   is
      Index : Document_Index;
   begin
      Self.Printer.Concat (Self.Index, Right.Index, Index);
      return (Self.Printer, Index);
   end Append;

   ------------
   -- Append --
   ------------

   not overriding procedure Append
     (Self   : in out Document;
      Right  : Document'Class) is
   begin
      Self.Printer.Concat (Self.Index, Right.Index, Self.Index);
   end Append;

   ------------
   -- Concat --
   ------------

   procedure Concat
     (Self   : in out Printer;
      Left   : Document_Index;
      Right  : Document_Index;
      Result : out Document_Index) is
   begin
      Self.Append ((Concat_Output, Left, Right), Result);
   end Concat;

   -------------
   -- Flatten --
   -------------

   procedure Flatten
     (Self   : in out Printer;
      Input  : Document_Index;
      Result : out Document_Index)
   is
      Item : constant Output_Item := Self.Store.Element (Input);
      Temp : Document_Index;
      Down : Document_Index;
   begin
      case Item.Kind is
         when Empty_Output | Text_Output =>
            Result := Input;

         when Concat_Output =>
            Self.Flatten (Item.Left, Down);
            Self.Flatten (Item.Right, Temp);
            Self.Append ((Concat_Output, Down, Temp), Result);

         when Nest_Output =>
            Self.Flatten (Item.Down, Result);

         when New_Line_Output =>
            declare
               Space : constant Output_Item :=
                 (Kind => Text_Output, Text => Item.Gap);
            begin
               Self.Append (Space, Result);
            end;

         when Union_Output =>
            Self.Flatten (Item.Left, Result);

      end case;
   end Flatten;

   -----------
   -- Group --
   -----------

   procedure Group
     (Self   : in out Printer;
      Input  : Document_Index;
      Result : out Document_Index)
   is
      Down : Document_Index;
   begin
      Self.Flatten (Input, Down);

      if Input = Down  then
         Result := Input;
      else
         Self.Append ((Union_Output, Down, Input), Result);
      end if;
   end Group;

   -----------
   -- Group --
   -----------

   not overriding function Group (Self : Document'Class) return Document is
      Index : Document_Index;
   begin
      Self.Printer.Group (Self.Index, Index);
      return (Self.Printer, Index);
   end Group;

   -----------
   -- Group --
   -----------

   not overriding procedure Group (Self : in out Document) is
   begin
      Self.Printer.Group (Self.Index, Self.Index);
   end Group;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Output_Item) return Ada.Containers.Hash_Type is
      use type Ada.Containers.Hash_Type;

   begin
      case Item.Kind is
         when Empty_Output =>
            return 1;

         when New_Line_Output =>
            return League.Strings.Hash (Item.Gap) * 11;

         when Text_Output =>
            return League.Strings.Hash (Item.Text);

         when Nest_Output =>
            return Ada.Containers.Hash_Type (Item.Indent) * 1046527 +
              Ada.Containers.Hash_Type (Item.Down);

         when Union_Output =>
            return Ada.Containers.Hash_Type (Item.Left) * 1046527 +
              16127 * Ada.Containers.Hash_Type (Item.Right);

         when Concat_Output =>
            return Ada.Containers.Hash_Type (Item.Left) * 1046527 -
              16127 * Ada.Containers.Hash_Type (Item.Right);
      end case;
   end Hash;

   ----------
   -- Nest --
   ----------

   procedure Nest
     (Self   : in out Printer;
      Indent : Natural;
      Input  : Document_Index;
      Result : out Document_Index) is
   begin
      Self.Append ((Nest_Output, Indent, Input), Result);
   end Nest;

   ----------
   -- Nest --
   ----------

   not overriding function Nest
     (Self   : Document'Class;
      Indent : Natural) return Document
   is
      Index : Document_Index;
   begin
      Self.Printer.Nest (Indent, Self.Index, Index);
      return (Self.Printer, Index);
   end Nest;

   ----------
   -- Nest --
   ----------

   not overriding procedure Nest
     (Self   : in out Document;
      Indent : Natural) is
   begin
      Self.Printer.Nest (Indent, Self.Index, Self.Index);
   end Nest;

   ------------------
   -- New_Document --
   ------------------

   not overriding function New_Document
     (Self : access Printer'Class) return Document
   is
      Index : Document_Index;
   begin
      Self.Nil (Index);
      return (Self.all'Unchecked_Access, Index);
   end New_Document;

   --------------
   -- New_Line --
   --------------

   procedure New_Line
     (Self   : in out Printer;
      Result : out Document_Index;
      Gap    : League.Strings.Universal_String) is
   begin
      Self.Append ((New_Line_Output, Gap), Result);
   end New_Line;

   --------------
   -- New_Line --
   --------------

   not overriding function New_Line
     (Self : Document'Class;
      Gap  : Wide_Wide_String := " ") return Document
   is
      Index : Document_Index;
   begin
      Self.Printer.New_Line (Index, League.Strings.To_Universal_String (Gap));
      Self.Printer.Concat (Self.Index, Index, Index);
      return (Self.Printer, Index);
   end New_Line;

   --------------
   -- New_Line --
   --------------

   not overriding procedure New_Line
     (Self : in out Document;
      Gap  : Wide_Wide_String := " ")
   is
      Index : Document_Index;
   begin
      Self.Printer.New_Line (Index, League.Strings.To_Universal_String (Gap));
      Self.Printer.Concat (Self.Index, Index, Self.Index);
   end New_Line;

   ---------
   -- Nil --
   ---------

   procedure Nil
     (Self   : in out Printer;
      Result : out Document_Index) is
   begin
      Self.Append ((Kind => Empty_Output), Result);
   end Nil;

   ------------
   -- Pretty --
   ------------

   function Pretty
     (Self   : in out Printer;
      Width  : Positive;
      Input  : Document'Class)
        return League.String_Vectors.Universal_String_Vector
   is
      package Formatted_Documents is

         --  Formatted document is represented as sequence of Items.
         --  Item is either text (without new line) or
         --  new line together with indent spaces.

         type Item;
         type Document is access all Item'Class;

         type Item is abstract tagged limited record
            Next : aliased Document;
         end record;

         type Text_Collector is record
            Lines     : League.String_Vectors.Universal_String_Vector;
            Last      : League.Strings.Universal_String;
            Last_Used : Boolean := False;
         end record;

         procedure Append_Last_Line (Result : in out Text_Collector);

         not overriding procedure Append
           (Self   : Item;
            Result : in out Text_Collector) is abstract;
         --  Append text representation of given item to Result

         type Text_Item is new Item with record
            Text : League.Strings.Universal_String;
         end record;

         overriding procedure Append
           (Self   : Text_Item;
            Result : in out Text_Collector);

         type Line_Item is new Item with record
            Indent : Natural;
         end record;

         overriding procedure Append
           (Self   : Line_Item;
            Result : in out Text_Collector);

         type Pair;
         type Pair_Access is access all Pair;

         type Pair is record
            Indent   : Natural;
            Document : Pretty_Printers.Document_Index;
            Next     : Pair_Access;
         end record;

         function New_Pair
           (Indent : Natural;
            Doc    : Pretty_Printers.Document_Index;
            Next   : Pair_Access) return not null Pair_Access;

         function Best
           (Offset : Natural;
            List   : not null Pair_Access) return Document;

         function Layout (Input : Document)
           return League.String_Vectors.Universal_String_Vector;

      end Formatted_Documents;

      package body Formatted_Documents is

         Free_List : Pair_Access;

         function Fits
           (Offset : Natural;
            List   : not null Pair_Access) return Boolean;

         procedure Free_Pair (Value : Pair_Access);

         ------------
         -- Append --
         ------------

         overriding procedure Append
           (Self   : Text_Item;
            Result : in out Text_Collector) is
         begin
            Result.Last.Append (Self.Text);
            Result.Last_Used := True;
         end Append;

         ------------
         -- Append --
         ------------

         overriding procedure Append
           (Self   : Line_Item;
            Result : in out Text_Collector)
         is
            Space : constant Wide_Wide_String := (1 .. Self.Indent => ' ');
         begin
            Append_Last_Line (Result);
            Result.Last.Append (Space);
         end Append;

         ----------------------
         -- Append_Last_Line --
         ----------------------

         procedure Append_Last_Line (Result : in out Text_Collector) is
         begin
            if not Result.Last_Used then
               Result.Last_Used := True;
            elsif Result.Last.Count (' ') = Result.Last.Length then
               --  if line with spaces only, output an empty line
               Result.Last.Clear;
               Result.Lines.Append (Result.Last);
            else
               Result.Lines.Append (Result.Last);
               Result.Last.Clear;
            end if;
         end Append_Last_Line;

         ----------
         -- Best --
         ----------

         function Best
           (Offset : Natural;
            List   : not null Pair_Access) return Document
         is
            Placed : Natural := Offset;
            Head   : not null Pair_Access := List;
            Tail   : Pair_Access;  --  Shortcut for Head.Next
            Result : aliased Document;
            Hook   : access Document := Result'Access;
            Indent : Natural;
            Item   : Pretty_Printers.Output_Item;
            Pairs  : Natural := 0; --  Count of pair at the top of Tail
            --  allocated in this call of Fits
         begin
            loop
               Indent := Head.Indent;
               Tail := Head.Next;
               Item := Self.Store.Element (Head.Document);

               if Pairs > 0 then
                  Pairs := Pairs - 1;
                  Free_Pair (Head);
               end if;

               case Item.Kind is
                  when Empty_Output =>
                     exit when Tail = null;

                     Head := Tail;

                  when Concat_Output =>
                     Head := New_Pair (Indent, Item.Right, Tail);
                     Head := New_Pair (Indent, Item.Left, Head);

                     Pairs := Pairs + 2;

                  when Nest_Output =>
                     Head := New_Pair (Indent + Item.Indent, Item.Down, Tail);
                     Pairs := Pairs + 1;

                  when Text_Output =>
                     Hook.all := new Text_Item'(null, Item.Text);

                     exit when Tail = null;

                     Hook   := Hook.all.Next'Access;
                     Placed := Placed + Item.Text.Length;
                     Head   := Tail;

                  when New_Line_Output =>
                     Hook.all := new Line_Item'(null, Indent);

                     exit when Tail = null;

                     Hook   := Hook.all.Next'Access;
                     Placed := Indent;
                     Head   := Tail;

                  when Union_Output =>
                     if Width >= Placed then
                        Head := New_Pair (Indent, Item.Left, Tail);

                        if Fits (Placed, Head) then
                           Hook.all := Best (Placed, Head);
                           Free_Pair (Head);

                           exit;
                        end if;
                     end if;

                     Head := New_Pair (Indent, Item.Right, Tail);

                     Hook.all := Best (Placed, Head);
                     Free_Pair (Head);

                     exit;
               end case;
            end loop;

            --  Here we can free any Pair allocated in this call
            for J in 1 .. Pairs loop
               Head := Tail;
               Tail := Tail.Next;
               Free_Pair (Head);
            end loop;

            return Result;
         end Best;

         ----------
         -- Fits --
         ----------

         function Fits
           (Offset : Natural;
            List   : not null Pair_Access) return Boolean
         is
            --  This is simplified version of Best that check if result of
            --  corresponding Best call fits into Width or not without
            --  actual constructing of formated document
            Placed : Natural := Offset;
            Head   : not null Pair_Access := List;
            Tail   : Pair_Access;  --  Shortcut for Head.Next
            Result : Boolean := False;
            Indent : Natural;
            Item   : Pretty_Printers.Output_Item;
            Pairs  : Natural := 0; --  Count of pair at the top of Tail
            --  allocated in this call of Fits
         begin
            loop
               Indent := Head.Indent;
               Tail := Head.Next;
               Item := Self.Store.Element (Head.Document);

               if Pairs > 0 then
                  Pairs := Pairs - 1;
                  Free_Pair (Head);
               end if;

               case Item.Kind is
                  when Empty_Output =>
                     exit when Tail = null;

                     Head := Tail;

                  when Concat_Output =>
                     Head := New_Pair (Indent, Item.Right, Tail);
                     Head := New_Pair (Indent, Item.Left, Head);

                     Pairs := Pairs + 2;

                  when Nest_Output =>
                     Head := New_Pair (Indent + Item.Indent, Item.Down, Tail);
                     Pairs := Pairs + 1;

                  when Text_Output =>
                     Placed := Placed + Item.Text.Length;

                     if Tail = null or Placed > Width then
                        Result := Placed <= Width;
                        exit;
                     end if;

                     Head   := Tail;

                  when New_Line_Output =>
                     Result := True;
                     exit;

                  when Union_Output =>
                     if Width >= Placed then
                        Head := New_Pair (Indent, Item.Left, Tail);

                        Result := Fits (Placed, Head);
                        Free_Pair (Head);

                        exit when Result;

                     end if;

                     Head := New_Pair (Indent, Item.Right, Tail);

                     Result := Fits (Placed, Head);
                     Free_Pair (Head);

                     exit;
               end case;
            end loop;

            --  Here we can free any Pair allocated in this call
            for J in 1 .. Pairs loop
               Head := Tail;
               Tail := Tail.Next;
               Free_Pair (Head);
            end loop;

            return Result;
         end Fits;

         ---------------
         -- Free_Pair --
         ---------------

         procedure Free_Pair (Value : Pair_Access) is
         begin
            Value.Next := Free_List;
            Free_List := Value;
         end Free_Pair;

         ------------
         -- Layout --
         ------------

         function Layout (Input : Document)
           return League.String_Vectors.Universal_String_Vector
         is
            Next   : Document := Input;
            Result : Text_Collector;
         begin
            while Next /= null loop
               Next.Append (Result);
               Next := Next.Next;
            end loop;

            Append_Last_Line (Result);

            return Result.Lines;
         end Layout;

         --------------
         -- New_Pair --
         --------------

         function New_Pair
           (Indent : Natural;
            Doc    : Pretty_Printers.Document_Index;
            Next   : Pair_Access) return not null Pair_Access is
         begin
            if Free_List = null then
               return new Pair'(Indent, Doc, Next);
            else
               return Value : constant not null Pair_Access := Free_List do
                  Free_List := Value.Next;
                  Value.all := (Indent, Doc, Next);
               end return;
            end if;
         end New_Pair;

      end Formatted_Documents;

      Temp : Formatted_Documents.Document;
   begin
      Temp := Formatted_Documents.Best
        (Offset => 0,
         List   => Formatted_Documents.New_Pair (0, Input.Index, null));

      return Formatted_Documents.Layout (Temp);
   end Pretty;

   ---------
   -- Put --
   ---------

   not overriding function Put
     (Self  : Document'Class;
      Right : League.Strings.Universal_String) return Document
   is
      Index : Document_Index;
   begin
      Self.Printer.Text (Right, Index);
      Self.Printer.Concat (Self.Index, Index, Index);
      return (Self.Printer, Index);
   end Put;

   ---------
   -- Put --
   ---------

   not overriding function Put
     (Self  : Document'Class;
      Right : Wide_Wide_String) return Document is
   begin
      return Self.Put (League.Strings.To_Universal_String (Right));
   end Put;

   ---------
   -- Put --
   ---------

   not overriding procedure Put
     (Self   : in out Document;
      Right  : League.Strings.Universal_String)
   is
      Index : Document_Index;
   begin
      Self.Printer.Text (Right, Index);
      Self.Printer.Concat (Self.Index, Index, Self.Index);
   end Put;

   ---------
   -- Put --
   ---------

   not overriding procedure Put
     (Self   : in out Document;
      Right  : Wide_Wide_String) is
   begin
      Self.Put (League.Strings.To_Universal_String (Right));
   end Put;

   --------------
   -- Put_Line --
   --------------

   not overriding procedure Put_Line
     (Self   : in out Document;
      Right : Wide_Wide_String) is
   begin
      Self.Put (Right);
      Self.New_Line;
   end Put_Line;

   ----------
   -- Text --
   ----------

   procedure Text
     (Self   : in out Printer;
      Line   : League.Strings.Universal_String;
      Result : out Document_Index) is
   begin
      Self.Append ((Text_Output, Line), Result);
   end Text;

end League.Pretty_Printers;
