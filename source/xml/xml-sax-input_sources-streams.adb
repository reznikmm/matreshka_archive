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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Text_Codecs.UTF8;

package body XML.SAX.Input_Sources.Streams is

--   not overriding function Encoding
--    (Self : SAX_Input_Source) return League.Strings.Universal_String;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Stream_Input_Source) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Matreshka.Internals.Text_Codecs.Abstract_Decoder'Class,
              Matreshka.Internals.Text_Codecs.Decoder_Access);

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Matreshka.Internals.Text_Codecs.Abstract_Decoder_State'Class,
              Matreshka.Internals.Text_Codecs.Decoder_State_Access);

   begin
      Free (Self.Decoder);
      Free (Self.State);
   end Finalize;

   ----------
   -- Next --
   ----------

   overriding procedure Next
    (Self        : in out Stream_Input_Source;
     Buffer      : in out
       not null Matreshka.Internals.Strings.Shared_String_Access;
     End_Of_Data : out Boolean)
   is
      use type Ada.Streams.Stream_Element_Offset;

      Last : Ada.Streams.Stream_Element_Offset;

   begin
      Self.Stream.Read (Self.Buffer, Last);

      if Last >= Self.Buffer'First then
         Self.Decoder.Decode_Append
          (Self.Buffer (Self.Buffer'First .. Last),
           Self.State.all,
           Buffer);
         End_Of_Data := False;

      else
         End_Of_Data := True;
      end if;
   end Next;

   ---------------
   -- Public_Id --
   ---------------

   overriding function Public_Id
    (Self : Stream_Input_Source) return League.Strings.Universal_String is
   begin
      return Self.Public_Id;
   end Public_Id;

--   not overriding procedure Set_Encoding
--    (Self     : in out SAX_Input_Source;
--     Encoding : League.Strings.Universal_String);

   -------------------
   -- Set_Public_Id --
   -------------------

   not overriding procedure Set_Public_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String) is
   begin
      Self.Public_Id := Id;
   end Set_Public_Id;

   ----------------
   -- Set_Stream --
   ----------------

   not overriding procedure Set_Stream
    (Self   : in out Stream_Input_Source;
     Stream : not null Stream_Access) is
   begin
      Self.Stream := Stream;
      Self.Decoder := new Matreshka.Internals.Text_Codecs.UTF8.UTF8_Decoder;
      Self.State :=
        new Matreshka.Internals.Text_Codecs.Abstract_Decoder_State'Class'
             (Self.Decoder.Create_State
               (Matreshka.Internals.Text_Codecs.XML_1_0));
   end Set_Stream;

   -------------------
   -- Set_System_Id --
   -------------------

   not overriding procedure Set_System_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String) is
   begin
      Self.System_Id := Id;
   end Set_System_Id;

   ---------------
   -- System_Id --
   ---------------

   overriding function System_Id
    (Self : Stream_Input_Source) return League.Strings.Universal_String is
   begin
      return Self.System_Id;
   end System_Id;

end XML.SAX.Input_Sources.Streams;
