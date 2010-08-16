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
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.ISO88591 is

   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   ------------------
   -- Create_State --
   ------------------

   overriding function Create_State
    (Self : ISO88591_Decoder;
     Mode : Decoder_Mode) return Abstract_Decoder_State'Class
   is
      pragma Unreferenced (Self);

   begin
      return
        ISO88591_Decoder_State'
         (Mode    => Mode,
          Skip_LF => False);
   end Create_State;

   ------------
   -- Decode --
   ------------

   overriding procedure Decode
    (Self   : ISO88591_Decoder;
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
    (Self   : ISO88591_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     State  : in out Abstract_Decoder_State'Class;
     String : in out Matreshka.Internals.Strings.Shared_String_Access)
   is
      pragma Unreferenced (Self);

   begin
      for J in Data'Range loop
         Unterminated_Append
          (String,
           State,
           Matreshka.Internals.Unicode.Code_Point (Data (J)));
      end loop;
   end Decode_Append;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error
    (Self : ISO88591_Decoder_State) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : ISO88591_Decoder_State) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.ISO88591;
