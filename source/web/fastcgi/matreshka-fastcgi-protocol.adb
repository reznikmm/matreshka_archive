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
--  Definition of data structures of FastCGI protocol.
------------------------------------------------------------------------------

package body Matreshka.FastCGI.Protocol is

   ------------------------
   -- Get_Content_Length --
   ------------------------

   function Get_Content_Length
    (Header : FCGI_Header) return FCGI_Content_Length
   is
      use type Ada.Streams.Stream_Element_Offset;

   begin
      return
        FCGI_Content_Length (Header.Content_Length_Byte_1) * 2 ** 8
          + FCGI_Content_Length (Header.Content_Length_Byte_0);
   end Get_Content_Length;

   ---------------------
   -- Get_Packet_Type --
   ---------------------

   function Get_Packet_Type (Header : FCGI_Header) return FCGI_Packet_Type is
   begin
      return FCGI_Packet_Type (Header.Packet_Type);
   end Get_Packet_Type;

   ------------------------
   -- Get_Padding_Length --
   ------------------------

   function Get_Padding_Length
    (Header : FCGI_Header) return FCGI_Padding_Length is
   begin
      return FCGI_Padding_Length (Header.Padding_Length);
   end Get_Padding_Length;

   --------------------
   -- Get_Request_Id --
   --------------------

   function Get_Request_Id
    (Header : FCGI_Header) return FCGI_Request_Identifier is
   begin
      return
        FCGI_Request_Identifier (Header.Request_Id_Byte_1) * 2 ** 8
          + FCGI_Request_Identifier (Header.Request_Id_Byte_0);
   end Get_Request_Id;

   -----------------
   -- Get_Version --
   -----------------

   function Get_Version (Header : FCGI_Header) return FCGI_Version is
   begin
      return FCGI_Version (Header.Version);
   end Get_Version;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Header         : out FCGI_Header;
     Packet_Type    : FCGI_Packet_Type;
     Request_Id     : FCGI_Request_Identifier;
     Content_Length : FCGI_Content_Length;
     Padding_Length : FCGI_Padding_Length)
   is
      use Ada.Streams;

   begin
      Header :=
       (Version               => Stream_Element (Supported_FCGI_Version),
        Packet_Type           => Stream_Element (Packet_Type),
        Request_Id_Byte_1     => Stream_Element (Request_Id / 256),
        Request_Id_Byte_0     => Stream_Element (Request_Id mod 256),
        Content_Length_Byte_1 => Stream_Element (Content_Length / 256),
        Content_Length_Byte_0 => Stream_Element (Content_Length mod 256),
        Padding_Length        => Stream_Element (Padding_Length),
        Reserved              => 0);
   end Initialize;

end Matreshka.FastCGI.Protocol;
