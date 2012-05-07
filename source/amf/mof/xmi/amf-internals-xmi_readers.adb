------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Unchecked_Deallocation;

with XML.SAX.Input_Sources;
with XML.SAX.Parse_Exceptions.Internals;
with XML.SAX.Simple_Readers;

with AMF.CMOF.Associations;
with AMF.CMOF.Properties.Collections;
pragma Unreferenced (AMF.CMOF.Properties.Collections);
--  XXX GNAT Pro 7.1.0w (20120405) reports unused package.
with AMF.Internals.XMI_Handlers;

package body AMF.Internals.XMI_Readers is

   procedure Load_Document
    (Self : in out XMI_Reader'Class;
     URI  : League.Strings.Universal_String);

   --------------------
   -- Establish_Link --
   --------------------

   procedure Establish_Link
    (Extent        : not null AMF.URI_Stores.URI_Store_Access;
     Attribute     : not null AMF.CMOF.Properties.CMOF_Property_Access;
     One_Element   : not null AMF.Elements.Element_Access;
     Other_Element : not null AMF.Elements.Element_Access)
   is
      use type AMF.CMOF.Properties.CMOF_Property_Access;

      Association : constant AMF.CMOF.Associations.CMOF_Association_Access
        := Attribute.Get_Association;

   begin
      --  This subprograms take in sense constraint of MOF meta models to
      --  handle potentially duplicated links:
      --
      --  "[12] An Association has exactly 2 memberEnds, may never have a
      --  navigableOwnedEnd (they will always be owned by Classes) and may have
      --  at most one ownedEnd."

      if Association.Get_Owned_End.Length = 1 then
         --  One of the ends is owned by association, link must be created
         --  even when order of ends is reversed.

         if Association.Get_Member_End.Element (1) = Attribute then
            Extent.Create_Link (Association, One_Element, Other_Element);

         else
            Extent.Create_Link (Association, Other_Element, One_Element);
         end if;

      else
         --  None of ends are owned by association, link is created when
         --  specified attribute is a first end of the association to prevent
         --  duplicate links.

         if Association.Get_Member_End.Element (1) = Attribute then
            Extent.Create_Link (Association, One_Element, Other_Element);
         end if;
      end if;
   end Establish_Link;

   -------------------------------
   -- Load_Referenced_Documents --
   -------------------------------

   procedure Load_Referenced_Documents (Self : in out XMI_Reader'Class) is

      procedure Establish_Link (Position : Cross_Document_Link_Vectors.Cursor);

      --------------------
      -- Establish_Link --
      --------------------

      procedure Establish_Link
       (Position : Cross_Document_Link_Vectors.Cursor)
      is
         use type AMF.Elements.Element_Access;
         use type League.Strings.Universal_String;

         Link         : constant Cross_Document_Link
           := Cross_Document_Link_Vectors.Element (Position);
         Separator    : constant Natural := Link.Id.Index ('#');
         Document_URI : constant League.Strings.Universal_String
           := Link.Id.Slice (1, Separator - 1);
         Element_Id   : constant League.Strings.Universal_String
           := Link.Id.Slice (Separator + 1, Link.Id.Length);
         Element      : AMF.Elements.Element_Access;
         Success      : Boolean := True;

      begin
         --  Lookup for document and element in the document.

         declare
            Position : constant Universal_String_Extent_Maps.Cursor
              := Documents.Find (Document_URI);

         begin
            if Universal_String_Extent_Maps.Has_Element (Position) then
               Element :=
                 Universal_String_Extent_Maps.Element
                  (Position).Element (Element_Id);
            end if;
         end;

         if Element /= null then
            Establish_Link
             (Link.Extent, Link.Attribute, Link.Element, Element);

         else
            Self.Error_Handler.Error
             (XML.SAX.Parse_Exceptions.Internals.Create
               (Public_Id => Link.Public_Id,
                System_Id => Link.System_Id,
                Line      => Link.Line,
                Column    => Link.Column,
                Message   => "Unknown element '" & Link.Id & "'"),
              Success);

            if not Success then
               --  Error handling is not implemented.

               raise Program_Error;
            end if;
         end if;
      end Establish_Link;

      Position : Universal_String_Sets.Cursor;
      URI      : League.Strings.Universal_String;

   begin
      --  Load all referenced documents.

      while not Self.URI_Queue.Is_Empty loop
         Position := Self.URI_Queue.First;
         URI      := Universal_String_Sets.Element (Position);
         Self.URI_Queue.Delete (Position);

         --  Load document only when it is not loaded already. Some documents
         --  with circular dependencies can register loading of document when
         --  its loading was started but not completed yet.
         --
         --  XXX This need to be reviewed for new architecture of XMI reader.

         Self.Load_Document (URI);
      end loop;

      --  Resolve cross-document links.

      Self.Cross_Links.Iterate (Establish_Link'Access);
   end Load_Referenced_Documents;

   -------------------
   -- Load_Document --
   -------------------

   procedure Load_Document
    (Self : in out XMI_Reader'Class;
     URI  : League.Strings.Universal_String)
   is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (XML.SAX.Input_Sources.SAX_Input_Source'Class,
              XML.SAX.Input_Sources.SAX_Input_Source_Access);

      Source   : XML.SAX.Input_Sources.SAX_Input_Source_Access;
      Reader   : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Handler  : aliased AMF.Internals.XMI_Handlers.XMI_Handler (Self'Access);
      Success  : Boolean := True;

   begin
      --  Resolve XMI document.

      Self.Resolver.Resolve_Document (URI, Source, Success);

      --  Load document when it was resolved successfuly.
      --
      --  XXX It can be reasonable to report error here.

      if Success then
         Reader.Set_Content_Handler (Handler'Unchecked_Access);
         Reader.Set_Error_Handler (Handler'Unchecked_Access);
         Reader.Parse (Source);
      end if;

      --  Deallocate input source.

      Free (Source);
   end Load_Document;

end AMF.Internals.XMI_Readers;
