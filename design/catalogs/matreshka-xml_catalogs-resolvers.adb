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
with Matreshka.XML_Catalogs.Loader;

package body Matreshka.XML_Catalogs.Resolvers is

   use Matreshka.XML_Catalogs.Entry_Files;
   use type League.Strings.Universal_String;

   procedure Resolve_External_Identifier
    (File         :
       not null Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access;
     Public_Id    : in out League.Strings.Universal_String;
     System_Id    : in out League.Strings.Universal_String;
     Resolved_URI : out League.Strings.Universal_String;
     Delegate     : out
       Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List_Access);
   --  Attempts to resolve external identifier in the specified catalog entry
   --  file.

   ---------------------------------
   -- Resolve_External_Identifier --
   ---------------------------------

   procedure Resolve_External_Identifier
    (List         :
       not null
         Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List_Access;
     Public_Id    : League.Strings.Universal_String;
     System_Id    : League.Strings.Universal_String;
     Resolved_URI : out League.Strings.Universal_String;
     Success      : out Boolean)
   is
      use type
        Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List_Access;

      Current_List      :
        Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List_Access
          := List;
      Current_Public_Id : League.Strings.Universal_String := Public_Id;
      Current_System_Id : League.Strings.Universal_String := System_Id;
      Delegate          :
        Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List_Access;

   begin
      Success := False;
      Resolved_URI := League.Strings.Empty_Universal_String;

      --  External loop handles delegation processing.

      Delegation : loop
         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "1. Resolution begins in the first catalog entry file in the
         --  current catalog entry file list."

         for J in Current_List.Catalog_Entry_Files.First_Index
                    ..  Current_List.Catalog_Entry_Files.Last_Index
         loop
            Resolve_External_Identifier
             (Current_List.Catalog_Entry_Files.Element (J),
              Current_Public_Id,
              Current_System_Id,
              Resolved_URI,
              Delegate);

            if Delegate /= null then
               exit;

            elsif not Resolved_URI.Is_Empty then
               Success := True;

               return;
            end if;

            --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
            --
            --  "9. If there are one or more catalog entry files remaining on
            --  the current catalog entry file list, load the next catalog
            --  entry file and continue resolution efforts: return to step 2."
         end loop;

         exit when Delegate = null;
         --  External identifier not resolved and there is no delegation
         --  requested, return.

         --  Make requested delegation list to be current list.

         Current_List := Delegate;
         Delegate := null;
      end loop Delegation;
   end Resolve_External_Identifier;

   ---------------------------------
   -- Resolve_External_Identifier --
   ---------------------------------

   procedure Resolve_External_Identifier
    (File         :
       not null Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access;
     Public_Id    : in out League.Strings.Universal_String;
     System_Id    : in out League.Strings.Universal_String;
     Resolved_URI : out League.Strings.Universal_String;
     Delegate     : out
       Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List_Access)
   is
      use type Matreshka.XML_Catalogs.Entry_Files.Rewrite_System_Entry_Access;
      use type Matreshka.XML_Catalogs.Entry_Files.System_Suffix_Entry_Access;

      Length          : Natural;
      Inserted        : Boolean;
      Rewrite_System  :
        Matreshka.XML_Catalogs.Entry_Files.Rewrite_System_Entry_Access;
      System_Suffix   :
        Matreshka.XML_Catalogs.Entry_Files.System_Suffix_Entry_Access;
      Delegate_System :
        Matreshka.XML_Catalogs.Entry_Files.Delegate_System_Entry_Vectors.Vector;
      Delegate_Public :
        Matreshka.XML_Catalogs.Entry_Files.Delegate_Public_Entry_Vectors.Vector;

   begin
      if not System_Id.Is_Empty then
         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "2. If a system identifier is provided, and at least one matching
         --  system entry exists, the (absolutized) value of the uri attribute
         --  of the first matching system entry is returned."

         for J in File.System_Entries.First_Index
                    .. File.System_Entries.Last_Index
         loop
            if System_Id = File.System_Entries.Element (J).System_Id then
               Resolved_URI := File.System_Entries.Element (J).URI;

               return;
            end if;
         end loop;

         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "3. If a system identifier is provided, and at least one matching
         --  rewriteSystem entry exists, rewriting is performed.
         --
         --  If more than one rewriteSystem entry matches, the matching entry
         --  with the longest normalized systemIdStartString value is used.
         --
         --  Rewriting removes the matching prefix and replaces it with the
         --  rewrite prefix identified by the matching rewriteSystem entry. The
         --  rewritten string is returned."

         Length := 0;

         for J in File.Rewrite_System_Entries.First_Index
                    .. File.Rewrite_System_Entries.Last_Index
         loop
            if System_Id.Starts_With
                (File.Rewrite_System_Entries.Element (J).System_Id)
            then
               if Length
                    < File.Rewrite_System_Entries.Element (J).System_Id.Length
               then
                  Rewrite_System := File.Rewrite_System_Entries.Element (J);
                  Length :=
                    File.Rewrite_System_Entries.Element (J).System_Id.Length;
               end if;
            end if;
         end loop;

         if Rewrite_System /= null then
            Resolved_URI :=
              Rewrite_System.Prefix
                & System_Id.Slice
                   (Rewrite_System.System_Id.Length + 1, System_Id.Length);

            return;
         end if;

         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "4.  If a system identifier is provided, and at least one matching
         --  systemSuffix entry exists, the (absolutized) value of the uri
         --  attribute of the matching entry with the longest normalized
         --  systemIdSuffix value is returned."

         Length := 0;

         for J in File.System_Suffix_Entries.First_Index
                    .. File.System_Suffix_Entries.Last_Index
         loop
            if System_Id.Ends_With
                (File.System_Suffix_Entries.Element (J).System_Id)
            then
               if Length
                    < File.System_Suffix_Entries.Element (J).System_Id.Length
               then
                  System_Suffix := File.System_Suffix_Entries.Element (J);
                  Length :=
                     File.System_Suffix_Entries.Element (J).System_Id.Length;
               end if;
            end if;
         end loop;

         if System_Suffix /= null then
            Resolved_URI := System_Suffix.URI;

            return;
         end if;

         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "5. If a system identifier is provided, and one or more
         --  delegateSystem entries match, delegation is performed.
         --
         --  If delegation is to be performed, a new catalog entry file list is
         --  generated from the set of all matching delegateSystem entries. The
         --  (absolutized) value of the catalog attribute of each matching
         --  delegateSystem entry is inserted into the new catalog entry file
         --  list such that the delegate entry with the longest matching
         --  systemIdStartString is first on the list, the entry with the
         --  second longest match is second, etc.
         --
         --  These are the only catalog entry files on the list, the current
         --  list is not considered for the purpose of delegation. If
         --  delegation fails to find a match, resolution for this entity does
         --  not resume with the current list. (A subsequent resolution attempt
         --  for a different entity begins with the original list; in other
         --  words the catalog entry file list used for delegation is distinct
         --  and unrelated to the "normal" catalog entry file list.)
         --
         --  Catalog resolution restarts using exclusively the catalog entry
         --  files in this new list and the given system identifier; any
         --  originally given public identifier is ignored during the remainder
         --  of the resolution of this external identifier: return to step 1."

         for J in File.Delegate_System_Entries.First_Index
                    .. File.Delegate_System_Entries.Last_Index
         loop
            if System_Id.Starts_With
                (File.Delegate_System_Entries.Element (J).System_Id)
            then
               Inserted := False;

               for K in Delegate_System.First_Index
                          .. Delegate_System.Last_Index
               loop
                  if File.Delegate_System_Entries.Element (J).System_Id.Length
                       > Delegate_System.Element (K).System_Id.Length
                  then
                     Delegate_System.Insert
                      (K, File.Delegate_System_Entries.Element (J));
                     Inserted := True;

                     exit;
                  end if;
               end loop;

               if not Inserted then
                  Delegate_System.Append
                   (File.Delegate_System_Entries.Element (J));
               end if;
            end if;
         end loop;

         if not Delegate_System.Is_Empty then
            Delegate :=
              new Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List;

            for J in Delegate_System.First_Index
                       .. Delegate_System.Last_Index
            loop
               Delegate.Catalog_Entry_Files.Append
                (Matreshka.XML_Catalogs.Loader.Load
                  (Delegate_System.Element (J).Catalog));
            end loop;

            Public_Id.Clear;

            return;
         end if;
      end if;

      if not Public_Id.Is_Empty then
         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "6. If a public identifier is provided, and at least one matching
         --  public entry exists, the (absolutized) value of the uri attribute
         --  of the first matching public entry is returned. If a system
         --  identifier is also provided as part of the input to this catalog
         --  lookup, only public entries that occur where the prefer setting is
         --  public are considered for matching."
         --

         for J in File.Public_Entries.First_Index
                    .. File.Public_Entries.Last_Index
         loop
            if Public_Id = File.Public_Entries.Element (J).Public_Id
              and then (System_Id.Is_Empty
                          or else File.Public_Entries.Element (J).Prefer
                                    = Public)
            then
               Resolved_URI := File.Public_Entries.Element (J).URI;

               return;
            end if;
         end loop;

         --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
         --
         --  "7. If a public identifier is provided, and one or more
         --  delegatePublic entries match, delegation is performed. If a system
         --  identifier is also provided as part of the input to this catalog
         --  lookup, only delegatePublic entries that occur where the prefer
         --  setting is public are considered for matching.
         --
         --  If delegation is to be performed, a new catalog entry file list is
         --  generated from the set of all matching delegatePublic entries. The
         --  value of the catalog attribute of each matching delegatePublic
         --  entry is inserted into the new catalog entry file list such that
         --  the delegate entry with the longest matching publicIdStartString
         --  is first on the list, the entry with the second longest match is
         --  second, etc.
         --
         --  These are the only catalog entry files on the list, the current
         --  list is not considered for the purpose of delegation. If
         --  delegation fails to find a match, resolution for this entity does
         --  not resume with the current list. (A subsequent resolution attempt
         --  for a different entity begins with the original list; in other
         --  words the catalog entry file list used for delegation is distinct
         --  and unrelated to the "normal" catalog entry file list.)
         --
         --  Catalog resolution restarts using exclusively the catalog entry
         --  files in this new list and the given public identifier; any
         --  originally given system identifier is ignored during the remainder
         --  of the resolution of this external identifier: return to step 1."
         --

         for J in File.Delegate_Public_Entries.First_Index
                    .. File.Delegate_Public_Entries.Last_Index
         loop
            if Public_Id.Starts_With
                (File.Delegate_Public_Entries.Element (J).Public_Id)
              and then (System_Id.Is_Empty
                          or else File.Delegate_Public_Entries.Element
                                   (J).Prefer = Public)
            then
               Inserted := False;

               for K in Delegate_Public.First_Index
                          .. Delegate_Public.Last_Index
               loop
                  if File.Delegate_Public_Entries.Element (J).Public_Id.Length
                       > Delegate_Public.Element (K).Public_Id.Length
                  then
                     Delegate_Public.Insert
                      (K, File.Delegate_Public_Entries.Element (J));
                     Inserted := True;

                     exit;
                  end if;
               end loop;

               if not Inserted then
                  Delegate_Public.Append
                   (File.Delegate_Public_Entries.Element (J));
               end if;
            end if;
         end loop;

         if not Delegate_Public.Is_Empty then
            Delegate :=
              new Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List;

            for J in Delegate_Public.First_Index
                       .. Delegate_Public.Last_Index
            loop
               Delegate.Catalog_Entry_Files.Append
                (Matreshka.XML_Catalogs.Loader.Load
                  (Delegate_Public.Element (J).Catalog));
            end loop;

            System_Id.Clear;

            return;
         end if;
      end if;

      --  [XML Catalogs] 7.1.2. Resolution of External Identifiers
      --
      --  "8. If the current catalog entry file contains one or more
      --  nextCatalog entries, the catalog entry files referenced by each
      --  nextCatalog entry's "catalog" attribute are inserted, in the order
      --  that they appear in this catalog entry file, onto the current catalog
      --  entry file list, immediately after the current catalog entry file.

   end Resolve_External_Identifier;

end Matreshka.XML_Catalogs.Resolvers;
