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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Unicode.Ucd.Cases;
with Matreshka.Internals.Unicode.Ucd.Colls;
with Matreshka.Internals.Unicode.Ucd.Core;

package body Matreshka.Internals.Locales is

   Default_Locale : aliased Locale_Data
     := (Core      => Unicode.Ucd.Core.Property'Access,
         Casing    =>
          (Expansion => Unicode.Ucd.Cases.Data'Access,
           Context   => Unicode.Ucd.Cases.Context'Access,
           Mapping   => Unicode.Ucd.Cases.Mapping'Access),
         Collation =>
          (Expansion     => Unicode.Ucd.Colls.Expansion_Data'Access,
           Contraction   => Unicode.Ucd.Colls.Contraction_Data'Access,
           Mapping       => Unicode.Ucd.Colls.Collation'Access,
           Last_Variable => Unicode.Ucd.Colls.Last_Variable,
           Backwards     => False),
         others        => <>);

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Locale_Data_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation (Locale_Data, Locale_Data_Access);

   begin
      if Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         pragma Assert (Self /= Default_Locale'Access);

         Free (Self);
      end if;
   end Dereference;

   --------------
   -- Get_Core --
   --------------

   function Get_Core
    (Self : not null access Locale_Data'Class;
     Code : Unicode.Code_Point)
       return Unicode.Ucd.Core_Values
   is

      function Element is
        new Matreshka.Internals.Unicode.Ucd.Generic_Element
             (Matreshka.Internals.Unicode.Ucd.Core_Values,
              Matreshka.Internals.Unicode.Ucd.Core_Second_Stage,
              Matreshka.Internals.Unicode.Ucd.Core_Second_Stage_Access,
              Matreshka.Internals.Unicode.Ucd.Core_First_Stage);

   begin
      return Element (Self.Core.all, Code);
   end Get_Core;

   ----------------
   -- Get_Locale --
   ----------------

   function Get_Locale return not null Locale_Data_Access is
      Result : constant not null Locale_Data_Access := Default_Locale'Access;

   begin
      Reference (Result);

      return Result;
   end Get_Locale;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Locale_Data_Access) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

end Matreshka.Internals.Locales;
