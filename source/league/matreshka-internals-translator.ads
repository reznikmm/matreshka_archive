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
private with Ada.Containers.Hashed_Maps;

with League.Strings;

package Matreshka.Internals.Translator is

   pragma Preelaborate;

   function Translate
    (Context        : League.Strings.Universal_String;
     Source_Text    : League.Strings.Universal_String;
     Disambiguation : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns translated text or Source_Text if there is no translation found.

private

   use type League.Strings.Universal_String;

   function Hash
    (Item : League.Strings.Universal_String) return Ada.Containers.Hash_Type;

   package Universal_String_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           League.Strings.Universal_String,
           Hash,
           League.Strings."=");

   type Context_Record is record
      Name         : League.Strings.Universal_String;
      Translations : Universal_String_Maps.Map;
   end record;

   type Context_Access is access all Context_Record;

   package Context_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Context_Access,
           Hash,
           League.Strings."=");

   Translations : Context_Maps.Map;

end Matreshka.Internals.Translator;
