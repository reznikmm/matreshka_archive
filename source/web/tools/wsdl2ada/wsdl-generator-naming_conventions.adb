------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Characters;

package body WSDL.Generator.Naming_Conventions is

   ------------
   -- Plural --
   ------------

   function Plural
    (Item : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      use type League.Characters.Universal_Character;
      use type League.Strings.Universal_String;

   begin
      if Item (Item.Length) = 'y' then
         return Item.Slice (1, Item.Length - 1) & "ies";

      elsif Item (Item.Length) = 's' then
         return Item & "es";

      else
         return Item & "s";
      end if;
   end Plural;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier
    (Item : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String;

   begin
      for J in 1 .. Item.Length loop
         if J = 1 then
            Result.Append (Item (J).Simple_Uppercase_Mapping);

         else
            if Item (J).Uppercase
              and then ((J /= 1 and not Item (J - 1).Uppercase)
                          or (J < Item.Length
                                and then not Item (J + 1).Uppercase))
            then
               if not Result.Is_Empty then
                  Result.Append ('_');
               end if;
            end if;

            Result.Append (Item (J));
         end if;
      end loop;

--      --  Remove trailing underscores.
--
--      loop
--         exit when Aux (Last) /= '_';
--
--         Last := Last - 1;
--      end loop;

      return Result;
   end To_Ada_Identifier;

end WSDL.Generator.Naming_Conventions;
