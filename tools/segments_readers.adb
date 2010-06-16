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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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
