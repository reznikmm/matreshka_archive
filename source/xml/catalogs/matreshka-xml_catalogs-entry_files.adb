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

package body Matreshka.XML_Catalogs.Entry_Files is

   ------------
   -- Append --
   ------------

   procedure Append
    (Self                  : in out Catalog_Entry_File;
     Delegate_Public_Entry : not null Delegate_Public_Entry_Access) is
   begin
      Self.Delegate_Public_Entries.Append (Delegate_Public_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self                  : in out Catalog_Entry_File;
     Delegate_System_Entry : not null Delegate_System_Entry_Access) is
   begin
      Self.Delegate_System_Entries.Append (Delegate_System_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self               : in out Catalog_Entry_File;
     Delegate_URI_Entry : not null Delegate_URI_Entry_Access) is
   begin
      Self.Delegate_URI_Entries.Append (Delegate_URI_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self               : in out Catalog_Entry_File;
     Next_Catalog_Entry : not null Next_Catalog_Entry_Access) is
   begin
      Self.Next_Catalog_Entries.Append (Next_Catalog_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self         : in out Catalog_Entry_File;
     Public_Entry : not null Public_Entry_Access) is
   begin
      Self.Public_Entries.Append (Public_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self                 : in out Catalog_Entry_File;
     Rewrite_System_Entry : not null Rewrite_System_Entry_Access) is
   begin
      Self.Rewrite_System_Entries.Append (Rewrite_System_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self              : in out Catalog_Entry_File;
     Rewrite_URI_Entry : not null Rewrite_URI_Entry_Access) is
   begin
      Self.Rewrite_URI_Entries.Append (Rewrite_URI_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self         : in out Catalog_Entry_File;
     System_Entry : not null System_Entry_Access) is
   begin
      Self.System_Entries.Append (System_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self                : in out Catalog_Entry_File;
     System_Suffix_Entry : not null System_Suffix_Entry_Access) is
   begin
      Self.System_Suffix_Entries.Append (System_Suffix_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self      : in out Catalog_Entry_File;
     URI_Entry : not null URI_Entry_Access) is
   begin
      Self.URI_Entries.Append (URI_Entry);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self             : in out Catalog_Entry_File;
     URI_Suffix_Entry : not null URI_Suffix_Entry_Access) is
   begin
      Self.URI_Suffix_Entries.Append (URI_Suffix_Entry);
   end Append;

end Matreshka.XML_Catalogs.Entry_Files;
