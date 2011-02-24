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

package body League.Values.Generic_Integers is

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Integer_Container
   is
      pragma Assert (Is_Empty.all);

   begin
      return
       (Counter  => <>,
        Is_Empty => Is_Empty.all,
        Value    => <>);
   end Constructor;

   -----------
   -- First --
   -----------

   overriding function First
    (Self : not null access constant Integer_Container)
       return Universal_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Universal_Integer (Num'First);
   end First;

   ---------
   -- Get --
   ---------

   overriding function Get
    (Self : not null access constant Integer_Container)
       return Universal_Integer is
   begin
      return Universal_Integer (Self.Value);
   end Get;

   ---------
   -- Get --
   ---------

   function Get (Self : Value) return Num is
   begin
      if Self.Data.all not in Integer_Container
        or Self.Data.all not in Universal_Integer_Container
      then
         raise Constraint_Error with "invalid type of value";
      end if;

      if Self.Data.Is_Empty then
         raise Constraint_Error with "value is empty";
      end if;

      if Self.Data.all in Universal_Integer_Container then
         return Num (Universal_Integer_Container'Class (Self.Data.all).Value);

      else
         return Integer_Container'Class (Self.Data.all).Value;
      end if;
   end Get;

   ----------
   -- Last --
   ----------

   overriding function Last
    (Self : not null access constant Integer_Container)
       return Universal_Integer
   is
      pragma Unreferenced (Self);

   begin
      return Universal_Integer (Num'Last);
   end Last;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self : not null access Integer_Container; To : Universal_Integer) is
   begin
      Self.Is_Empty := False;
      Self.Value    := Num (To);
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set (Self : in out Value; To : Num) is
   begin
      if Self.Data.all not in Integer_Container
        or Self.Data.all not in Universal_Integer_Container
      then
         raise Constraint_Error with "invalid type of value";
      end if;

      --  XXX This subprogram can be improved to reuse shared segment when
      --  possible.

      if Self.Data.all in Universal_Integer_Container then
         Dereference (Self.Data);
         Self.Data :=
           new Universal_Integer_Container'
                (Counter  => <>,
                 Is_Empty => False,
                 Value    => Universal_Integer (To));

      else
         Dereference (Self.Data);
         Self.Data :=
           new Integer_Container'
                (Counter => <>, Is_Empty => False, Value => To);
      end if;
   end Set;

   --------------
   -- To_Value --
   --------------

   function To_Value (Item : Num) return Value is
   begin
      return
       (Ada.Finalization.Controlled with
          new Integer_Container'
               (Counter => <>, Is_Empty => False, Value => Item));
   end To_Value;

end League.Values.Generic_Integers;
