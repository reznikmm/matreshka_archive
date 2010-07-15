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
--  Abstract API for text decoders/encoders.
--
--  Decoder's states and decoders implementation are separate objects.
------------------------------------------------------------------------------
with Ada.Streams;

with Matreshka.Internals.Strings;

package Matreshka.Internals.Text_Codecs is

   pragma Preelaborate;

   ----------------------
   -- Abstract_Decoder --
   ----------------------

   type Decoder_Mode is (Raw, XML_1_0, XML_1_1);
   --  Mode of text postprocessing after decoding.
   --
   --  Decoder is responsible for XML1.0/XML1.1 end-of-line handling when
   --  its state created with corresponding mode.

   type Abstract_Decoder_State is abstract tagged null record;
   --  Abstract root tagged type for decoder's states.

   not overriding function Is_Error
    (Self : Abstract_Decoder_State) return Boolean is abstract;
   --  Returns True when error is occured during decoding.

   type Abstract_Decoder is abstract tagged limited null record;
   --  Abstract root tagged type for decoders.

   not overriding function Create_State
    (Self : Abstract_Decoder;
     Mode : Decoder_Mode) return Abstract_Decoder_State'Class is abstract;
   --  Creates new decoder's state.

   not overriding procedure Decode
    (Self   : Abstract_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : out Matreshka.Internals.Strings.Shared_String_Access)
       is abstract;
   --  Decodes data and save results in new allocated string.

   not overriding procedure Decode_Append
    (Self   : Abstract_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
       is abstract;
   --  Decodes data and appends them to specified string. String can be
   --  reallocated when necessary.

   ----------------------
   -- Abstract_Encoder --
   ----------------------

   type Abstract_Encoder is abstract tagged limited null record;
   --  Abstract root tagged type for encoders.

end Matreshka.Internals.Text_Codecs;
