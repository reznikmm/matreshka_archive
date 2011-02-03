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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Unchecked_Conversion;

with GNAT.Sockets;

with Matreshka.Internals.Unicode.Characters.Latin;
with Matreshka.FastCGI.Query_Items;
with FastCGI.Requests.Internals;
with FastCGI.Replies.Internals;

package body Matreshka.FastCGI.Server is

   use Ada.Streams;
   use League.Stream_Element_Vectors;
   use Matreshka.Internals.Unicode.Characters.Latin;

   function To_Socket_Type is
     new Ada.Unchecked_Conversion (Integer, GNAT.Sockets.Socket_Type);

   FCGI_Listen_Socket : constant GNAT.Sockets.Socket_Type
     := To_Socket_Type (0);

   type FCGI_Header is record
      Version               : Ada.Streams.Stream_Element;
      Packet_Type           : Ada.Streams.Stream_Element;
      Request_Id_Byte_1     : Ada.Streams.Stream_Element;
      Request_Id_Byte_0     : Ada.Streams.Stream_Element;
      Content_Length_Byte_1 : Ada.Streams.Stream_Element;
      Content_Length_Byte_0 : Ada.Streams.Stream_Element;
      Padding_Length        : Ada.Streams.Stream_Element;
      Reserved              : Ada.Streams.Stream_Element;
   end record;

   type FCGI_Begin_Request_Body is record
      Role_Byte_1 : Ada.Streams.Stream_Element;
      Role_Byte_0 : Ada.Streams.Stream_Element;
      Flags       : Ada.Streams.Stream_Element;
      Reserved_1  : Ada.Streams.Stream_Element;
      Reserved_2  : Ada.Streams.Stream_Element;
      Reserved_3  : Ada.Streams.Stream_Element;
      Reserved_4  : Ada.Streams.Stream_Element;
      Reserved_5  : Ada.Streams.Stream_Element;
   end record;

   type FCGI_End_Request_Body is record
      App_Status_Byte_3 : Ada.Streams.Stream_Element;
      App_Status_Byte_2 : Ada.Streams.Stream_Element;
      App_Status_Byte_1 : Ada.Streams.Stream_Element;
      App_Status_Byte_0 : Ada.Streams.Stream_Element;
      Protocol_Status   : Ada.Streams.Stream_Element;
      Reserved_1        : Ada.Streams.Stream_Element;
      Reserved_2        : Ada.Streams.Stream_Element;
      Reserved_3        : Ada.Streams.Stream_Element;
   end record;

   type FCGI_Role is mod 2 ** 16;

   FCGI_Version           : constant := 1;

   FCGI_Begin_Request     : constant := 1;
   FCGI_Abort_Request     : constant := 2;
   FCGI_End_Request       : constant := 3;
   FCGI_Params            : constant := 4;
   FCGI_Stdin             : constant := 5;
   FCGI_Stdout            : constant := 6;
   FCGI_Stderr            : constant := 7;
   FCGI_Data              : constant := 8;
   FCGI_Get_Values        : constant := 9;
   FCGI_Get_Values_Result : constant := 10;

   FCGI_Keep_Conn         : constant := 1;

   FCGI_Responder         : constant FCGI_Role := 1;
   FCGI_Authorizer        : constant FCGI_Role := 2;
   FCGI_Filter            : constant FCGI_Role := 3;

   FCGI_Request_Complete  : constant := 0;
   FCGI_Cant_Mpx_Conn     : constant := 1;
   FCGI_Overloaded        : constant := 2;
   FCGI_Unknown_Role      : constant := 3;

   subtype FCGI_Header_Stream_Element_Array is
     Ada.Streams.Stream_Element_Array (1 .. 8);

   subtype FCGI_End_Request_Body_Stream_Element_Array is
     Ada.Streams.Stream_Element_Array (1 .. 8);

   procedure Process_Connection
    (Socket  : GNAT.Sockets.Socket_Type;
     Handler : Standard.FastCGI.Application.Callback);

   procedure Process_Begin_Request
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Buffer     : Stream_Element_Array);

   procedure Process_Params
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Buffer     : Stream_Element_Array);

   procedure Process_Stdin
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Buffer     : Stream_Element_Array);

   procedure Execute_Request
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Handler    : Standard.FastCGI.Application.Callback);

   procedure Send_Header
    (Socket         : GNAT.Sockets.Socket_Type;
     Packet_Type    : Ada.Streams.Stream_Element;
     Request_Id     : FCGI_Request_Identifier;
     Content_Length : Ada.Streams.Stream_Element_Offset;
     Padding_Length : Ada.Streams.Stream_Element_Offset);

   procedure Send_End_Request
    (Socket             : GNAT.Sockets.Socket_Type;
     Request_Id         : FCGI_Request_Identifier;
     Application_Status : Integer;
     Protocol_Status    : Ada.Streams.Stream_Element);

   -------------
   -- Execute --
   -------------

   procedure Execute (Handler : Standard.FastCGI.Application.Callback) is
      Socket  : GNAT.Sockets.Socket_Type;
      Address : GNAT.Sockets.Sock_Addr_Type;

   begin
      Dsc.Request_Id := 0;

      loop
         GNAT.Sockets.Accept_Socket (FCGI_Listen_Socket, Socket, Address);

         --  XXX Address mush be checked here in presence in the environment
         --  variable.

         Process_Connection (Socket, Handler);
      end loop;
   end Execute;

   ---------------------
   -- Execute_Request --
   ---------------------

   procedure Execute_Request
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Handler    : Standard.FastCGI.Application.Callback)
   is
      procedure Send_Headers;

      ------------------
      -- Send_Headers --
      ------------------

      procedure Send_Headers is

         Content_Length : Stream_Element_Offset := 2;
         Padding_Length : Stream_Element_Offset;

         procedure Compute_Length (Position : Maps.Cursor);

         procedure Send_Header (Position : Maps.Cursor);

         --------------------
         -- Compute_Length --
         --------------------

         procedure Compute_Length (Position : Maps.Cursor) is
            Name  : constant Stream_Element_Vector := Maps.Key (Position);
            Value : constant Stream_Element_Vector := Maps.Element (Position);

         begin
            Content_Length := Content_Length + Name.Length + Value.Length + 4;
         end Compute_Length;

         -----------------
         -- Send_Header --
         -----------------

         procedure Send_Header (Position : Maps.Cursor) is
            Name      : constant Stream_Element_Array
              := Maps.Key (Position).To_Stream_Element_Array;
            Value     : constant Stream_Element_Array
              := Maps.Element (Position).To_Stream_Element_Array;
            Separator : constant Stream_Element_Array (1 .. 2)
              := (Colon, Space);
            End_Mark  : constant Stream_Element_Array (1 .. 2)
              := (Carriage_Return, Line_Feed);
            Last      : Stream_Element_Offset;

         begin
            GNAT.Sockets.Send_Socket (Socket, Name, Last);

            if Last /= Name'Last then
               raise Program_Error;
            end if;

            GNAT.Sockets.Send_Socket (Socket, Separator, Last);

            if Last /= Separator'Last then
               raise Program_Error;
            end if;

            GNAT.Sockets.Send_Socket (Socket, Value, Last);

            if Last /= Value'Last then
               raise Program_Error;
            end if;

            GNAT.Sockets.Send_Socket (Socket, End_Mark, Last);

            if Last /= End_Mark'Last then
               raise Program_Error;
            end if;
         end Send_Header;

      begin
         --  Compute length of all headers.

         Dsc.Reply_Headers.Iterate (Compute_Length'Access);

         --  Compute padding length.

         Padding_Length := 8 - Content_Length mod 8;

         if Padding_Length = 8 then
            Padding_Length := 0;
         end if;

         --  Send header.

         Send_Header
          (Socket, FCGI_Stdout, Dsc.Request_Id, Content_Length, Padding_Length);

         --  Send headers' content.

         Dsc.Reply_Headers.Iterate (Send_Header'Access);

         --  Send end of headers mark and padding elements.

         declare
            Buffer : constant Stream_Element_Array (1 .. Padding_Length + 2)
              := (Carriage_Return, Line_Feed, others => 0);
            Last   : Stream_Element_Offset;

         begin
            GNAT.Sockets.Send_Socket (Socket, Buffer, Last);

            if Last /= Buffer'Last then
               raise Program_Error;
            end if;
         end;
      end Send_Headers;

      ------------------------
      -- Send_Output_Stream --
      ------------------------

      procedure Send_Output_Stream
       (Package_Type : Stream_Element;
        Data         : League.Stream_Element_Vectors.Stream_Element_Vector)
      is
         Buffer  : constant Stream_Element_Array
           := Data.To_Stream_Element_Array;
         Padding :
           constant Stream_Element_Array (1 .. 8 - (Buffer'Length) mod 8)
             := (others => 0);
         Length  : Stream_Element_Offset := Padding'Length;
         Last    : Stream_Element_Offset;

      begin
         if Buffer'Length /= 0 then
            if Length = 8 then
               Length := 0;
            end if;

            Send_Header
             (Socket, Package_Type, Dsc.Request_Id, Buffer'Length, Length);

            GNAT.Sockets.Send_Socket (Socket, Buffer, Last);

            if Buffer'Last /= Last then
               raise Program_Error;
            end if;

            if Length /= 0 then
               GNAT.Sockets.Send_Socket (Socket, Padding, Last);

               if Padding'Last /= Last then
                  raise Program_Error;
               end if;
            end if;
         end if;

         --  Send empty output packet to mark end of data.

         Send_Header (Socket, Package_Type, Dsc.Request_Id, 0, 0);
      end Send_Output_Stream;

      Request : Standard.FastCGI.Requests.Request
        := Standard.FastCGI.Requests.Internals.Create (Dsc'Access);
      Reply   : Standard.FastCGI.Replies.Reply
        := Standard.FastCGI.Replies.Internals.Create (Dsc'Access);
      Status : Integer;

   begin
      --  Prepare query parameters.

      Query_Items.Decode_Query_Items (Dsc);

      --  Execute callback.

      Handler (Request, Reply, Status);

      --  Send headers.

      Send_Headers;

      --  Send stdout.

      Send_Output_Stream (FCGI_Stdout, Dsc.Stdout);

      --  Send stderr if any.

      if not Dsc.Stderr.Is_Empty then
         Send_Output_Stream (FCGI_Stderr, Dsc.Stderr);
      end if;

      --  Send end request packet.

      Send_End_Request (Socket, Dsc.Request_Id, Status, FCGI_Request_Complete);

      --  Reset descriptor's state.

      Dsc.Request_Id := 0;
      Dsc.Request_Headers.Clear;
      Dsc.Query_Items.Clear;
      Dsc.Reply_Headers.Clear;
      Dsc.Stdin.Clear;
      Dsc.Stdout.Clear;
      Dsc.Stderr.Clear;
   end Execute_Request;

   ---------------------------
   -- Process_Begin_Request --
   ---------------------------

   procedure Process_Begin_Request
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Buffer     : Stream_Element_Array)
   is
      Request : FCGI_Begin_Request_Body;
      for Request'Address use Buffer'Address;
      Role    : constant FCGI_Role
        := FCGI_Role (Request.Role_Byte_1) * 2 ** 8
             + FCGI_Role (Request.Role_Byte_0);

   begin
      if Role /= FCGI_Responder then
         raise Program_Error;
      end if;

      if (Request.Flags and FCGI_Keep_Conn) /= 0 then
         raise Program_Error;
      end if;

      if Dsc.Request_Id /= 0 then
         raise Program_Error;
      end if;

      Dsc.Request_Id := Request_Id;
   end Process_Begin_Request;

   ------------------------
   -- Process_Connection --
   ------------------------

   procedure Process_Connection
    (Socket  : GNAT.Sockets.Socket_Type;
     Handler : Standard.FastCGI.Application.Callback)
   is
      Buffer         : FCGI_Header_Stream_Element_Array;
      Header         : FCGI_Header;
      for Header'Address use Buffer'Address;
      Last           : Stream_Element_Offset;
      Request_Id     : FCGI_Request_Identifier;
      Content_Length : Stream_Element_Offset;
      Padding_Length : Stream_Element_Offset;

   begin
      loop
         GNAT.Sockets.Receive_Socket (Socket, Buffer, Last);

         exit when Last < Buffer'First;

         if Last /= Buffer'Last then
            raise Program_Error;
         end if;

         if Header.Version /= FCGI_Version then
            raise Program_Error;
         end if;

         Request_Id :=
           FCGI_Request_Identifier (Header.Request_Id_Byte_1) * 2 ** 8
             + FCGI_Request_Identifier (Header.Request_Id_Byte_0);
         Content_Length :=
           Stream_Element_Offset (Header.Content_Length_Byte_1) * 2 ** 8
             + Stream_Element_Offset (Header.Content_Length_Byte_0);
         Padding_Length := Stream_Element_Offset (Header.Padding_Length);

         declare
            Buffer :
              Stream_Element_Array (1 .. Content_Length + Padding_Length);

         begin
            --  Receive packet's data when necessary.

            if Buffer'Length /= 0 then
               GNAT.Sockets.Receive_Socket (Socket, Buffer, Last);

               if Last /= Buffer'Last then
                  raise Program_Error;
               end if;
            end if;

            case Header.Packet_Type is
               when FCGI_Begin_Request =>
                  Process_Begin_Request
                   (Socket, Request_Id, Buffer (1 .. Content_Length));

               when FCGI_Abort_Request =>
                  null;

               when FCGI_End_Request =>
                  null;

               when FCGI_Params =>
                  Process_Params
                   (Socket, Request_Id, Buffer (1 .. Content_Length));

               when FCGI_Stdin =>
                  Process_Stdin
                   (Socket, Request_Id, Buffer (1 .. Content_Length));

                  if Content_Length = 0 then
                     Execute_Request (Socket, Request_Id, Handler);
                  end if;

               when FCGI_Stdout =>
                  null;

               when FCGI_Stderr =>
                  null;

               when FCGI_Data =>
                  null;

               when FCGI_Get_Values =>
                  null;

               when FCGI_Get_Values_Result =>
                  null;

               when others =>
                  null;
            end case;
         end;
      end loop;

      GNAT.Sockets.Close_Socket (Socket);
   end Process_Connection;

   --------------------
   -- Process_Params --
   --------------------

   procedure Process_Params
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Buffer     : Stream_Element_Array)
   is
      procedure Decode_Length
       (First  : in out Stream_Element_Offset;
        Length : out Stream_Element_Offset);

      -------------------
      -- Decode_Length --
      -------------------

      procedure Decode_Length
       (First  : in out Stream_Element_Offset;
        Length : out Stream_Element_Offset) is
      begin
         if (Buffer (First) and 16#80#) = 0 then
            Length := Stream_Element_Offset (Buffer (First));
            First  := First + 1;

         else
            Length :=
              Stream_Element_Offset (Buffer (First) and 16#7F#) * 2 ** 24
                + Stream_Element_Offset (Buffer (First + 1)) * 2 ** 16
                + Stream_Element_Offset (Buffer (First + 2)) * 2 ** 8
                + Stream_Element_Offset (Buffer (First + 3));
            First  := First + 4;
         end if;
      end Decode_Length;

      First        : Stream_Element_Offset := Buffer'First;
      Name_Length  : Stream_Element_Offset;
      Value_Length : Stream_Element_Offset;

   begin
      if Dsc.Request_Id /= Request_Id then
         raise Program_Error;
      end if;

      while First < Buffer'Last loop
         Decode_Length (First, Name_Length);
         Decode_Length (First, Value_Length);
         Dsc.Request_Headers.Insert
          (League.Stream_Element_Vectors.To_Stream_Element_Vector
            (Buffer (First .. First + Name_Length - 1)),
           League.Stream_Element_Vectors.To_Stream_Element_Vector
            (Buffer
              (First + Name_Length
                 .. First + Name_Length + Value_Length - 1)));
         First := First + Name_Length + Value_Length;
      end loop;
   end Process_Params;

   -------------------
   -- Process_Stdin --
   -------------------

   procedure Process_Stdin
    (Socket     : GNAT.Sockets.Socket_Type;
     Request_Id : FCGI_Request_Identifier;
     Buffer     : Stream_Element_Array) is
   begin
      if Dsc.Request_Id /= Request_Id then
         raise Program_Error;
      end if;

      Dsc.Stdin :=
        League.Stream_Element_Vectors.To_Stream_Element_Vector
         (Dsc.Stdin.To_Stream_Element_Array & Buffer);
   end Process_Stdin;

   ----------------------
   -- Send_End_Request --
   ----------------------

   procedure Send_End_Request
    (Socket             : GNAT.Sockets.Socket_Type;
     Request_Id         : FCGI_Request_Identifier;
     Application_Status : Integer;
     Protocol_Status    : Ada.Streams.Stream_Element)
   is
      Buffer : FCGI_End_Request_Body_Stream_Element_Array := (others => 0);
      Header : FCGI_End_Request_Body;
      for Header'Address use Buffer'Address;
      Last   : Ada.Streams.Stream_Element_Offset;

   begin
      Send_Header (Socket, FCGI_End_Request, Request_Id, 8, 0);

      Header.App_Status_Byte_3 :=
        Stream_Element (Application_Status / 2 ** 24);
      Header.App_Status_Byte_2 :=
        Stream_Element (Application_Status / 2 ** 16 mod 2 ** 8);
      Header.App_Status_Byte_1 :=
        Stream_Element (Application_Status / 2 ** 8 mod 2 ** 8);
      Header.App_Status_Byte_0 :=
        Stream_Element (Application_Status mod 2 ** 8);
      Header.Protocol_Status := Protocol_Status;

      GNAT.Sockets.Send_Socket (Socket, Buffer, Last);

      if Buffer'Last /= Last then
         raise Program_Error;
      end if;
   end Send_End_Request;

   -----------------
   -- Send_Header --
   -----------------

   procedure Send_Header
    (Socket         : GNAT.Sockets.Socket_Type;
     Packet_Type    : Ada.Streams.Stream_Element;
     Request_Id     : FCGI_Request_Identifier;
     Content_Length : Ada.Streams.Stream_Element_Offset;
     Padding_Length : Ada.Streams.Stream_Element_Offset)
   is
      Buffer : FCGI_Header_Stream_Element_Array := (others => 0);
      Header : FCGI_Header;
      for Header'Address use Buffer'Address;
      Last   : Ada.Streams.Stream_Element_Offset;

   begin
      Header.Version               := FCGI_Version;
      Header.Packet_Type           := Packet_Type;
      Header.Request_Id_Byte_1     := Stream_Element (Request_Id / 256);
      Header.Request_Id_Byte_0     := Stream_Element (Request_Id mod 256);
      Header.Content_Length_Byte_1 := Stream_Element (Content_Length / 256);
      Header.Content_Length_Byte_0 := Stream_Element (Content_Length mod 256);
      Header.Padding_Length        := Stream_Element (Padding_Length);

      GNAT.Sockets.Send_Socket (Socket, Buffer, Last);

      if Buffer'Last /= Last then
         raise Program_Error;
      end if;
   end Send_Header;

end Matreshka.FastCGI.Server;
