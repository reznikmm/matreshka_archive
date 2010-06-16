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
-- Copyright © 2009-2010, Vadim Godunko <vgodunko@gmail.com>                --
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
private with Matreshka.Internals.Unicode.Ucd;
private with Matreshka.Internals.Utf16;

package League.Strings.Cursors.Grapheme_Clusters is

   pragma Preelaborate;

   type Grapheme_Cluster_Cursor is tagged private;

   procedure First
    (Self : in out Grapheme_Cluster_Cursor'Class;
     Item : in out Universal_String);

   procedure Last
    (Self : in out Grapheme_Cluster_Cursor'Class;
     Item : in out Universal_String);

   procedure Next (Self : in out Grapheme_Cluster_Cursor'Class);

   procedure Previous (Self : in out Grapheme_Cluster_Cursor'Class);

   function Has_Element (Self : Grapheme_Cluster_Cursor'Class) return Boolean;

   function Element (Self : Grapheme_Cluster_Cursor'Class)
     return Universal_String;

private

   type Grapheme_Cluster_Cursor is new Abstract_Tailored_Cursor with record
      Previous_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
      Previous_Length   : Natural;
      Previous_State    :
        Matreshka.Internals.Unicode.Ucd.Grapheme_Cluster_Break;
      Current_Position  : Matreshka.Internals.Utf16.Utf16_String_Index;
      Current_Length    : Natural;
      Current_State     :
        Matreshka.Internals.Unicode.Ucd.Grapheme_Cluster_Break;
      Next_Position     : Matreshka.Internals.Utf16.Utf16_String_Index;
      Next_State        :
        Matreshka.Internals.Unicode.Ucd.Grapheme_Cluster_Break;
   end record;

--   overriding procedure On_Changed
--    (Self          : not null access Grapheme_Cluster_Cursor;
--     Changed_First : Positive;
--     Removed_Last  : Natural;
--     Inserted_Last : Natural);

end League.Strings.Cursors.Grapheme_Clusters;
