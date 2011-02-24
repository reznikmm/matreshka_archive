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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Streams;

with League.Stream_Element_Vectors;
with League.Strings;
private with Matreshka.Internals.Text_Codecs;

package League.Text_Codecs is

   type Text_Codec (<>) is tagged private;

   function Decode
    (Self : Text_Codec;
     Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String;
   --  Decodes data. Raises Constraint_Error when data is mailformed.

   function Encode
    (Self : Text_Codec;
     Data : League.Strings.Universal_String)
       return League.Stream_Element_Vectors.Stream_Element_Vector;
   --  Encodes data. Raises Constraint_Error when data can't encoded.

   function Codec
    (Encoding_Name : League.Strings.Universal_String) return Text_Codec;
   --  Returns codec for the specified encoding name.

   function Codec_For_Application_Locale return Text_Codec;
   --  Returns codec for application locale. This codec is intended to be used
   --  to convert Universal_String into form applicable for interaction with
   --  8-bit API of operating system.

   function To_Exception_Message
    (Item : League.Strings.Universal_String) return String;
   --  Converts text into the form suitable to be used with raise statement
   --  and Ada.Exceptions.Raise_Exception procedure.
   --
   --  Note: character encoding for exception's message is compiler dependent,
   --  thus this function must not be used for other purpose.

private

   type Text_Codec is tagged record
      Decoder : Matreshka.Internals.Text_Codecs.Decoder_Factory;
      Encoder : Matreshka.Internals.Text_Codecs.Encoder_Factory;
   end record;

end League.Text_Codecs;
