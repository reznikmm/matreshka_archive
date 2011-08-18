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
--  $Revision: $ $Date: $
------------------------------------------------------------------------------

with Ada.Streams;
with League.Text_Codecs;

package body Matreshka.Internals.SQL_Drivers.Firebird is

   ---------------
   -- Get_Error --
   ---------------

   function Get_Error
     (Status : access Isc_Statuses)
      return League.Strings.Universal_String
   is
      use type Isc_Status;

      sqlcode : Isc_Short;

      Buffer : aliased Isc_String :=
        (1 .. Huge_Buffer_Length => Interfaces.C.nul);
      pragma Warnings (Off, Buffer);

      Pos : aliased Isc_Status_Access :=
        Status (Status'First)'Unchecked_Access;

      Result : League.Strings.Universal_String;

      procedure Append;

      ------------
      -- Append --
      ------------

      procedure Append is
         use type Interfaces.C.size_t;
         use type Interfaces.C.char;

         Last : Interfaces.C.size_t := Buffer'First;
      begin
         loop
            exit when Last + 1 > Buffer'Last
              or else Buffer (Last) = Interfaces.C.nul;
            Last := Last + 1;
         end loop;

         Result.Append
           (To_Universal_String (Buffer'Access, Buffer'First, Last));
      end Append;

   begin
      if Status (Status'First) = 1
        and then Status (Status'First + 1) > 0
      then
         sqlcode := Isc_Short (Isc_Sqlcode (Status.all));
         Isc_Sql_Interprete (sqlcode, Buffer'Access, Huge_Buffer_Length);
         Append;

         while Isc_Interprete (Buffer'Access, Pos'Access) > 0 loop
            Append;
         end loop;
      end if;

      return Result;
   end Get_Error;

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String
     (Buffer : access Isc_String;
      From   : Interfaces.C.size_t;
      Last   : Interfaces.C.size_t)
      return League.Strings.Universal_String
   is
      Source  : Ada.Streams.Stream_Element_Array
        (Ada.Streams.Stream_Element_Offset (From) ..
           Ada.Streams.Stream_Element_Offset (Last));
      for Source'Address use Buffer (From)'Address;
      pragma Import (Ada, Source);
   begin
      return League.Text_Codecs.Decode
        (League.Text_Codecs.Codec
           (League.Strings.To_Universal_String ("utf-8")),
         Source);
   end To_Universal_String;

end Matreshka.Internals.SQL_Drivers.Firebird;
