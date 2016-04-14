------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
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

package body SQL.Queries.Holders is

   function First_Column
     (Self : aliased SQL_Query)
      return League.Holders.Iterable_Holder_Cursors.Cursor'Class;

   package Column_Holders is new League.Holders.Generic_Iterable_Holders
     (Element_Type => SQL_Query,
      First        => First_Column);

   -----------------------------------
   -- Query_Iterable_Holder_Cursors --
   -----------------------------------

   package Query_Iterable_Holder_Cursors is

      type Cursor is new League.Holders.Iterable_Holder_Cursors.Cursor
      with record
         Data : SQL_Query;
      end record;

      overriding function Next (Self : in out Cursor) return Boolean;

      overriding function Element (Self : Cursor) return League.Holders.Holder;

   end Query_Iterable_Holder_Cursors;

   package body Query_Iterable_Holder_Cursors is

      -------------
      -- Element --
      -------------

      overriding function Element
       (Self : Cursor) return League.Holders.Holder is
      begin
         return Column_Holders.To_Holder (Self.Data);
      end Element;

      ----------
      -- Next --
      ----------

      overriding function Next (Self : in out Cursor) return Boolean is
      begin
         return Self.Data.Next;
      end Next;

   end Query_Iterable_Holder_Cursors;

   ------------------------------------
   -- Column_Iterable_Holder_Cursors --
   ------------------------------------

   package Column_Iterable_Holder_Cursors is

      type Cursor is new League.Holders.Iterable_Holder_Cursors.Cursor
      with record
         Data  : SQL_Query;
         Index : Natural := 0;
      end record;

      overriding function Next (Self : in out Cursor) return Boolean;

      overriding function Element (Self : Cursor) return League.Holders.Holder;

   end Column_Iterable_Holder_Cursors;

   package body Column_Iterable_Holder_Cursors is

      -------------
      -- Element --
      -------------

      overriding function Element
       (Self : Cursor) return League.Holders.Holder is
      begin
         return Self.Data.Value (Self.Index);
      end Element;

      ----------
      -- Next --
      ----------

      overriding function Next (Self : in out Cursor) return Boolean is
      begin
         Self.Index := Self.Index + 1;
         return Self.Index < 3;  --  FIXME
      end Next;

   end Column_Iterable_Holder_Cursors;

   -----------
   -- First --
   -----------

   function First
     (Self : aliased SQL_Query)
      return League.Holders.Iterable_Holder_Cursors.Cursor'Class is
   begin
      return Query_Iterable_Holder_Cursors.Cursor'(Data => Self);
   end First;

   ------------------
   -- First_Column --
   ------------------

   function First_Column
     (Self : aliased SQL_Query)
      return League.Holders.Iterable_Holder_Cursors.Cursor'Class is
   begin
      return Column_Iterable_Holder_Cursors.Cursor'(Self, 0);
   end First_Column;

   -------------
   -- Element --
   -------------

   function Element (Self : League.Holders.Holder) return SQL_Query
     renames Holders.Element;

   ---------------------
   -- Replace_Element --
   ---------------------

   procedure Replace_Element
    (Self : in out League.Holders.Holder; To : SQL_Query)
       renames Holders.Replace_Element;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder (Item : SQL_Query) return League.Holders.Holder
     renames Holders.To_Holder;

end SQL.Queries.Holders;
