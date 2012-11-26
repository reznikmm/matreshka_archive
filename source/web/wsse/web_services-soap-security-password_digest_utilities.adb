------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Numerics.Discrete_Random;
with Ada.Streams;
with GNAT.SHA1;
with Interfaces;

with League.Calendars.ISO_8601;
with League.Stream_Element_Vectors.Internals;
with League.Text_Codecs;
with Matreshka.Internals.Stream_Element_Vectors;

package body Web_Services.SOAP.Security.Password_Digest_Utilities is

   package Unsigned_64_Random is
     new Ada.Numerics.Discrete_Random (Interfaces.Unsigned_64);

   Format : constant League.Strings.Universal_String :=
     League.Strings.To_Universal_String ("yyyy-MM-ddTHH:mm:ss");
   --  Format of Created field in header, except 'Z' at the end, due to 'Z' is
   --  pattern symbol

   UTF8_Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));
   --  Text codec to convert strings into UTF8 representation.

   Generator : Unsigned_64_Random.Generator;

   function To_Binary_Message_Digest
    (Item : String) return Ada.Streams.Stream_Element_Array;
   --  Converts string into array of stream elements. Note: this subprogram is
   --  needed for GNAT GPL 2012 only, because it doesn't provide
   --  GNAT.SHA1.Digest subprogram which returns Binary_Message_Digest.

   --------------------
   -- Compute_Digest --
   --------------------

   function Compute_Digest
    (Password : League.Strings.Universal_String;
     Nonce    : League.Stream_Element_Vectors.Stream_Element_Vector;
     Created  : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      Data : League.Stream_Element_Vectors.Stream_Element_Vector;

   begin
      Data.Append (Nonce);
      Data.Append (UTF8_Codec.Encode (Created));
      Data.Append (UTF8_Codec.Encode (Password));

      return
        League.Stream_Element_Vectors.To_Stream_Element_Vector
         (To_Binary_Message_Digest
           (GNAT.SHA1.Digest (Data.To_Stream_Element_Array)));
   end Compute_Digest;

   ----------------------
   -- Generate_Created --
   ----------------------

   function Generate_Created return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         Result :=
           League.Calendars.ISO_8601.Image
            (Format, League.Calendars.Clock);
         Result.Append ('Z');
      end return;
   end Generate_Created;

   --------------------
   -- Generate_Nonce --
   --------------------

   function Generate_Nonce
     return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      Result : constant
        Matreshka.Internals.Stream_Element_Vectors.
          Shared_Stream_Element_Vector_Access
            := Matreshka.Internals.Stream_Element_Vectors.Allocate (16);
      Value  : array (Natural range 0 .. 1) of Interfaces.Unsigned_64;
      for Value'Address use Result.Value'Address;
      pragma Import (Ada, Value);

   begin
      Value (0) := Unsigned_64_Random.Random (Generator);
      Value (1) := Unsigned_64_Random.Random (Generator);
      Result.Length := 16;

      return League.Stream_Element_Vectors.Internals.Wrap (Result);
   end Generate_Nonce;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Unsigned_64_Random.Reset (Generator);
   end Initialize;

   ------------------------------
   -- To_Binary_Message_Digest --
   ------------------------------

   function To_Binary_Message_Digest
    (Item : String) return Ada.Streams.Stream_Element_Array
   is
      use type Ada.Streams.Stream_Element;
      use type Ada.Streams.Stream_Element_Offset;

      function Decode (Item : Character) return Ada.Streams.Stream_Element;

      ------------
      -- Decode --
      ------------

      function Decode (Item : Character) return Ada.Streams.Stream_Element is
      begin
         case Item is
            when '0' .. '9' =>
               return Character'Pos (Item) - Character'Pos ('0');

            when 'a' .. 'f' =>
               return Character'Pos (Item) - Character'Pos ('a') + 10;

            when 'A' .. 'F' =>
               return Character'Pos (Item) - Character'Pos ('A') + 10;

            when others =>
               raise Constraint_Error;
         end case;
      end Decode;

      Result : Ada.Streams.Stream_Element_Array (1 .. Item'Length / 2);
      First  : Natural := Item'First;
      Unused : Ada.Streams.Stream_Element_Offset := Result'First;

   begin
      while Item'Last - First > 0 loop
         Result (Unused) :=
          (Decode (Item (First)) * 16) or Decode (Item (First + 1));
         Unused := Unused + 1;
         First := First + 2;
      end loop;

      return Result;
   end To_Binary_Message_Digest;

end Web_Services.SOAP.Security.Password_Digest_Utilities;
