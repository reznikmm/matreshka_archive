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
--  XMI_Reader is primary component to handle loading of related XMI documents
--  and to resolve cross-document references.
------------------------------------------------------------------------------
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Hashed_Sets;
with Ada.Containers.Vectors;

with League.Strings.Hash;

with AMF.CMOF.Properties;
with AMF.Elements;
with AMF.Internals.XMI_Document_Resolvers;
with AMF.Internals.XMI_Error_Handlers;
with AMF.XMI.Document_Resolvers;
with AMF.XMI.Error_Handlers;
with AMF.URI_Stores;

package AMF.Internals.XMI_Readers is

   type XMI_Reader is tagged limited private;

   function Load
    (Self         : in out XMI_Reader'Class;
     Document_URI : League.Strings.Universal_String)
       return AMF.URI_Stores.URI_Store_Access;
   --  Loads specified document.

   procedure Postpone_Cross_Document_Link
    (Self         : in out XMI_Reader'Class;
     Element      : AMF.Elements.Element_Access;
     Attribute    : AMF.CMOF.Properties.CMOF_Property_Access;
     Extent       : AMF.URI_Stores.URI_Store_Access;
     Document_URI : League.Strings.Universal_String;
     Element_Id   : League.Strings.Universal_String;
     Public_Id    : League.Strings.Universal_String;
     System_Id    : League.Strings.Universal_String;
     Line         : Natural;
     Column       : Natural);
   --  Postpone establishment of cross-document link.

   function Error_Handler
    (Self : XMI_Reader'Class)
       return AMF.XMI.Error_Handlers.XMI_Error_Handler_Access;
   --  Returns registered XMI error handler.

   procedure Establish_Link
    (Extent        : not null AMF.URI_Stores.URI_Store_Access;
     Attribute     : not null AMF.CMOF.Properties.CMOF_Property_Access;
     One_Element   : not null AMF.Elements.Element_Access;
     Other_Element : not null AMF.Elements.Element_Access);
   --  Creates link between specified elements, but prevents to create
   --  duplicate links. Duplicate links are created for association which
   --  is not composition association, because opposite element referered
   --  on both ends.

   package Universal_String_Extent_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           AMF.URI_Stores.URI_Store_Access,
           League.Strings.Hash,
           League.Strings."=",
           AMF.URI_Stores."=");

   Documents : Universal_String_Extent_Maps.Map;
   --  Map file name of document to extent.

private

   package Universal_String_Sets is
     new Ada.Containers.Hashed_Sets
          (League.Strings.Universal_String,
           League.Strings.Hash,
           League.Strings."=",
           League.Strings."=");

   type Cross_Document_Link is record
      Element      : AMF.Elements.Element_Access;
      Attribute    : AMF.CMOF.Properties.CMOF_Property_Access;
      Extent       : AMF.URI_Stores.URI_Store_Access;
      Document_URI : League.Strings.Universal_String;
      Element_Id   : League.Strings.Universal_String;

      --  Location information for error reporting.

      Public_Id    : League.Strings.Universal_String;
      System_Id    : League.Strings.Universal_String;
      Line         : Natural;
      Column       : Natural;
   end record;

   package Cross_Document_Link_Vectors is
     new Ada.Containers.Vectors (Positive, Cross_Document_Link);

   Default_Document_Resolver : aliased
     AMF.Internals.XMI_Document_Resolvers.Default_Document_Resolver;
   --  Default XMI document resolver.

   Default_Error_Handler     : aliased
     AMF.Internals.XMI_Error_Handlers.Default_Error_Handler;
   --  Default XMI error handler.

   type XMI_Reader is tagged limited record
      Resolver      : AMF.XMI.Document_Resolvers.XMI_Document_Resolver_Access
        := Default_Document_Resolver'Access;
      --  Resolver of XMI documents.

      Error_Handler : AMF.XMI.Error_Handlers.XMI_Error_Handler_Access
        := Default_Error_Handler'Access;
      --  Error handler.

      URI_Queue     : Universal_String_Sets.Set;
      --  List of URIs to be loaded.

      Cross_Links   : Cross_Document_Link_Vectors.Vector;
   end record;

end AMF.Internals.XMI_Readers;
