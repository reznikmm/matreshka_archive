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
-- Copyright © 2009-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package body League.Values.Strings is

   --------------
   -- Allocate --
   --------------

   overriding function Allocate (Self : not null access String_Container)
--     return not null Container_Access
--  XXX GNAT 20090503 bug
     return Container_Access
   is
      pragma Unreferenced (Self);

   begin
      return new String_Container;
   end Allocate;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return League.Strings.Universal_String is
   begin
      Check_Is_Type (Self, String_Container'Tag);

      return String_Container'Class (Self.Data.all).Value;
   end Get;

   ---------------
   -- Is_String --
   ---------------

   function Is_String (Self : Value) return Boolean is
   begin
      return Self.Is_Derived_Type (String_Container'Tag);
   end Is_String;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out Value;
     To   : League.Strings.Universal_String)
   is
   begin
      Check_Is_Untyped_Or_Is_Type (Self, String_Container'Tag);

      if Self.Data = null then
         Self.Data :=
           new String_Container'(Abstract_Container with Value => To);

      else
         Mutate (Self.Data);
         String_Container (Self.Data.all).Value := To;
      end if;

      Self.Tag := String_Container'Tag;
   end Set;

   --------------
   -- Set_Type --
   --------------

   procedure Set_Type (Self : in out Value) is
   begin
      Set_Type (Self, Type_Of_Value);
   end Set_Type;

   --------------
   -- To_Value --
   --------------

   function To_Value (Item : League.Strings.Universal_String) return Value is
   begin
      return
        Value'(Ada.Finalization.Controlled with
                 Tag  => String_Container'Tag,
                 Data =>
                   new String_Container'
                        (Abstract_Container with Value => Item));
   end To_Value;

end League.Values.Strings;
