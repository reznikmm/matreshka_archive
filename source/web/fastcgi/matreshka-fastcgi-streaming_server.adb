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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Ordered_Maps;
with Ada.Streams;
with Ada.Text_IO;

with GNAT.Sockets;

--with Matreshka.Internals.Unicode.Characters.Latin;
--with Matreshka.FastCGI.Query_Items;
--with FastCGI.Requests.Internals;
--with FastCGI.Replies.Internals;
with FastCGI.Handlers.Responder;
with Matreshka.FastCGI.Descriptors;
with Matreshka.FastCGI.Protocol;

package body Matreshka.FastCGI.Streaming_Server is

   use Ada.Streams;
--   use League.Stream_Element_Vectors;
--   use Matreshka.Internals.Unicode.Characters.Latin;
   use Matreshka.FastCGI.Protocol;

   package Request_Handler_Maps is
     new Ada.Containers.Ordered_Maps
          (FCGI_Request_Identifier,
           Matreshka.FastCGI.Descriptors.Descriptor_Access,
           Matreshka.FastCGI."<",
           Matreshka.FastCGI.Descriptors."=");

   function FCGI_Listen_Socket return GNAT.Sockets.Socket_Type;
   --  Returns socket to be listen to accept connections from web-server.

--   FCGI_Request_Complete  : constant := 0;
--   FCGI_Cant_Mpx_Conn     : constant := 1;
--   FCGI_Overloaded        : constant := 2;
--   FCGI_Unknown_Role      : constant := 3;

   procedure Process_Connection
    (Socket            : GNAT.Sockets.Socket_Type;
     Responder_Factory : Standard.FastCGI.Application.Responder_Factory);

   procedure Process_Begin_Request
    (Responder_Factory : Standard.FastCGI.Application.Responder_Factory;
     Socket            : GNAT.Sockets.Socket_Type;
     Request_Id        : FCGI_Request_Identifier;
     Buffer            : Stream_Element_Array);
   --  Process FCGI_BEGIN_REQUEST record

--   procedure Execute_Request
--    (Socket     : GNAT.Sockets.Socket_Type;
--     Request_Id : FCGI_Request_Identifier;
--     Handler    : Standard.FastCGI.Application.Callback);
--
--   procedure Send_Header
--    (Socket         : GNAT.Sockets.Socket_Type;
--     Packet_Type    : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
--     Request_Id     : FCGI_Request_Identifier;
--     Content_Length : Ada.Streams.Stream_Element_Offset;
--     Padding_Length : Ada.Streams.Stream_Element_Offset);
--
--   procedure Send_End_Request
--    (Socket             : GNAT.Sockets.Socket_Type;
--     Request_Id         : FCGI_Request_Identifier;
--     Application_Status : Integer;
--     Protocol_Status    : Ada.Streams.Stream_Element);

   Requests : Request_Handler_Maps.Map;

   -------------
   -- Execute --
   -------------

   procedure Execute
    (Responder_Factory : Standard.FastCGI.Application.Responder_Factory)
   is
      Socket  : GNAT.Sockets.Socket_Type;
      Address : GNAT.Sockets.Sock_Addr_Type;

   begin
      null;
--      Dsc.Request_Id := 0;
--
      loop
         GNAT.Sockets.Accept_Socket (FCGI_Listen_Socket, Socket, Address);

         --  XXX Address mush be checked here in presence in the environment
         --  variable.

         Process_Connection (Socket, Responder_Factory);
      end loop;
   end Execute;

--   ---------------------
--   -- Execute_Request --
--   ---------------------
--
--   procedure Execute_Request
--    (Socket     : GNAT.Sockets.Socket_Type;
--     Request_Id : FCGI_Request_Identifier;
--     Handler    : Standard.FastCGI.Application.Callback)
--   is
--      procedure Send_Headers;
--
--      ------------------
--      -- Send_Headers --
--      ------------------
--
--      procedure Send_Headers is
--
--         Content_Length : Stream_Element_Offset := 2;
--         Padding_Length : Stream_Element_Offset;
--
--         procedure Compute_Length (Position : Maps.Cursor);
--
--         procedure Send_Header (Position : Maps.Cursor);
--
--         --------------------
--         -- Compute_Length --
--         --------------------
--
--         procedure Compute_Length (Position : Maps.Cursor) is
--            Name  : constant Stream_Element_Vector := Maps.Key (Position);
--            Value : constant Stream_Element_Vector := Maps.Element (Position);
--
--         begin
--            Content_Length := Content_Length + Name.Length + Value.Length + 4;
--         end Compute_Length;
--
--         -----------------
--         -- Send_Header --
--         -----------------
--
--         procedure Send_Header (Position : Maps.Cursor) is
--            Name      : constant Stream_Element_Array
--              := Maps.Key (Position).To_Stream_Element_Array;
--            Value     : constant Stream_Element_Array
--              := Maps.Element (Position).To_Stream_Element_Array;
--            Separator : constant Stream_Element_Array (1 .. 2)
--              := (Colon, Space);
--            End_Mark  : constant Stream_Element_Array (1 .. 2)
--              := (Carriage_Return, Line_Feed);
--            Last      : Stream_Element_Offset;
--
--         begin
--            GNAT.Sockets.Send_Socket (Socket, Name, Last);
--
--            if Last /= Name'Last then
--               raise Program_Error;
--            end if;
--
--            GNAT.Sockets.Send_Socket (Socket, Separator, Last);
--
--            if Last /= Separator'Last then
--               raise Program_Error;
--            end if;
--
--            GNAT.Sockets.Send_Socket (Socket, Value, Last);
--
--            if Last /= Value'Last then
--               raise Program_Error;
--            end if;
--
--            GNAT.Sockets.Send_Socket (Socket, End_Mark, Last);
--
--            if Last /= End_Mark'Last then
--               raise Program_Error;
--            end if;
--         end Send_Header;
--
--      begin
--         --  Compute length of all headers.
--
--         Dsc.Reply_Headers.Iterate (Compute_Length'Access);
--
--         --  Compute padding length.
--
--         Padding_Length := 8 - Content_Length mod 8;
--
--         if Padding_Length = 8 then
--            Padding_Length := 0;
--         end if;
--
--         --  Send header.
--
--         Send_Header
--          (Socket, FCGI_Stdout, Dsc.Request_Id, Content_Length, Padding_Length);
--
--         --  Send headers' content.
--
--         Dsc.Reply_Headers.Iterate (Send_Header'Access);
--
--         --  Send end of headers mark and padding elements.
--
--         declare
--            Buffer : constant Stream_Element_Array (1 .. Padding_Length + 2)
--              := (Carriage_Return, Line_Feed, others => 0);
--            Last   : Stream_Element_Offset;
--
--         begin
--            GNAT.Sockets.Send_Socket (Socket, Buffer, Last);
--
--            if Last /= Buffer'Last then
--               raise Program_Error;
--            end if;
--         end;
--      end Send_Headers;
--
--      ------------------------
--      -- Send_Output_Stream --
--      ------------------------
--
--      procedure Send_Output_Stream
--       (Packet_Type : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
--        Data        : League.Stream_Element_Vectors.Stream_Element_Vector)
--      is
--         Buffer  : constant Stream_Element_Array
--           := Data.To_Stream_Element_Array;
--         Padding :
--           constant Stream_Element_Array (1 .. 8 - (Buffer'Length) mod 8)
--             := (others => 0);
--         Length  : Stream_Element_Offset := Padding'Length;
--         Last    : Stream_Element_Offset;
--
--      begin
--         if Buffer'Length /= 0 then
--            if Length = 8 then
--               Length := 0;
--            end if;
--
--            Send_Header
--             (Socket, Packet_Type, Dsc.Request_Id, Buffer'Length, Length);
--
--            GNAT.Sockets.Send_Socket (Socket, Buffer, Last);
--
--            if Buffer'Last /= Last then
--               raise Program_Error;
--            end if;
--
--            if Length /= 0 then
--               GNAT.Sockets.Send_Socket (Socket, Padding, Last);
--
--               if Padding'Last /= Last then
--                  raise Program_Error;
--               end if;
--            end if;
--         end if;
--
--         --  Send empty output packet to mark end of data.
--
--         Send_Header (Socket, Packet_Type, Dsc.Request_Id, 0, 0);
--      end Send_Output_Stream;
--
--      Request : Standard.FastCGI.Requests.Request
--        := Standard.FastCGI.Requests.Internals.Create (Dsc'Access);
--      Reply   : Standard.FastCGI.Replies.Reply
--        := Standard.FastCGI.Replies.Internals.Create (Dsc'Access);
--      Status : Integer;
--
--   begin
--      --  Prepare query parameters.
--
--      Query_Items.Decode_Query_Items (Dsc);
--
--      --  Execute callback.
--
--      Handler (Request, Reply, Status);
--
--      --  Send headers.
--
--      Send_Headers;
--
--      --  Send stdout.
--
--      Send_Output_Stream (FCGI_Stdout, Dsc.Stdout);
--
--      --  Send stderr if any.
--
--      if not Dsc.Stderr.Is_Empty then
--         Send_Output_Stream (FCGI_Stderr, Dsc.Stderr);
--      end if;
--
--      --  Send end request packet.
--
--      Send_End_Request (Socket, Dsc.Request_Id, Status, FCGI_Request_Complete);
--
--      --  Reset descriptor's state.
--
--      Dsc.Request_Id := 0;
--      Dsc.Request_Headers.Clear;
--      Dsc.Query_Items.Clear;
--      Dsc.Reply_Headers.Clear;
--      Dsc.Stdin.Clear;
--      Dsc.Stdout.Clear;
--      Dsc.Stderr.Clear;
--   end Execute_Request;

   ------------------------
   -- FCGI_Listen_Socket --
   ------------------------

   function FCGI_Listen_Socket return GNAT.Sockets.Socket_Type is separate;

   ---------------------------
   -- Process_Begin_Request --
   ---------------------------

   procedure Process_Begin_Request
    (Responder_Factory : Standard.FastCGI.Application.Responder_Factory;
     Socket            : GNAT.Sockets.Socket_Type;
     Request_Id        : FCGI_Request_Identifier;
     Buffer            : Stream_Element_Array)
   is
      Header  : FCGI_Begin_Request_Record;
      for Header'Address use Buffer'Address;
      pragma Import (Ada, Header);

      Handler : Matreshka.FastCGI.Descriptors.Descriptor_Access;

   begin
      --  Allocate corresponding handler.

      case Get_Role (Header) is
         when FCGI_Responder =>
            Handler :=
              Standard.FastCGI.Handlers.Responder.To_Descriptor
               (Responder_Factory.all);

         when FCGI_Authorizer =>
            raise Program_Error;

         when FCGI_Filter =>
            raise Program_Error;

         when others =>
            raise Program_Error;
      end case;

--        if (Request.Flags and FCGI_Keep_Conn) /= 0 then
--           raise Program_Error;
--        end if;

      --  Store handler into the set of active requests and dispatch begin
      --  request envent.

      Requests.Insert (Request_Id, Handler);
      Handler.Internal_Begin_Request (Socket, Request_Id);
   end Process_Begin_Request;

   ------------------------
   -- Process_Connection --
   ------------------------

   procedure Process_Connection
    (Socket            : GNAT.Sockets.Socket_Type;
     Responder_Factory : Standard.FastCGI.Application.Responder_Factory)
   is
      Header         : FCGI_Header;
      Buffer         : Raw_FCGI_Header;
      for Buffer'Address use Header'Address;
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

         if Get_Version (Header) /= Supported_FCGI_Version then
            raise Program_Error;
         end if;

         Request_Id := Get_Request_Id (Header);
         Content_Length := Get_Content_Length (Header);
         Padding_Length := Get_Padding_Length (Header);

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

            case Get_Packet_Type (Header) is
               when FCGI_Begin_Request =>
                  Process_Begin_Request
                   (Responder_Factory,
                    Socket,
                    Request_Id,
                    Buffer (1 .. Content_Length));

               when FCGI_Abort_Request =>
                  Ada.Text_IO.Put_Line
                   (Ada.Text_IO.Standard_Error,
                    "");
--                  null;

               when FCGI_End_Request =>
                  null;

               when FCGI_Params =>
                  Requests.Element
                   (Request_Id).Internal_Params (Buffer (1 .. Content_Length));

               when FCGI_Stdin =>
                  Ada.Text_IO.Put_Line
                   (Ada.Text_IO.Standard_Error,
                    "FCGI_Stdin");
                  if Content_Length /= 0 then
                     Requests.Element
                      (Request_Id).Internal_Stdin
                        (Buffer (1 .. Content_Length));

                  else
                     null;
                  end if;
--                  Process_Stdin
--                   (Socket, Request_Id, Buffer (1 .. Content_Length));
--
--                  if Content_Length = 0 then
--                     Execute_Request (Socket, Request_Id, Handler);
--                  end if;

               when FCGI_Stdout =>
                  null;

               when FCGI_Stderr =>
                  null;

               when FCGI_Data =>
                  Ada.Text_IO.Put_Line
                   (Ada.Text_IO.Standard_Error,
                    "FCGI_Data");
--                  null;

               when FCGI_Get_Values =>
                  Ada.Text_IO.Put_Line
                   (Ada.Text_IO.Standard_Error,
                    "FCGI_Get_Values");
--                  null;

               when FCGI_Get_Values_Result =>
                  null;

               when FCGI_Unknown_Type =>
                  null;

               when others =>
                  Ada.Text_IO.Put_Line
                   (Ada.Text_IO.Standard_Error,
                    "unknown");
--                  null;
            end case;
         end;
      end loop;

      GNAT.Sockets.Close_Socket (Socket);
   end Process_Connection;

--   ----------------------
--   -- Send_End_Request --
--   ----------------------
--
--   procedure Send_End_Request
--    (Socket             : GNAT.Sockets.Socket_Type;
--     Request_Id         : FCGI_Request_Identifier;
--     Application_Status : Integer;
--     Protocol_Status    : Ada.Streams.Stream_Element)
--   is
--      Buffer : FCGI_End_Request_Body_Stream_Element_Array := (others => 0);
--      Header : FCGI_End_Request_Body;
--      for Header'Address use Buffer'Address;
--      Last   : Ada.Streams.Stream_Element_Offset;
--
--   begin
--      Send_Header (Socket, FCGI_End_Request, Request_Id, 8, 0);
--
--      Header.App_Status_Byte_3 :=
--        Stream_Element (Application_Status / 2 ** 24);
--      Header.App_Status_Byte_2 :=
--        Stream_Element (Application_Status / 2 ** 16 mod 2 ** 8);
--      Header.App_Status_Byte_1 :=
--        Stream_Element (Application_Status / 2 ** 8 mod 2 ** 8);
--      Header.App_Status_Byte_0 :=
--        Stream_Element (Application_Status mod 2 ** 8);
--      Header.Protocol_Status := Protocol_Status;
--
--      GNAT.Sockets.Send_Socket (Socket, Buffer, Last);
--
--      if Buffer'Last /= Last then
--         raise Program_Error;
--      end if;
--   end Send_End_Request;
--
--   -----------------
--   -- Send_Header --
--   -----------------
--
--   procedure Send_Header
--    (Socket         : GNAT.Sockets.Socket_Type;
--     Packet_Type    : Matreshka.FastCGI.Protocol.FCGI_Packet_Type;
--     Request_Id     : FCGI_Request_Identifier;
--     Content_Length : Ada.Streams.Stream_Element_Offset;
--     Padding_Length : Ada.Streams.Stream_Element_Offset)
--   is
--      Buffer : Raw_FCGI_Header;
--      Header : FCGI_Header;
--      for Header'Address use Buffer'Address;
--      Last   : Ada.Streams.Stream_Element_Offset;
--
--   begin
--      Initialize
--       (Header, Packet_Type, Request_Id, Content_Length, Padding_Length);
--
--      GNAT.Sockets.Send_Socket (Socket, Buffer, Last);
--
--      if Buffer'Last /= Last then
--         raise Program_Error;
--      end if;
--   end Send_Header;

end Matreshka.FastCGI.Streaming_Server;
