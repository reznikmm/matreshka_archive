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
--  $Revision: 1793 $ $Date: 2011-06-11 10:40:44 +0300 (Сб, 11 июн 2011) $
------------------------------------------------------------------------------
--  This package provides implementation of Query abstraction for Firebird.
------------------------------------------------------------------------------
with Ada.Containers.Vectors;
with Ada.Finalization;

with League.Text_Codecs;
with Matreshka.Internals.SQL_Drivers.Firebird.Fields;

package Matreshka.Internals.SQL_Drivers.Firebird.Records is

   type Sqlda_Buffer is array (Positive range <>) of aliased Isc_Long;
   type Sqlda_Buffer_Access is access all Sqlda_Buffer;

   type Isc_Sqlda_Access is access all Isc_Sqlda;
   pragma No_Strict_Aliasing (Isc_Sqlda_Access);

   package Fields_Containers is
     new Ada.Containers.Vectors
       (Isc_Valid_Field_Index, Fields.Field_Access, "=" => Fields."=");

   type Sql_Record is new Ada.Finalization.Controlled with record
      Cnt       : Isc_Field_Index     := 0; -- reserved data length
      Size      : Isc_Field_Index     := 0; -- real used data
      Sqlda_Buf : Sqlda_Buffer_Access := null;
      Sqlda     : Isc_Sqlda_Access    := null;
      Fields    : Fields_Containers.Vector;
      Codec     : access League.Text_Codecs.Text_Codec;
      Utf       : Boolean;
   end record;

   overriding procedure Finalize (Self : in out Sql_Record);
   procedure Count (Self : in out Sql_Record; Value : Isc_Field_Index);
   procedure Free_Fields (Self : in out Sql_Record);
   procedure Init (Self : in out Sql_Record);
   procedure Clear_Values (Self : in out Sql_Record);

end Matreshka.Internals.SQL_Drivers.Firebird.Records;
