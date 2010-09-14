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
private with Ada.Finalization;
with Ada.Streams;

private with Matreshka.Internals.Text_Codecs;

package XML.SAX.Input_Sources.Streams is

   pragma Preelaborate;

   type Stream_Access is access all Ada.Streams.Root_Stream_Type'Class;

   type Stream_Input_Source is limited new SAX_Input_Source with private;

   not overriding procedure Set_Stream
    (Self   : in out Stream_Input_Source;
     Stream : not null Stream_Access);

--   not overriding function Encoding
--    (Self : SAX_Input_Source) return League.Strings.Universal_String;

   overriding function Public_Id
    (Self : Stream_Input_Source) return League.Strings.Universal_String;

   overriding function System_Id
    (Self : Stream_Input_Source) return League.Strings.Universal_String;

   not overriding procedure Set_Encoding
    (Self     : in out Stream_Input_Source;
     Encoding : League.Strings.Universal_String);

   not overriding procedure Set_Public_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String);

   not overriding procedure Set_System_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String);

   overriding procedure Set_Version
    (Self    : in out Stream_Input_Source;
     Version : League.Strings.Universal_String);

   overriding procedure Next
    (Self        : in out Stream_Input_Source;
     Buffer      : in out
       not null Matreshka.Internals.Strings.Shared_String_Access;
     End_Of_Data : out Boolean);

   overriding procedure Reset
    (Self     : in out Stream_Input_Source;
     Version  : League.Strings.Universal_String;
     Encoding : League.Strings.Universal_String;
     Rescan   : out Boolean;
     Success  : out Boolean);

   not overriding procedure Read
    (Self        : in out Stream_Input_Source;
     Buffer      : out Ada.Streams.Stream_Element_Array;
     Last        : out Ada.Streams.Stream_Element_Offset;
     End_Of_Data : out Boolean);
   --  Reads next portion of data from the source into the specified buffer.
   --  Sets End_Of_Data to True when end of source is reached, otherwise sets
   --  it to False. When there are no data readed Last must be set to exactly
   --  Buffer'First - 1.
   --
   --  This operation is intended to be overridden by derived sources to read
   --  data from source into the internal buffer, and to prevent copy of
   --  encoding detection and text decoding code in every implementation of
   --  input source.

private

   use type Ada.Streams.Stream_Element_Offset;

   type Stream_Element_Array_Access is access Ada.Streams.Stream_Element_Array;

   type Stream_Input_Source is
     new Ada.Finalization.Limited_Controlled
       and SAX_Input_Source with
   record
      Buffer       : Stream_Element_Array_Access
        := new Ada.Streams.Stream_Element_Array (0 .. 1023);
      First        : Ada.Streams.Stream_Element_Offset := 0;
      Last         : Ada.Streams.Stream_Element_Offset := -1;
      Accumulate   : Boolean := True;
      Restart      : Boolean := False;
      --  Accumulate source data in the buffer. Accumulation is used till
      --  XMLDecl or TextDecl or absence of one of is processed by parser.
      --  Accumulation allows to simplify changing of encoding from detected
      --  automatically to specified in the entity.
      Decoder      : Matreshka.Internals.Text_Codecs.Decoder_Access;
      --  Decoder member are filled once first four bytes of the source data
      --  are readed and automatic encoding detection is done. They can be
      --  changed later, when parser requests change of the encoding to
      --  specified in the entity.
      Stream       : Stream_Access;
      Public_Id    : League.Strings.Universal_String;
      System_Id    : League.Strings.Universal_String;
      Encoding     : League.Strings.Universal_String;
      Version_Mode : Matreshka.Internals.Text_Codecs.Decoder_Mode
        := Matreshka.Internals.Text_Codecs.XML_1_0;
   end record;

   not overriding procedure Reset (Self : in out Stream_Input_Source);
   --  Resets internal state to initial. It can be used by derived types to
   --  reset state to start to receive new stream using the same input
   --  source object.

   overriding procedure Finalize (Self : in out Stream_Input_Source);

end XML.SAX.Input_Sources.Streams;
