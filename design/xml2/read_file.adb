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
-- UTF-8 decoding algoriphm is based on work:                               --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright (c) 2008-2009 Bjoern Hoehrmann <bjoern@hoehrmann.de>           --
--                                                                          --
-- Permission is hereby granted, free of charge, to any person obtaining    --
-- a copy of this software and associated documentation files (the          --
-- "Software"), to deal in the Software without restriction, including      --
-- without limitation the rights to use, copy, modify, merge, publish,      --
-- distribute, sublicense, and/or sell copies of the Software, and to       --
-- permit persons to whom the Software is furnished to do so, subject to    --
-- the following conditions:                                                --
--                                                                          --
-- The above copyright notice and this permission notice shall be included  --
-- in all copies or substantial portions of the Software.                   --
--                                                                          --
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  --
-- OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               --
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   --
-- IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY     --
-- CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,     --
-- TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE        --
-- SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                   --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Streams.Stream_IO;
with Interfaces;

with League.Strings.Internals;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Text_Codecs;
with Matreshka.Internals.Unicode;

function Read_File (Name : String) return League.Strings.Universal_String is
   use Interfaces;
   use type Matreshka.Internals.Unicode.Code_Point;

   Buffer  : Ada.Streams.Stream_Element_Array (1 .. 1024);
   Last    : Ada.Streams.Stream_Element_Offset;
   File    : Ada.Streams.Stream_IO.File_Type;
   Data    : Matreshka.Internals.Strings.Shared_String_Access
     := Matreshka.Internals.Strings.Shared_Empty'Access;
   Factory : Matreshka.Internals.Text_Codecs.Decoder_Factory
     := Matreshka.Internals.Text_Codecs.Decoder
         (Matreshka.Internals.Text_Codecs.MIB_UTF8);
   Decoder : Matreshka.Internals.Text_Codecs.Abstract_Decoder'Class
     := Factory (Matreshka.Internals.Text_Codecs.Raw);

begin
   Ada.Streams.Stream_IO.Open (File, Ada.Streams.Stream_IO.In_File, Name);

   while not Ada.Streams.Stream_IO.End_Of_File (File) loop
      Ada.Streams.Stream_IO.Read (File, Buffer, Last);
      Decoder.Decode_Append (Buffer (Buffer'First .. Last), Data);
   end loop;

   Ada.Streams.Stream_IO.Close (File);

   if Decoder.Is_Error then
      Matreshka.Internals.Strings.Dereference (Data);

      raise Constraint_Error with "mailformed UTF-8 file";
   end if;

   return League.Strings.Internals.Wrap (Data);
end Read_File;
