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
with Matreshka.Internals.Unicode.Ucd.Core;

package body Matreshka.Internals.Unicode.Properties is

   function Element is
     new Matreshka.Internals.Unicode.Ucd.Generic_Element
          (Matreshka.Internals.Unicode.Ucd.Core_Values,
           Matreshka.Internals.Unicode.Ucd.Core_Second_Stage,
           Matreshka.Internals.Unicode.Ucd.Core_Second_Stage_Access,
           Matreshka.Internals.Unicode.Ucd.Core_First_Stage);

   --------------------
   -- Is_ID_Continue --
   --------------------

   function Is_ID_Continue (Code : Code_Point) return Boolean is
   begin
      return
        Element
         (Matreshka.Internals.Unicode.Ucd.Core.Property, Code).B
           (Matreshka.Internals.Unicode.Ucd.ID_Continue);
   end Is_ID_Continue;

   -----------------
   -- Is_ID_Start --
   -----------------

   function Is_ID_Start (Code : Code_Point) return Boolean is
   begin
      return
        Element
         (Matreshka.Internals.Unicode.Ucd.Core.Property, Code).B
           (Matreshka.Internals.Unicode.Ucd.ID_Start);
   end Is_ID_Start;

   --------------------------------
   -- Is_Noncharacter_Code_Point --
   --------------------------------

   function Is_Noncharacter_Code_Point (Code : Code_Point) return Boolean is
   begin
      return
        Element
         (Matreshka.Internals.Unicode.Ucd.Core.Property, Code).B
           (Matreshka.Internals.Unicode.Ucd.Noncharacter_Code_Point);
   end Is_Noncharacter_Code_Point;

   --------------------------
   -- Is_Unified_Ideograph --
   --------------------------

   function Is_Unified_Ideograph (Code : Code_Point) return Boolean is
   begin
      return
        Element
         (Matreshka.Internals.Unicode.Ucd.Core.Property, Code).B
           (Matreshka.Internals.Unicode.Ucd.Unified_Ideograph);
   end Is_Unified_Ideograph;

end Matreshka.Internals.Unicode.Properties;
