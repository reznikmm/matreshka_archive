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
-- Copyright © 2011-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Streams;
with League.Text_Codecs;

package body Matreshka.Internals.SQL_Drivers.Firebird is

   ASCII_Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("ISO-8859-1"));
   --  It is used everywhere to convert text data.

   function To_Universal_String
    (Buffer : access Isc_String;
     From   : Interfaces.C.size_t;
     Last   : Interfaces.C.size_t) return League.Strings.Universal_String;

   ---------------------
   -- Check_For_Error --
   ---------------------

   function Check_For_Error
    (Status : access Isc_Results;
     Codes  : Isc_Result_Codes) return Boolean
   is
      use type Interfaces.C.long;

      Idx : Integer := Status'First;

   begin
      while Idx <= Status'Last and then Status (Idx) /= 0 loop
         case Status (Idx) is
            when 3 =>
               Idx := Idx + 3;

            when 1 | 4 =>
               Idx := Idx + 1;

               for I in Codes'Range loop
                  if Status (Idx) = Codes (I) then
                     return True;
                  end if;
               end loop;

               Idx := Idx + 1;

            when others =>
               Idx := Idx + 2;
         end case;
      end loop;

      return False;
   end Check_For_Error;

   ---------------
   -- Get_Error --
   ---------------

   function Get_Error
    (Status : access Isc_Results) return League.Strings.Universal_String
   is
      use type Isc_Result_Code;

      sqlcode : Isc_Short;

      Buffer : aliased Isc_String
        := (1 .. Huge_Buffer_Length => Interfaces.C.nul);
      pragma Warnings (Off, Buffer);

      Pos : aliased Isc_Results_Access
        := Status (Status'First)'Unchecked_Access;

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
         if Isc_Sqlcode (Status.all) in
           Isc_Long (Isc_Short'First) .. Isc_Long (Isc_Short'Last)
         then
            sqlcode := Isc_Short (Isc_Sqlcode (Status.all));
            Isc_Sql_Interprete (sqlcode, Buffer'Access, Huge_Buffer_Length);
            Append;
         end if;

         while Isc_Interprete (Buffer'Access, Pos'Access) > 0 loop
            Append;
         end loop;
      end if;

      return Result;
   end Get_Error;

   ----------------------
   -- Is_Datetime_Type --
   ----------------------

   function Is_Datetime_Type (Sql_Type : Isc_Sqltype) return Boolean is
   begin
      return Sql_Type = Isc_Type_Timestamp
        or else Sql_Type = Isc_Type_Date
        or else Sql_Type = Isc_Type_Time;
   end Is_Datetime_Type;

   ---------------------
   -- Is_Numeric_Type --
   ---------------------

   function Is_Numeric_Type (Sql_Type : Isc_Sqltype) return Boolean is
   begin
      return Sql_Type = Isc_Type_Int64
        or else Sql_Type = Isc_Type_Long
        or else Sql_Type = Isc_Type_Short
        or else Sql_Type = Isc_Type_Double
        or else Sql_Type = Isc_Type_Float
        or else Sql_Type = Isc_Type_D_Float;
   end Is_Numeric_Type;

   -------------------
   -- To_Isc_String --
   -------------------

   function To_Isc_String
    (Item : League.Strings.Universal_String) return Isc_String
   is
      --  XXX This subprogram can be optimized by direct access to
      --  Stream_Element_Vector internal storage. This storage can be renamed
      --  to S_Item object, thus there is no copy of data needed.

      V_Item : constant Ada.Streams.Stream_Element_Array
        := ASCII_Codec.Encode (Item).To_Stream_Element_Array;
      S_Item : String (1 .. V_Item'Length);
      for S_Item'Address use V_Item'Address;
      pragma Import (Ada, S_Item);

   begin
      return Interfaces.C.To_C (S_Item);
   end To_Isc_String;

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String
    (Buffer : access Isc_String;
     From   : Interfaces.C.size_t;
     Last   : Interfaces.C.size_t) return League.Strings.Universal_String
   is
      Source  : Ada.Streams.Stream_Element_Array
        (Ada.Streams.Stream_Element_Offset (From)
           .. Ada.Streams.Stream_Element_Offset (Last));
      for Source'Address use Buffer (From)'Address;
      pragma Import (Ada, Source);

   begin
      return League.Text_Codecs.Decode (ASCII_Codec, Source);
   end To_Universal_String;

end Matreshka.Internals.SQL_Drivers.Firebird;
