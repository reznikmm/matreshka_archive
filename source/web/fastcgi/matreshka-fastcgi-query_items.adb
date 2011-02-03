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
with Matreshka.Internals.Unicode.Characters.Latin;

package body Matreshka.FastCGI.Query_Items is

   use Ada.Streams;
   use League.Stream_Element_Vectors;
   use Matreshka.Internals.Unicode.Characters.Latin;

   function To_Stream_Element_Vector
    (Item : String) return Stream_Element_Vector;
   --  Converts standard string into vector of stream elements.

   procedure Decode_URL_Encoded_Parameters
    (Descriptor : in out FastCGI.Descriptor;
     Data       : Ada.Streams.Stream_Element_Array);
   --  Decodes parameters in "application/x-www-form-urlencoded" serialization
   --  format.

   function From_Percent_Encoding
    (Data : Ada.Streams.Stream_Element_Array)
       return Stream_Element_Vector;
   --  Converts data from percent encoding.

   ------------------------------
   -- To_Stream_Element_Vector --
   ------------------------------

   function To_Stream_Element_Vector
    (Item : String) return Stream_Element_Vector
   is
      Aux : Ada.Streams.Stream_Element_Array (1 .. Item'Length);
      for Aux'Address use Item'Address;
      pragma Import (Ada, Aux);

   begin
      return To_Stream_Element_Vector (Aux);
   end To_Stream_Element_Vector;

   --  Headers.

   Content_Type_Header   : constant Stream_Element_Vector
     := To_Stream_Element_Vector ("CONTENT_TYPE");
   Query_String_Header   : constant Stream_Element_Vector
     := To_Stream_Element_Vector ("QUERY_STRING");
   Request_Method_Header : constant Stream_Element_Vector
     := To_Stream_Element_Vector ("REQUEST_METHOD");

   --  Request methods.

   Get_Method            : constant Stream_Element_Vector
     := To_Stream_Element_Vector ("GET");
   Post_Method           : constant Stream_Element_Vector
     := To_Stream_Element_Vector ("POST");

   --  Serialization formats.

   URL_Encoded_Format    : constant Stream_Element_Vector
     := To_Stream_Element_Vector ("application/x-www-form-urlencoded");

   ------------------------
   -- Decode_Query_Items --
   ------------------------

   procedure Decode_Query_Items (Descriptor : in out FastCGI.Descriptor) is
      Request_Method : constant Stream_Element_Vector
        := Descriptor.Request_Headers.Element (Request_Method_Header);

   begin
      --  Determine request method and handle data for GET and POST methods.

      if Request_Method = Get_Method then
         --  For GET method, retrieve data from QUERY_STRING header. It is
         --  encoded in "application/x-www-form-urlencoded" format.

         Decode_URL_Encoded_Parameters
          (Descriptor,
           Descriptor.Request_Headers.Element
            (Query_String_Header).To_Stream_Element_Array);

      elsif Request_Method = Post_Method then
         --  For POST method, check format in CONTENT_TYPE header.

         if Descriptor.Request_Headers.Element (Content_Type_Header)
              = URL_Encoded_Format
         then
            --  For "application/x-www-form-urlencoded" format, retrieve data
            --  from standard input end decode it.

            Decode_URL_Encoded_Parameters
             (Descriptor,
              Descriptor.Stdin.To_Stream_Element_Array);
         end if;
      end if;
   end Decode_Query_Items;

   -----------------------------------
   -- Decode_URL_Encoded_Parameters --
   -----------------------------------

   procedure Decode_URL_Encoded_Parameters
    (Descriptor : in out FastCGI.Descriptor;
     Data       : Ada.Streams.Stream_Element_Array)
   is
      Name_First  : Stream_Element_Offset;
      Name_Last   : Stream_Element_Offset;
      Value_First : Stream_Element_Offset;
      Value_Last  : Stream_Element_Offset;

   begin
      Name_First := Data'First;

      while Name_First <= Data'Last loop
         --  Determine boundary of the name/value pair.

         Value_Last := Name_First;

         while Value_Last <= Data'Last loop
            exit when Data (Value_Last) = Ampersand;
            Value_Last := Value_Last + 1;
         end loop;

         Value_Last := Value_Last - 1;

         --  Determine position of name/value separator.

         Value_First := Name_First;
         Name_Last   := Name_First;

         while Value_First <= Value_Last loop
            exit when Data (Value_First) = Equals_Sign;

            Name_Last := Value_First;
            Value_First := Value_First + 1;
         end loop;

         Value_First := Value_First + 1;

         --  Convert name/value pair from percent encoding and add to the set
         --  of parameters.

         Descriptor.Query_Items.Insert
          (From_Percent_Encoding (Data (Name_First .. Name_Last)),
           From_Percent_Encoding (Data (Value_First .. Value_Last)));

         Name_First := Value_Last + 2;
      end loop;
   end Decode_URL_Encoded_Parameters;

   ---------------------------
   -- From_Percent_Encoding --
   ---------------------------

   function From_Percent_Encoding
    (Data : Ada.Streams.Stream_Element_Array)
       return Stream_Element_Vector
   is
      function Value (Item : Stream_Element) return Stream_Element;
      --  Converts hexadecimal digit into value in range 0 .. 15.

      -----------
      -- Value --
      -----------

      function Value (Item : Stream_Element) return Stream_Element is
      begin
         if Item in Digit_Zero .. Digit_Nine then
            return Item - Digit_Zero;

         elsif Item in Latin_Capital_Letter_A .. Latin_Capital_Letter_F then
            return Item - Latin_Capital_Letter_A + 10;

         elsif Item in Latin_Small_Letter_A .. Latin_Small_Letter_F then
            return Item - Latin_Small_Letter_A + 10;

         else
            raise Program_Error;
         end if;
      end Value;

      Aux   : Stream_Element_Array (1 .. Data'Length);
      Code  : Stream_Element;
      Last  : Stream_Element_Offset := Aux'First - 1;
      Index : Stream_Element_Offset := Data'First;

   begin
      while Index <= Data'Last loop
         if Data (Index) = Percent_Sign then
            Code := Value (Data (Index + 1)) * 16 + Value (Data (Index + 2));
            Last := Last + 1;
            Aux (Last) := Code;
            Index := Index + 3;

         elsif Data (Index) = Plus_Sign then
            Last := Last + 1;
            Aux (Last) := Space;
            Index := Index + 1;

         else
            Last := Last + 1;
            Aux (Last) := Data (Index);
            Index := Index + 1;
         end if;
      end loop;

      return To_Stream_Element_Vector (Aux (Aux'First .. Last));
   end From_Percent_Encoding;

end Matreshka.FastCGI.Query_Items;
