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
--  This package provides sets of Unicode characters (code points).
------------------------------------------------------------------------------

with League.Strings;
with League.Characters;

package League.Character_Sets is

   pragma Preelaborate;
   pragma Remote_Types;

   type Universal_Character_Set is tagged private;
   pragma Preelaborable_Initialization (Universal_Character_Set);

   Empty_Universal_Character_Set : constant Universal_Character_Set;

   function To_Set
     (Sequence : Wide_Wide_String)
     return Universal_Character_Set;
   --  Return set containing all characters from Sequence

   function To_Set
     (Sequence : League.Strings.Universal_String)
     return Universal_Character_Set;
   --  Return set containing all characters from Sequence

   function "=" (Left, Right : Universal_Character_Set) return Boolean;

   function "not"
     (Right : Universal_Character_Set)
     return Universal_Character_Set;
   --  Return complementing set of character

   function "and"
     (Left, Right : Universal_Character_Set)
     return Universal_Character_Set;
   --  Return intersection of Left and Right

   function "or"
     (Left, Right : Universal_Character_Set)
     return Universal_Character_Set;
   --  Return union of Left and Right

   function "xor"
     (Left, Right : Universal_Character_Set)
     return Universal_Character_Set;

   function "-"
     (Left, Right : Universal_Character_Set)
     return Universal_Character_Set;
   --  Return difference

   function Has
     (Set     : Universal_Character_Set;
      Element : Wide_Wide_Character)
     return Boolean;

   function Has
     (Set     : Universal_Character_Set;
      Element : League.Characters.Universal_Character)
     return Boolean;

   function Is_Subset
     (Elements : Universal_Character_Set;
      Set      : Universal_Character_Set)
     return Boolean;

   function "<="
     (Left  : Universal_Character_Set;
      Right : Universal_Character_Set)
     return Boolean renames Is_Subset;

private

   type Universal_Character_Set is tagged null record;

   Empty_Universal_Character_Set : constant Universal_Character_Set :=
     (null record);

end League.Character_Sets;
