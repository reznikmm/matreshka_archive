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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Strings.Internals;
with Matreshka.Internals.Unicode;
with Ada.Wide_Wide_Text_IO;

use Ada.Wide_Wide_Text_IO;

package body XML.SAX.Pretty_Writers is

   use Matreshka.Internals.Unicode;
   use League.Strings.Internals;
   use type Ada.Containers.Count_Type;

   use type League.Strings.Universal_String;

   function "+" (Item : Wide_Wide_String)
     return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   Tmp_Mapping : Mapping_Vectors.Vector;

   function Image (X_V : XML_Version) return League.Strings.Universal_String;

   Default_Mapping : constant Mapping_Record
     := (Prefix => +"xml",
         Namespace_URI => +"http://www.w3.org/XML/1998/namespace");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Tag_Opened then
         Self.Text.Append (+">");
         Self.Tag_Opened := False;
      end if;

      Self.Text.Append (Self.Escape (Text));
   end Characters;

   -------------
   -- Comment --
   -------------

   overriding procedure Comment
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Text.Append (+"<!-- ");
      Self.Text.Append (Text);
      Self.Text.Append (+" -->");
   end Comment;

   ---------------
   -- End_CDATA --
   ---------------

   overriding procedure End_CDATA
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end End_CDATA;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      if Self.Nesting /= 0 then
         Success := False;
         return;
      end if;
   end End_Document;

   -------------
   -- End_DTD --
   -------------

   overriding procedure End_DTD
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end End_DTD;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out SAX_Pretty_Writer;
     Namespace_URI  : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Local_Name     : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Qualified_Name : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Success        : in out Boolean)
   is
   begin
      if Self.Tag_Opened then
         Self.Text.Append (+"/>");
         Self.Tag_Opened := False;
      else
         Self.Text.Append (+"</");

         if not Local_Name.Is_Empty and not Qualified_Name.Is_Empty then
            --  XXX error should be reported
            Success := False;
            return;
         end if;

         if not Local_Name.Is_Empty then
            if Namespace_URI.Is_Empty then
               --  XXX error should be reported
               Success := False;
               return;
            end if;

            Self.Pop (Self.Scope);

            for J in 0 .. Integer (Self.Scope.Mapping.Length) - 1 loop
               if Self.Scope.Mapping.Element (J).Namespace_URI
                 = Namespace_URI then
                  if not Self.Scope.Mapping.Element (J).Prefix.Is_Empty then
                     Self.Text.Append
                      (Self.Scope.Mapping.Element (J).Prefix & ":");
                  end if;
               end if;
            end loop;

            Self.Text.Append (Local_Name);

            if Self.Scope.Tag = Local_Name then
               Self.Stack.Delete_Last;
            end if;

            Self.Scope.Mapping.Clear;
            Self.Scope.Tag := League.Strings.Empty_Universal_String;

         elsif not Qualified_Name.Is_Empty then
            Self.Text.Append (Qualified_Name);

         else
            --  XXX error should be reported
            Success :=  False;
         end if;

         Self.Text.Append (+">");
      end if;

      Self.Nesting := Self.Nesting - 1;
      Success := True;
   end End_Element;

   ----------------
   -- End_Entity --
   ----------------

   overriding procedure End_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end End_Entity;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding procedure End_Prefix_Mapping
    (Self    : in out SAX_Pretty_Writer;
     Prefix  : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Success : in out Boolean)
   is
   begin
      null;
   end End_Prefix_Mapping;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : SAX_Pretty_Writer) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   ------------
   -- Escape --
   ------------

   function Escape
    (Self : SAX_Pretty_Writer;
     Text : League.Strings.Universal_String)
      return League.Strings.Universal_String
   is
      Code : Code_Point;

   begin
      return Result : League.Strings.Universal_String do
         for J in 1 .. Text.Length loop
            Code := Get_Code (Text.Element (J));

            case Text.Element (J) is
               when '&' =>
                  Result := Result & "&amp;";

               when ''' =>
                  Result := Result & "&apos;";

               when '"' =>
                  Result := Result & "&quot;";

               when '>' =>
                  Result := Result & "&gt;";

               when '<' =>
                  Result := Result & "&lt;";

               when others =>
                  --  Add support of choosing of Hexademical
                  --  or Digital representation of Character references
                  --  XML_1_1 2.2 Characters

                  if Self.Version = XML_1_1 then
                     if Code in 16#1#  .. 16#8#
                       or Code in 16#B#  .. 16#C#
                       or Code in 16#E#  .. 16#1F#
                       or Code in 16#7F# .. 16#84#
                       or Code in 16#86# .. 16#9F#
                     then
                        declare
                           Image : constant Wide_Wide_String :=
                             Code_Unit_32'Wide_Wide_Image (Code);

                        begin
                           Result := Result
                             & "&#"
                             & Image (Image'First + 1 .. Image'Last)
                             & ";";
                        end;
                     end if;
                  else
                     Result.Append (Text.Element (J).To_Wide_Wide_Character);
                  end if;
            end case;
         end loop;
      end return;
   end Escape;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out SAX_Pretty_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Ignorable_Whitespace;

   -----------
   -- Image --
   -----------

   function Image (X_V : XML_Version) return League.Strings.Universal_String is
   begin
      case X_V is
         when XML_1_0 =>
            return +"1.0";

         when XML_1_1 =>
            return +"1.1";
      end case;
   end Image;

   ---------
   -- Pop --
   ---------
   procedure Pop (Self  : in out SAX_Pretty_Writer;
                  Scope : out Mapping_Scope) is
   begin
      Scope := Self.Stack.Last_Element;
   end Pop;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out SAX_Pretty_Writer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Processing_Instruction;

   ----------
   -- Push --
   ----------
   procedure Push (Self  : in out SAX_Pretty_Writer;
                   Scope : Mapping_Scope) is
   begin
      Self.Stack.Append (Scope);
   end Push;

   -----------------
   -- Set_Version --
   -----------------

   procedure Set_Version
     (Self    : in out SAX_Pretty_Writer;
      Version : XML_Version) is
   begin
      Self.Version := Version;
   end Set_Version;

   --------------------
   -- Skipped_Entity --
   --------------------

   overriding procedure Skipped_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Skipped_Entity;

   -----------------
   -- Start_CDATA --
   -----------------

   overriding procedure Start_CDATA
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      null;
   end Start_CDATA;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out SAX_Pretty_Writer;
     Success : in out Boolean) is
   begin
      Self.Text.Append
        (+"<?xml version="""
           & Image (Self.Version)
           & (+"""?>"));
      Self.Nesting := 0;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   overriding procedure Start_DTD
    (Self      : in out SAX_Pretty_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     System_Id : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Success   : in out Boolean) is
   begin
      null;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out SAX_Pretty_Writer;
     Namespace_URI  : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Local_Name     : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Qualified_Name : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes
       := XML.SAX.Attributes.Empty_SAX_Attributes;
     Success        : in out Boolean)
   is
      NS    : League.Strings.Universal_String;

   begin
      --  Closing Tag, which was opened before.
      if Self.Tag_Opened then
         Self.Text.Append (+">");
         Self.Tag_Opened := False;
      end if;

      --  Push to stack namspaces scope, formed during S_Prefix_Mapping
      if not Tmp_Mapping.Is_Empty then
         Self.Push ((Mapping => Tmp_Mapping,
                     Tag     => Local_Name));
      end if;

      Self.Text.Append (+"<");

      if not Local_Name.Is_Empty and not Qualified_Name.Is_Empty then
         Success := False;
         return;
      end if;

      if not Local_Name.Is_Empty then
         if Namespace_URI.Is_Empty then
            Success := False;
            return;
         end if;

         Self.Pop (Self.Scope);

         for J in 0 .. Integer (Self.Scope.Mapping.Length) - 1 loop

            --  If adding namespaces for the first element,
            --  than we should add all of them
            if not Tmp_Mapping.Is_Empty then
               NS := NS & " xmlns";

               if not Self.Scope.Mapping.Element (J).Prefix.Is_Empty then
                  --  Adding prefix to xmlns attribute
                  NS.Append (":" & Self.Scope.Mapping.Element (J).Prefix);
               end if;

               NS.Append ("="""
                            & Self.Scope.Mapping.Element (J).Namespace_URI
                            & """");
            end if;

            --  Adding prefix to tag
            if Self.Scope.Mapping.Element (J).Namespace_URI = Namespace_URI then
               if not Self.Scope.Mapping.Element (J).Prefix.Is_Empty then
                  Self.Text.Append
                   (Self.Scope.Mapping.Element (J).Prefix & ":");
               end if;
            end if;
         end loop;

         Self.Text.Append (Local_Name);

         Self.Text.Append (NS);

      elsif not Qualified_Name.Is_Empty then
         Self.Text.Append (Qualified_Name);
      end if;

      --  Setting attributes

      for J in 1 .. Attributes.Length loop
         if not Attributes.Local_Name (J).Is_Empty then
            if not Attributes.Namespace_URI (J).Is_Empty then
               Self.Text.Append (+" ");

               if Attributes.Namespace_URI (J)
                 = Default_Mapping.Namespace_URI then
                  Self.Text.Append (Default_Mapping.Prefix);
                  Self.Text.Append (+":");
               else
                  for X in 0 .. Integer (Self.Scope.Mapping.Length) - 1 loop
                     if Attributes.Namespace_URI (J)
                       = Self.Scope.Mapping.Element (X).Namespace_URI then
                        if not
                          Self.Scope.Mapping.Element (X).Prefix.Is_Empty then
                           Self.Text.Append
                             (Self.Scope.Mapping.Element (X).Prefix);
                           Self.Text.Append (+":");
                        end if;
                     end if;
                  end loop;
               end if;

               Self.Text.Append (Attributes.Local_Name (J));
               Self.Text.Append (+"=""");
               Self.Text.Append (Attributes.Value (J));
               Self.Text.Append (+"""");

            else
               --  XXX: Error should be reported
               Success := False;
               return;
            end if;

         elsif not Attributes.Qualified_Name (J).Is_Empty then
            Self.Text.Append (+" ");
            Self.Text.Append (Attributes.Qualified_Name (J));
            Self.Text.Append (+"=""");
            Self.Text.Append (Attributes.Value (J));
            Self.Text.Append (+"""");

         else
            --  XXX: Error should be reported
            Success := False;
            return;
         end if;

      end loop;

      Self.Nesting := Self.Nesting + 1;
      Self.Tag_Opened := True;
      Success := True;
      Tmp_Mapping.Clear;
   end Start_Element;

   ------------------
   -- Start_Entity --
   ------------------

   overriding procedure Start_Entity
    (Self    : in out SAX_Pretty_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      null;
   end Start_Entity;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out SAX_Pretty_Writer;
     Prefix        : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      if Namespace_URI.Is_Empty then
         --  XXX error should be reported
         Success := False;
         return;
      end if;

      --  Append prefix mapping, to temp set of mapping scope
      Tmp_Mapping.Append ((Prefix => Prefix,
                           Namespace_URI => Namespace_URI));
   end Start_Prefix_Mapping;

   ----------
   -- Text --
   ----------

   not overriding function Text
    (Self : SAX_Pretty_Writer) return League.Strings.Universal_String is
   begin
      return Self.Text;
   end Text;

end XML.SAX.Pretty_Writers;
