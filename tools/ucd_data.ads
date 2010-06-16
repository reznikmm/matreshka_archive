------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
with Matreshka.Internals.Unicode.Ucd;

package Ucd_Data is

   type Core_Values_Array is
     array (Matreshka.Internals.Unicode.Code_Point)
       of Matreshka.Internals.Unicode.Ucd.Core_Values;

   type Core_Values_Array_Access is access Core_Values_Array;

   type Code_Point_Sequence_Access is
     access Matreshka.Internals.Unicode.Ucd.Code_Point_Sequence;

   type Context_Code_Point_Sequence is
     array (Matreshka.Internals.Unicode.Ucd.Casing_Context
              range Matreshka.Internals.Unicode.Ucd.Final_Sigma
                      .. Matreshka.Internals.Unicode.Ucd.After_I)
       of Code_Point_Sequence_Access;

   type Full_Case_Values is record
      Default  : Code_Point_Sequence_Access;
      Positive : Context_Code_Point_Sequence;
      Negative : Context_Code_Point_Sequence;
   end record;

   type Optional_Code_Point (Present : Boolean := False) is record
      case Present is
         when True =>
            C : Matreshka.Internals.Unicode.Code_Point;

         when False =>
            null;
      end case;
   end record;

   type Case_Values is record
      SUM : Optional_Code_Point;
      SLM : Optional_Code_Point;
      STM : Optional_Code_Point;
      SCF : Optional_Code_Point;
      FUM : Full_Case_Values;
      FLM : Full_Case_Values;
      FTM : Full_Case_Values;
      FCF : Code_Point_Sequence_Access;
   end record;

   type Languages is (Default, az, lt, tr);

   type Case_Values_Array is
     array (Matreshka.Internals.Unicode.Code_Point) of Case_Values;

   type Case_Values_Array_Access is access Case_Values_Array;

   type Normalization_Kinds is (Canonical_Mapping, Canonical, Compatibility);

   type Normalization_Values is
     array (Normalization_Kinds) of Code_Point_Sequence_Access;

   type Normalization_Values_Array is
     array (Matreshka.Internals.Unicode.Code_Point) of Normalization_Values;

   type Normalization_Values_Array_Access is
     access all Normalization_Values_Array;

   Core  : Core_Values_Array_Access;
   Cases : Case_Values_Array_Access;
   Norms : Normalization_Values_Array_Access;

   procedure Load (Unidata_Directory : String);

end Ucd_Data;
