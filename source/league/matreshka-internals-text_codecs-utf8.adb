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
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.UTF8 is

   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   Meta_Class : constant
     array (Ada.Streams.Stream_Element) of UTF8_Meta_Class
       := ( 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
            0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,

            1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,
            9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,  9,
            7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,
            7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,  7,
            8,  8,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,
            2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,  2,
           10,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  3,  4,  3,  3,
           11,  6,  6,  6,  5,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8,  8);

   Transition : constant
     array (UTF8_DFA_State range 0 .. 143) of UTF8_DFA_State
       := ( 0,  1,  2,  3,  5,  8,  7,  1,  1,  1,  4,  6,  1,  1,  1,  1,
            1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,
            1,  0,  1,  1,  1,  1,  1,  0,  1,  0,  1,  1,  1,  1,  1,  1,
            1,  2,  1,  1,  1,  1,  1,  2,  1,  2,  1,  1,  1,  1,  1,  1,
            1,  1,  1,  1,  1,  1,  1,  2,  1,  1,  1,  1,  1,  1,  1,  1,
            1,  2,  1,  1,  1,  1,  1,  1,  1,  2,  1,  1,  1,  1,  1,  1,
            1,  1,  1,  1,  1,  1,  1,  3,  1,  3,  1,  1,  1,  1,  1,  1,
            1,  3,  1,  1,  1,  1,  1,  3,  1,  3,  1,  1,  1,  1,  1,  1,
            1,  3,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  1);

   Accept_State : constant UTF8_DFA_State := 0;
   Reject_State : constant UTF8_DFA_State := 1;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : UTF8_Decoder_State) return Boolean is
   begin
      return Self.State = Reject_State;
   end Is_Error;

   ------------------
   -- Create_State --
   ------------------

   overriding function Create_State
    (Self : UTF8_Decoder;
     Mode : Decoder_Mode) return Abstract_Decoder_State'Class is
   begin
      return
        UTF8_Decoder_State'
         (Mode    => Mode,
          Skip_LF => False,
          State   => Accept_State,
          Code    => 0);
   end Create_State;

   ------------
   -- Decode --
   ------------

   overriding procedure Decode
    (Self   : UTF8_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : out Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      String := Matreshka.Internals.Strings.Allocate (Data'Length);
      Decode_Append (Self, Data, State, String);

      if String.Unused = 0 then
         Matreshka.Internals.Strings.Dereference (String);
         String := Matreshka.Internals.Strings.Shared_Empty'Access;
      end if;
   end Decode;

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : UTF8_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      UTF8_State : UTF8_Decoder_State renames UTF8_Decoder_State (State);

      Current_State   : UTF8_DFA_State := UTF8_State.State;
      Current_Code    : Matreshka.Internals.Unicode.Code_Unit_32
        := UTF8_State.Code;
      Current_Mode    : constant Decoder_Mode := UTF8_State.Mode;
      Current_Skip_LF : Boolean := UTF8_State.Skip_LF;

   begin
      for J in Data'Range loop
         declare
            M : constant UTF8_Meta_Class := Meta_Class (Data (J));

         begin
            if Current_State = 0 then
               Current_Code :=
                (16#FF# / (2 ** Natural (M)))
                   and Matreshka.Internals.Unicode.Code_Point (Data (J));

            else
               Current_Code :=
                (Matreshka.Internals.Unicode.Code_Point (Data (J))
                   and 16#3F#) or (Current_Code * (2 ** 6));
            end if;

            Current_State :=
              Transition (Current_State * 16 + UTF8_DFA_State (M));

            if Current_State = Accept_State then
               case Current_Mode is
                  when Raw =>
                     Matreshka.Internals.Strings.Operations.Append
                      (String, Current_Code);

                  when XML_1_0 =>
                     if Current_Code = 16#000D# then
                        Current_Skip_LF := True;

                        Matreshka.Internals.Strings.Operations.Append
                         (String, 16#000A#);

                     elsif Current_Code = 16#000A# then
                        if not Current_Skip_LF then
                           Matreshka.Internals.Strings.Operations.Append
                            (String, 16#000A#);
                        end if;

                        Current_Skip_LF := False;

                     else
                        Current_Skip_LF := False;
                        Matreshka.Internals.Strings.Operations.Append
                         (String, Current_Code);
                     end if;

                  when XML_1_1 =>
                     if Current_Code = 16#000D# then
                        Current_Skip_LF := True;

                        Matreshka.Internals.Strings.Operations.Append
                         (String, 16#000A#);

                     elsif Current_Code = 16#000A#
                       or Current_Code = 16#0085#
                     then
                        if not Current_Skip_LF then
                           Matreshka.Internals.Strings.Operations.Append
                            (String, 16#000A#);
                        end if;

                        Current_Skip_LF := False;

                     elsif Current_Code = 16#2028# then
                        Current_Skip_LF := False;
                        Matreshka.Internals.Strings.Operations.Append
                         (String, 16#000A#);

                     else
                        Current_Skip_LF := False;
                        Matreshka.Internals.Strings.Operations.Append
                         (String, Current_Code);
                     end if;
               end case;
            end if;
         end;
      end loop;

      UTF8_State.State := Current_State;
      UTF8_State.Code  := Current_Code;
   end Decode_Append;

end Matreshka.Internals.Text_Codecs.UTF8;
