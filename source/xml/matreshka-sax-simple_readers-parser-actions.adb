------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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
with Matreshka.SAX.Simple_Readers.Scanner;
with Matreshka.SAX.Simple_Readers.Handler_Callbacks;

package body Matreshka.SAX.Simple_Readers.Parser.Actions is

   Full_Stop  : constant := 16#002E#;
   Digit_Zero : constant := 16#0030#;
   Digit_One  : constant := 16#0031#;

   -----------------------
   -- On_Character_Data --
   -----------------------

   procedure On_Character_Data
    (Self          : not null access SAX_Simple_Reader'Class;
     Text          : not null Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean) is
   begin
      if Is_Whitespace then
         Handler_Callbacks.Call_Ignorable_Whitespace (Self, Text);

      else
         Handler_Callbacks.Call_Characters (Self, Text);
      end if;
   end On_Character_Data;

   --------------------------------
   -- On_XML_Version_Information --
   --------------------------------

   procedure On_XML_Version_Information
    (Self    : not null access SAX_Simple_Reader'Class;
     Version : not null Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;
      use type Matreshka.Internals.Utf16.Utf16_Code_Unit;

      Error : Boolean := True;

   begin
      --  XML declaration can contains only BMP characters, so we don't need to
      --  use expensive UTF-16 decoding here.

      if Version.Unused = 3
        and then (Version.Value (0) = Digit_One
                    and then Version.Value (1) = Full_Stop)
      then
         if Version.Value (2) = Digit_Zero then
            Scanner.Set_XML_Version (Self, XML_1_0);
            Error := False;

         elsif Version.Value (2) = Digit_One then
            Scanner.Set_XML_Version (Self, XML_1_1);
            Error := False;
         end if;
      end if;

      if Error then
         raise Program_Error;
      end if;
   end On_XML_Version_Information;

end Matreshka.SAX.Simple_Readers.Parser.Actions;
