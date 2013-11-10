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
with Ada.Streams;

package Matreshka.FastCGI.Protocol is

   pragma Preelaborate;

   type FCGI_Version is mod 2 ** 8;

   Supported_FCGI_Version : constant FCGI_Version := 1;

   type FCGI_Packet_Type is mod 2 ** 8;

   FCGI_Begin_Request     : constant FCGI_Packet_Type := 1;
   FCGI_Abort_Request     : constant FCGI_Packet_Type := 2;
   FCGI_End_Request       : constant FCGI_Packet_Type := 3;
   FCGI_Params            : constant FCGI_Packet_Type := 4;
   FCGI_Stdin             : constant FCGI_Packet_Type := 5;
   FCGI_Stdout            : constant FCGI_Packet_Type := 6;
   FCGI_Stderr            : constant FCGI_Packet_Type := 7;
   FCGI_Data              : constant FCGI_Packet_Type := 8;
   FCGI_Get_Values        : constant FCGI_Packet_Type := 9;
   FCGI_Get_Values_Result : constant FCGI_Packet_Type := 10;
   FCGI_Unknown_Type      : constant FCGI_Packet_Type := 11;

   subtype FCGI_Content_Length is Ada.Streams.Stream_Element_Offset
     range 0 .. 65_535;

   subtype FCGI_Padding_Length is Ada.Streams.Stream_Element_Offset
     range 0 .. 65_535;

   -----------------
   -- FCGI_Header --
   -----------------

   type FCGI_Header is private;

   function Get_Version (Header : FCGI_Header) return FCGI_Version;
   pragma Inline (Get_Version);

   function Get_Packet_Type (Header : FCGI_Header) return FCGI_Packet_Type;
   pragma Inline (Get_Packet_Type);

   function Get_Request_Id
    (Header : FCGI_Header) return FCGI_Request_Identifier;
   pragma Inline (Get_Request_Id);

   function Get_Content_Length
    (Header : FCGI_Header) return FCGI_Content_Length;
   pragma Inline (Get_Content_Length);

   function Get_Padding_Length
    (Header : FCGI_Header) return FCGI_Padding_Length;
   pragma Inline (Get_Padding_Length);

   procedure Initialize
    (Header         : out FCGI_Header;
     Packet_Type    : FCGI_Packet_Type;
     Request_Id     : FCGI_Request_Identifier;
     Content_Length : FCGI_Content_Length;
     Padding_Length : FCGI_Padding_Length);

private

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

end Matreshka.FastCGI.Protocol;
