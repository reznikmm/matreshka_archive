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
--  This package provides interface to stream SOAP replies back to HTTP server.
------------------------------------------------------------------------------
with Ada.Streams;

with League.Stream_Element_Vectors;

limited with Web_Services.SOAP.Messages;

package Web_Services.SOAP.Reply_Streams is

   type Abstract_Reply_Stream is abstract tagged limited null record;
   type Reply_Stream_Access is access all Abstract_Reply_Stream'Class;

   not overriding procedure Enable_Multipart_Content
    (Self : in out Abstract_Reply_Stream) is abstract;
   --  To enable multiply replies returned for single request.

   type Status_Type is (S_200, S_400);

   not overriding procedure Send_Reply
    (Self         : in out Abstract_Reply_Stream;
     Status       : Status_Type;
     Content_Type : League.Stream_Element_Vectors.Stream_Element_Vector;
     Output_Data  : League.Stream_Element_Vectors.Stream_Element_Vector;
     Success      : out Boolean)
       is abstract;
   --  Send given data as SOAP reply. Status matters only in first reply.

   not overriding procedure Finalyze (Self : in out Abstract_Reply_Stream)
     is abstract;
   --  Clean up internal data before stream deallocation

   procedure Send_Message
    (Self    : in out Abstract_Reply_Stream'Class;
     Status  : Status_Type;
     Message : in out Web_Services.SOAP.Messages.SOAP_Message_Access);
   --  Send first (or only) reply using given reply stream. Free message after
   --  sending.

   procedure Send_Next_Message
    (Self    : in out Abstract_Reply_Stream'Class;
     Message : in out Web_Services.SOAP.Messages.SOAP_Message_Access;
     Success : out Boolean);
   --  Send another reply using given reply stream. Use this only if stream in
   --  multipart mode. Free message after sending.
   --  Return Success = False if sending replies not available any more

   procedure Destroy (Self : in out Reply_Stream_Access);
   --  Close and deallocate reply stream

end Web_Services.SOAP.Reply_Streams;
