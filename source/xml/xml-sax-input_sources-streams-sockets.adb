------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Alexander Basov <coopht@gmail.com>                     --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  $Revision: 805 $ $Date: 2010-07-25 13:01:11 +0400 (Вск, 25 Июл 2010) $
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;
with Ada.Text_IO;
with GNAT.Sockets;

with Matreshka.Internals.Text_Codecs.UTF8;

package body XML.SAX.Input_Sources.Streams.Sockets is

   ----------------
   -- Set_Stream --
   ----------------

   not overriding procedure Set_Socket
    (Self   : in out Socket_Input_Source;
     Socket : GNAT.Sockets.Socket_Type) is
   begin
      Self.Socket := Socket;
      Self.Decoder := new Matreshka.Internals.Text_Codecs.UTF8.UTF8_Decoder;
      Self.State :=
        new Matreshka.Internals.Text_Codecs.Abstract_Decoder_State'Class'
             (Self.Decoder.Create_State
               (Matreshka.Internals.Text_Codecs.XML_1_0));
   end Set_Socket;

   ----------
   -- Read --
   ----------

   overriding procedure Read
    (Self        : in out Socket_Input_Source;
     Buffer      : out Ada.Streams.Stream_Element_Array;
     Last        : out Ada.Streams.Stream_Element_Offset;
     End_Of_Data : out Boolean) is

      use type Ada.Streams.Stream_Element_Offset;

      --  for debug
      X : GNAT.Sockets.Request_Type (GNAT.Sockets.N_Bytes_To_Read);

   begin
      --  Getting how much data available in Socket
      GNAT.Sockets.Control_Socket (Self.Socket, X);
      Ada.Text_IO.Put_Line ("Read : Data_Size for reading :" & X.Size'Img);

      if X.Size > 0 then
         GNAT.Sockets.Receive_Socket (Self.Socket, Buffer, Last);

         Ada.Text_IO.Put_Line ("Read : Data_Size Read :" & Last'Img);
         End_Of_Data := False;
      else
         Last := Buffer'First - 1;
         End_Of_Data := True;
      end if;
   end Read;

end XML.SAX.Input_Sources.Streams.Sockets;
