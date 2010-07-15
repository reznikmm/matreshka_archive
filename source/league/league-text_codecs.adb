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
with League.Strings.Internals;
with Matreshka.Internals.Text_Codecs.UTF8;

package body League.Text_Codecs is

   use Matreshka.Internals.Text_Codecs;

   UTF8_Decoder : aliased Matreshka.Internals.Text_Codecs.UTF8.UTF8_Decoder;
   UTF8_Encoding : League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UTF-8");

   -----------
   -- Codec --
   -----------

   function Codec
    (Encoding_Name : League.Strings.Universal_String) return Text_Codec
   is
      use League.Strings;

   begin
      if Encoding_Name = UTF8_Encoding then
         return (Decoder => UTF8_Decoder'Access);

      else
         raise Constraint_Error with "Unknown encoding";
      end if;
   end Codec;

   ------------
   -- Decode --
   ------------

   function Decode
    (Self : Text_Codec;
     Data : Ada.Streams.Stream_Element_Array)
       return League.Strings.Universal_String
   is
      State  : Abstract_Decoder_State'Class := Self.Decoder.Create_State (Raw);
      Result : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Self.Decoder.Decode (Data, State, Result);

      if State.Is_Mailformed then
         Matreshka.Internals.Strings.Dereference (Result);

         raise Constraint_Error with "Mailformed data";
      end if;

      return League.Strings.Internals.Wrap (Result);
   end Decode;

end League.Text_Codecs;
