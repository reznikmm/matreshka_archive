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

package body Matreshka.Internals.SQL_Drivers.Dummy is

   -----------------
   -- Bound_Value --
   -----------------

   overriding function Bound_Value
    (Self : not null access Dummy_Query;
     Name : League.Strings.Universal_String)
       return League.Values.Value is
   begin
      return X : League.Values.Value;
   end Bound_Value;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access Dummy_Database)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_Message;

   -------------------
   -- Error_Message --
   -------------------

   overriding function Error_Message
    (Self : not null access Dummy_Query)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_Message;

   -------------
   -- Execute --
   -------------

   overriding function Execute
    (Self : not null access Dummy_Query) return Boolean is
   begin
      return False;
   end Execute;

   ---------------
   -- Is_Active --
   ---------------

   overriding function Is_Active
    (Self : not null access Dummy_Query) return Boolean is
   begin
      return False;
   end Is_Active;

   ----------
   -- Next --
   ----------

   overriding function Next
    (Self : not null access Dummy_Query) return Boolean is
   begin
      return False;
   end Next;

   ----------
   -- Open --
   ----------

   overriding function Open
    (Self    : not null access Dummy_Database;
     Options : League.Strings.Universal_String) return Boolean is
   begin
      return False;
   end Open;

   -------------
   -- Prepare --
   -------------

   overriding function Prepare
    (Self  : not null access Dummy_Query;
     Query : League.Strings.Universal_String) return Boolean is
   begin
      return False;
   end Prepare;

   -----------
   -- Query --
   -----------

   overriding function Query
    (Self : not null access Dummy_Database) return not null Query_Access is
   begin
      return Empty_Query'Access;
   end Query;

   -----------
   -- Value --
   -----------

   overriding function Value
    (Self  : not null access Dummy_Query;
     Index : Positive) return League.Values.Value is
   begin
      return V : League.Values.Value;
   end Value;

end Matreshka.Internals.SQL_Drivers.Dummy;
