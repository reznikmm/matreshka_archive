------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2016, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.Spikedog_Deployment_Descriptors.Parsers is

   use type League.Strings.Universal_String;

   DD_Namespace_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://forge.ada-ru.org/matreshka/xml/ns/spikedogdd");

   Library_Name_Tag_Name     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("library-name");
   Servlet_Tag_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("servlet");
   Servlet_Name_Tag_Name     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("servlet-name");
   Servlet_Mapping_Tag_Name  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("servlet-mapping");
   Servlet_Tag_Tag_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("servlet-tag");
   URL_Pattern_Tag_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("url-pattern");
   Web_App_Tag_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("web-app");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Deployment_Descriptor_Parser;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      case Self.State is
         when Library_Name
           | Servlet_Name
           | Servlet_Tag
           | URL_Pattern
          =>
            Self.Text.Append (Text);

         when others =>
            null;
      end case;
   end Characters;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Deployment_Descriptor_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);
      pragma Unreferenced (Success);

   begin
      if Namespace_URI = DD_Namespace_URI then
         if Local_Name = Library_Name_Tag_Name then
            Self.Descriptor.Library_Name := Self.Text;
            Self.Text.Clear;

         elsif Local_Name = Servlet_Tag_Name then
            Self.Descriptor.Servlets.Append
             ((Name => Self.Servlet_Name,
               Tag  => Self.Servlet_Tag));
            Self.Servlet_Name.Clear;
            Self.Servlet_Tag.Clear;

         elsif Local_Name = Servlet_Mapping_Tag_Name then
            Self.Descriptor.Servlet_Mappings.Append
             ((Name         => Self.Servlet_Name,
               URL_Patterns => Self.URL_Patterns));
            Self.Servlet_Name.Clear;
            Self.URL_Patterns.Clear;

         elsif Local_Name = Servlet_Name_Tag_Name then
            Self.Servlet_Name := Self.Text;
            Self.Text.Clear;

         elsif Local_Name = Servlet_Tag_Tag_Name then
            Self.Servlet_Tag := Self.Text;
            Self.Text.Clear;

         elsif Local_Name = URL_Pattern_Tag_Name then
            Self.URL_Patterns.Append (Self.Text);
            Self.Text.Clear;
         end if;
      end if;

      Self.Pop;
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Deployment_Descriptor_Parser)
       return League.Strings.Universal_String is
   begin
      return Self.Diagnosis;
   end Error_String;

   --------------------------
   -- Error_Unexpected_Tag --
   --------------------------

   procedure Error_Unexpected_Tag
    (Self       : in out Deployment_Descriptor_Parser;
     Local_Name : League.Strings.Universal_String;
     Success    : out Boolean) is
   begin
      Self.Diagnosis := "Unexpected tag '" & Local_Name & ''';
      Success := False;
   end Error_Unexpected_Tag;

   ---------
   -- Pop --
   ---------

   procedure Pop (Self : in out Deployment_Descriptor_Parser) is
   begin
      Self.State := Self.Stack.Last_Element;
      Self.Stack.Delete_Last;
   end Pop;

   ----------
   -- Push --
   ----------

   procedure Push
    (Self  : in out Deployment_Descriptor_Parser;
     State : States) is
   begin
      Self.Stack.Append (Self.State);
      Self.State := State;
   end Push;

   -------------------------------
   -- Set_Deployment_Descriptor --
   -------------------------------

   procedure Set_Deployment_Descriptor
    (Self       : in out Deployment_Descriptor_Parser'Class;
     Descriptor : Deployment_Descriptor_Access) is
   begin
      Self.Descriptor := Descriptor;
   end Set_Deployment_Descriptor;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out Deployment_Descriptor_Parser;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.State := Initial;
      Self.Stack.Clear;
      Self.Diagnosis.Clear;
      Self.Text.Clear;
      Self.Servlet_Name.Clear;
      Self.Servlet_Tag.Clear;
      Self.URL_Patterns.Clear;
   end Start_Document;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Deployment_Descriptor_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Qualified_Name);
      pragma Unreferenced (Attributes);

   begin
      if Namespace_URI = DD_Namespace_URI then
         if Local_Name = Library_Name_Tag_Name then
            if Self.State = Web_App then
               Self.Push (Library_Name);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         elsif Local_Name = Servlet_Tag_Name then
            if Self.State = Web_App then
               Self.Push (Servlet);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         elsif Local_Name = Servlet_Mapping_Tag_Name then
            if Self.State = Web_App then
               Self.Push (Servlet_Mapping);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         elsif Local_Name = Servlet_Name_Tag_Name then
            if Self.State in Servlet | Servlet_Mapping then
               Self.Push (Servlet_Name);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         elsif Local_Name = Servlet_Tag_Tag_Name then
            if Self.State = Servlet then
               Self.Push (Servlet_Tag);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         elsif Local_Name = URL_Pattern_Tag_Name then
            if Self.State = Servlet_Mapping then
               Self.Push (URL_Pattern);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         elsif Local_Name = Web_App_Tag_Name then
            if Self.State = Initial then
               Self.Push (Web_App);

            else
               Self.Error_Unexpected_Tag (Local_Name, Success);

               return;
            end if;

         else
            Self.Diagnosis := "Unknown tag '" & Local_Name & ''';
            Success := False;
         end if;

      else
         Self.Diagnosis := "Unknown namespace '" & Namespace_URI & ''';
         Success := False;
      end if;
   end Start_Element;

end Matreshka.Spikedog_Deployment_Descriptors.Parsers;
