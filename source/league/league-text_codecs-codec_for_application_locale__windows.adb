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
-- Copyright © 2011-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This version of subprogram for Windows.
------------------------------------------------------------------------------
with Interfaces.C;

separate (League.Text_Codecs)
function Codec_For_Appication_Locale return Text_Codec is

   function GetACP return Interfaces.C.unsigned;
   pragma Import (Stdcall, GetACP, "GetACP");

   function Determine_Encoding return League.Strings.Universal_String;
   --  Determines system locale code page and returns name of the character
   --  encoding.

   ------------------------
   -- Determine_Encoding --
   ------------------------

   function Determine_Encoding return League.Strings.Universal_String is
   begin
      case GetACP is
         when 1250 =>
            --  ANSI Central European; Central European (Windows)

            return League.Strings.To_Universal_String ("windows-1250");

         when 1251 =>
            --  ANSI Cyrillic; Cyrillic (Windows)

            return League.Strings.To_Universal_String ("windows-1251");

         when 1252 =>
            --  ANSI Latin 1; Western European (Windows)

            return League.Strings.To_Universal_String ("windows-1252");

         when 1253 =>
            --  ANSI Greek; Greek (Windows)

            return League.Strings.To_Universal_String ("windows-1253");

         when 1254 =>
            --  ANSI Turkish; Turkish (Windows)

            return League.Strings.To_Universal_String ("windows-1254");

         when 1255 =>
            --  ANSI Hebrew; Hebrew (Windows)

            return League.Strings.To_Universal_String ("windows-1255");

         when 1256 =>
            --  ANSI Arabic; Arabic (Windows)

            return League.Strings.To_Universal_String ("windows-1256");

         when 1257 =>
            --  ANSI Baltic; Baltic (Windows)

            return League.Strings.To_Universal_String ("windows-1257");

         when 1258 =>
            --  ANSI/OEM Vietnamese; Vietnamese (Windows)

            return League.Strings.To_Universal_String ("windows-1258");

         when others =>
            return League.Strings.Empty_Universal_String;
      end case;
   end Determine_Encoding;

begin
   --  XXX It would be nice to develop special coder and decoder which use
   --  Windows API functions MultiByteToWideChar and WideCharToMultiByte to
   --  convert data. It allows to support any character encoding, not only
   --  known.

   return Codec (Determine_Encoding);
end Codec_For_Application_Locale;
