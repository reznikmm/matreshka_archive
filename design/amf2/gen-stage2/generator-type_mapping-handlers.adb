------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Wide_Wide_Text_IO;

with AMF.URI_Stores;

with AMF.Internals.XMI_Handlers;
--  XXX Internal structures are used now because of absence of user's API.

package body Generator.Type_Mapping.Handlers is

   use Ada.Wide_Wide_Text_IO;

   Literal_Tag_Name                 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("literal");
   Mapping_Tag_Name                 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("mapping");
   Type_Tag_Name                    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
   Ada_Package_Attribute_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("adaPackage");
   Ada_Literal_Attribute_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("adaLiteral");
   Ada_Type_Attribute_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("adaType");
   Internal_Ada_Type_Attribute_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("internalAdaType");
   Member_Name_Attribute_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("memberName");
   Member_Kind_Name_Attribute_Name  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("memberKindName");
   Representation_Attribute_Name    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("representation");
   URI_Attribute_Name               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uri");

   function Resolve
    (URI : League.Strings.Universal_String)
       return AMF.CMOF.Elements.CMOF_Element_Access;
   --  Resolves element.

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Mapping_Handler) return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (URI : League.Strings.Universal_String)
       return AMF.CMOF.Elements.CMOF_Element_Access
   is
      use type AMF.URI_Stores.URI_Store_Access;

      Separator : constant Natural := URI.Index ('#');
      Extent    : constant AMF.URI_Stores.URI_Store_Access
        := AMF.Internals.XMI_Handlers.Extent
            (URI.Slice (1, Separator - 1));
      Element   : AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      if Extent /= null then
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access
            (Extent.Element (URI.Slice (Separator + 1, URI.Length)));
      end if;

      return Element;
   end Resolve;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Mapping_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      use type League.Strings.Universal_String;
      use type AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      if Qualified_Name = Literal_Tag_Name then
         declare
            Element : AMF.CMOF.Elements.CMOF_Element_Access
              := Resolve (Attributes.Value (URI_Attribute_Name));
            Mapping : Enumeration_Literal_Mapping_Access;

         begin
            if Element = null then
               Put_Line
                (Standard_Error,
                 "Element '"
                   & Attributes.Value (URI_Attribute_Name).To_Wide_Wide_String
                   & "' is not found, ignoring");

            else
               if Literal.Contains (Element) then
                  Mapping := Literal.Element (Element);

               else
                  Mapping := new Enumeration_Literal_Mapping;
                  Literal.Insert (Element, Mapping);
               end if;

               Mapping.Ada_Name :=
                 Attributes.Value (Ada_Literal_Attribute_Name);
            end if;
         end;

      elsif Qualified_Name = Mapping_Tag_Name then
         declare
            Representation : constant Representation_Kinds
              := Representation_Kinds'Wide_Wide_Value
                  (Attributes.Value
                    (Representation_Attribute_Name).To_Wide_Wide_String);

         begin
            if Self.Mapping = null then
               return;
            end if;

            if Self.Mapping.Mapping (Representation) = null then
               Self.Mapping.Mapping (Representation) :=
                 new Representation_Mapping;
            end if;

            Self.Mapping.Mapping (Representation).Ada_Package :=
              Attributes.Value (Ada_Package_Attribute_Name);
            Self.Mapping.Mapping (Representation).Ada_Type :=
              Attributes.Value (Ada_Type_Attribute_Name);
            Self.Mapping.Mapping (Representation).Internal_Ada_Type :=
              Attributes.Value (Internal_Ada_Type_Attribute_Name);
            Self.Mapping.Mapping (Representation).Member_Name :=
              Attributes.Value (Member_Name_Attribute_Name);
            Self.Mapping.Mapping (Representation).Member_Kind_Name :=
              Attributes.Value (Member_Kind_Name_Attribute_Name);
         end;

      elsif Qualified_Name = Type_Tag_Name then
         Self.Element := Resolve (Attributes.Value (URI_Attribute_Name));
         Self.Mapping := null;

         if Self.Element = null then
            Put_Line
             (Standard_Error,
              "Element '"
                & Attributes.Value (URI_Attribute_Name).To_Wide_Wide_String
                & "' is not found, ignoring");

         else
            Self.Mapping := new Type_Mapping;
            Mapping.Insert (Self.Element, Self.Mapping);
         end if;
      end if;
   end Start_Element;

end Generator.Type_Mapping.Handlers;
