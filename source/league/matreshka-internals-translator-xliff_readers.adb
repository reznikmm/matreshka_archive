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

package body Matreshka.Internals.Translator.XLIFF_Readers is

   XLIFF_1_2_NS               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("urn:oasis:names:tc:xliff:document:1.2");
   Trolltech_NS               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("urn:trolltech:names:ts:document:1.0");
   Group_Name                 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("group");
   Restype_Name               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("restype");
   Resname_Name               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("resname");
   Source_Name                : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("source");
   Target_Name                : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("target");
   XLIFF_Name                 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("xliff");
   Trolltech_Linguist_Context : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("x-trolltech-linguist-context");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out XLIFF_Reader;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      if Self.In_Source then
         Self.Source.Append (Text);

      elsif Self.In_Target then
         Self.Target.Append (Text);
      end if;
   end Characters;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out XLIFF_Reader;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);
      pragma Unreferenced (Success);

   begin
      if Namespace_URI = XLIFF_1_2_NS
        and Local_Name = Source_Name
      then
         Self.In_Source := False;

      elsif Namespace_URI = XLIFF_1_2_NS
        and Local_Name = Target_Name
      then
         Self.In_Target := False;
         Self.Context.Translations.Insert (Self.Source, Self.Target);
      end if;
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : XLIFF_Reader) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out XLIFF_Reader;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);
      pragma Unreferenced (Success);

      use Context_Maps;

   begin
      if Namespace_URI = XLIFF_1_2_NS
        and Local_Name = Group_Name
      then
         if Attributes.Index (Restype_Name) /= 0
           and Attributes.Value (Restype_Name) = Trolltech_Linguist_Context
         then
            declare
               Context_Name : constant League.Strings.Universal_String
                 := Attributes.Value (Resname_Name);
               Position     : constant Context_Maps.Cursor
                 := Translations.Find (Context_Name);

            begin
               if Has_Element (Position) then
                  Self.Context := Element (Position);

               else
                  Self.Context :=
                    new Context_Record'
                         (Name         => Context_Name,
                          Translations => Universal_String_Maps.Empty_Map);
                  Translations.Insert (Context_Name, Self.Context);
               end if;
            end;
         end if;

      elsif Namespace_URI = XLIFF_1_2_NS
        and Local_Name = Source_Name
      then
         Self.Source.Clear;
         Self.In_Source := True;

      elsif Namespace_URI = XLIFF_1_2_NS
        and Local_Name = Target_Name
      then
         Self.Target.Clear;
         Self.In_Target := True;
      end if;
   end Start_Element;

end Matreshka.Internals.Translator.XLIFF_Readers;
