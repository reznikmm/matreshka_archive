------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                             Examples Component                           --
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
--  Read raw data from the file specified by the first argument in command
--  line and decode it from the encoding specified by the second argument
--  in the command line. Creates file specified by the third argument in
--  command line and write data in the encoding specified by the forth
--  argument.
with Ada.Command_Line;
with Ada.Characters.Conversions;
with Ada.Streams.Stream_IO;
with Ada.Wide_Wide_Text_IO;

with League.Strings;
with League.Text_Codecs;

procedure Text_Codecs is
   File   : Ada.Streams.Stream_IO.File_Type;
   Data   : Ada.Streams.Stream_Element_Array (0 .. 16383);
   Last   : Ada.Streams.Stream_Element_Offset;
   String : League.Strings.Universal_String;

begin
   Ada.Streams.Stream_IO.Open
    (File, Ada.Streams.Stream_IO.In_File, Ada.Command_Line.Argument (1));
   Ada.Streams.Stream_IO.Read (File, Data, Last);
   Ada.Streams.Stream_IO.Close (File);

   --  Decode text.

   declare
      Decoder : League.Text_Codecs.Text_Codec
        := League.Text_Codecs.Codec
            (League.Strings.To_Universal_String
              (Ada.Characters.Conversions.To_Wide_Wide_String
                (Ada.Command_Line.Argument (2))));

   begin
      String := Decoder.Decode (Data (Data'First .. Last));

   exception
      when Constraint_Error =>
         Ada.Wide_Wide_Text_IO.Put_Line ("Decoding error");

         raise;
   end;

   --  Encode text.

   declare
      Encoder : League.Text_Codecs.Text_Codec
        := League.Text_Codecs.Codec
            (League.Strings.To_Universal_String
              (Ada.Characters.Conversions.To_Wide_Wide_String
                (Ada.Command_Line.Argument (4))));

   begin
      Ada.Streams.Stream_IO.Create
       (File, Ada.Streams.Stream_IO.Out_File, Ada.Command_Line.Argument (3));
      Ada.Streams.Stream_IO.Write
       (File, Encoder.Encode (String).To_Stream_Element_Array);
      Ada.Streams.Stream_IO.Close (File);

   exception
      when Constraint_Error =>
         Ada.Wide_Wide_Text_IO.Put_Line ("Encoding error");

         raise;
   end;
end Text_Codecs;
