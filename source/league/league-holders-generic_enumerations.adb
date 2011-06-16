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

package body League.Holders.Generic_Enumerations is

   -----------------
   -- Constructor --
   -----------------

   overriding function Constructor
    (Is_Empty : not null access Boolean) return Enumeration_Container
   is
      pragma Assert (Is_Empty.all);

   begin
      return
       (Counter  => <>,
        Is_Empty => Is_Empty.all,
        Value    => <>);
   end Constructor;

   -------------
   -- Element --
   -------------

   function Element (Self : Holder) return Enum is
   begin
      if Self.Data.all not in Enumeration_Container then
         raise Constraint_Error with "invalid type of value";
      end if;

      if Self.Data.Is_Empty then
         raise Constraint_Error with "value is empty";
      end if;

      return Enumeration_Container'Class (Self.Data.all).Value;
   end Element;

   --------------------
   -- Is_Enumeration --
   --------------------

   function Is_Enumeration (Self : Holder) return Boolean is
   begin
      return Self.Data.all in Enumeration_Container;
   end Is_Enumeration;

   ---------------------
   -- Replace_Element --
   ---------------------

   procedure Replace_Element (Self : in out Holder; To : Enum) is
   begin
      if Self.Data.all not in Enumeration_Container then
         raise Constraint_Error with "invalid type of value";
      end if;

      --  XXX This subprogram can be improved to reuse shared segment when
      --  possible.

      Dereference (Self.Data);
      Self.Data :=
        new Enumeration_Container'
             (Counter  => <>, Is_Empty => False, Value => To);
   end Replace_Element;

   ---------------
   -- To_Holder --
   ---------------

   function To_Holder (Item : Enum) return Holder is
   begin
      return
       (Ada.Finalization.Controlled with
          new Enumeration_Container'
               (Counter  => <>, Is_Empty => False, Value => Item));
   end To_Holder;

end League.Holders.Generic_Enumerations;
