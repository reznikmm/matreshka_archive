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
-- Copyright © 2015-2017, Vadim Godunko <vgodunko@gmail.com>                --
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

package body Engines.Contexts is

   -------------
   -- Uniques --
   -------------

   package body Uniques is

      ---------
      -- Get --
      ---------

      function Get
        (Self : access Unique_Map;
         Element : Asis.Element;
         Prefix  : Wide_Wide_String := "")
         return League.Strings.Universal_String
      is
         Cursor : constant Maps.Cursor := Self.Find (Element);
         Value : Positive;
      begin
         if Maps.Has_Element (Cursor) then
            Value := Maps.Element (Cursor);
         else
            Value := Natural (Self.Length) + 1;
            Self.Insert (Element, Value);
         end if;

         declare
            Result : League.Strings.Universal_String :=
              League.Strings.To_Universal_String (Prefix);
            Image  : constant Wide_Wide_String :=
              Positive'Wide_Wide_Image (Value);

         begin
            Result.Append (Image (2 .. Image'Last));

            return Result;
         end;
      end Get;

      ----------
      -- Hash --
      ----------

      function Hash (Item : Asis.Element) return Ada.Containers.Hash_Type is
         Result : constant Asis.ASIS_Integer := Asis.Elements.Hash (Item);
      begin
         return Ada.Containers.Hash_Type (abs Result);
      end Hash;

   end Uniques;

end Engines.Contexts;
