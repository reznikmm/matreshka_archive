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
with Ada.Tags.Generic_Dispatching_Constructor;

package body League.Values.Integers is

   function Create is
     new Ada.Tags.Generic_Dispatching_Constructor
          (Abstract_Integer_Container,
           Matreshka.Internals.Host_Types.Longest_Integer,
           Constructor);

   -----------
   -- First --
   -----------

   function First (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      Check_Is_Derived_Type (Self, Abstract_Integer_Container'Tag);

      return Abstract_Integer_Container'Class (Self.Data.all).First;
   end First;

   ---------
   -- Get --
   ---------

   function Get (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      Check_Is_Derived_Type (Self, Abstract_Integer_Container'Tag);
      Check_Is_Not_Null (Self);

      return Abstract_Integer_Container'Class (Self.Data.all).Get;
   end Get;

   -------------------------
   -- Is_Abstract_Integer --
   -------------------------

   function Is_Abstract_Integer (Self : Value) return Boolean is
   begin
      return Self.Is_Derived_Type (Abstract_Integer_Container'Tag);
   end Is_Abstract_Integer;

   ----------
   -- Last --
   ----------

   function Last (Self : Value)
     return Matreshka.Internals.Host_Types.Longest_Integer
   is
   begin
      Check_Is_Derived_Type (Self, Abstract_Integer_Container'Tag);

      return Abstract_Integer_Container'Class (Self.Data.all).Last;
   end Last;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self : in out Value;
     To   : Matreshka.Internals.Host_Types.Longest_Integer)
   is
   begin
      Check_Is_Derived_Type (Self, Abstract_Integer_Container'Tag);

      Set (Self, Tag (Self.Tag), To);
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self      : in out Value;
     Type_Hint : Tag;
     To        : Matreshka.Internals.Host_Types.Longest_Integer)
   is
      Aux : aliased Matreshka.Internals.Host_Types.Longest_Integer := To;

   begin
      Check_Is_Untyped_Or_Is_Type (Self, Ada.Tags.Tag (Type_Hint));

      if Self.Data = null then
         Self.Data :=
           new Abstract_Integer_Container'Class'
                (Create (Ada.Tags.Tag (Type_Hint), Aux'Access));

      else
         Mutate (Self.Data);
         Abstract_Integer_Container'Class (Self.Data.all).Set (To);
      end if;

      Self.Tag := Ada.Tags.Tag (Type_Hint);
   end Set;

end League.Values.Integers;
