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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body League.Values.Integers.Generic_Integers is

   --------------
   -- Allocate --
   --------------

   overriding function Allocate (Self : not null access Integer_Container)
--     return not null Container_Access;
--  XXX GNAT 20090503 bug
     return Container_Access
   is
      pragma Unreferenced (Self);

   begin
      return new Integer_Container;
   end Allocate;

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Value : not null access Matreshka.Internals.Host_Types.Longest_Integer)
       return Integer_Container is
   begin
      return
        Integer_Container'(Abstract_Container with Value => Num (Value.all));
   end Constructor;

   -----------
   -- First --
   -----------

   overriding function First (Self : not null access Integer_Container)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Matreshka.Internals.Host_Types.Longest_Integer (Num'First);
   end First;

   ---------
   -- Get --
   ---------

   overriding function Get (Self : not null access Integer_Container)
     return Matreshka.Internals.Host_Types.Longest_Integer is
   begin
      return Matreshka.Internals.Host_Types.Longest_Integer (Self.Value);
   end Get;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return Num is
   begin
      Check_Is_Type (Self, Integer_Container'Tag);
      Check_Is_Not_Null (Self);

      return Integer_Container'Class (Self.Data.all).Value;
   end Get;

   ----------------
   -- Is_Integer --
   ----------------

   function Is_Integer (Self : Value) return Boolean is
   begin
      return Self.Is_Type (Integer_Container'Tag);
   end Is_Integer;

   ----------
   -- Last --
   ----------

   overriding function Last (Self : not null access Integer_Container)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Matreshka.Internals.Host_Types.Longest_Integer (Num'Last);
   end Last;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self : not null access Integer_Container;
     To   : Matreshka.Internals.Host_Types.Longest_Integer) is
   begin
      Self.Value := Num (To);
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out Value;
     To   : Num) is
   begin
      Set
       (Self,
        Value_Type (Integer_Container'Tag),
        Matreshka.Internals.Host_Types.Longest_Integer (To));
   end Set;

   --------------
   -- Set_Type --
   --------------

   procedure Set_Type (Self : in out Value) is
   begin
      Set_Type (Self, Type_Of_Value);
   end Set_Type;

end League.Values.Integers.Generic_Integers;
