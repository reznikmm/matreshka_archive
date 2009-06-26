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

   Group_0000 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#00# .. 16#09# => Control,      16#0A#           => LF,
         16#0B# .. 16#0C# => Control,      16#0D#           => CR,
         16#0E# .. 16#1F# => Control,      16#7F# .. 16#9F# => Control,
         16#AD#           => Control,      others           => Other);

   Group_0001 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (others           => Other);

   Group_0003 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#00# .. 16#6F# => Extend,       others           => Other);

   Group_0004 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#83# .. 16#89# => Extend,       others           => Other);

   Group_0005 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#91# .. 16#BD# => Extend,       16#BF#           => Extend,
         16#C1# .. 16#C2# => Extend,       16#C4# .. 16#C5# => Extend,
         16#C7#           => Extend,       others           => Other);

   Group_0006 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#00# .. 16#03# => Control,      16#10# .. 16#1A# => Extend,
         16#4B# .. 16#5E# => Extend,       16#70#           => Extend,
         16#D6# .. 16#DC# => Extend,       16#DD#           => Control,
         16#DE# .. 16#E4# => Extend,       16#E7# .. 16#E8# => Extend,
         16#EA# .. 16#ED# => Extend,       others           => Other);

   Group_0007 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#0F#           => Control,      16#11#           => Extend,
         16#30# .. 16#4A# => Extend,       16#A6# .. 16#B0# => Extend,
         16#EB# .. 16#F3# => Extend,       others           => Other);

   Group_0009 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#01# .. 16#02# => Extend,       16#03#           => Spacing_Mark,
         16#3C#           => Extend,       16#3E# .. 16#40# => Spacing_Mark,
         16#41# .. 16#48# => Extend,       16#49# .. 16#4C# => Spacing_Mark,
         16#4D#           => Extend,       16#51# .. 16#54# => Extend,
         16#62# .. 16#63# => Extend,       16#81#           => Extend,
         16#82# .. 16#83# => Spacing_Mark, 16#BC#           => Extend,
         16#BE#           => Extend,       16#BF# .. 16#C0# => Spacing_Mark,
         16#C1# .. 16#C4# => Extend,       16#C7# .. 16#C8# => Spacing_Mark,
         16#CB# .. 16#CC# => Spacing_Mark, 16#CD#           => Extend,
         16#D7#           => Extend,       16#E2# .. 16#E3# => Extend,
         others           => Other);

   Group_000A : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#01# .. 16#02# => Extend,       16#03#           => Spacing_Mark,
         16#3C#           => Extend,       16#3E# .. 16#40# => Spacing_Mark,
         16#41# .. 16#42# => Extend,       16#47# .. 16#48# => Extend,
         16#4B# .. 16#4D# => Extend,       16#51#           => Extend,
         16#70# .. 16#71# => Extend,       16#75#           => Extend,
         16#81# .. 16#82# => Extend,       16#83#           => Spacing_Mark,
         16#BC#           => Extend,       16#BE# .. 16#C0# => Spacing_Mark,
         16#C1# .. 16#C5# => Extend,       16#C7# .. 16#C8# => Extend,
         16#C9#           => Spacing_Mark, 16#CB# .. 16#CC# => Spacing_Mark,
         16#CD#           => Extend,       16#E2# .. 16#E3# => Extend,
         others           => Other);

   Group_000B : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#01#           => Extend,       16#02# .. 16#03# => Spacing_Mark,
         16#3C#           => Extend,       16#3E# .. 16#3F# => Extend,
         16#40#           => Spacing_Mark, 16#41# .. 16#44# => Extend,
         16#47# .. 16#48# => Spacing_Mark, 16#4B# .. 16#4C# => Spacing_Mark,
         16#4D#           => Extend,       16#56# .. 16#57# => Extend,
         16#62# .. 16#63# => Extend,       16#82#           => Extend,
         16#BE#           => Extend,       16#BF#           => Spacing_Mark,
         16#C0#           => Extend,       16#C1# .. 16#C2# => Spacing_Mark,
         16#C6# .. 16#C8# => Spacing_Mark, 16#CA# .. 16#CC# => Spacing_Mark,
         16#CD#           => Extend,       16#D7#           => Extend,
         others           => Other);

   Group_000C : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#01# .. 16#03# => Spacing_Mark, 16#3E# .. 16#40# => Extend,
         16#41# .. 16#44# => Spacing_Mark, 16#46# .. 16#48# => Extend,
         16#4A# .. 16#4D# => Extend,       16#55# .. 16#56# => Extend,
         16#62# .. 16#63# => Extend,       16#82# .. 16#83# => Spacing_Mark,
         16#BC#           => Extend,       16#BE#           => Spacing_Mark,
         16#BF#           => Extend,       16#C0# .. 16#C1# => Spacing_Mark,
         16#C2#           => Extend,       16#C3# .. 16#C4# => Spacing_Mark,
         16#C6#           => Extend,       16#C7# .. 16#C8# => Spacing_Mark,
         16#CA# .. 16#CB# => Spacing_Mark, 16#CC# .. 16#CD# => Extend,
         16#D5# .. 16#D6# => Extend,       16#E2# .. 16#E3# => Extend,
         others           => Other);

   Group_000D : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#02# .. 16#03# => Spacing_Mark, 16#3E#           => Extend,
         16#3F# .. 16#40# => Spacing_Mark, 16#41# .. 16#44# => Extend,
         16#46# .. 16#48# => Spacing_Mark, 16#4A# .. 16#4C# => Spacing_Mark,
         16#4D#           => Extend,       16#57#           => Extend,
         16#62# .. 16#63# => Extend,       16#82# .. 16#83# => Spacing_Mark,
         16#CA#           => Extend,       16#CF#           => Extend,
         16#D0# .. 16#D1# => Spacing_Mark, 16#D2# .. 16#D4# => Extend,
         16#D6#           => Extend,       16#D8# .. 16#DE# => Spacing_Mark,
         16#DF#           => Extend,       16#F2# .. 16#F3# => Spacing_Mark,
         others           => Other);

   Group_000E : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#30# .. 16#3A# => Extend,       16#40# .. 16#44# => Prepend,
         16#45#           => Extend,       16#47# .. 16#4E# => Extend,
         16#B0# .. 16#B9# => Extend,       16#BB# .. 16#BC# => Extend,
         16#C0# .. 16#C4# => Prepend,      16#C8# .. 16#CD# => Extend,
         others           => Other);

   Group_000F : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#18# .. 16#19# => Extend,       16#35#           => Extend,
         16#37#           => Extend,       16#39#           => Extend,
         16#3E# .. 16#3F# => Spacing_Mark, 16#71# .. 16#7E# => Extend,
         16#7F#           => Spacing_Mark, 16#80# .. 16#84# => Extend,
         16#86# .. 16#87# => Extend,       16#90# .. 16#97# => Extend,
         16#99# .. 16#BC# => Extend,       16#C6#           => Extend,
         others           => Other);

   Group_0010 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#2B# .. 16#2C# => Spacing_Mark, 16#2D# .. 16#30# => Extend,
         16#31#           => Spacing_Mark, 16#32# .. 16#37# => Extend,
         16#38#           => Spacing_Mark, 16#39# .. 16#3A# => Extend,
         16#3B# .. 16#3C# => Spacing_Mark, 16#3D# .. 16#3E# => Extend,
         16#56# .. 16#57# => Spacing_Mark, 16#58# .. 16#59# => Extend,
         16#5E# .. 16#60# => Extend,       16#62# .. 16#64# => Spacing_Mark,
         16#67# .. 16#6D# => Spacing_Mark, 16#71# .. 16#74# => Extend,
         16#82#           => Extend,       16#83# .. 16#84# => Spacing_Mark,
         16#85# .. 16#86# => Extend,       16#87# .. 16#8C# => Spacing_Mark,
         16#8D#           => Extend,       16#8F#           => Spacing_Mark,
         others           => Other);

   Group_0011 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#5A# .. 16#5E# => Other,        16#60# .. 16#A2# => V,
         16#A3# .. 16#A7# => Other,        16#A8# .. 16#F9# => T,
         others           => L);

   Group_0013 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#5F#           => Extend,       others           => Other);

   Group_0017 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#12# .. 16#14# => Extend,       16#32# .. 16#34# => Extend,
         16#52# .. 16#53# => Extend,       16#72# .. 16#73# => Extend,
         16#B4# .. 16#B5# => Control,      16#B6#           => Spacing_Mark,
         16#B7# .. 16#BD# => Extend,       16#BE# .. 16#C5# => Spacing_Mark,
         16#C6#           => Extend,       16#C7# .. 16#C8# => Spacing_Mark,
         16#C9# .. 16#D3# => Extend,       16#DD#           => Extend,
         others           => Other);

   Group_0018 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#0B# .. 16#0D# => Extend,       16#A9#           => Extend,
         others           => Other);

   Group_0019 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#20# .. 16#22# => Extend,       16#23# .. 16#26# => Spacing_Mark,
         16#27# .. 16#28# => Extend,       16#29# .. 16#2B# => Spacing_Mark,
         16#30# .. 16#31# => Spacing_Mark, 16#32#           => Extend,
         16#33# .. 16#38# => Spacing_Mark, 16#39# .. 16#3B# => Extend,
         16#B0# .. 16#C0# => Spacing_Mark, 16#C8# .. 16#C9# => Spacing_Mark,
         others           => Other);

   Group_001A : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#17# .. 16#18# => Extend,       16#19# .. 16#1B# => Spacing_Mark,
         others           => Other);

   Group_001B : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#00# .. 16#03# => Extend,       16#04#           => Spacing_Mark,
         16#34#           => Extend,       16#35#           => Spacing_Mark,
         16#36# .. 16#3A# => Extend,       16#3B#           => Spacing_Mark,
         16#3C#           => Extend,       16#3D# .. 16#41# => Spacing_Mark,
         16#42#           => Extend,       16#43# .. 16#44# => Spacing_Mark,
         16#6B# .. 16#73# => Extend,       16#80# .. 16#81# => Extend,
         16#82#           => Spacing_Mark, 16#A1#           => Spacing_Mark,
         16#A2# .. 16#A5# => Extend,       16#A6# .. 16#A7# => Spacing_Mark,
         16#A8# .. 16#A9# => Extend,       16#AA#           => Spacing_Mark,
         others           => Other);

   Group_001C : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#24# .. 16#2B# => Spacing_Mark, 16#2C# .. 16#33# => Extend,
         16#34# .. 16#35# => Spacing_Mark, 16#36# .. 16#37# => Extend,
         others           => Other);

   Group_001D : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#C0# .. 16#E6# => Extend,       others           => Other);

   Group_0020 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#0B#           => Control,      16#0C# .. 16#0D# => Extend,
         16#0E# .. 16#0F# => Control,      16#28# .. 16#2E# => Control,
         16#60# .. 16#64# => Control,      16#6A# .. 16#6F# => Control,
         16#D0# .. 16#F0# => Extend,       others           => Other);

   Group_002D : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (others           => Other);

   Group_0030 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#2A# .. 16#2F# => Extend,       16#99# .. 16#9A# => Extend,
         others           => Other);

   Group_00A6 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#6F# .. 16#72# => Extend,       16#7C# .. 16#7D# => Extend,
         others           => Other);

   Group_00A8 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#02#           => Extend,       16#06#           => Extend,
         16#0B#           => Extend,       16#23# .. 16#24# => Spacing_Mark,
         16#25# .. 16#26# => Extend,       16#27#           => Spacing_Mark,
         16#80# .. 16#81# => Spacing_Mark, 16#B4# .. 16#C3# => Spacing_Mark,
         16#C4#           => Extend,       others           => Other);

   Group_00A9 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#26# .. 16#2D# => Extend,       16#47# .. 16#51# => Extend,
         16#52# .. 16#53# => Spacing_Mark, others           => Other);

   Group_00AA : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#29# .. 16#2E# => Extend,       16#2F# .. 16#30# => Spacing_Mark,
         16#31# .. 16#32# => Extend,       16#33# .. 16#34# => Spacing_Mark,
         16#35# .. 16#36# => Extend,       16#43#           => Extend,
         16#4C#           => Extend,       16#4D#           => Spacing_Mark,
         others           => Other);

   Group_00AC : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#00#           => LV,           16#1C#           => LV,
         16#38#           => LV,           16#54#           => LV,
         16#70#           => LV,           16#8C#           => LV,
         16#A8#           => LV,           16#C4#           => LV,
         16#E0#           => LV,           16#FC#           => LV,
         others           => LVT);

   Group_00AD : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#18#           => LV,           16#34#           => LV,
         16#50#           => LV,           16#6C#           => LV,
         16#88#           => LV,           16#A4#           => LV,
         16#C0#           => LV,           16#DC#           => LV,
         16#F8#           => LV,           others           => LVT);

   Group_00AE : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#14#           => LV,           16#30#           => LV,
         16#4C#           => LV,           16#68#           => LV,
         16#84#           => LV,           16#A0#           => LV,
         16#BC#           => LV,           16#D8#           => LV,
         16#F4#           => LV,           others           => LVT);

   Group_00AF : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#10#           => LV,           16#2C#           => LV,
         16#48#           => LV,           16#64#           => LV,
         16#80#           => LV,           16#9C#           => LV,
         16#B8#           => LV,           16#D4#           => LV,
         16#F0#           => LV,           others           => LVT);

   Group_00B0 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#0C#           => LV,           16#28#           => LV,
         16#44#           => LV,           16#60#           => LV,
         16#7C#           => LV,           16#98#           => LV,
         16#B4#           => LV,           16#D0#           => LV,
         16#EC#           => LV,           others           => LVT);

   Group_00B1 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#08#           => LV,           16#24#           => LV,
         16#40#           => LV,           16#5C#           => LV,
         16#78#           => LV,           16#94#           => LV,
         16#B0#           => LV,           16#CC#           => LV,
         16#E8#           => LV,           others           => LVT);

   Group_00B2 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#04#           => LV,           16#20#           => LV,
         16#3C#           => LV,           16#58#           => LV,
         16#74#           => LV,           16#90#           => LV,
         16#AC#           => LV,           16#C8#           => LV,
         16#E4#           => LV,           others           => LVT);

   Group_00D7 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#18#           => LV,           16#34#           => LV,
         16#50#           => LV,           16#6C#           => LV,
         16#88#           => LV,           others           => LVT);

   Group_00FB : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#1E#           => Extend,       others           => Other);

   Group_00FE : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#00# .. 16#0F# => Extend,       16#20# .. 16#26# => Extend,
         others           => Other);

   Group_00FF : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#9E# .. 16#9F# => Extend,       16#F9# .. 16#FB# => Control,
         others           => Other);

   Group_0101 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#FD#           => Extend,       others           => Other);

   Group_010A : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#01# .. 16#03# => Extend,       16#05# .. 16#06# => Extend,
         16#0C# .. 16#0F# => Extend,       16#38# .. 16#3A# => Extend,
         16#3F#           => Extend,       others           => Other);

   Group_01D1 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#65#           => Extend,       16#66#           => Spacing_Mark,
         16#67# .. 16#69# => Extend,       16#6D#           => Spacing_Mark,
         16#6E# .. 16#72# => Extend,       16#73# .. 16#7A# => Control,
         16#7B# .. 16#82# => Extend,       16#85# .. 16#8B# => Extend,
         16#AA# .. 16#AD# => Extend,       others           => Other);

   Group_01D2 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#42# .. 16#44# => Extend,       others           => Other);

   Group_0E00 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (16#01#           => Control,      16#20# .. 16#7F# => Control,
         others           => Other);

   Group_0E01 : aliased constant Grapheme_Cluster_Break_Second_Stage
     := (others           => Extend);

   Property : constant Grapheme_Cluster_Break_First_Stage
     := (16#0000# => Group_0000'Access, 16#0003# => Group_0003'Access,
         16#0004# => Group_0004'Access, 16#0005# => Group_0005'Access,
         16#0006# => Group_0006'Access, 16#0007# => Group_0007'Access,
         16#0009# => Group_0009'Access, 16#000A# => Group_000A'Access,
         16#000B# => Group_000B'Access, 16#000C# => Group_000C'Access,
         16#000D# => Group_000D'Access, 16#000E# => Group_000E'Access,
         16#000F# => Group_000F'Access, 16#0010# => Group_0010'Access,
         16#0011# => Group_0011'Access, 16#0013# => Group_0013'Access,
         16#0017# => Group_0017'Access, 16#0018# => Group_0018'Access,
         16#0019# => Group_0019'Access, 16#001A# => Group_001A'Access,
         16#001B# => Group_001B'Access, 16#001C# => Group_001C'Access,
         16#001D# => Group_001D'Access, 16#0020# => Group_0020'Access,
         16#002D# => Group_002D'Access, 16#0030# => Group_0030'Access,
         16#00A6# => Group_00A6'Access, 16#00A8# => Group_00A8'Access,
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
         16#00FB# => Group_00FB'Access, 16#00FE# => Group_00FE'Access,
         16#00FF# => Group_00FF'Access, 16#0101# => Group_0101'Access,
         16#010A# => Group_010A'Access, 16#01D1# => Group_01D1'Access,
         16#01D2# => Group_01D2'Access, 16#0E00# => Group_0E00'Access,
         16#0E01# => Group_0E01'Access, others   => Group_0001'Access);

end Matreshka.Internals.Ucd.Breaks;
