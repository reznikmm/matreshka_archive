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
with Ada.Containers.Vectors;

with League.Strings;

package Matreshka.XML_Catalogs.Entry_Files is

   type Prefer_Mode is (System, Public);

   type Catalog_Entry_File is tagged;
   type Catalog_Entry_File_Access is access all Catalog_Entry_File;

   type Public_Entry;
   type Public_Entry_Access is access all Public_Entry;

   type System_Entry;
   type System_Entry_Access is access all System_Entry;

   type Rewrite_System_Entry;
   type Rewrite_System_Entry_Access is access all Rewrite_System_Entry;

   type System_Suffix_Entry;
   type System_Suffix_Entry_Access is access all System_Suffix_Entry;

   type Delegate_Public_Entry;
   type Delegate_Public_Entry_Access is access all Delegate_Public_Entry;

   type Delegate_System_Entry;
   type Delegate_System_Entry_Access is access all Delegate_System_Entry;

   type URI_Entry;
   type URI_Entry_Access is access all URI_Entry;

   type Rewrite_URI_Entry;
   type Rewrite_URI_Entry_Access is access all Rewrite_URI_Entry;

   type URI_Suffix_Entry;
   type URI_Suffix_Entry_Access is access all URI_Suffix_Entry;

   type Delegate_URI_Entry;
   type Delegate_URI_Entry_Access is access all Delegate_URI_Entry;

   package Catalog_Entry_File_Vectors is
     new Ada.Containers.Vectors (Positive, Catalog_Entry_File_Access);

   package Public_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, Public_Entry_Access);

   package System_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, System_Entry_Access);

   package Rewrite_System_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, Rewrite_System_Entry_Access);

   package System_Suffix_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, System_Suffix_Entry_Access);

   package Delegate_Public_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, Delegate_Public_Entry_Access);

   package Delegate_System_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, Delegate_System_Entry_Access);

   package URI_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, URI_Entry_Access);

   package Rewrite_URI_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, Rewrite_URI_Entry_Access);

   package URI_Suffix_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, URI_Suffix_Entry_Access);

   package Delegate_URI_Entry_Vectors is
     new Ada.Containers.Vectors (Positive, Delegate_URI_Entry_Access);

   type Public_Entry is limited record
      Public_Id : League.Strings.Universal_String;
      URI       : League.Strings.Universal_String;
      Prefer    : Prefer_Mode;
   end record;

   type System_Entry is limited record
      System_Id : League.Strings.Universal_String;
      URI       : League.Strings.Universal_String;
   end record;

   type Rewrite_System_Entry is limited record
      System_Id : League.Strings.Universal_String;
      Prefix    : League.Strings.Universal_String;
   end record;

   type System_Suffix_Entry is limited record
      System_Id : League.Strings.Universal_String;
      URI       : League.Strings.Universal_String;
   end record;

   type Delegate_Public_Entry is limited record
      Public_Id : League.Strings.Universal_String;
      Catalog   : League.Strings.Universal_String;
      Prefer    : Prefer_Mode;
   end record;

   type Delegate_System_Entry is limited record
      System_Id : League.Strings.Universal_String;
      Catalog   : League.Strings.Universal_String;
   end record;

   type URI_Entry is limited record
      Name : League.Strings.Universal_String;
      URI  : League.Strings.Universal_String;
   end record;

   type Rewrite_URI_Entry is limited record
      Prefix  : League.Strings.Universal_String;
      Rewrite : League.Strings.Universal_String;
   end record;

   type URI_Suffix_Entry is limited record
      Suffix : League.Strings.Universal_String;
      URI    : League.Strings.Universal_String;
   end record;

   type Delegate_URI_Entry is limited record
      Prefix  : League.Strings.Universal_String;
      Catalog : League.Strings.Universal_String;
   end record;

   type Catalog_Entry_File is tagged limited record
      Public_Entries          : Public_Entry_Vectors.Vector;
      --  List of 'public' entries of entry file.

      System_Entries          : System_Entry_Vectors.Vector;
      --  List of 'system' entries of entry file.

      Rewrite_System_Entries  : Rewrite_System_Entry_Vectors.Vector;
      --  List of 'rewriteSystem' entries of entry file.

      System_Suffix_Entries   : System_Suffix_Entry_Vectors.Vector;
      --  List of 'systemSuffix' entries of entry file.

      Delegate_Public_Entries : Delegate_Public_Entry_Vectors.Vector;
      --  List of 'delegatePublic' entries on the entry file.

      Delegate_System_Entries : Delegate_System_Entry_Vectors.Vector;
      --  List of 'delegateSystem' entries on the entry file.

      URI_Entries             : URI_Entry_Vectors.Vector;
      --  List of 'uri' entries of entry file.

      Rewrite_URI_Entries     : Rewrite_URI_Entry_Vectors.Vector;
      --  List of 'rewriteURI' entries of entry file.

      URI_Suffix_Entries      : URI_Suffix_Entry_Vectors.Vector;
      --  List of 'uriSuffix' entries of entry file.

      Delegate_URI_Entries    : Delegate_URI_Entry_Vectors.Vector;
      --  List of 'delegateURI' entries of entry file.
   end record;

   type Catalog_Entry_File_List is tagged limited record
      Catalog_Entry_Files : Catalog_Entry_File_Vectors.Vector;
   end record;

   type Catalog_Entry_File_List_Access is access all Catalog_Entry_File_List;

   procedure Append
    (Self         : in out Catalog_Entry_File;
     Public_Entry : not null Public_Entry_Access);
   --  Adds 'public' entry into the end of list of 'public' entries of the
   --  entry file.

   procedure Append
    (Self         : in out Catalog_Entry_File;
     System_Entry : not null System_Entry_Access);
   --  Adds 'system' entry into the end of list of 'system' entries of the
   --  entry file.

   procedure Append
    (Self                 : in out Catalog_Entry_File;
     Rewrite_System_Entry : not null Rewrite_System_Entry_Access);
   --  Adds 'rewriteSystem' entry into the end of list of 'rewriteSystem'
   --  entries of the entry file.

   procedure Append
    (Self                : in out Catalog_Entry_File;
     System_Suffix_Entry : not null System_Suffix_Entry_Access);
   --  Adds 'systemSuffix' entry into the end of list of 'systemSuffix' entries
   --  of the entry file.

   procedure Append
    (Self                  : in out Catalog_Entry_File;
     Delegate_Public_Entry : not null Delegate_Public_Entry_Access);
   --  Adds 'delegatePublic' entry into the end of list of 'delegatePublic'
   --  entries of the entry file.

   procedure Append
    (Self                  : in out Catalog_Entry_File;
     Delegate_System_Entry : not null Delegate_System_Entry_Access);
   --  Adds 'delegateSystem' entry into the end of list of 'delegateSystem'
   --  entries of the entry file.

   procedure Append
    (Self      : in out Catalog_Entry_File;
     URI_Entry : not null URI_Entry_Access);
   --  Adds 'uri' entry into the end of list of 'uri' entries of the entry
   --  file.

   procedure Append
    (Self              : in out Catalog_Entry_File;
     Rewrite_URI_Entry : not null Rewrite_URI_Entry_Access);
   --  Adds 'rewriteURI' entry into the end of list of 'rewriteURI' entries of
   --  the entry file.

   procedure Append
    (Self             : in out Catalog_Entry_File;
     URI_Suffix_Entry : not null URI_Suffix_Entry_Access);
   --  Adds 'uriSuffix' entry into the end of list of 'uriSuffix' entries of
   --  the entry file.

   procedure Append
    (Self               : in out Catalog_Entry_File;
     Delegate_URI_Entry : not null Delegate_URI_Entry_Access);
   --  Adds 'delegateURI' entry into the end of list of 'delegateURI' entries
   --  of the entry file.

end Matreshka.XML_Catalogs.Entry_Files;
