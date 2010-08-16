------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
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
private with Matreshka.Internals.Unicode;

private package Matreshka.Internals.Text_Codecs.UTF8 is

   pragma Preelaborate;

   type UTF8_Decoder is new Abstract_Decoder with null record;

   type UTF8_Decoder_State is new Abstract_Decoder_State with private;

   overriding function Is_Error (Self : UTF8_Decoder_State) return Boolean;

   overriding function Is_Mailformed
    (Self : UTF8_Decoder_State) return Boolean;

   overriding function Create_State
    (Self : UTF8_Decoder;
     Mode : Decoder_Mode) return Abstract_Decoder_State'Class;

   overriding procedure Decode
    (Self   : UTF8_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : out Matreshka.Internals.Strings.Shared_String_Access);

   overriding procedure Decode_Append
    (Self   : UTF8_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : in out Matreshka.Internals.Strings.Shared_String_Access);

   Decoder : aliased UTF8_Decoder;

private

   type UTF8_Meta_Class is mod 2 ** 8;
   type UTF8_DFA_State is mod 2 ** 8;

   type UTF8_Decoder_State is new Abstract_Decoder_State with record
      State   : UTF8_DFA_State;
      Code    : Matreshka.Internals.Unicode.Code_Unit_32;
   end record;

end Matreshka.Internals.Text_Codecs.UTF8;
