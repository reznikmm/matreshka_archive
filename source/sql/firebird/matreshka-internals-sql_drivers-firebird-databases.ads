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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  $Revision: $ $Date: $
------------------------------------------------------------------------------
--  Implementation of Abstract_Database type for Firebird database.
------------------------------------------------------------------------------
with Ada.Containers.Vectors;

with League.Stream_Element_Vectors;
with League.Text_Codecs;

package Matreshka.Internals.SQL_Drivers.Firebird.Databases is

   -----------------------
   -- Firebird_Database --
   -----------------------

   type Firebird_Database is new Abstract_Database with private;

   function Database_Handle
    (Self : Firebird_Database) return Isc_Database_Handle_Access;
   pragma Inline (Database_Handle);

   function Transaction_Handle
    (Self : Firebird_Database) return Isc_Transaction_Handle_Access;
   pragma Inline (Transaction_Handle);

private

   use type Isc_Long;

   type Db_Param is record
      Param : Isc_Dpb_Code;
      Value : League.Strings.Universal_String;
   end record;

   package Params_List is new Ada.Containers.Vectors (Positive, Db_Param);

   type Text_Codec_Access is access all League.Text_Codecs.Text_Codec;

   type Firebird_Database is new Abstract_Database with record
      DB_Handle : aliased Isc_Database_Handle    := Null_Isc_Database_Handle;
      TR_Handle : aliased Isc_Transaction_Handle
        := Null_Isc_Transaction_Handle;

      DB_Params_Block : League.Stream_Element_Vectors.Stream_Element_Vector;

      Status : aliased Isc_Results := (others => 0);
      Error  : League.Strings.Universal_String;
      Params : Params_List.Vector;
      Codec  : Text_Codec_Access;
      Utf    : Boolean := False;
   end record;

   overriding procedure Close (Self : not null access Firebird_Database);

   overriding procedure Commit (Self : not null access Firebird_Database);

   overriding function Error_Message
    (Self : not null access Firebird_Database)
       return League.Strings.Universal_String;

   overriding function Query
    (Self : not null access Firebird_Database) return not null Query_Access;

   overriding procedure Finalize (Self : not null access Firebird_Database);

   overriding function Open
    (Self    : not null access Firebird_Database;
     Options : SQL.Options.SQL_Options) return Boolean;

   procedure Check_Result
    (Self   : not null access Firebird_Database;
     Result : Isc_Result_Code);

   procedure Set_Error
    (Self : not null access Firebird_Database;
     Text : Wide_Wide_String);

   procedure Generate_DB_Params_Block
    (Self : not null access Firebird_Database);

   function Start_Transaction
    (Self : not null access Firebird_Database) return Boolean;

   procedure Rollback_Transaction (Self : not null access Firebird_Database);

end Matreshka.Internals.SQL_Drivers.Firebird.Databases;
