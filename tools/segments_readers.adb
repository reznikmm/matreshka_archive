------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Text_IO;

package body Segments_Readers is

   use Ada.Strings.Unbounded;

   LDML_Tag          : constant String := "ldml";
   Identity_Tag      : constant String := "identity";
   Version_Tag       : constant String := "version";
   Generation_Tag    : constant String := "generation";
   Language_Tag      : constant String := "language";
   Segmentations_Tag : constant String := "segmentations";
   Segmentation_Tag  : constant String := "segmentation";
   Variables_Tag     : constant String := "variables";
   Variable_Tag      : constant String := "variable";
   Segment_Rules_Tag : constant String := "segmentRules";
   Rule_Tag          : constant String := "rule";

   Id_Attribute : constant String := "id";

--   function "+" (Right : String) return Unbounded_String
--     renames To_Unbounded_String;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
     (Self : in out Segments_Reader;
      Ch   : Unicode.CES.Byte_Sequence)
   is
   begin
      Append (Self.C, Ch);
   end Characters;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
     (Self          : in out Segments_Reader;
      Namespace_URI : Unicode.CES.Byte_Sequence := "";
      Local_Name    : Unicode.CES.Byte_Sequence := "";
      Qname         : Unicode.CES.Byte_Sequence := "")
   is
   begin
      if Local_Name = Variable_Tag
        or else Local_Name = Rule_Tag
      then
         Ada.Text_IO.Put_Line (To_String (Self.C));
      end if;
   end End_Element;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
     (Self          : in out Segments_Reader;
      Namespace_URI : Unicode.CES.Byte_Sequence := "";
      Local_Name    : Unicode.CES.Byte_Sequence := "";
      Qname         : Unicode.CES.Byte_Sequence := "";
      Attrs         : Sax.Attributes.Attributes'Class)
   is
   begin
      if Local_Name = LDML_Tag then
         null;

      elsif Local_Name = Identity_Tag then
         null;

      elsif Local_Name = Version_Tag then
         null;

      elsif Local_Name = Generation_Tag then
         null;

      elsif Local_Name = Language_Tag then
         null;

      elsif Local_Name = Segmentations_Tag then
         null;

      elsif Local_Name = Segmentation_Tag then
         null;

      elsif Local_Name = Variables_Tag then
         null;

      elsif Local_Name = Variable_Tag then
         Ada.Text_IO.Put (Attrs.Get_Value (Id_Attribute) & " := ");
         Self.C := Null_Unbounded_String;

      elsif Local_Name = Segment_Rules_Tag then
         null;

      elsif Local_Name = Rule_Tag then
         Ada.Text_IO.Put (Attrs.Get_Value (Id_Attribute) & " => ");
         Self.C := Null_Unbounded_String;

      else
         Ada.Text_IO.Put_Line (Local_Name);

         raise Program_Error;
      end if;
   end Start_Element;

end Segments_Readers;
