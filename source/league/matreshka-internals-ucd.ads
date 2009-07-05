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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

package Matreshka.Internals.Ucd is

   pragma Preelaborate;

   type First_Stage_Index is mod 16#1100#;
   type Second_Stage_Index is mod 16#100#;

   type Grapheme_Cluster_Break is
    (Other,
     CR,
     LF,
     Control,
     Prepend,
     Extend,
     Spacing_Mark,
     L,
     V,
     T,
     LV,
     LVT);
   for Grapheme_Cluster_Break'Size use 8;

   type Word_Break is
    (Other,
     CR,
     LF,
     Newline,
     Katakana,
     A_Letter,
     Mid_Letter,
     Mid_Num,
     Mid_Num_Let,
     Numeric,
     Extend_Num_Let,
     Format,
     Extend);
   for Word_Break'Size use 8;

   type Break_Value is record
      GCB : Grapheme_Cluster_Break;
      WB  : Word_Break;
   end record;

   type Break_Second_Stage is array (Second_Stage_Index) of Break_Value;

   type Break_Second_Stage_Access is
     not null access constant Break_Second_Stage;

   type Break_First_Stage is
     array (First_Stage_Index) of Break_Second_Stage_Access;

   type Sentence_Break is
    (A_Term,
     Close,
     CR,
     Extend,
     Format,
     O_Letter,
     LF,
     Lower,
     Numeric,
     S_Continue,
     Sep,
     Sp,
     S_Term,
     Upper,
     Other);
   for Sentence_Break'Size use 8;

end Matreshka.Internals.Ucd;
