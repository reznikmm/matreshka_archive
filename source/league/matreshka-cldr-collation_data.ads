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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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

package Matreshka.CLDR.Collation_Data is

   type Code_Point_Array is
     array (Positive range <>) of Matreshka.Internals.Unicode.Code_Point;

   type Code_Point_Array_Access is access all Code_Point_Array;

   type Collation_Element is record
      Is_Variable : Boolean;
      Primary     : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
      Secondary   : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
      Trinary     : Matreshka.Internals.Unicode.Ucd.Collation_Weight;
      Code        : Matreshka.Internals.Unicode.Code_Point;
   end record;

   type Collation_Element_Array is
     array (Positive range <>) of Collation_Element;

   type Collation_Element_Array_Access is access all Collation_Element_Array;

   type Collation_Record;
   type Collation_Record_Access is access Collation_Record;

   type Collation_Record is record
      Contractors      : Code_Point_Array_Access;
      Collations       : Collation_Element_Array_Access;

      Less_Or_Equal    : Collation_Record_Access;
      Greater_Or_Equal : Collation_Record_Access;
      --  'previous' and 'next' collation record in collation order.

      Next             : Collation_Record_Access;
      --  Next collation record which starts from the same code point.
   end record;

   type Code_Point_Collations is
     array (Matreshka.Internals.Unicode.Code_Point) of Collation_Record_Access;

   type Collation_Information is record
      Collations     : Code_Point_Collations;
      Lower_Record   : Collation_Record_Access;
      Greater_Record : Collation_Record_Access;
   end record;

   type Collation_Information_Access is access all Collation_Information;

   type Collation_Operator is
    (Identically,
     Primary,
     Secondary,
     Trinary);

   procedure Suppress_Contractions
    (Data : in out Collation_Information;
     Code : Matreshka.Internals.Unicode.Code_Point);
   --  Turns off any existing contractions that begin with given character, as
   --  well as any prefixes for given character.

   procedure Reorder
    (Data          : in out Collation_Information;
     Reset_Code    : Matreshka.Internals.Unicode.Code_Point;
     Operator      : Collation_Operator;
     Relation_Code : Matreshka.Internals.Unicode.Code_Point);

end Matreshka.CLDR.Collation_Data;
