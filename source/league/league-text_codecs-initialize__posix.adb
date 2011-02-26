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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This version of subprogram intended to be used on POSIX systems.
------------------------------------------------------------------------------
with Ada.Characters.Conversions;
with Ada.Strings.Fixed;
with Interfaces.C.Strings;

separate (League.Text_Codecs)
procedure Initialize is

   function Determine_Encoding return League.Strings.Universal_String;
   --  Determines application locale encoding and returns its name.

   function Encoding_Component
    (Locale : String) return League.Strings.Universal_String;
   --  Returns encoding/character set component of locale specification, or
   --  empty string when there are no such component specified.
   --
   --  language[_territory][.codeset][@variant]

   function Get_Environment_Variable (Name : String) return String;
   --  Returns value of the specified environment variable, or empty string
   --  if variable is not defined.

   ------------------------
   -- Determine_Encoding --
   ------------------------

   function Determine_Encoding return League.Strings.Universal_String is
      LC_CTYPE_Encoding : constant League.Strings.Universal_String
        := Encoding_Component (Get_Environment_Variable ("LC_TYPE"));
      LC_ALL_Encoding   : constant League.Strings.Universal_String
        := Encoding_Component (Get_Environment_Variable ("LC_ALL"));
      LANG_Encoding     : constant League.Strings.Universal_String
        := Encoding_Component (Get_Environment_Variable ("LANG"));

   begin
      --  Analyze LC_CTYPE, LC_ALL, LANG for codeset part, use first found,
      --  otherwise fallback to ISO-8859-1.

      if not LC_CTYPE_Encoding.Is_Empty then
         return LC_CTYPE_Encoding;

      elsif not LC_ALL_Encoding.Is_Empty then
         return LC_ALL_Encoding;

      elsif not LANG_Encoding.Is_Empty then
         return LANG_Encoding;

      else
         return League.Strings.To_Universal_String ("ISO-8859-1");
      end if;
   end Determine_Encoding;

   ------------------------
   -- Encoding_Component --
   ------------------------

   function Encoding_Component
    (Locale : String) return League.Strings.Universal_String
   is
      Dot_Index : constant Natural := Ada.Strings.Fixed.Index (Locale, ".");
      At_Index  : constant Natural := Ada.Strings.Fixed.Index (Locale, "@");

   begin
      if Dot_Index = 0 then
         return League.Strings.Empty_Universal_String;

      else
         if At_Index = 0 then
            return
              League.Strings.To_Universal_String
               (Ada.Characters.Conversions.To_Wide_Wide_String
                 (Locale (Dot_Index + 1 .. Locale'Last)));

         else
            return
              League.Strings.To_Universal_String
               (Ada.Characters.Conversions.To_Wide_Wide_String
                 (Locale (Dot_Index + 1 .. At_Index - 1)));
         end if;
      end if;
   end Encoding_Component;

   ------------------------------
   -- Get_Environment_Variable --
   ------------------------------

   function Get_Environment_Variable (Name : String) return String is
      use type Interfaces.C.Strings.chars_ptr;

      function getenv
       (Name : Interfaces.C.Strings.chars_ptr)
          return Interfaces.C.Strings.chars_ptr;
      pragma Import (C, getenv);

      C_Name  : Interfaces.C.Strings.chars_ptr
        := Interfaces.C.Strings.New_String (Name);
      C_Value : constant Interfaces.C.Strings.chars_ptr := getenv (C_Name);

   begin
      Interfaces.C.Strings.Free (C_Name);

      if C_Value = Interfaces.C.Strings.Null_Ptr then
         return "";

      else
         return Interfaces.C.Strings.Value (C_Value);
      end if;
   end Get_Environment_Variable;

begin
   Locale_Codec := Codec (Determine_Encoding);
end Initialize;
