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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings;
with League.Text_Codecs;
with Matreshka.Internals.Unicode.Characters.Latin;

with Matreshka.FastCGI.Protocol;

package body Matreshka.FastCGI.Descriptors is

   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Ada.Streams.Stream_Element_Offset;

   ASCII_Codec    : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
--         (League.Strings.To_Universal_String ("ASCII"));
         (League.Strings.To_Universal_String ("ISO-8859-1"));
   ISO88591_Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("ISO-8859-1"));

   Field_Separator : constant Ada.Streams.Stream_Element_Array (0 .. 0)
     := (0 => Colon);
   End_Mark        : constant Ada.Streams.Stream_Element_Array (0 .. 1)
     := (Carriage_Return, Line_Feed);

   procedure Send_FCGI_Header
    (Self           : in out Abstract_Descriptor'Class;
     Packet_Type    : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
     Content_Length : Matreshka.FastCGI.Protocol.FCGI_Content_Length;
     Padding_Length : Matreshka.FastCGI.Protocol.FCGI_Padding_Length);
   --  Send FCGI Header.

   procedure Send_FCGI_Packet
    (Self        : in out Abstract_Descriptor'Class;
     Packet_Type : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
     Content     : Ada.Streams.Stream_Element_Array);
   --  Send FCGI packet of specified type and content.

   function Compute_Padding_Length
    (Content_Length : Matreshka.FastCGI.Protocol.FCGI_Content_Length)
       return Matreshka.FastCGI.Protocol.FCGI_Padding_Length;
   --  Compute padding length.

   ----------------------------
   -- Compute_Padding_Length --
   ----------------------------

   function Compute_Padding_Length
    (Content_Length : Matreshka.FastCGI.Protocol.FCGI_Content_Length)
       return Matreshka.FastCGI.Protocol.FCGI_Padding_Length is
   begin
      return
       (if Content_Length mod 8 = 0 then 0 else 8 - Content_Length mod 8);
   end Compute_Padding_Length;

   ----------------------------
   -- Internal_Begin_Request --
   ----------------------------

   not overriding procedure Internal_Begin_Request
    (Self       : in out Abstract_Descriptor;
     Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : Matreshka.FastCGI.FCGI_Request_Identifier) is
   begin
      Self.Socket := Socket;
      Self.Request_Id := Request_Id;
      Self.Params_Done := False;
      Self.Headers_Done := False;
      Self.Stdout_Data.Clear;
      Self.Stderr_Data.Clear;
   end Internal_Begin_Request;

   --------------------------
   -- Internal_End_Headers --
   --------------------------

   procedure Internal_End_Headers
    (Self : in out Abstract_Descriptor'Class) is
   begin
      Self.Headers_Done := True;
      Self.Send_FCGI_Packet (Matreshka.FastCGI.Protocol.FCGI_Stdout, End_Mark);

      if Self.Params_Done then
         --  Flush accumulated data.

         Self.Send_FCGI_Packet
          (Matreshka.FastCGI.Protocol.FCGI_Stderr,
           Self.Stderr_Data.To_Stream_Element_Array);
         Self.Stderr_Data.Clear;
         Self.Send_FCGI_Packet
          (Matreshka.FastCGI.Protocol.FCGI_Stdout,
           Self.Stdout_Data.To_Stream_Element_Array);
         Self.Stdout_Data.Clear;
      end if;
   end Internal_End_Headers;

   ---------------------
   -- Internal_Header --
   ---------------------

   procedure Internal_Header
    (Self  : in out Abstract_Descriptor'Class;
     Name  : Standard.FastCGI.Field_Names.Field_Name;
     Value : Standard.FastCGI.Field_Values.Field_Value)
   is
      Encoded_Name   : constant
        League.Stream_Element_Vectors.Stream_Element_Vector
          := ASCII_Codec.Encode (Name.To_Universal_String);
      Encoded_Value  : constant
        League.Stream_Element_Vectors.Stream_Element_Vector
          := ISO88591_Codec.Encode (Value.To_Universal_String);
      Content_Length : constant Matreshka.FastCGI.Protocol.FCGI_Content_Length
        := Encoded_Name.Length
             + Field_Separator'Length
             + Encoded_Value.Length
             + End_Mark'Length;
      Padding_Length : constant Matreshka.FastCGI.Protocol.FCGI_Padding_Length
        := Compute_Padding_Length (Content_Length);
      Padding        : constant
        Ada.Streams.Stream_Element_Array (1 .. Padding_Length)
          := (others => 0);
      Last           : Ada.Streams.Stream_Element_Offset;

   begin
      --  Send FCGI header.

      Self.Send_FCGI_Header
       (Matreshka.FastCGI.Protocol.FCGI_Stdout,
        Content_Length,
        Padding_Length);

      --  Send HTTP message-header.

      GNAT.Sockets.Send_Socket
       (Self.Socket, Encoded_Name.To_Stream_Element_Array, Last);

      if Last /= Encoded_Name.To_Stream_Element_Array'Last then
         raise Program_Error;
      end if;

      GNAT.Sockets.Send_Socket (Self.Socket, Field_Separator, Last);

      if Last /= Field_Separator'Last then
         raise Program_Error;
      end if;

      GNAT.Sockets.Send_Socket
       (Self.Socket, Encoded_Value.To_Stream_Element_Array, Last);

      if Last /= Encoded_Value.To_Stream_Element_Array'Last then
         raise Program_Error;
      end if;

      GNAT.Sockets.Send_Socket (Self.Socket, End_Mark, Last);

      if Last /= End_Mark'Last then
         raise Program_Error;
      end if;

      --  Send FCGI padding.

      GNAT.Sockets.Send_Socket (Self.Socket, Padding, Last);

      if Last /= Padding'Last then
         raise Program_Error;
      end if;
   end Internal_Header;

   ---------------------
   -- Internal_Params --
   ---------------------

   procedure Internal_Params
    (Self   : in out Abstract_Descriptor'Class;
     Buffer : Ada.Streams.Stream_Element_Array)
   is
      procedure Decode_Length
       (First  : in out Ada.Streams.Stream_Element_Offset;
        Length : out Ada.Streams.Stream_Element_Offset);

      -------------------
      -- Decode_Length --
      -------------------

      procedure Decode_Length
       (First  : in out Ada.Streams.Stream_Element_Offset;
        Length : out Ada.Streams.Stream_Element_Offset)
      is
         use type Ada.Streams.Stream_Element;

      begin
         if (Buffer (First) and 16#80#) = 0 then
            Length := Ada.Streams.Stream_Element_Offset (Buffer (First));
            First  := First + 1;

         else
            Length :=
              Ada.Streams.Stream_Element_Offset (Buffer (First) and 16#7F#)
                  * 2 ** 24
                + Ada.Streams.Stream_Element_Offset (Buffer (First + 1))
                    * 2 ** 16
                + Ada.Streams.Stream_Element_Offset (Buffer (First + 2))
                    * 2 ** 8
                + Ada.Streams.Stream_Element_Offset (Buffer (First + 3));
            First  := First + 4;
         end if;
      end Decode_Length;

      First        : Ada.Streams.Stream_Element_Offset := Buffer'First;
      Name_Length  : Ada.Streams.Stream_Element_Offset;
      Value_Length : Ada.Streams.Stream_Element_Offset;

   begin
      if Buffer'Length = 0 then
         Self.Params_Done := True;

         --  Flush accumulated stderr data.

         if not Self.Stderr_Data.Is_Empty then
            Self.Send_FCGI_Packet
             (Matreshka.FastCGI.Protocol.FCGI_Stderr,
              Self.Stderr_Data.To_Stream_Element_Array);
            Self.Stderr_Data.Clear;
         end if;

         --  Dispatch event.

         Self.Internal_End_Params;

      else
         while First < Buffer'Last loop
            Decode_Length (First, Name_Length);
            Decode_Length (First, Value_Length);
            Self.Internal_Param
             (Standard.FastCGI.Field_Names.To_Field_Name
               (ASCII_Codec.Decode
                 (Buffer (First .. First + Name_Length - 1))),
              Standard.FastCGI.Field_Values.To_Field_Value
               (ISO88591_Codec.Decode
                 (Buffer
                   (First + Name_Length
                      .. First + Name_Length + Value_Length - 1))));
            First := First + Name_Length + Value_Length;
         end loop;
      end if;
   end Internal_Params;

   ---------------------
   -- Internal_Stderr --
   ---------------------

   procedure Internal_Stderr
    (Self : in out Abstract_Descriptor'Class;
     Data : Ada.Streams.Stream_Element_Array) is
   begin
      if not Self.Params_Done then
         Self.Stderr_Data.Append (Data);

      else
         Self.Send_FCGI_Packet (Matreshka.FastCGI.Protocol.FCGI_Stderr, Data);
      end if;
   end Internal_Stderr;

   ---------------------
   -- Internal_Stdout --
   ---------------------

   procedure Internal_Stdout
    (Self : in out Abstract_Descriptor'Class;
     Data : Ada.Streams.Stream_Element_Array) is
   begin
      if not Self.Params_Done
        or not Self.Headers_Done
      then
         Self.Stdout_Data.Append (Data);

      else
         Self.Send_FCGI_Packet (Matreshka.FastCGI.Protocol.FCGI_Stdout, Data);
      end if;
   end Internal_Stdout;

   ----------------------
   -- Send_FCGI_Header --
   ----------------------

   procedure Send_FCGI_Header
    (Self           : in out Abstract_Descriptor'Class;
     Packet_Type    : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
     Content_Length : Matreshka.FastCGI.Protocol.FCGI_Content_Length;
     Padding_Length : Matreshka.FastCGI.Protocol.FCGI_Padding_Length)
   is
      Header         : Matreshka.FastCGI.Protocol.FCGI_Header;
      Raw_Header     : Matreshka.FastCGI.Protocol.Raw_FCGI_Header;
      for Raw_Header'Address use Header'Address;
      pragma Import (Ada, Raw_Header);
      Last           : Ada.Streams.Stream_Element_Offset;

   begin
      Matreshka.FastCGI.Protocol.Initialize
       (Header, Packet_Type, Self.Request_Id, Content_Length, Padding_Length);

      GNAT.Sockets.Send_Socket (Self.Socket, Raw_Header, Last);

      if Last /= Raw_Header'Last then
         raise Program_Error;
      end if;
   end Send_FCGI_Header;

   ----------------------
   -- Send_FCGI_Packet --
   ----------------------

   procedure Send_FCGI_Packet
    (Self        : in out Abstract_Descriptor'Class;
     Packet_Type : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
     Content     : Ada.Streams.Stream_Element_Array)
   is
      Padding_Length : constant Matreshka.FastCGI.Protocol.FCGI_Padding_Length
        := Compute_Padding_Length (Content'Length);
      Padding        : constant
        Ada.Streams.Stream_Element_Array (1 .. Padding_Length)
          := (others => 0);
      Last           : Ada.Streams.Stream_Element_Offset;

   begin
      Self.Send_FCGI_Header (Packet_Type, Content'Length, Padding_Length);

      GNAT.Sockets.Send_Socket (Self.Socket, Content, Last);

      if Last /= Content'Last then
         raise Program_Error;
      end if;

      GNAT.Sockets.Send_Socket (Self.Socket, Padding, Last);

      if Last /= Padding'Last then
         raise Program_Error;
      end if;
   end Send_FCGI_Packet;

end Matreshka.FastCGI.Descriptors;
