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

package body League.Environment_Variables is

   function To_Key (Item : League.Strings.Universal_String) return Key_Type;
   --  Converts name of environment variable into key of hash table. Where
   --  environment variables is case sensitive, it converts name into upper
   --  case; otherwise do nothing.

   ---------
   -- "=" --
   ---------

   overriding function "="
    (Left  : Environment_Variable_Set;
     Right : Environment_Variable_Set) return Boolean
   is
      use type Universal_String_Maps.Map;

   begin
      return
        Universal_String_Maps.Map (Left) = Universal_String_Maps.Map (Right);
   end "=";

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out Environment_Variable_Set'Class) is
   begin
      Universal_String_Maps.Map (Self).Clear;
   end Clear;

   --------------
   -- Contains --
   --------------

   function Contains
    (Self : Environment_Variable_Set'Class;
     Name : League.Strings.Universal_String) return Boolean
   is
      Key      : constant Key_Type := To_Key (Name);
      Position : constant Universal_String_Maps.Cursor := Self.Find (Key);

   begin
      return Universal_String_Maps.Has_Element (Position);
   end Contains;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Key_Type) return Ada.Containers.Hash_Type is
   begin
      return
        Ada.Containers.Hash_Type (League.Strings.Universal_String (Item).Hash);
   end Hash;

   ------------
   -- Insert --
   ------------

   procedure Insert
    (Self  : in out Environment_Variable_Set'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
   is
      Key      : constant Key_Type := To_Key (Name);
      Position : constant Universal_String_Maps.Cursor := Self.Find (Key);

   begin
      if Universal_String_Maps.Has_Element (Position) then
         Self.Replace_Element (Position, Value);

      else
         Self.Insert (Key, Value);
      end if;
   end Insert;

   ------------
   -- Remove --
   ------------

   procedure Remove
    (Self  : in out Environment_Variable_Set'Class;
     Name  : League.Strings.Universal_String)
   is
      Key      : constant Key_Type := To_Key (Name);
      Position : Universal_String_Maps.Cursor := Self.Find (Key);

   begin
      if Universal_String_Maps.Has_Element (Position) then
         Self.Delete (Position);
      end if;
   end Remove;

   ------------
   -- To_Key --
   ------------

   function To_Key
    (Item : League.Strings.Universal_String) return Key_Type is separate;

   -----------
   -- Value --
   -----------

   function Value
    (Self          : Environment_Variable_Set'Class;
     Name          : League.Strings.Universal_String;
     Default_Value : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
         return League.Strings.Universal_String
   is
      Key      : constant Key_Type := To_Key (Name);
      Position : Universal_String_Maps.Cursor := Self.Find (Key);

   begin
      if Universal_String_Maps.Has_Element (Position) then
         return Universal_String_Maps.Element (Position);

      else
         return Default_Value;
      end if;
   end Value;

end League.Environment_Variables;
