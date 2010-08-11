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
with Ada.Unchecked_Deallocation;

package body Matreshka.Internals.XML.Notation_Tables is

   procedure Free is
     new Ada.Unchecked_Deallocation (Notation_Array, Notation_Array_Access);

   procedure Clear (Self : in out Notation_Table);

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Notation_Table) is
   begin
      for J in Self.Table'First .. Self.Last loop
         Matreshka.Internals.Strings.Dereference (Self.Table (J).Public_Id);
         Matreshka.Internals.Strings.Dereference (Self.Table (J).System_Id);
      end loop;

      Self.Last := No_Notation;
   end Clear;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out Notation_Table) is
   begin
      Clear (Self);
      Free (Self.Table);
   end Finalize;

   ------------------
   -- New_Notation --
   ------------------

   procedure New_Notation
    (Self      : in out Notation_Table;
     Name      : Symbol_Identifier;
     Public_Id : Matreshka.Internals.Strings.Shared_String_Access;
     System_Id : Matreshka.Internals.Strings.Shared_String_Access;
     Notation  : out Notation_Identifier) is
   begin
      --  Assign notation identifier.

      Self.Last := Self.Last + 1;
      Notation := Self.Last;

      --  Reallocate table when necessay.

      if Notation > Self.Table'Last then
         declare
            Old : Notation_Array_Access := Self.Table;

         begin
            Self.Table := new Notation_Array (Old'First .. Old'Last + 16);
            Self.Table (Old'Range) := Old.all;
            Free (Old);
         end;
      end if;

      --  Fill table's record.

      Matreshka.Internals.Strings.Reference (Public_Id);
      Matreshka.Internals.Strings.Reference (System_Id);

      Self.Table (Notation) :=
       (Name      => Name,
        Public_Id => Public_Id,
        System_Id => System_Id);
   end New_Notation;

   -----------
   -- Reset --
   -----------

   procedure Reset (Self : in out Notation_Table) is
   begin
      Clear (Self);
   end Reset;

end Matreshka.Internals.XML.Notation_Tables;
