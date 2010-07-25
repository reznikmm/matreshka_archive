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

--   not overriding procedure Set_Encoding
--    (Self     : in out SAX_Input_Source;
--     Encoding : League.Strings.Universal_String);

   not overriding procedure Set_Public_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String);

   not overriding procedure Set_System_Id
    (Self : in out Stream_Input_Source;
     Id   : League.Strings.Universal_String);

   overriding procedure Next
    (Self        : in out Stream_Input_Source;
     Buffer      : in out
       not null Matreshka.Internals.Strings.Shared_String_Access;
     End_Of_Data : out Boolean);

private

   type Stream_Input_Source is
     new Ada.Finalization.Limited_Controlled
       and SAX_Input_Source with
   record
      Buffer    : Ada.Streams.Stream_Element_Array (1 .. 1024);
      Decoder   : Matreshka.Internals.Text_Codecs.Decoder_Access;
      State     : Matreshka.Internals.Text_Codecs.Decoder_State_Access;
      Stream    : Stream_Access;
      Public_Id : League.Strings.Universal_String;
      System_Id : League.Strings.Universal_String;
   end record;

   overriding procedure Finalize (Self : in out Stream_Input_Source);

end XML.SAX.Input_Sources.Streams;
