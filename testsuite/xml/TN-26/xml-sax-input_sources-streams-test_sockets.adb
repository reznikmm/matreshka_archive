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
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Text_IO;
with Ada.Unchecked_Conversion;

package body XML.SAX.Input_Sources.Streams.Test_Sockets is

   function To_Stream_Element_Array
    (Value : String) return Ada.Streams.Stream_Element_Array;

   -----------------------------
   -- To_Stream_Element_Array --
   -----------------------------

   function To_Stream_Element_Array
    (Value : String) return Ada.Streams.Stream_Element_Array
   is
      subtype Source is String (Value'Range);
      subtype Result is Ada.Streams.Stream_Element_Array
        (Ada.Streams.Stream_Element_Offset (Value'First)
           .. Ada.Streams.Stream_Element_Offset (Value'Last));

      function To_Array is new Ada.Unchecked_Conversion (Source, Result);

   begin
      return To_Array (Value);
   end To_Stream_Element_Array;

   S1 : aliased constant Ada.Streams.Stream_Element_Array
     := To_Stream_Element_Array
         ("<?xml version='1.0'?>"
            & "<stream:stream"
            & " xmlns='jabber:client'"
            & " xmlns:stream='http://etherx.jabber.org/streams'"
            & " id='2626941369'"
            & " from='jabber.ru'"
            & " version='1.0'"
            & " xml:lang='ru'>");

   S2 : aliased constant Ada.Streams.Stream_Element_Array
     := To_Stream_Element_Array ("");

   S3 : aliased constant Ada.Streams.Stream_Element_Array
     := To_Stream_Element_Array
         ("<stream:features>"
            & "<starttls xmlns='urn:ietf:params:xml:ns:xmpp-tls'/>"
            & "<compression xmlns='http://jabber.org/features/compress'>"
            & "<method>zlib</method>"
            & "</compression>"
            & "<mechanisms xmlns='urn:ietf:params:xml:ns:xmpp-sasl'>"
            & "<mechanism>PLAIN</mechanism>"
            & "<mechanism>DIGEST-MD5</mechanism>"
            & "</mechanisms>"
            & "<register xmlns='http://jabber.org/features/iq-register'/>"
            & "</stream:features>");

   type Stream_Element_Array_Access is
     access constant Ada.Streams.Stream_Element_Array;

   Test_Data : constant
     array (Positive range <>) of Stream_Element_Array_Access
       := (S1'Access, S2'Access, S3'Access);

   ----------
   -- Read --
   ----------

   overriding procedure Read
    (Self        : in out Test_Socket_Input_Source;
     Buffer      : out Ada.Streams.Stream_Element_Array;
     Last        : out Ada.Streams.Stream_Element_Offset;
     End_Of_Data : out Boolean) is
   begin
      Ada.Text_IO.Put_Line ("Read");
      Self.Pass := Self.Pass + 1;
      End_Of_Data := False;

      if Self.Pass in Test_Data'Range then
         Last := Buffer'First + Test_Data (Self.Pass)'Length - 1;
         Buffer (Buffer'First .. Last) := Test_Data (Self.Pass).all;

      else
         Last := Buffer'First - 1;
      end if;
   end Read;

end XML.SAX.Input_Sources.Streams.Test_Sockets;
