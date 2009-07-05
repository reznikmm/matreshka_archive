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
--  This package is generated automatically
------------------------------------------------------------------------------

package Matreshka.Internals.Ucd.Breaks is

   pragma Preelaborate;

   Group_0000 : aliased constant Break_Second_Stage
     := (16#00# .. 16#09# => (Control, Other),
         16#0A#           => (LF, LF),
         16#0B# .. 16#0C# => (Control, Newline),
         16#0D#           => (CR, CR),
         16#0E# .. 16#1F# => (Control, Other),
         16#20# .. 16#26# => (Other, Other),
         16#27#           => (Other, Mid_Num_Let),
         16#28# .. 16#2B# => (Other, Other),
         16#2C#           => (Other, Mid_Num),
         16#2D#           => (Other, Other),
         16#2E#           => (Other, Mid_Num_Let),
         16#2F#           => (Other, Other),
         16#30# .. 16#39# => (Other, Numeric),
         16#3A#           => (Other, Mid_Letter),
         16#3B#           => (Other, Mid_Num),
         16#3C# .. 16#40# => (Other, Other),
         16#5B# .. 16#5E# => (Other, Other),
         16#5F#           => (Other, Extend_Num_Let),
         16#60#           => (Other, Other),
         16#7B# .. 16#7E# => (Other, Other),
         16#7F# .. 16#84# => (Control, Other),
         16#85#           => (Control, Newline),
         16#86# .. 16#9F# => (Control, Other),
         16#A0# .. 16#A9# => (Other, Other),
         16#AB# .. 16#AC# => (Other, Other),
         16#AD#           => (Control, Format),
         16#AE# .. 16#B4# => (Other, Other),
         16#B6#           => (Other, Other),
         16#B7#           => (Other, Mid_Letter),
         16#B8# .. 16#B9# => (Other, Other),
         16#BB# .. 16#BF# => (Other, Other),
         16#D7#           => (Other, Other),
         16#F7#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0001 : aliased constant Break_Second_Stage
     := (others           => (Other, A_Letter));

   Group_0002 : aliased constant Break_Second_Stage
     := (16#C2# .. 16#C5# => (Other, Other),
         16#D2# .. 16#DF# => (Other, Other),
         16#E5# .. 16#EB# => (Other, Other),
         16#ED#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0003 : aliased constant Break_Second_Stage
     := (16#00# .. 16#6F# => (Extend, Extend),
         16#75#           => (Other, Other),
         16#78# .. 16#79# => (Other, Other),
         16#7E#           => (Other, Mid_Num),
         16#7F# .. 16#85# => (Other, Other),
         16#87#           => (Other, Mid_Letter),
         16#8B#           => (Other, Other),
         16#8D#           => (Other, Other),
         16#A2#           => (Other, Other),
         16#F6#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0004 : aliased constant Break_Second_Stage
     := (16#82#           => (Other, Other),
         16#83# .. 16#89# => (Extend, Extend),
         others           => (Other, A_Letter));

   Group_0005 : aliased constant Break_Second_Stage
     := (16#24# .. 16#30# => (Other, Other),
         16#57# .. 16#58# => (Other, Other),
         16#5A# .. 16#60# => (Other, Other),
         16#88#           => (Other, Other),
         16#89#           => (Other, Mid_Num),
         16#8A# .. 16#90# => (Other, Other),
         16#91# .. 16#BD# => (Extend, Extend),
         16#BE#           => (Other, Other),
         16#BF#           => (Extend, Extend),
         16#C0#           => (Other, Other),
         16#C1# .. 16#C2# => (Extend, Extend),
         16#C3#           => (Other, Other),
         16#C4# .. 16#C5# => (Extend, Extend),
         16#C6#           => (Other, Other),
         16#C7#           => (Extend, Extend),
         16#C8# .. 16#CF# => (Other, Other),
         16#EB# .. 16#EF# => (Other, Other),
         16#F4#           => (Other, Mid_Letter),
         others           => (Other, A_Letter));

   Group_0006 : aliased constant Break_Second_Stage
     := (16#00# .. 16#03# => (Control, Format),
         16#04# .. 16#0B# => (Other, Other),
         16#0C# .. 16#0D# => (Other, Mid_Num),
         16#0E# .. 16#0F# => (Other, Other),
         16#10# .. 16#1A# => (Extend, Extend),
         16#1B# .. 16#20# => (Other, Other),
         16#4B# .. 16#5E# => (Extend, Extend),
         16#5F#           => (Other, Other),
         16#60# .. 16#69# => (Other, Numeric),
         16#6A#           => (Other, Other),
         16#6B#           => (Other, Numeric),
         16#6C#           => (Other, Mid_Num),
         16#6D#           => (Other, Other),
         16#70#           => (Extend, Extend),
         16#D4#           => (Other, Other),
         16#D6# .. 16#DC# => (Extend, Extend),
         16#DD#           => (Control, Format),
         16#DE# .. 16#E4# => (Extend, Extend),
         16#E7# .. 16#E8# => (Extend, Extend),
         16#E9#           => (Other, Other),
         16#EA# .. 16#ED# => (Extend, Extend),
         16#F0# .. 16#F9# => (Other, Numeric),
         16#FD# .. 16#FE# => (Other, Other),
         others           => (Other, A_Letter));

   Group_0007 : aliased constant Break_Second_Stage
     := (16#00# .. 16#0E# => (Other, Other),
         16#0F#           => (Control, Format),
         16#11#           => (Extend, Extend),
         16#30# .. 16#4A# => (Extend, Extend),
         16#4B# .. 16#4C# => (Other, Other),
         16#A6# .. 16#B0# => (Extend, Extend),
         16#B2# .. 16#BF# => (Other, Other),
         16#C0# .. 16#C9# => (Other, Numeric),
         16#EB# .. 16#F3# => (Extend, Extend),
         16#F6# .. 16#F7# => (Other, Other),
         16#F8#           => (Other, Mid_Num),
         16#F9#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0008 : aliased constant Break_Second_Stage
     := (others           => (Other, Other));

   Group_0009 : aliased constant Break_Second_Stage
     := (16#00#           => (Other, Other),
         16#01# .. 16#02# => (Extend, Extend),
         16#03#           => (Spacing_Mark, Extend),
         16#3A# .. 16#3B# => (Other, Other),
         16#3C#           => (Extend, Extend),
         16#3E# .. 16#40# => (Spacing_Mark, Extend),
         16#41# .. 16#48# => (Extend, Extend),
         16#49# .. 16#4C# => (Spacing_Mark, Extend),
         16#4D#           => (Extend, Extend),
         16#4E# .. 16#4F# => (Other, Other),
         16#51# .. 16#54# => (Extend, Extend),
         16#55# .. 16#57# => (Other, Other),
         16#62# .. 16#63# => (Extend, Extend),
         16#64# .. 16#65# => (Other, Other),
         16#66# .. 16#6F# => (Other, Numeric),
         16#70#           => (Other, Other),
         16#73# .. 16#7A# => (Other, Other),
         16#80#           => (Other, Other),
         16#81#           => (Extend, Extend),
         16#82# .. 16#83# => (Spacing_Mark, Extend),
         16#84#           => (Other, Other),
         16#8D# .. 16#8E# => (Other, Other),
         16#91# .. 16#92# => (Other, Other),
         16#A9#           => (Other, Other),
         16#B1#           => (Other, Other),
         16#B3# .. 16#B5# => (Other, Other),
         16#BA# .. 16#BB# => (Other, Other),
         16#BC#           => (Extend, Extend),
         16#BE#           => (Extend, Extend),
         16#BF# .. 16#C0# => (Spacing_Mark, Extend),
         16#C1# .. 16#C4# => (Extend, Extend),
         16#C5# .. 16#C6# => (Other, Other),
         16#C7# .. 16#C8# => (Spacing_Mark, Extend),
         16#C9# .. 16#CA# => (Other, Other),
         16#CB# .. 16#CC# => (Spacing_Mark, Extend),
         16#CD#           => (Extend, Extend),
         16#CF# .. 16#D6# => (Other, Other),
         16#D7#           => (Extend, Extend),
         16#D8# .. 16#DB# => (Other, Other),
         16#DE#           => (Other, Other),
         16#E2# .. 16#E3# => (Extend, Extend),
         16#E4# .. 16#E5# => (Other, Other),
         16#E6# .. 16#EF# => (Other, Numeric),
         others           => (Other, A_Letter));

   Group_000A : aliased constant Break_Second_Stage
     := (16#00#           => (Other, Other),
         16#01# .. 16#02# => (Extend, Extend),
         16#03#           => (Spacing_Mark, Extend),
         16#04#           => (Other, Other),
         16#0B# .. 16#0E# => (Other, Other),
         16#11# .. 16#12# => (Other, Other),
         16#29#           => (Other, Other),
         16#31#           => (Other, Other),
         16#34#           => (Other, Other),
         16#37#           => (Other, Other),
         16#3A# .. 16#3B# => (Other, Other),
         16#3C#           => (Extend, Extend),
         16#3D#           => (Other, Other),
         16#3E# .. 16#40# => (Spacing_Mark, Extend),
         16#41# .. 16#42# => (Extend, Extend),
         16#43# .. 16#46# => (Other, Other),
         16#47# .. 16#48# => (Extend, Extend),
         16#49# .. 16#4A# => (Other, Other),
         16#4B# .. 16#4D# => (Extend, Extend),
         16#4E# .. 16#50# => (Other, Other),
         16#51#           => (Extend, Extend),
         16#52# .. 16#58# => (Other, Other),
         16#5D#           => (Other, Other),
         16#5F# .. 16#65# => (Other, Other),
         16#66# .. 16#6F# => (Other, Numeric),
         16#70# .. 16#71# => (Extend, Extend),
         16#75#           => (Extend, Extend),
         16#76# .. 16#80# => (Other, Other),
         16#81# .. 16#82# => (Extend, Extend),
         16#83#           => (Spacing_Mark, Extend),
         16#84#           => (Other, Other),
         16#8E#           => (Other, Other),
         16#92#           => (Other, Other),
         16#A9#           => (Other, Other),
         16#B1#           => (Other, Other),
         16#B4#           => (Other, Other),
         16#BA# .. 16#BB# => (Other, Other),
         16#BC#           => (Extend, Extend),
         16#BE# .. 16#C0# => (Spacing_Mark, Extend),
         16#C1# .. 16#C5# => (Extend, Extend),
         16#C6#           => (Other, Other),
         16#C7# .. 16#C8# => (Extend, Extend),
         16#C9#           => (Spacing_Mark, Extend),
         16#CA#           => (Other, Other),
         16#CB# .. 16#CC# => (Spacing_Mark, Extend),
         16#CD#           => (Extend, Extend),
         16#CE# .. 16#CF# => (Other, Other),
         16#D1# .. 16#DF# => (Other, Other),
         16#E2# .. 16#E3# => (Extend, Extend),
         16#E4# .. 16#E5# => (Other, Other),
         16#E6# .. 16#EF# => (Other, Numeric),
         others           => (Other, A_Letter));

   Group_000B : aliased constant Break_Second_Stage
     := (16#01#           => (Extend, Extend),
         16#02# .. 16#03# => (Spacing_Mark, Extend),
         16#05# .. 16#0C# => (Other, A_Letter),
         16#0F# .. 16#10# => (Other, A_Letter),
         16#13# .. 16#28# => (Other, A_Letter),
         16#2A# .. 16#30# => (Other, A_Letter),
         16#32# .. 16#33# => (Other, A_Letter),
         16#35# .. 16#39# => (Other, A_Letter),
         16#3C#           => (Extend, Extend),
         16#3D#           => (Other, A_Letter),
         16#3E# .. 16#3F# => (Extend, Extend),
         16#40#           => (Spacing_Mark, Extend),
         16#41# .. 16#44# => (Extend, Extend),
         16#47# .. 16#48# => (Spacing_Mark, Extend),
         16#4B# .. 16#4C# => (Spacing_Mark, Extend),
         16#4D#           => (Extend, Extend),
         16#56# .. 16#57# => (Extend, Extend),
         16#5C# .. 16#5D# => (Other, A_Letter),
         16#5F# .. 16#61# => (Other, A_Letter),
         16#62# .. 16#63# => (Extend, Extend),
         16#66# .. 16#6F# => (Other, Numeric),
         16#71#           => (Other, A_Letter),
         16#82#           => (Extend, Extend),
         16#83#           => (Other, A_Letter),
         16#85# .. 16#8A# => (Other, A_Letter),
         16#8E# .. 16#90# => (Other, A_Letter),
         16#92# .. 16#95# => (Other, A_Letter),
         16#99# .. 16#9A# => (Other, A_Letter),
         16#9C#           => (Other, A_Letter),
         16#9E# .. 16#9F# => (Other, A_Letter),
         16#A3# .. 16#A4# => (Other, A_Letter),
         16#A8# .. 16#AA# => (Other, A_Letter),
         16#AE# .. 16#B9# => (Other, A_Letter),
         16#BE#           => (Extend, Extend),
         16#BF#           => (Spacing_Mark, Extend),
         16#C0#           => (Extend, Extend),
         16#C1# .. 16#C2# => (Spacing_Mark, Extend),
         16#C6# .. 16#C8# => (Spacing_Mark, Extend),
         16#CA# .. 16#CC# => (Spacing_Mark, Extend),
         16#CD#           => (Extend, Extend),
         16#D0#           => (Other, A_Letter),
         16#D7#           => (Extend, Extend),
         16#E6# .. 16#EF# => (Other, Numeric),
         others           => (Other, Other));

   Group_000C : aliased constant Break_Second_Stage
     := (16#00#           => (Other, Other),
         16#01# .. 16#03# => (Spacing_Mark, Extend),
         16#04#           => (Other, Other),
         16#0D#           => (Other, Other),
         16#11#           => (Other, Other),
         16#29#           => (Other, Other),
         16#34#           => (Other, Other),
         16#3A# .. 16#3C# => (Other, Other),
         16#3E# .. 16#40# => (Extend, Extend),
         16#41# .. 16#44# => (Spacing_Mark, Extend),
         16#45#           => (Other, Other),
         16#46# .. 16#48# => (Extend, Extend),
         16#49#           => (Other, Other),
         16#4A# .. 16#4D# => (Extend, Extend),
         16#4E# .. 16#54# => (Other, Other),
         16#55# .. 16#56# => (Extend, Extend),
         16#57#           => (Other, Other),
         16#5A# .. 16#5F# => (Other, Other),
         16#62# .. 16#63# => (Extend, Extend),
         16#64# .. 16#65# => (Other, Other),
         16#66# .. 16#6F# => (Other, Numeric),
         16#70# .. 16#81# => (Other, Other),
         16#82# .. 16#83# => (Spacing_Mark, Extend),
         16#84#           => (Other, Other),
         16#8D#           => (Other, Other),
         16#91#           => (Other, Other),
         16#A9#           => (Other, Other),
         16#B4#           => (Other, Other),
         16#BA# .. 16#BB# => (Other, Other),
         16#BC#           => (Extend, Extend),
         16#BE#           => (Spacing_Mark, Extend),
         16#BF#           => (Extend, Extend),
         16#C0# .. 16#C1# => (Spacing_Mark, Extend),
         16#C2#           => (Extend, Extend),
         16#C3# .. 16#C4# => (Spacing_Mark, Extend),
         16#C5#           => (Other, Other),
         16#C6#           => (Extend, Extend),
         16#C7# .. 16#C8# => (Spacing_Mark, Extend),
         16#C9#           => (Other, Other),
         16#CA# .. 16#CB# => (Spacing_Mark, Extend),
         16#CC# .. 16#CD# => (Extend, Extend),
         16#CE# .. 16#D4# => (Other, Other),
         16#D5# .. 16#D6# => (Extend, Extend),
         16#D7# .. 16#DD# => (Other, Other),
         16#DF#           => (Other, Other),
         16#E2# .. 16#E3# => (Extend, Extend),
         16#E4# .. 16#E5# => (Other, Other),
         16#E6# .. 16#EF# => (Other, Numeric),
         others           => (Other, A_Letter));

   Group_000D : aliased constant Break_Second_Stage
     := (16#00# .. 16#01# => (Other, Other),
         16#02# .. 16#03# => (Spacing_Mark, Extend),
         16#04#           => (Other, Other),
         16#0D#           => (Other, Other),
         16#11#           => (Other, Other),
         16#29#           => (Other, Other),
         16#3A# .. 16#3C# => (Other, Other),
         16#3E#           => (Extend, Extend),
         16#3F# .. 16#40# => (Spacing_Mark, Extend),
         16#41# .. 16#44# => (Extend, Extend),
         16#45#           => (Other, Other),
         16#46# .. 16#48# => (Spacing_Mark, Extend),
         16#49#           => (Other, Other),
         16#4A# .. 16#4C# => (Spacing_Mark, Extend),
         16#4D#           => (Extend, Extend),
         16#4E# .. 16#56# => (Other, Other),
         16#57#           => (Extend, Extend),
         16#58# .. 16#5F# => (Other, Other),
         16#62# .. 16#63# => (Extend, Extend),
         16#64# .. 16#65# => (Other, Other),
         16#66# .. 16#6F# => (Other, Numeric),
         16#70# .. 16#79# => (Other, Other),
         16#80# .. 16#81# => (Other, Other),
         16#82# .. 16#83# => (Spacing_Mark, Extend),
         16#84#           => (Other, Other),
         16#97# .. 16#99# => (Other, Other),
         16#B2#           => (Other, Other),
         16#BC#           => (Other, Other),
         16#BE# .. 16#BF# => (Other, Other),
         16#C7# .. 16#C9# => (Other, Other),
         16#CA#           => (Extend, Extend),
         16#CB# .. 16#CE# => (Other, Other),
         16#CF#           => (Extend, Extend),
         16#D0# .. 16#D1# => (Spacing_Mark, Extend),
         16#D2# .. 16#D4# => (Extend, Extend),
         16#D5#           => (Other, Other),
         16#D6#           => (Extend, Extend),
         16#D7#           => (Other, Other),
         16#D8# .. 16#DE# => (Spacing_Mark, Extend),
         16#DF#           => (Extend, Extend),
         16#E0# .. 16#F1# => (Other, Other),
         16#F2# .. 16#F3# => (Spacing_Mark, Extend),
         others           => (Other, A_Letter));

   Group_000E : aliased constant Break_Second_Stage
     := (16#30#           => (Extend, Other),
         16#31#           => (Extend, Extend),
         16#32# .. 16#33# => (Extend, Other),
         16#34# .. 16#3A# => (Extend, Extend),
         16#40# .. 16#44# => (Prepend, Other),
         16#45#           => (Extend, Other),
         16#47# .. 16#4E# => (Extend, Extend),
         16#50# .. 16#59# => (Other, Numeric),
         16#B0#           => (Extend, Other),
         16#B1#           => (Extend, Extend),
         16#B2# .. 16#B3# => (Extend, Other),
         16#B4# .. 16#B9# => (Extend, Extend),
         16#BB# .. 16#BC# => (Extend, Extend),
         16#C0# .. 16#C4# => (Prepend, Other),
         16#C8# .. 16#CD# => (Extend, Extend),
         16#D0# .. 16#D9# => (Other, Numeric),
         others           => (Other, Other));

   Group_000F : aliased constant Break_Second_Stage
     := (16#00#           => (Other, A_Letter),
         16#18# .. 16#19# => (Extend, Extend),
         16#20# .. 16#29# => (Other, Numeric),
         16#35#           => (Extend, Extend),
         16#37#           => (Extend, Extend),
         16#39#           => (Extend, Extend),
         16#3E# .. 16#3F# => (Spacing_Mark, Extend),
         16#40# .. 16#47# => (Other, A_Letter),
         16#49# .. 16#6C# => (Other, A_Letter),
         16#71# .. 16#7E# => (Extend, Extend),
         16#7F#           => (Spacing_Mark, Extend),
         16#80# .. 16#84# => (Extend, Extend),
         16#86# .. 16#87# => (Extend, Extend),
         16#88# .. 16#8B# => (Other, A_Letter),
         16#90# .. 16#97# => (Extend, Extend),
         16#99# .. 16#BC# => (Extend, Extend),
         16#C6#           => (Extend, Extend),
         others           => (Other, Other));

   Group_0010 : aliased constant Break_Second_Stage
     := (16#2B# .. 16#2C# => (Spacing_Mark, Extend),
         16#2D# .. 16#30# => (Extend, Extend),
         16#31#           => (Spacing_Mark, Extend),
         16#32# .. 16#37# => (Extend, Extend),
         16#38#           => (Spacing_Mark, Extend),
         16#39# .. 16#3A# => (Extend, Extend),
         16#3B# .. 16#3C# => (Spacing_Mark, Extend),
         16#3D# .. 16#3E# => (Extend, Extend),
         16#40# .. 16#49# => (Other, Numeric),
         16#56# .. 16#57# => (Spacing_Mark, Extend),
         16#58# .. 16#59# => (Extend, Extend),
         16#5E# .. 16#60# => (Extend, Extend),
         16#62# .. 16#64# => (Spacing_Mark, Extend),
         16#67# .. 16#6D# => (Spacing_Mark, Extend),
         16#71# .. 16#74# => (Extend, Extend),
         16#82#           => (Extend, Extend),
         16#83# .. 16#84# => (Spacing_Mark, Extend),
         16#85# .. 16#86# => (Extend, Extend),
         16#87# .. 16#8C# => (Spacing_Mark, Extend),
         16#8D#           => (Extend, Extend),
         16#8F#           => (Spacing_Mark, Extend),
         16#90# .. 16#99# => (Other, Numeric),
         16#A0# .. 16#C5# => (Other, A_Letter),
         16#D0# .. 16#FA# => (Other, A_Letter),
         16#FC#           => (Other, A_Letter),
         others           => (Other, Other));

   Group_0011 : aliased constant Break_Second_Stage
     := (16#5A# .. 16#5E# => (Other, Other),
         16#60# .. 16#A2# => (V, A_Letter),
         16#A3# .. 16#A7# => (Other, Other),
         16#A8# .. 16#F9# => (T, A_Letter),
         others           => (L, A_Letter));

   Group_0012 : aliased constant Break_Second_Stage
     := (16#49#           => (Other, Other),
         16#4E# .. 16#4F# => (Other, Other),
         16#57#           => (Other, Other),
         16#59#           => (Other, Other),
         16#5E# .. 16#5F# => (Other, Other),
         16#89#           => (Other, Other),
         16#8E# .. 16#8F# => (Other, Other),
         16#B1#           => (Other, Other),
         16#B6# .. 16#B7# => (Other, Other),
         16#BF#           => (Other, Other),
         16#C1#           => (Other, Other),
         16#C6# .. 16#C7# => (Other, Other),
         16#D7#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0013 : aliased constant Break_Second_Stage
     := (16#11#           => (Other, Other),
         16#16# .. 16#17# => (Other, Other),
         16#5B# .. 16#5E# => (Other, Other),
         16#5F#           => (Extend, Extend),
         16#60# .. 16#7F# => (Other, Other),
         16#90# .. 16#9F# => (Other, Other),
         others           => (Other, A_Letter));

   Group_0014 : aliased constant Break_Second_Stage
     := (16#00#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0016 : aliased constant Break_Second_Stage
     := (16#6D# .. 16#6E# => (Other, Other),
         16#77# .. 16#80# => (Other, Other),
         16#9B# .. 16#9F# => (Other, Other),
         16#EB# .. 16#ED# => (Other, Other),
         others           => (Other, A_Letter));

   Group_0017 : aliased constant Break_Second_Stage
     := (16#00# .. 16#0C# => (Other, A_Letter),
         16#0E# .. 16#11# => (Other, A_Letter),
         16#12# .. 16#14# => (Extend, Extend),
         16#20# .. 16#31# => (Other, A_Letter),
         16#32# .. 16#34# => (Extend, Extend),
         16#40# .. 16#51# => (Other, A_Letter),
         16#52# .. 16#53# => (Extend, Extend),
         16#60# .. 16#6C# => (Other, A_Letter),
         16#6E# .. 16#70# => (Other, A_Letter),
         16#72# .. 16#73# => (Extend, Extend),
         16#B4# .. 16#B5# => (Control, Format),
         16#B6#           => (Spacing_Mark, Extend),
         16#B7# .. 16#BD# => (Extend, Extend),
         16#BE# .. 16#C5# => (Spacing_Mark, Extend),
         16#C6#           => (Extend, Extend),
         16#C7# .. 16#C8# => (Spacing_Mark, Extend),
         16#C9# .. 16#D3# => (Extend, Extend),
         16#DD#           => (Extend, Extend),
         16#E0# .. 16#E9# => (Other, Numeric),
         others           => (Other, Other));

   Group_0018 : aliased constant Break_Second_Stage
     := (16#00# .. 16#0A# => (Other, Other),
         16#0B# .. 16#0D# => (Extend, Extend),
         16#0E# .. 16#0F# => (Other, Other),
         16#10# .. 16#19# => (Other, Numeric),
         16#1A# .. 16#1F# => (Other, Other),
         16#78# .. 16#7F# => (Other, Other),
         16#A9#           => (Extend, Extend),
         others           => (Other, A_Letter));

   Group_0019 : aliased constant Break_Second_Stage
     := (16#00# .. 16#1C# => (Other, A_Letter),
         16#20# .. 16#22# => (Extend, Extend),
         16#23# .. 16#26# => (Spacing_Mark, Extend),
         16#27# .. 16#28# => (Extend, Extend),
         16#29# .. 16#2B# => (Spacing_Mark, Extend),
         16#30# .. 16#31# => (Spacing_Mark, Extend),
         16#32#           => (Extend, Extend),
         16#33# .. 16#38# => (Spacing_Mark, Extend),
         16#39# .. 16#3B# => (Extend, Extend),
         16#46# .. 16#4F# => (Other, Numeric),
         16#B0# .. 16#C0# => (Spacing_Mark, Extend),
         16#C8# .. 16#C9# => (Spacing_Mark, Extend),
         16#D0# .. 16#D9# => (Other, Numeric),
         others           => (Other, Other));

   Group_001A : aliased constant Break_Second_Stage
     := (16#00# .. 16#16# => (Other, A_Letter),
         16#17# .. 16#18# => (Extend, Extend),
         16#19# .. 16#1B# => (Spacing_Mark, Extend),
         others           => (Other, Other));

   Group_001B : aliased constant Break_Second_Stage
     := (16#00# .. 16#03# => (Extend, Extend),
         16#04#           => (Spacing_Mark, Extend),
         16#05# .. 16#33# => (Other, A_Letter),
         16#34#           => (Extend, Extend),
         16#35#           => (Spacing_Mark, Extend),
         16#36# .. 16#3A# => (Extend, Extend),
         16#3B#           => (Spacing_Mark, Extend),
         16#3C#           => (Extend, Extend),
         16#3D# .. 16#41# => (Spacing_Mark, Extend),
         16#42#           => (Extend, Extend),
         16#43# .. 16#44# => (Spacing_Mark, Extend),
         16#45# .. 16#4B# => (Other, A_Letter),
         16#50# .. 16#59# => (Other, Numeric),
         16#6B# .. 16#73# => (Extend, Extend),
         16#80# .. 16#81# => (Extend, Extend),
         16#82#           => (Spacing_Mark, Extend),
         16#83# .. 16#A0# => (Other, A_Letter),
         16#A1#           => (Spacing_Mark, Extend),
         16#A2# .. 16#A5# => (Extend, Extend),
         16#A6# .. 16#A7# => (Spacing_Mark, Extend),
         16#A8# .. 16#A9# => (Extend, Extend),
         16#AA#           => (Spacing_Mark, Extend),
         16#AE# .. 16#AF# => (Other, A_Letter),
         16#B0# .. 16#B9# => (Other, Numeric),
         others           => (Other, Other));

   Group_001C : aliased constant Break_Second_Stage
     := (16#00# .. 16#23# => (Other, A_Letter),
         16#24# .. 16#2B# => (Spacing_Mark, Extend),
         16#2C# .. 16#33# => (Extend, Extend),
         16#34# .. 16#35# => (Spacing_Mark, Extend),
         16#36# .. 16#37# => (Extend, Extend),
         16#40# .. 16#49# => (Other, Numeric),
         16#4D# .. 16#4F# => (Other, A_Letter),
         16#50# .. 16#59# => (Other, Numeric),
         16#5A# .. 16#7D# => (Other, A_Letter),
         others           => (Other, Other));

   Group_001D : aliased constant Break_Second_Stage
     := (16#C0# .. 16#E6# => (Extend, Extend),
         16#E7# .. 16#FD# => (Other, Other),
         others           => (Other, A_Letter));

   Group_001F : aliased constant Break_Second_Stage
     := (16#16# .. 16#17# => (Other, Other),
         16#1E# .. 16#1F# => (Other, Other),
         16#46# .. 16#47# => (Other, Other),
         16#4E# .. 16#4F# => (Other, Other),
         16#58#           => (Other, Other),
         16#5A#           => (Other, Other),
         16#5C#           => (Other, Other),
         16#5E#           => (Other, Other),
         16#7E# .. 16#7F# => (Other, Other),
         16#B5#           => (Other, Other),
         16#BD#           => (Other, Other),
         16#BF# .. 16#C1# => (Other, Other),
         16#C5#           => (Other, Other),
         16#CD# .. 16#CF# => (Other, Other),
         16#D4# .. 16#D5# => (Other, Other),
         16#DC# .. 16#DF# => (Other, Other),
         16#ED# .. 16#F1# => (Other, Other),
         16#F5#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0020 : aliased constant Break_Second_Stage
     := (16#0B#           => (Control, Format),
         16#0C# .. 16#0D# => (Extend, Extend),
         16#0E# .. 16#0F# => (Control, Format),
         16#18# .. 16#19# => (Other, Mid_Num_Let),
         16#24#           => (Other, Mid_Num_Let),
         16#27#           => (Other, Mid_Letter),
         16#28# .. 16#29# => (Control, Newline),
         16#2A# .. 16#2E# => (Control, Format),
         16#3F# .. 16#40# => (Other, Extend_Num_Let),
         16#44#           => (Other, Mid_Num),
         16#54#           => (Other, Extend_Num_Let),
         16#60# .. 16#64# => (Control, Format),
         16#6A# .. 16#6F# => (Control, Format),
         16#71#           => (Other, A_Letter),
         16#7F#           => (Other, A_Letter),
         16#90# .. 16#94# => (Other, A_Letter),
         16#D0# .. 16#F0# => (Extend, Extend),
         others           => (Other, Other));

   Group_0021 : aliased constant Break_Second_Stage
     := (16#02#           => (Other, A_Letter),
         16#07#           => (Other, A_Letter),
         16#0A# .. 16#13# => (Other, A_Letter),
         16#15#           => (Other, A_Letter),
         16#19# .. 16#1D# => (Other, A_Letter),
         16#24#           => (Other, A_Letter),
         16#26#           => (Other, A_Letter),
         16#28#           => (Other, A_Letter),
         16#2A# .. 16#2D# => (Other, A_Letter),
         16#2F# .. 16#39# => (Other, A_Letter),
         16#3C# .. 16#3F# => (Other, A_Letter),
         16#45# .. 16#49# => (Other, A_Letter),
         16#4E#           => (Other, A_Letter),
         16#60# .. 16#88# => (Other, A_Letter),
         others           => (Other, Other));

   Group_0024 : aliased constant Break_Second_Stage
     := (16#B6# .. 16#E9# => (Other, A_Letter),
         others           => (Other, Other));

   Group_002C : aliased constant Break_Second_Stage
     := (16#2F#           => (Other, Other),
         16#5F#           => (Other, Other),
         16#70#           => (Other, Other),
         16#7E# .. 16#7F# => (Other, Other),
         others           => (Other, A_Letter));

   Group_002D : aliased constant Break_Second_Stage
     := (16#26# .. 16#2F# => (Other, Other),
         16#66# .. 16#6E# => (Other, Other),
         16#70# .. 16#7F# => (Other, Other),
         16#97# .. 16#9F# => (Other, Other),
         16#A7#           => (Other, Other),
         16#AF#           => (Other, Other),
         16#B7#           => (Other, Other),
         16#BF#           => (Other, Other),
         16#C7#           => (Other, Other),
         16#CF#           => (Other, Other),
         16#D7#           => (Other, Other),
         16#DF#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_002E : aliased constant Break_Second_Stage
     := (16#2F#           => (Other, A_Letter),
         others           => (Other, Other));

   Group_0030 : aliased constant Break_Second_Stage
     := (16#05#           => (Other, A_Letter),
         16#2A# .. 16#2F# => (Extend, Extend),
         16#31# .. 16#35# => (Other, Katakana),
         16#3B# .. 16#3C# => (Other, A_Letter),
         16#99# .. 16#9A# => (Extend, Extend),
         16#9B# .. 16#9C# => (Other, Katakana),
         16#A0# .. 16#FA# => (Other, Katakana),
         others           => (Other, Other));

   Group_0031 : aliased constant Break_Second_Stage
     := (16#00# .. 16#04# => (Other, Other),
         16#2E# .. 16#30# => (Other, Other),
         16#8F# .. 16#9F# => (Other, Other),
         16#B8# .. 16#EF# => (Other, Other),
         others           => (Other, A_Letter));

   Group_0032 : aliased constant Break_Second_Stage
     := (16#D0# .. 16#FE# => (Other, Katakana),
         others           => (Other, Other));

   Group_0033 : aliased constant Break_Second_Stage
     := (16#00# .. 16#57# => (Other, Katakana),
         others           => (Other, Other));

   Group_00A4 : aliased constant Break_Second_Stage
     := (others           => (Other, A_Letter));

   Group_00A6 : aliased constant Break_Second_Stage
     := (16#00# .. 16#0C# => (Other, A_Letter),
         16#10# .. 16#1F# => (Other, A_Letter),
         16#20# .. 16#29# => (Other, Numeric),
         16#2A# .. 16#2B# => (Other, A_Letter),
         16#40# .. 16#5F# => (Other, A_Letter),
         16#62# .. 16#6E# => (Other, A_Letter),
         16#6F# .. 16#72# => (Extend, Extend),
         16#7C# .. 16#7D# => (Extend, Extend),
         16#7F# .. 16#97# => (Other, A_Letter),
         others           => (Other, Other));

   Group_00A7 : aliased constant Break_Second_Stage
     := (16#17# .. 16#1F# => (Other, A_Letter),
         16#22# .. 16#88# => (Other, A_Letter),
         16#8B# .. 16#8C# => (Other, A_Letter),
         others           => (Other, Other));

   Group_00A8 : aliased constant Break_Second_Stage
     := (16#02#           => (Extend, Extend),
         16#06#           => (Extend, Extend),
         16#0B#           => (Extend, Extend),
         16#23# .. 16#24# => (Spacing_Mark, Extend),
         16#25# .. 16#26# => (Extend, Extend),
         16#27#           => (Spacing_Mark, Extend),
         16#28# .. 16#3F# => (Other, Other),
         16#74# .. 16#7F# => (Other, Other),
         16#80# .. 16#81# => (Spacing_Mark, Extend),
         16#B4# .. 16#C3# => (Spacing_Mark, Extend),
         16#C4#           => (Extend, Extend),
         16#C5# .. 16#CF# => (Other, Other),
         16#D0# .. 16#D9# => (Other, Numeric),
         others           => (Other, A_Letter));

   Group_00A9 : aliased constant Break_Second_Stage
     := (16#00# .. 16#09# => (Other, Numeric),
         16#0A# .. 16#25# => (Other, A_Letter),
         16#26# .. 16#2D# => (Extend, Extend),
         16#30# .. 16#46# => (Other, A_Letter),
         16#47# .. 16#51# => (Extend, Extend),
         16#52# .. 16#53# => (Spacing_Mark, Extend),
         others           => (Other, Other));

   Group_00AA : aliased constant Break_Second_Stage
     := (16#00# .. 16#28# => (Other, A_Letter),
         16#29# .. 16#2E# => (Extend, Extend),
         16#2F# .. 16#30# => (Spacing_Mark, Extend),
         16#31# .. 16#32# => (Extend, Extend),
         16#33# .. 16#34# => (Spacing_Mark, Extend),
         16#35# .. 16#36# => (Extend, Extend),
         16#40# .. 16#42# => (Other, A_Letter),
         16#43#           => (Extend, Extend),
         16#44# .. 16#4B# => (Other, A_Letter),
         16#4C#           => (Extend, Extend),
         16#4D#           => (Spacing_Mark, Extend),
         16#50# .. 16#59# => (Other, Numeric),
         others           => (Other, Other));

   Group_00AC : aliased constant Break_Second_Stage
     := (16#00#           => (LV, A_Letter),
         16#1C#           => (LV, A_Letter),
         16#38#           => (LV, A_Letter),
         16#54#           => (LV, A_Letter),
         16#70#           => (LV, A_Letter),
         16#8C#           => (LV, A_Letter),
         16#A8#           => (LV, A_Letter),
         16#C4#           => (LV, A_Letter),
         16#E0#           => (LV, A_Letter),
         16#FC#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00AD : aliased constant Break_Second_Stage
     := (16#18#           => (LV, A_Letter),
         16#34#           => (LV, A_Letter),
         16#50#           => (LV, A_Letter),
         16#6C#           => (LV, A_Letter),
         16#88#           => (LV, A_Letter),
         16#A4#           => (LV, A_Letter),
         16#C0#           => (LV, A_Letter),
         16#DC#           => (LV, A_Letter),
         16#F8#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00AE : aliased constant Break_Second_Stage
     := (16#14#           => (LV, A_Letter),
         16#30#           => (LV, A_Letter),
         16#4C#           => (LV, A_Letter),
         16#68#           => (LV, A_Letter),
         16#84#           => (LV, A_Letter),
         16#A0#           => (LV, A_Letter),
         16#BC#           => (LV, A_Letter),
         16#D8#           => (LV, A_Letter),
         16#F4#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00AF : aliased constant Break_Second_Stage
     := (16#10#           => (LV, A_Letter),
         16#2C#           => (LV, A_Letter),
         16#48#           => (LV, A_Letter),
         16#64#           => (LV, A_Letter),
         16#80#           => (LV, A_Letter),
         16#9C#           => (LV, A_Letter),
         16#B8#           => (LV, A_Letter),
         16#D4#           => (LV, A_Letter),
         16#F0#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00B0 : aliased constant Break_Second_Stage
     := (16#0C#           => (LV, A_Letter),
         16#28#           => (LV, A_Letter),
         16#44#           => (LV, A_Letter),
         16#60#           => (LV, A_Letter),
         16#7C#           => (LV, A_Letter),
         16#98#           => (LV, A_Letter),
         16#B4#           => (LV, A_Letter),
         16#D0#           => (LV, A_Letter),
         16#EC#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00B1 : aliased constant Break_Second_Stage
     := (16#08#           => (LV, A_Letter),
         16#24#           => (LV, A_Letter),
         16#40#           => (LV, A_Letter),
         16#5C#           => (LV, A_Letter),
         16#78#           => (LV, A_Letter),
         16#94#           => (LV, A_Letter),
         16#B0#           => (LV, A_Letter),
         16#CC#           => (LV, A_Letter),
         16#E8#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00B2 : aliased constant Break_Second_Stage
     := (16#04#           => (LV, A_Letter),
         16#20#           => (LV, A_Letter),
         16#3C#           => (LV, A_Letter),
         16#58#           => (LV, A_Letter),
         16#74#           => (LV, A_Letter),
         16#90#           => (LV, A_Letter),
         16#AC#           => (LV, A_Letter),
         16#C8#           => (LV, A_Letter),
         16#E4#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00D7 : aliased constant Break_Second_Stage
     := (16#18#           => (LV, A_Letter),
         16#34#           => (LV, A_Letter),
         16#50#           => (LV, A_Letter),
         16#6C#           => (LV, A_Letter),
         16#88#           => (LV, A_Letter),
         others           => (LVT, A_Letter));

   Group_00FB : aliased constant Break_Second_Stage
     := (16#07# .. 16#12# => (Other, Other),
         16#18# .. 16#1C# => (Other, Other),
         16#1E#           => (Extend, Extend),
         16#29#           => (Other, Other),
         16#37#           => (Other, Other),
         16#3D#           => (Other, Other),
         16#3F#           => (Other, Other),
         16#42#           => (Other, Other),
         16#45#           => (Other, Other),
         16#B2# .. 16#D2# => (Other, Other),
         others           => (Other, A_Letter));

   Group_00FD : aliased constant Break_Second_Stage
     := (16#3E# .. 16#4F# => (Other, Other),
         16#90# .. 16#91# => (Other, Other),
         16#C8# .. 16#EF# => (Other, Other),
         others           => (Other, A_Letter));

   Group_00FE : aliased constant Break_Second_Stage
     := (16#00# .. 16#0F# => (Extend, Extend),
         16#10#           => (Other, Mid_Num),
         16#11# .. 16#12# => (Other, Other),
         16#13#           => (Other, Mid_Letter),
         16#14#           => (Other, Mid_Num),
         16#15# .. 16#1F# => (Other, Other),
         16#20# .. 16#26# => (Extend, Extend),
         16#27# .. 16#32# => (Other, Other),
         16#33# .. 16#34# => (Other, Extend_Num_Let),
         16#35# .. 16#4C# => (Other, Other),
         16#4D# .. 16#4F# => (Other, Extend_Num_Let),
         16#50#           => (Other, Mid_Num),
         16#51#           => (Other, Other),
         16#52#           => (Other, Mid_Num_Let),
         16#53#           => (Other, Other),
         16#54#           => (Other, Mid_Num),
         16#55#           => (Other, Mid_Letter),
         16#56# .. 16#6F# => (Other, Other),
         16#75#           => (Other, Other),
         16#FD# .. 16#FE# => (Other, Other),
         others           => (Other, A_Letter));

   Group_00FF : aliased constant Break_Second_Stage
     := (16#00# .. 16#06# => (Other, Other),
         16#07#           => (Other, Mid_Num_Let),
         16#08# .. 16#0B# => (Other, Other),
         16#0C#           => (Other, Mid_Num),
         16#0D#           => (Other, Other),
         16#0E#           => (Other, Mid_Num_Let),
         16#0F# .. 16#19# => (Other, Other),
         16#1A#           => (Other, Mid_Letter),
         16#1B#           => (Other, Mid_Num),
         16#1C# .. 16#20# => (Other, Other),
         16#3B# .. 16#3E# => (Other, Other),
         16#3F#           => (Other, Extend_Num_Let),
         16#40#           => (Other, Other),
         16#5B# .. 16#65# => (Other, Other),
         16#66# .. 16#9D# => (Other, Katakana),
         16#9E# .. 16#9F# => (Extend, Extend),
         16#BF# .. 16#C1# => (Other, Other),
         16#C8# .. 16#C9# => (Other, Other),
         16#D0# .. 16#D1# => (Other, Other),
         16#D8# .. 16#D9# => (Other, Other),
         16#DD# .. 16#F8# => (Other, Other),
         16#F9# .. 16#FB# => (Control, Format),
         others           => (Other, A_Letter));

   Group_0100 : aliased constant Break_Second_Stage
     := (16#0C#           => (Other, Other),
         16#27#           => (Other, Other),
         16#3B#           => (Other, Other),
         16#3E#           => (Other, Other),
         16#4E# .. 16#4F# => (Other, Other),
         16#5E# .. 16#7F# => (Other, Other),
         others           => (Other, A_Letter));

   Group_0101 : aliased constant Break_Second_Stage
     := (16#40# .. 16#74# => (Other, A_Letter),
         16#FD#           => (Extend, Extend),
         others           => (Other, Other));

   Group_0102 : aliased constant Break_Second_Stage
     := (16#80# .. 16#9C# => (Other, A_Letter),
         16#A0# .. 16#D0# => (Other, A_Letter),
         others           => (Other, Other));

   Group_0103 : aliased constant Break_Second_Stage
     := (16#1F# .. 16#2F# => (Other, Other),
         16#4B# .. 16#7F# => (Other, Other),
         16#9E# .. 16#9F# => (Other, Other),
         16#C4# .. 16#C7# => (Other, Other),
         16#D0#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_0104 : aliased constant Break_Second_Stage
     := (16#9E# .. 16#9F# => (Other, Other),
         16#A0# .. 16#A9# => (Other, Numeric),
         others           => (Other, A_Letter));

   Group_0108 : aliased constant Break_Second_Stage
     := (16#00# .. 16#05# => (Other, A_Letter),
         16#08#           => (Other, A_Letter),
         16#0A# .. 16#35# => (Other, A_Letter),
         16#37# .. 16#38# => (Other, A_Letter),
         16#3C#           => (Other, A_Letter),
         16#3F#           => (Other, A_Letter),
         others           => (Other, Other));

   Group_0109 : aliased constant Break_Second_Stage
     := (16#00# .. 16#15# => (Other, A_Letter),
         16#20# .. 16#39# => (Other, A_Letter),
         others           => (Other, Other));

   Group_010A : aliased constant Break_Second_Stage
     := (16#00#           => (Other, A_Letter),
         16#01# .. 16#03# => (Extend, Extend),
         16#05# .. 16#06# => (Extend, Extend),
         16#0C# .. 16#0F# => (Extend, Extend),
         16#10# .. 16#13# => (Other, A_Letter),
         16#15# .. 16#17# => (Other, A_Letter),
         16#19# .. 16#33# => (Other, A_Letter),
         16#38# .. 16#3A# => (Extend, Extend),
         16#3F#           => (Extend, Extend),
         others           => (Other, Other));

   Group_0123 : aliased constant Break_Second_Stage
     := (16#00# .. 16#6E# => (Other, A_Letter),
         others           => (Other, Other));

   Group_0124 : aliased constant Break_Second_Stage
     := (16#00# .. 16#62# => (Other, A_Letter),
         others           => (Other, Other));

   Group_01D1 : aliased constant Break_Second_Stage
     := (16#65#           => (Extend, Extend),
         16#66#           => (Spacing_Mark, Extend),
         16#67# .. 16#69# => (Extend, Extend),
         16#6D#           => (Spacing_Mark, Extend),
         16#6E# .. 16#72# => (Extend, Extend),
         16#73# .. 16#7A# => (Control, Format),
         16#7B# .. 16#82# => (Extend, Extend),
         16#85# .. 16#8B# => (Extend, Extend),
         16#AA# .. 16#AD# => (Extend, Extend),
         others           => (Other, Other));

   Group_01D2 : aliased constant Break_Second_Stage
     := (16#42# .. 16#44# => (Extend, Extend),
         others           => (Other, Other));

   Group_01D4 : aliased constant Break_Second_Stage
     := (16#55#           => (Other, Other),
         16#9D#           => (Other, Other),
         16#A0# .. 16#A1# => (Other, Other),
         16#A3# .. 16#A4# => (Other, Other),
         16#A7# .. 16#A8# => (Other, Other),
         16#AD#           => (Other, Other),
         16#BA#           => (Other, Other),
         16#BC#           => (Other, Other),
         16#C4#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_01D5 : aliased constant Break_Second_Stage
     := (16#06#           => (Other, Other),
         16#0B# .. 16#0C# => (Other, Other),
         16#15#           => (Other, Other),
         16#1D#           => (Other, Other),
         16#3A#           => (Other, Other),
         16#3F#           => (Other, Other),
         16#45#           => (Other, Other),
         16#47# .. 16#49# => (Other, Other),
         16#51#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_01D6 : aliased constant Break_Second_Stage
     := (16#A6# .. 16#A7# => (Other, Other),
         16#C1#           => (Other, Other),
         16#DB#           => (Other, Other),
         16#FB#           => (Other, Other),
         others           => (Other, A_Letter));

   Group_01D7 : aliased constant Break_Second_Stage
     := (16#15#           => (Other, Other),
         16#35#           => (Other, Other),
         16#4F#           => (Other, Other),
         16#6F#           => (Other, Other),
         16#89#           => (Other, Other),
         16#A9#           => (Other, Other),
         16#C3#           => (Other, Other),
         16#CC# .. 16#CD# => (Other, Other),
         others           => (Other, A_Letter));

   Group_0E00 : aliased constant Break_Second_Stage
     := (16#01#           => (Control, Format),
         16#20# .. 16#7F# => (Control, Format),
         others           => (Other, Other));

   Group_0E01 : aliased constant Break_Second_Stage
     := (others           => (Extend, Extend));

   Property : constant Break_First_Stage
     := (16#0000# => Group_0000'Access, 16#0001# => Group_0001'Access,
         16#0002# => Group_0002'Access, 16#0003# => Group_0003'Access,
         16#0004# => Group_0004'Access, 16#0005# => Group_0005'Access,
         16#0006# => Group_0006'Access, 16#0007# => Group_0007'Access,
         16#0009# => Group_0009'Access, 16#000A# => Group_000A'Access,
         16#000B# => Group_000B'Access, 16#000C# => Group_000C'Access,
         16#000D# => Group_000D'Access, 16#000E# => Group_000E'Access,
         16#000F# => Group_000F'Access, 16#0010# => Group_0010'Access,
         16#0011# => Group_0011'Access, 16#0012# => Group_0012'Access,
         16#0013# => Group_0013'Access, 16#0014# => Group_0014'Access,
         16#0015# => Group_0001'Access, 16#0016# => Group_0016'Access,
         16#0017# => Group_0017'Access, 16#0018# => Group_0018'Access,
         16#0019# => Group_0019'Access, 16#001A# => Group_001A'Access,
         16#001B# => Group_001B'Access, 16#001C# => Group_001C'Access,
         16#001D# => Group_001D'Access, 16#001E# => Group_0001'Access,
         16#001F# => Group_001F'Access, 16#0020# => Group_0020'Access,
         16#0021# => Group_0021'Access, 16#0024# => Group_0024'Access,
         16#002C# => Group_002C'Access, 16#002D# => Group_002D'Access,
         16#002E# => Group_002E'Access, 16#0030# => Group_0030'Access,
         16#0031# => Group_0031'Access, 16#0032# => Group_0032'Access,
         16#0033# => Group_0033'Access, 16#00A0# => Group_0001'Access,
         16#00A1# => Group_0001'Access, 16#00A2# => Group_0001'Access,
         16#00A3# => Group_0001'Access, 16#00A4# => Group_00A4'Access,
         16#00A5# => Group_0001'Access, 16#00A6# => Group_00A6'Access,
         16#00A7# => Group_00A7'Access, 16#00A8# => Group_00A8'Access,
         16#00A9# => Group_00A9'Access, 16#00AA# => Group_00AA'Access,
         16#00AC# => Group_00AC'Access, 16#00AD# => Group_00AD'Access,
         16#00AE# => Group_00AE'Access, 16#00AF# => Group_00AF'Access,
         16#00B0# => Group_00B0'Access, 16#00B1# => Group_00B1'Access,
         16#00B2# => Group_00B2'Access, 16#00B3# => Group_00AC'Access,
         16#00B4# => Group_00AD'Access, 16#00B5# => Group_00AE'Access,
         16#00B6# => Group_00AF'Access, 16#00B7# => Group_00B0'Access,
         16#00B8# => Group_00B1'Access, 16#00B9# => Group_00B2'Access,
         16#00BA# => Group_00AC'Access, 16#00BB# => Group_00AD'Access,
         16#00BC# => Group_00AE'Access, 16#00BD# => Group_00AF'Access,
         16#00BE# => Group_00B0'Access, 16#00BF# => Group_00B1'Access,
         16#00C0# => Group_00B2'Access, 16#00C1# => Group_00AC'Access,
         16#00C2# => Group_00AD'Access, 16#00C3# => Group_00AE'Access,
         16#00C4# => Group_00AF'Access, 16#00C5# => Group_00B0'Access,
         16#00C6# => Group_00B1'Access, 16#00C7# => Group_00B2'Access,
         16#00C8# => Group_00AC'Access, 16#00C9# => Group_00AD'Access,
         16#00CA# => Group_00AE'Access, 16#00CB# => Group_00AF'Access,
         16#00CC# => Group_00B0'Access, 16#00CD# => Group_00B1'Access,
         16#00CE# => Group_00B2'Access, 16#00CF# => Group_00AC'Access,
         16#00D0# => Group_00AD'Access, 16#00D1# => Group_00AE'Access,
         16#00D2# => Group_00AF'Access, 16#00D3# => Group_00B0'Access,
         16#00D4# => Group_00B1'Access, 16#00D5# => Group_00B2'Access,
         16#00D6# => Group_00AC'Access, 16#00D7# => Group_00D7'Access,
         16#00FB# => Group_00FB'Access, 16#00FC# => Group_0001'Access,
         16#00FD# => Group_00FD'Access, 16#00FE# => Group_00FE'Access,
         16#00FF# => Group_00FF'Access, 16#0100# => Group_0100'Access,
         16#0101# => Group_0101'Access, 16#0102# => Group_0102'Access,
         16#0103# => Group_0103'Access, 16#0104# => Group_0104'Access,
         16#0108# => Group_0108'Access, 16#0109# => Group_0109'Access,
         16#010A# => Group_010A'Access, 16#0120# => Group_0001'Access,
         16#0121# => Group_0001'Access, 16#0122# => Group_0001'Access,
         16#0123# => Group_0123'Access, 16#0124# => Group_0124'Access,
         16#01D1# => Group_01D1'Access, 16#01D2# => Group_01D2'Access,
         16#01D4# => Group_01D4'Access, 16#01D5# => Group_01D5'Access,
         16#01D6# => Group_01D6'Access, 16#01D7# => Group_01D7'Access,
         16#0E00# => Group_0E00'Access, 16#0E01# => Group_0E01'Access,
         others   => Group_0008'Access);

end Matreshka.Internals.Ucd.Breaks;
