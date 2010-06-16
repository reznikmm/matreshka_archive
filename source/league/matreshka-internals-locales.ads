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
--  This package provides type for representations of the locale's data and
--  internal operations on locales data.
------------------------------------------------------------------------------
with Matreshka.Internals.Atomics.Counters;
with Matreshka.Internals.Unicode.Ucd;

package Matreshka.Internals.Locales is

   pragma Preelaborate;

   type Casing_Data is record
      Expansion : not null Unicode.Ucd.Code_Point_Sequence_Access;
      Context   : not null Unicode.Ucd.Casing_Context_Mapping_Sequence_Access;
      Mapping   : not null Unicode.Ucd.Case_Mapping_First_Stage_Access;
   end record;

   type Collation_Data is record
      Expansion     : not null Unicode.Ucd.Collation_Element_Sequence_Access;
      Contraction   : not null Unicode.Ucd.Contractor_Array_Access;
      Mapping       : not null Unicode.Ucd.Collation_First_Stage_Access;
      Last_Variable : Unicode.Ucd.Collation_Weight;
      Backwards     : Boolean;
      --  Sets the comparison for the second level only to be backwards
      --  ("French").
   end record;

   type Locale_Data is tagged limited record
      Counter   : aliased Matreshka.Internals.Atomics.Counters.Counter;

      Core      : Unicode.Ucd.Core_First_Stage_Access;
      Casing    : Casing_Data;
      Collation : Collation_Data;
   end record;

   type Locale_Data_Access is access all Locale_Data;

   procedure Reference (Self : Locale_Data_Access);
   pragma Inline (Reference);

   procedure Dereference (Self : in out Locale_Data_Access);

   function Get_Locale return not null Locale_Data_Access;
   --  Returns current locale. Reference counter of locale is automatically
   --  incremented, so caller is responsible to call Dereference for free
   --  locale then it is no longer needed.

   function Get_Core
    (Self : not null access Locale_Data'Class;
     Code : Unicode.Code_Point)
       return Unicode.Ucd.Core_Values;
   pragma Inline (Get_Core);

end Matreshka.Internals.Locales;
