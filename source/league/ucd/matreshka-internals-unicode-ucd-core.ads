------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--        Localization, Internationalization, Globalization for Ada         --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

pragma Restrictions (No_Elaboration_Code);
--  GNAT: enforce generation of preinitialized data section instead of
--  generation of elaboration code.

with Matreshka.Internals.Unicode.Ucd.Core_0000;
with Matreshka.Internals.Unicode.Ucd.Core_0001;
with Matreshka.Internals.Unicode.Ucd.Core_0002;
with Matreshka.Internals.Unicode.Ucd.Core_0003;
with Matreshka.Internals.Unicode.Ucd.Core_0004;
with Matreshka.Internals.Unicode.Ucd.Core_0005;
with Matreshka.Internals.Unicode.Ucd.Core_0006;
with Matreshka.Internals.Unicode.Ucd.Core_0007;
with Matreshka.Internals.Unicode.Ucd.Core_0008;
with Matreshka.Internals.Unicode.Ucd.Core_0009;
with Matreshka.Internals.Unicode.Ucd.Core_000A;
with Matreshka.Internals.Unicode.Ucd.Core_000B;
with Matreshka.Internals.Unicode.Ucd.Core_000C;
with Matreshka.Internals.Unicode.Ucd.Core_000D;
with Matreshka.Internals.Unicode.Ucd.Core_000E;
with Matreshka.Internals.Unicode.Ucd.Core_000F;
with Matreshka.Internals.Unicode.Ucd.Core_0010;
with Matreshka.Internals.Unicode.Ucd.Core_0011;
with Matreshka.Internals.Unicode.Ucd.Core_0012;
with Matreshka.Internals.Unicode.Ucd.Core_0013;
with Matreshka.Internals.Unicode.Ucd.Core_0014;
with Matreshka.Internals.Unicode.Ucd.Core_0015;
with Matreshka.Internals.Unicode.Ucd.Core_0016;
with Matreshka.Internals.Unicode.Ucd.Core_0017;
with Matreshka.Internals.Unicode.Ucd.Core_0018;
with Matreshka.Internals.Unicode.Ucd.Core_0019;
with Matreshka.Internals.Unicode.Ucd.Core_001A;
with Matreshka.Internals.Unicode.Ucd.Core_001B;
with Matreshka.Internals.Unicode.Ucd.Core_001C;
with Matreshka.Internals.Unicode.Ucd.Core_001D;
with Matreshka.Internals.Unicode.Ucd.Core_001E;
with Matreshka.Internals.Unicode.Ucd.Core_001F;
with Matreshka.Internals.Unicode.Ucd.Core_0020;
with Matreshka.Internals.Unicode.Ucd.Core_0021;
with Matreshka.Internals.Unicode.Ucd.Core_0022;
with Matreshka.Internals.Unicode.Ucd.Core_0023;
with Matreshka.Internals.Unicode.Ucd.Core_0024;
with Matreshka.Internals.Unicode.Ucd.Core_0025;
with Matreshka.Internals.Unicode.Ucd.Core_0026;
with Matreshka.Internals.Unicode.Ucd.Core_0027;
with Matreshka.Internals.Unicode.Ucd.Core_0028;
with Matreshka.Internals.Unicode.Ucd.Core_0029;
with Matreshka.Internals.Unicode.Ucd.Core_002A;
with Matreshka.Internals.Unicode.Ucd.Core_002B;
with Matreshka.Internals.Unicode.Ucd.Core_002C;
with Matreshka.Internals.Unicode.Ucd.Core_002D;
with Matreshka.Internals.Unicode.Ucd.Core_002E;
with Matreshka.Internals.Unicode.Ucd.Core_002F;
with Matreshka.Internals.Unicode.Ucd.Core_0030;
with Matreshka.Internals.Unicode.Ucd.Core_0031;
with Matreshka.Internals.Unicode.Ucd.Core_0032;
with Matreshka.Internals.Unicode.Ucd.Core_0033;
with Matreshka.Internals.Unicode.Ucd.Core_0034;
with Matreshka.Internals.Unicode.Ucd.Core_004D;
with Matreshka.Internals.Unicode.Ucd.Core_009F;
with Matreshka.Internals.Unicode.Ucd.Core_00A0;
with Matreshka.Internals.Unicode.Ucd.Core_00A1;
with Matreshka.Internals.Unicode.Ucd.Core_00A4;
with Matreshka.Internals.Unicode.Ucd.Core_00A6;
with Matreshka.Internals.Unicode.Ucd.Core_00A7;
with Matreshka.Internals.Unicode.Ucd.Core_00A8;
with Matreshka.Internals.Unicode.Ucd.Core_00A9;
with Matreshka.Internals.Unicode.Ucd.Core_00AA;
with Matreshka.Internals.Unicode.Ucd.Core_00AB;
with Matreshka.Internals.Unicode.Ucd.Core_00AC;
with Matreshka.Internals.Unicode.Ucd.Core_00AD;
with Matreshka.Internals.Unicode.Ucd.Core_00AE;
with Matreshka.Internals.Unicode.Ucd.Core_00AF;
with Matreshka.Internals.Unicode.Ucd.Core_00B0;
with Matreshka.Internals.Unicode.Ucd.Core_00B1;
with Matreshka.Internals.Unicode.Ucd.Core_00B2;
with Matreshka.Internals.Unicode.Ucd.Core_00D7;
with Matreshka.Internals.Unicode.Ucd.Core_00D8;
with Matreshka.Internals.Unicode.Ucd.Core_00E0;
with Matreshka.Internals.Unicode.Ucd.Core_00F9;
with Matreshka.Internals.Unicode.Ucd.Core_00FA;
with Matreshka.Internals.Unicode.Ucd.Core_00FB;
with Matreshka.Internals.Unicode.Ucd.Core_00FC;
with Matreshka.Internals.Unicode.Ucd.Core_00FD;
with Matreshka.Internals.Unicode.Ucd.Core_00FE;
with Matreshka.Internals.Unicode.Ucd.Core_00FF;
with Matreshka.Internals.Unicode.Ucd.Core_0100;
with Matreshka.Internals.Unicode.Ucd.Core_0101;
with Matreshka.Internals.Unicode.Ucd.Core_0102;
with Matreshka.Internals.Unicode.Ucd.Core_0103;
with Matreshka.Internals.Unicode.Ucd.Core_0104;
with Matreshka.Internals.Unicode.Ucd.Core_0105;
with Matreshka.Internals.Unicode.Ucd.Core_0108;
with Matreshka.Internals.Unicode.Ucd.Core_0109;
with Matreshka.Internals.Unicode.Ucd.Core_010A;
with Matreshka.Internals.Unicode.Ucd.Core_010B;
with Matreshka.Internals.Unicode.Ucd.Core_010C;
with Matreshka.Internals.Unicode.Ucd.Core_010E;
with Matreshka.Internals.Unicode.Ucd.Core_0110;
with Matreshka.Internals.Unicode.Ucd.Core_0111;
with Matreshka.Internals.Unicode.Ucd.Core_0116;
with Matreshka.Internals.Unicode.Ucd.Core_0123;
with Matreshka.Internals.Unicode.Ucd.Core_0124;
with Matreshka.Internals.Unicode.Ucd.Core_0132;
with Matreshka.Internals.Unicode.Ucd.Core_0133;
with Matreshka.Internals.Unicode.Ucd.Core_0134;
with Matreshka.Internals.Unicode.Ucd.Core_016A;
with Matreshka.Internals.Unicode.Ucd.Core_016F;
with Matreshka.Internals.Unicode.Ucd.Core_01B0;
with Matreshka.Internals.Unicode.Ucd.Core_01D0;
with Matreshka.Internals.Unicode.Ucd.Core_01D1;
with Matreshka.Internals.Unicode.Ucd.Core_01D2;
with Matreshka.Internals.Unicode.Ucd.Core_01D3;
with Matreshka.Internals.Unicode.Ucd.Core_01D4;
with Matreshka.Internals.Unicode.Ucd.Core_01D5;
with Matreshka.Internals.Unicode.Ucd.Core_01D6;
with Matreshka.Internals.Unicode.Ucd.Core_01D7;
with Matreshka.Internals.Unicode.Ucd.Core_01EE;
with Matreshka.Internals.Unicode.Ucd.Core_01F0;
with Matreshka.Internals.Unicode.Ucd.Core_01F1;
with Matreshka.Internals.Unicode.Ucd.Core_01F2;
with Matreshka.Internals.Unicode.Ucd.Core_01F3;
with Matreshka.Internals.Unicode.Ucd.Core_01F4;
with Matreshka.Internals.Unicode.Ucd.Core_01F5;
with Matreshka.Internals.Unicode.Ucd.Core_01F6;
with Matreshka.Internals.Unicode.Ucd.Core_01F7;
with Matreshka.Internals.Unicode.Ucd.Core_01FF;
with Matreshka.Internals.Unicode.Ucd.Core_02A6;
with Matreshka.Internals.Unicode.Ucd.Core_02B7;
with Matreshka.Internals.Unicode.Ucd.Core_02B8;
with Matreshka.Internals.Unicode.Ucd.Core_02B9;
with Matreshka.Internals.Unicode.Ucd.Core_02FA;
with Matreshka.Internals.Unicode.Ucd.Core_02FF;
with Matreshka.Internals.Unicode.Ucd.Core_0E00;
with Matreshka.Internals.Unicode.Ucd.Core_0E01;
with Matreshka.Internals.Unicode.Ucd.Core_0E02;
with Matreshka.Internals.Unicode.Ucd.Core_0FFF;

package Matreshka.Internals.Unicode.Ucd.Core is

   pragma Preelaborate;

   use Matreshka.Internals.Unicode.Ucd.Core_0000;
   use Matreshka.Internals.Unicode.Ucd.Core_0001;
   use Matreshka.Internals.Unicode.Ucd.Core_0002;
   use Matreshka.Internals.Unicode.Ucd.Core_0003;
   use Matreshka.Internals.Unicode.Ucd.Core_0004;
   use Matreshka.Internals.Unicode.Ucd.Core_0005;
   use Matreshka.Internals.Unicode.Ucd.Core_0006;
   use Matreshka.Internals.Unicode.Ucd.Core_0007;
   use Matreshka.Internals.Unicode.Ucd.Core_0008;
   use Matreshka.Internals.Unicode.Ucd.Core_0009;
   use Matreshka.Internals.Unicode.Ucd.Core_000A;
   use Matreshka.Internals.Unicode.Ucd.Core_000B;
   use Matreshka.Internals.Unicode.Ucd.Core_000C;
   use Matreshka.Internals.Unicode.Ucd.Core_000D;
   use Matreshka.Internals.Unicode.Ucd.Core_000E;
   use Matreshka.Internals.Unicode.Ucd.Core_000F;
   use Matreshka.Internals.Unicode.Ucd.Core_0010;
   use Matreshka.Internals.Unicode.Ucd.Core_0011;
   use Matreshka.Internals.Unicode.Ucd.Core_0012;
   use Matreshka.Internals.Unicode.Ucd.Core_0013;
   use Matreshka.Internals.Unicode.Ucd.Core_0014;
   use Matreshka.Internals.Unicode.Ucd.Core_0015;
   use Matreshka.Internals.Unicode.Ucd.Core_0016;
   use Matreshka.Internals.Unicode.Ucd.Core_0017;
   use Matreshka.Internals.Unicode.Ucd.Core_0018;
   use Matreshka.Internals.Unicode.Ucd.Core_0019;
   use Matreshka.Internals.Unicode.Ucd.Core_001A;
   use Matreshka.Internals.Unicode.Ucd.Core_001B;
   use Matreshka.Internals.Unicode.Ucd.Core_001C;
   use Matreshka.Internals.Unicode.Ucd.Core_001D;
   use Matreshka.Internals.Unicode.Ucd.Core_001E;
   use Matreshka.Internals.Unicode.Ucd.Core_001F;
   use Matreshka.Internals.Unicode.Ucd.Core_0020;
   use Matreshka.Internals.Unicode.Ucd.Core_0021;
   use Matreshka.Internals.Unicode.Ucd.Core_0022;
   use Matreshka.Internals.Unicode.Ucd.Core_0023;
   use Matreshka.Internals.Unicode.Ucd.Core_0024;
   use Matreshka.Internals.Unicode.Ucd.Core_0025;
   use Matreshka.Internals.Unicode.Ucd.Core_0026;
   use Matreshka.Internals.Unicode.Ucd.Core_0027;
   use Matreshka.Internals.Unicode.Ucd.Core_0028;
   use Matreshka.Internals.Unicode.Ucd.Core_0029;
   use Matreshka.Internals.Unicode.Ucd.Core_002A;
   use Matreshka.Internals.Unicode.Ucd.Core_002B;
   use Matreshka.Internals.Unicode.Ucd.Core_002C;
   use Matreshka.Internals.Unicode.Ucd.Core_002D;
   use Matreshka.Internals.Unicode.Ucd.Core_002E;
   use Matreshka.Internals.Unicode.Ucd.Core_002F;
   use Matreshka.Internals.Unicode.Ucd.Core_0030;
   use Matreshka.Internals.Unicode.Ucd.Core_0031;
   use Matreshka.Internals.Unicode.Ucd.Core_0032;
   use Matreshka.Internals.Unicode.Ucd.Core_0033;
   use Matreshka.Internals.Unicode.Ucd.Core_0034;
   use Matreshka.Internals.Unicode.Ucd.Core_004D;
   use Matreshka.Internals.Unicode.Ucd.Core_009F;
   use Matreshka.Internals.Unicode.Ucd.Core_00A0;
   use Matreshka.Internals.Unicode.Ucd.Core_00A1;
   use Matreshka.Internals.Unicode.Ucd.Core_00A4;
   use Matreshka.Internals.Unicode.Ucd.Core_00A6;
   use Matreshka.Internals.Unicode.Ucd.Core_00A7;
   use Matreshka.Internals.Unicode.Ucd.Core_00A8;
   use Matreshka.Internals.Unicode.Ucd.Core_00A9;
   use Matreshka.Internals.Unicode.Ucd.Core_00AA;
   use Matreshka.Internals.Unicode.Ucd.Core_00AB;
   use Matreshka.Internals.Unicode.Ucd.Core_00AC;
   use Matreshka.Internals.Unicode.Ucd.Core_00AD;
   use Matreshka.Internals.Unicode.Ucd.Core_00AE;
   use Matreshka.Internals.Unicode.Ucd.Core_00AF;
   use Matreshka.Internals.Unicode.Ucd.Core_00B0;
   use Matreshka.Internals.Unicode.Ucd.Core_00B1;
   use Matreshka.Internals.Unicode.Ucd.Core_00B2;
   use Matreshka.Internals.Unicode.Ucd.Core_00D7;
   use Matreshka.Internals.Unicode.Ucd.Core_00D8;
   use Matreshka.Internals.Unicode.Ucd.Core_00E0;
   use Matreshka.Internals.Unicode.Ucd.Core_00F9;
   use Matreshka.Internals.Unicode.Ucd.Core_00FA;
   use Matreshka.Internals.Unicode.Ucd.Core_00FB;
   use Matreshka.Internals.Unicode.Ucd.Core_00FC;
   use Matreshka.Internals.Unicode.Ucd.Core_00FD;
   use Matreshka.Internals.Unicode.Ucd.Core_00FE;
   use Matreshka.Internals.Unicode.Ucd.Core_00FF;
   use Matreshka.Internals.Unicode.Ucd.Core_0100;
   use Matreshka.Internals.Unicode.Ucd.Core_0101;
   use Matreshka.Internals.Unicode.Ucd.Core_0102;
   use Matreshka.Internals.Unicode.Ucd.Core_0103;
   use Matreshka.Internals.Unicode.Ucd.Core_0104;
   use Matreshka.Internals.Unicode.Ucd.Core_0105;
   use Matreshka.Internals.Unicode.Ucd.Core_0108;
   use Matreshka.Internals.Unicode.Ucd.Core_0109;
   use Matreshka.Internals.Unicode.Ucd.Core_010A;
   use Matreshka.Internals.Unicode.Ucd.Core_010B;
   use Matreshka.Internals.Unicode.Ucd.Core_010C;
   use Matreshka.Internals.Unicode.Ucd.Core_010E;
   use Matreshka.Internals.Unicode.Ucd.Core_0110;
   use Matreshka.Internals.Unicode.Ucd.Core_0111;
   use Matreshka.Internals.Unicode.Ucd.Core_0116;
   use Matreshka.Internals.Unicode.Ucd.Core_0123;
   use Matreshka.Internals.Unicode.Ucd.Core_0124;
   use Matreshka.Internals.Unicode.Ucd.Core_0132;
   use Matreshka.Internals.Unicode.Ucd.Core_0133;
   use Matreshka.Internals.Unicode.Ucd.Core_0134;
   use Matreshka.Internals.Unicode.Ucd.Core_016A;
   use Matreshka.Internals.Unicode.Ucd.Core_016F;
   use Matreshka.Internals.Unicode.Ucd.Core_01B0;
   use Matreshka.Internals.Unicode.Ucd.Core_01D0;
   use Matreshka.Internals.Unicode.Ucd.Core_01D1;
   use Matreshka.Internals.Unicode.Ucd.Core_01D2;
   use Matreshka.Internals.Unicode.Ucd.Core_01D3;
   use Matreshka.Internals.Unicode.Ucd.Core_01D4;
   use Matreshka.Internals.Unicode.Ucd.Core_01D5;
   use Matreshka.Internals.Unicode.Ucd.Core_01D6;
   use Matreshka.Internals.Unicode.Ucd.Core_01D7;
   use Matreshka.Internals.Unicode.Ucd.Core_01EE;
   use Matreshka.Internals.Unicode.Ucd.Core_01F0;
   use Matreshka.Internals.Unicode.Ucd.Core_01F1;
   use Matreshka.Internals.Unicode.Ucd.Core_01F2;
   use Matreshka.Internals.Unicode.Ucd.Core_01F3;
   use Matreshka.Internals.Unicode.Ucd.Core_01F4;
   use Matreshka.Internals.Unicode.Ucd.Core_01F5;
   use Matreshka.Internals.Unicode.Ucd.Core_01F6;
   use Matreshka.Internals.Unicode.Ucd.Core_01F7;
   use Matreshka.Internals.Unicode.Ucd.Core_01FF;
   use Matreshka.Internals.Unicode.Ucd.Core_02A6;
   use Matreshka.Internals.Unicode.Ucd.Core_02B7;
   use Matreshka.Internals.Unicode.Ucd.Core_02B8;
   use Matreshka.Internals.Unicode.Ucd.Core_02B9;
   use Matreshka.Internals.Unicode.Ucd.Core_02FA;
   use Matreshka.Internals.Unicode.Ucd.Core_02FF;
   use Matreshka.Internals.Unicode.Ucd.Core_0E00;
   use Matreshka.Internals.Unicode.Ucd.Core_0E01;
   use Matreshka.Internals.Unicode.Ucd.Core_0E02;
   use Matreshka.Internals.Unicode.Ucd.Core_0FFF;

   Property : aliased constant Core_First_Stage
     := (16#0000# => Group_0000'Access, 16#0001# => Group_0001'Access,
         16#0002# => Group_0002'Access, 16#0003# => Group_0003'Access,
         16#0004# => Group_0004'Access, 16#0005# => Group_0005'Access,
         16#0006# => Group_0006'Access, 16#0007# => Group_0007'Access,
         16#0008# => Group_0008'Access, 16#0009# => Group_0009'Access,
         16#000A# => Group_000A'Access, 16#000B# => Group_000B'Access,
         16#000C# => Group_000C'Access, 16#000D# => Group_000D'Access,
         16#000E# => Group_000E'Access, 16#000F# => Group_000F'Access,
         16#0010# => Group_0010'Access, 16#0011# => Group_0011'Access,
         16#0012# => Group_0012'Access, 16#0013# => Group_0013'Access,
         16#0014# => Group_0014'Access, 16#0015# => Group_0015'Access,
         16#0016# => Group_0016'Access, 16#0017# => Group_0017'Access,
         16#0018# => Group_0018'Access, 16#0019# => Group_0019'Access,
         16#001A# => Group_001A'Access, 16#001B# => Group_001B'Access,
         16#001C# => Group_001C'Access, 16#001D# => Group_001D'Access,
         16#001E# => Group_001E'Access, 16#001F# => Group_001F'Access,
         16#0020# => Group_0020'Access, 16#0021# => Group_0021'Access,
         16#0022# => Group_0022'Access, 16#0023# => Group_0023'Access,
         16#0024# => Group_0024'Access, 16#0025# => Group_0025'Access,
         16#0026# => Group_0026'Access, 16#0027# => Group_0027'Access,
         16#0028# => Group_0028'Access, 16#0029# => Group_0029'Access,
         16#002A# => Group_002A'Access, 16#002B# => Group_002B'Access,
         16#002C# => Group_002C'Access, 16#002D# => Group_002D'Access,
         16#002E# => Group_002E'Access, 16#002F# => Group_002F'Access,
         16#0030# => Group_0030'Access, 16#0031# => Group_0031'Access,
         16#0032# => Group_0032'Access, 16#0033# => Group_0033'Access,
         16#0034# => Group_0034'Access, 16#0035# => Group_0034'Access,
         16#0036# => Group_0034'Access, 16#0037# => Group_0034'Access,
         16#0038# => Group_0034'Access, 16#0039# => Group_0034'Access,
         16#003A# => Group_0034'Access, 16#003B# => Group_0034'Access,
         16#003C# => Group_0034'Access, 16#003D# => Group_0034'Access,
         16#003E# => Group_0034'Access, 16#003F# => Group_0034'Access,
         16#0040# => Group_0034'Access, 16#0041# => Group_0034'Access,
         16#0042# => Group_0034'Access, 16#0043# => Group_0034'Access,
         16#0044# => Group_0034'Access, 16#0045# => Group_0034'Access,
         16#0046# => Group_0034'Access, 16#0047# => Group_0034'Access,
         16#0048# => Group_0034'Access, 16#0049# => Group_0034'Access,
         16#004A# => Group_0034'Access, 16#004B# => Group_0034'Access,
         16#004C# => Group_0034'Access, 16#004D# => Group_004D'Access,
         16#004E# => Group_0034'Access, 16#004F# => Group_0034'Access,
         16#0050# => Group_0034'Access, 16#0051# => Group_0034'Access,
         16#0052# => Group_0034'Access, 16#0053# => Group_0034'Access,
         16#0054# => Group_0034'Access, 16#0055# => Group_0034'Access,
         16#0056# => Group_0034'Access, 16#0057# => Group_0034'Access,
         16#0058# => Group_0034'Access, 16#0059# => Group_0034'Access,
         16#005A# => Group_0034'Access, 16#005B# => Group_0034'Access,
         16#005C# => Group_0034'Access, 16#005D# => Group_0034'Access,
         16#005E# => Group_0034'Access, 16#005F# => Group_0034'Access,
         16#0060# => Group_0034'Access, 16#0061# => Group_0034'Access,
         16#0062# => Group_0034'Access, 16#0063# => Group_0034'Access,
         16#0064# => Group_0034'Access, 16#0065# => Group_0034'Access,
         16#0066# => Group_0034'Access, 16#0067# => Group_0034'Access,
         16#0068# => Group_0034'Access, 16#0069# => Group_0034'Access,
         16#006A# => Group_0034'Access, 16#006B# => Group_0034'Access,
         16#006C# => Group_0034'Access, 16#006D# => Group_0034'Access,
         16#006E# => Group_0034'Access, 16#006F# => Group_0034'Access,
         16#0070# => Group_0034'Access, 16#0071# => Group_0034'Access,
         16#0072# => Group_0034'Access, 16#0073# => Group_0034'Access,
         16#0074# => Group_0034'Access, 16#0075# => Group_0034'Access,
         16#0076# => Group_0034'Access, 16#0077# => Group_0034'Access,
         16#0078# => Group_0034'Access, 16#0079# => Group_0034'Access,
         16#007A# => Group_0034'Access, 16#007B# => Group_0034'Access,
         16#007C# => Group_0034'Access, 16#007D# => Group_0034'Access,
         16#007E# => Group_0034'Access, 16#007F# => Group_0034'Access,
         16#0080# => Group_0034'Access, 16#0081# => Group_0034'Access,
         16#0082# => Group_0034'Access, 16#0083# => Group_0034'Access,
         16#0084# => Group_0034'Access, 16#0085# => Group_0034'Access,
         16#0086# => Group_0034'Access, 16#0087# => Group_0034'Access,
         16#0088# => Group_0034'Access, 16#0089# => Group_0034'Access,
         16#008A# => Group_0034'Access, 16#008B# => Group_0034'Access,
         16#008C# => Group_0034'Access, 16#008D# => Group_0034'Access,
         16#008E# => Group_0034'Access, 16#008F# => Group_0034'Access,
         16#0090# => Group_0034'Access, 16#0091# => Group_0034'Access,
         16#0092# => Group_0034'Access, 16#0093# => Group_0034'Access,
         16#0094# => Group_0034'Access, 16#0095# => Group_0034'Access,
         16#0096# => Group_0034'Access, 16#0097# => Group_0034'Access,
         16#0098# => Group_0034'Access, 16#0099# => Group_0034'Access,
         16#009A# => Group_0034'Access, 16#009B# => Group_0034'Access,
         16#009C# => Group_0034'Access, 16#009D# => Group_0034'Access,
         16#009E# => Group_0034'Access, 16#009F# => Group_009F'Access,
         16#00A0# => Group_00A0'Access, 16#00A1# => Group_00A1'Access,
         16#00A2# => Group_00A1'Access, 16#00A3# => Group_00A1'Access,
         16#00A4# => Group_00A4'Access, 16#00A5# => Group_0015'Access,
         16#00A6# => Group_00A6'Access, 16#00A7# => Group_00A7'Access,
         16#00A8# => Group_00A8'Access, 16#00A9# => Group_00A9'Access,
         16#00AA# => Group_00AA'Access, 16#00AB# => Group_00AB'Access,
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
         16#00D8# => Group_00D8'Access, 16#00D9# => Group_00D8'Access,
         16#00DA# => Group_00D8'Access, 16#00DB# => Group_00D8'Access,
         16#00DC# => Group_00D8'Access, 16#00DD# => Group_00D8'Access,
         16#00DE# => Group_00D8'Access, 16#00DF# => Group_00D8'Access,
         16#00E0# => Group_00E0'Access, 16#00E1# => Group_00E0'Access,
         16#00E2# => Group_00E0'Access, 16#00E3# => Group_00E0'Access,
         16#00E4# => Group_00E0'Access, 16#00E5# => Group_00E0'Access,
         16#00E6# => Group_00E0'Access, 16#00E7# => Group_00E0'Access,
         16#00E8# => Group_00E0'Access, 16#00E9# => Group_00E0'Access,
         16#00EA# => Group_00E0'Access, 16#00EB# => Group_00E0'Access,
         16#00EC# => Group_00E0'Access, 16#00ED# => Group_00E0'Access,
         16#00EE# => Group_00E0'Access, 16#00EF# => Group_00E0'Access,
         16#00F0# => Group_00E0'Access, 16#00F1# => Group_00E0'Access,
         16#00F2# => Group_00E0'Access, 16#00F3# => Group_00E0'Access,
         16#00F4# => Group_00E0'Access, 16#00F5# => Group_00E0'Access,
         16#00F6# => Group_00E0'Access, 16#00F7# => Group_00E0'Access,
         16#00F8# => Group_00E0'Access, 16#00F9# => Group_00F9'Access,
         16#00FA# => Group_00FA'Access, 16#00FB# => Group_00FB'Access,
         16#00FC# => Group_00FC'Access, 16#00FD# => Group_00FD'Access,
         16#00FE# => Group_00FE'Access, 16#00FF# => Group_00FF'Access,
         16#0100# => Group_0100'Access, 16#0101# => Group_0101'Access,
         16#0102# => Group_0102'Access, 16#0103# => Group_0103'Access,
         16#0104# => Group_0104'Access, 16#0108# => Group_0108'Access,
         16#0109# => Group_0109'Access, 16#010A# => Group_010A'Access,
         16#010B# => Group_010B'Access, 16#010C# => Group_010C'Access,
         16#010E# => Group_010E'Access, 16#0110# => Group_0110'Access,
         16#0111# => Group_0111'Access, 16#0116# => Group_0116'Access,
         16#0120# => Group_0015'Access, 16#0121# => Group_0015'Access,
         16#0122# => Group_0015'Access, 16#0123# => Group_0123'Access,
         16#0124# => Group_0124'Access, 16#0130# => Group_0015'Access,
         16#0131# => Group_0015'Access, 16#0132# => Group_0132'Access,
         16#0133# => Group_0133'Access, 16#0134# => Group_0134'Access,
         16#0168# => Group_0015'Access, 16#0169# => Group_0015'Access,
         16#016A# => Group_016A'Access, 16#016F# => Group_016F'Access,
         16#01B0# => Group_01B0'Access, 16#01D0# => Group_01D0'Access,
         16#01D1# => Group_01D1'Access, 16#01D2# => Group_01D2'Access,
         16#01D3# => Group_01D3'Access, 16#01D4# => Group_01D4'Access,
         16#01D5# => Group_01D5'Access, 16#01D6# => Group_01D6'Access,
         16#01D7# => Group_01D7'Access, 16#01EE# => Group_01EE'Access,
         16#01F0# => Group_01F0'Access, 16#01F1# => Group_01F1'Access,
         16#01F2# => Group_01F2'Access, 16#01F3# => Group_01F3'Access,
         16#01F4# => Group_01F4'Access, 16#01F5# => Group_01F5'Access,
         16#01F6# => Group_01F6'Access, 16#01F7# => Group_01F7'Access,
         16#01FF# => Group_01FF'Access, 16#0200# => Group_0034'Access,
         16#0201# => Group_0034'Access, 16#0202# => Group_0034'Access,
         16#0203# => Group_0034'Access, 16#0204# => Group_0034'Access,
         16#0205# => Group_0034'Access, 16#0206# => Group_0034'Access,
         16#0207# => Group_0034'Access, 16#0208# => Group_0034'Access,
         16#0209# => Group_0034'Access, 16#020A# => Group_0034'Access,
         16#020B# => Group_0034'Access, 16#020C# => Group_0034'Access,
         16#020D# => Group_0034'Access, 16#020E# => Group_0034'Access,
         16#020F# => Group_0034'Access, 16#0210# => Group_0034'Access,
         16#0211# => Group_0034'Access, 16#0212# => Group_0034'Access,
         16#0213# => Group_0034'Access, 16#0214# => Group_0034'Access,
         16#0215# => Group_0034'Access, 16#0216# => Group_0034'Access,
         16#0217# => Group_0034'Access, 16#0218# => Group_0034'Access,
         16#0219# => Group_0034'Access, 16#021A# => Group_0034'Access,
         16#021B# => Group_0034'Access, 16#021C# => Group_0034'Access,
         16#021D# => Group_0034'Access, 16#021E# => Group_0034'Access,
         16#021F# => Group_0034'Access, 16#0220# => Group_0034'Access,
         16#0221# => Group_0034'Access, 16#0222# => Group_0034'Access,
         16#0223# => Group_0034'Access, 16#0224# => Group_0034'Access,
         16#0225# => Group_0034'Access, 16#0226# => Group_0034'Access,
         16#0227# => Group_0034'Access, 16#0228# => Group_0034'Access,
         16#0229# => Group_0034'Access, 16#022A# => Group_0034'Access,
         16#022B# => Group_0034'Access, 16#022C# => Group_0034'Access,
         16#022D# => Group_0034'Access, 16#022E# => Group_0034'Access,
         16#022F# => Group_0034'Access, 16#0230# => Group_0034'Access,
         16#0231# => Group_0034'Access, 16#0232# => Group_0034'Access,
         16#0233# => Group_0034'Access, 16#0234# => Group_0034'Access,
         16#0235# => Group_0034'Access, 16#0236# => Group_0034'Access,
         16#0237# => Group_0034'Access, 16#0238# => Group_0034'Access,
         16#0239# => Group_0034'Access, 16#023A# => Group_0034'Access,
         16#023B# => Group_0034'Access, 16#023C# => Group_0034'Access,
         16#023D# => Group_0034'Access, 16#023E# => Group_0034'Access,
         16#023F# => Group_0034'Access, 16#0240# => Group_0034'Access,
         16#0241# => Group_0034'Access, 16#0242# => Group_0034'Access,
         16#0243# => Group_0034'Access, 16#0244# => Group_0034'Access,
         16#0245# => Group_0034'Access, 16#0246# => Group_0034'Access,
         16#0247# => Group_0034'Access, 16#0248# => Group_0034'Access,
         16#0249# => Group_0034'Access, 16#024A# => Group_0034'Access,
         16#024B# => Group_0034'Access, 16#024C# => Group_0034'Access,
         16#024D# => Group_0034'Access, 16#024E# => Group_0034'Access,
         16#024F# => Group_0034'Access, 16#0250# => Group_0034'Access,
         16#0251# => Group_0034'Access, 16#0252# => Group_0034'Access,
         16#0253# => Group_0034'Access, 16#0254# => Group_0034'Access,
         16#0255# => Group_0034'Access, 16#0256# => Group_0034'Access,
         16#0257# => Group_0034'Access, 16#0258# => Group_0034'Access,
         16#0259# => Group_0034'Access, 16#025A# => Group_0034'Access,
         16#025B# => Group_0034'Access, 16#025C# => Group_0034'Access,
         16#025D# => Group_0034'Access, 16#025E# => Group_0034'Access,
         16#025F# => Group_0034'Access, 16#0260# => Group_0034'Access,
         16#0261# => Group_0034'Access, 16#0262# => Group_0034'Access,
         16#0263# => Group_0034'Access, 16#0264# => Group_0034'Access,
         16#0265# => Group_0034'Access, 16#0266# => Group_0034'Access,
         16#0267# => Group_0034'Access, 16#0268# => Group_0034'Access,
         16#0269# => Group_0034'Access, 16#026A# => Group_0034'Access,
         16#026B# => Group_0034'Access, 16#026C# => Group_0034'Access,
         16#026D# => Group_0034'Access, 16#026E# => Group_0034'Access,
         16#026F# => Group_0034'Access, 16#0270# => Group_0034'Access,
         16#0271# => Group_0034'Access, 16#0272# => Group_0034'Access,
         16#0273# => Group_0034'Access, 16#0274# => Group_0034'Access,
         16#0275# => Group_0034'Access, 16#0276# => Group_0034'Access,
         16#0277# => Group_0034'Access, 16#0278# => Group_0034'Access,
         16#0279# => Group_0034'Access, 16#027A# => Group_0034'Access,
         16#027B# => Group_0034'Access, 16#027C# => Group_0034'Access,
         16#027D# => Group_0034'Access, 16#027E# => Group_0034'Access,
         16#027F# => Group_0034'Access, 16#0280# => Group_0034'Access,
         16#0281# => Group_0034'Access, 16#0282# => Group_0034'Access,
         16#0283# => Group_0034'Access, 16#0284# => Group_0034'Access,
         16#0285# => Group_0034'Access, 16#0286# => Group_0034'Access,
         16#0287# => Group_0034'Access, 16#0288# => Group_0034'Access,
         16#0289# => Group_0034'Access, 16#028A# => Group_0034'Access,
         16#028B# => Group_0034'Access, 16#028C# => Group_0034'Access,
         16#028D# => Group_0034'Access, 16#028E# => Group_0034'Access,
         16#028F# => Group_0034'Access, 16#0290# => Group_0034'Access,
         16#0291# => Group_0034'Access, 16#0292# => Group_0034'Access,
         16#0293# => Group_0034'Access, 16#0294# => Group_0034'Access,
         16#0295# => Group_0034'Access, 16#0296# => Group_0034'Access,
         16#0297# => Group_0034'Access, 16#0298# => Group_0034'Access,
         16#0299# => Group_0034'Access, 16#029A# => Group_0034'Access,
         16#029B# => Group_0034'Access, 16#029C# => Group_0034'Access,
         16#029D# => Group_0034'Access, 16#029E# => Group_0034'Access,
         16#029F# => Group_0034'Access, 16#02A0# => Group_0034'Access,
         16#02A1# => Group_0034'Access, 16#02A2# => Group_0034'Access,
         16#02A3# => Group_0034'Access, 16#02A4# => Group_0034'Access,
         16#02A5# => Group_0034'Access, 16#02A6# => Group_02A6'Access,
         16#02A7# => Group_0034'Access, 16#02A8# => Group_0034'Access,
         16#02A9# => Group_0034'Access, 16#02AA# => Group_0034'Access,
         16#02AB# => Group_0034'Access, 16#02AC# => Group_0034'Access,
         16#02AD# => Group_0034'Access, 16#02AE# => Group_0034'Access,
         16#02AF# => Group_0034'Access, 16#02B0# => Group_0034'Access,
         16#02B1# => Group_0034'Access, 16#02B2# => Group_0034'Access,
         16#02B3# => Group_0034'Access, 16#02B4# => Group_0034'Access,
         16#02B5# => Group_0034'Access, 16#02B6# => Group_0034'Access,
         16#02B7# => Group_02B7'Access, 16#02B8# => Group_02B8'Access,
         16#02B9# => Group_02B9'Access, 16#02BA# => Group_02B9'Access,
         16#02BB# => Group_02B9'Access, 16#02BC# => Group_02B9'Access,
         16#02BD# => Group_02B9'Access, 16#02BE# => Group_02B9'Access,
         16#02BF# => Group_02B9'Access, 16#02C0# => Group_02B9'Access,
         16#02C1# => Group_02B9'Access, 16#02C2# => Group_02B9'Access,
         16#02C3# => Group_02B9'Access, 16#02C4# => Group_02B9'Access,
         16#02C5# => Group_02B9'Access, 16#02C6# => Group_02B9'Access,
         16#02C7# => Group_02B9'Access, 16#02C8# => Group_02B9'Access,
         16#02C9# => Group_02B9'Access, 16#02CA# => Group_02B9'Access,
         16#02CB# => Group_02B9'Access, 16#02CC# => Group_02B9'Access,
         16#02CD# => Group_02B9'Access, 16#02CE# => Group_02B9'Access,
         16#02CF# => Group_02B9'Access, 16#02D0# => Group_02B9'Access,
         16#02D1# => Group_02B9'Access, 16#02D2# => Group_02B9'Access,
         16#02D3# => Group_02B9'Access, 16#02D4# => Group_02B9'Access,
         16#02D5# => Group_02B9'Access, 16#02D6# => Group_02B9'Access,
         16#02D7# => Group_02B9'Access, 16#02D8# => Group_02B9'Access,
         16#02D9# => Group_02B9'Access, 16#02DA# => Group_02B9'Access,
         16#02DB# => Group_02B9'Access, 16#02DC# => Group_02B9'Access,
         16#02DD# => Group_02B9'Access, 16#02DE# => Group_02B9'Access,
         16#02DF# => Group_02B9'Access, 16#02E0# => Group_02B9'Access,
         16#02E1# => Group_02B9'Access, 16#02E2# => Group_02B9'Access,
         16#02E3# => Group_02B9'Access, 16#02E4# => Group_02B9'Access,
         16#02E5# => Group_02B9'Access, 16#02E6# => Group_02B9'Access,
         16#02E7# => Group_02B9'Access, 16#02E8# => Group_02B9'Access,
         16#02E9# => Group_02B9'Access, 16#02EA# => Group_02B9'Access,
         16#02EB# => Group_02B9'Access, 16#02EC# => Group_02B9'Access,
         16#02ED# => Group_02B9'Access, 16#02EE# => Group_02B9'Access,
         16#02EF# => Group_02B9'Access, 16#02F0# => Group_02B9'Access,
         16#02F1# => Group_02B9'Access, 16#02F2# => Group_02B9'Access,
         16#02F3# => Group_02B9'Access, 16#02F4# => Group_02B9'Access,
         16#02F5# => Group_02B9'Access, 16#02F6# => Group_02B9'Access,
         16#02F7# => Group_02B9'Access, 16#02F8# => Group_00F9'Access,
         16#02F9# => Group_00F9'Access, 16#02FA# => Group_02FA'Access,
         16#02FB# => Group_02B9'Access, 16#02FC# => Group_02B9'Access,
         16#02FD# => Group_02B9'Access, 16#02FE# => Group_02B9'Access,
         16#02FF# => Group_02FF'Access, 16#0300# => Group_02B9'Access,
         16#0301# => Group_02B9'Access, 16#0302# => Group_02B9'Access,
         16#0303# => Group_02B9'Access, 16#0304# => Group_02B9'Access,
         16#0305# => Group_02B9'Access, 16#0306# => Group_02B9'Access,
         16#0307# => Group_02B9'Access, 16#0308# => Group_02B9'Access,
         16#0309# => Group_02B9'Access, 16#030A# => Group_02B9'Access,
         16#030B# => Group_02B9'Access, 16#030C# => Group_02B9'Access,
         16#030D# => Group_02B9'Access, 16#030E# => Group_02B9'Access,
         16#030F# => Group_02B9'Access, 16#0310# => Group_02B9'Access,
         16#0311# => Group_02B9'Access, 16#0312# => Group_02B9'Access,
         16#0313# => Group_02B9'Access, 16#0314# => Group_02B9'Access,
         16#0315# => Group_02B9'Access, 16#0316# => Group_02B9'Access,
         16#0317# => Group_02B9'Access, 16#0318# => Group_02B9'Access,
         16#0319# => Group_02B9'Access, 16#031A# => Group_02B9'Access,
         16#031B# => Group_02B9'Access, 16#031C# => Group_02B9'Access,
         16#031D# => Group_02B9'Access, 16#031E# => Group_02B9'Access,
         16#031F# => Group_02B9'Access, 16#0320# => Group_02B9'Access,
         16#0321# => Group_02B9'Access, 16#0322# => Group_02B9'Access,
         16#0323# => Group_02B9'Access, 16#0324# => Group_02B9'Access,
         16#0325# => Group_02B9'Access, 16#0326# => Group_02B9'Access,
         16#0327# => Group_02B9'Access, 16#0328# => Group_02B9'Access,
         16#0329# => Group_02B9'Access, 16#032A# => Group_02B9'Access,
         16#032B# => Group_02B9'Access, 16#032C# => Group_02B9'Access,
         16#032D# => Group_02B9'Access, 16#032E# => Group_02B9'Access,
         16#032F# => Group_02B9'Access, 16#0330# => Group_02B9'Access,
         16#0331# => Group_02B9'Access, 16#0332# => Group_02B9'Access,
         16#0333# => Group_02B9'Access, 16#0334# => Group_02B9'Access,
         16#0335# => Group_02B9'Access, 16#0336# => Group_02B9'Access,
         16#0337# => Group_02B9'Access, 16#0338# => Group_02B9'Access,
         16#0339# => Group_02B9'Access, 16#033A# => Group_02B9'Access,
         16#033B# => Group_02B9'Access, 16#033C# => Group_02B9'Access,
         16#033D# => Group_02B9'Access, 16#033E# => Group_02B9'Access,
         16#033F# => Group_02B9'Access, 16#0340# => Group_02B9'Access,
         16#0341# => Group_02B9'Access, 16#0342# => Group_02B9'Access,
         16#0343# => Group_02B9'Access, 16#0344# => Group_02B9'Access,
         16#0345# => Group_02B9'Access, 16#0346# => Group_02B9'Access,
         16#0347# => Group_02B9'Access, 16#0348# => Group_02B9'Access,
         16#0349# => Group_02B9'Access, 16#034A# => Group_02B9'Access,
         16#034B# => Group_02B9'Access, 16#034C# => Group_02B9'Access,
         16#034D# => Group_02B9'Access, 16#034E# => Group_02B9'Access,
         16#034F# => Group_02B9'Access, 16#0350# => Group_02B9'Access,
         16#0351# => Group_02B9'Access, 16#0352# => Group_02B9'Access,
         16#0353# => Group_02B9'Access, 16#0354# => Group_02B9'Access,
         16#0355# => Group_02B9'Access, 16#0356# => Group_02B9'Access,
         16#0357# => Group_02B9'Access, 16#0358# => Group_02B9'Access,
         16#0359# => Group_02B9'Access, 16#035A# => Group_02B9'Access,
         16#035B# => Group_02B9'Access, 16#035C# => Group_02B9'Access,
         16#035D# => Group_02B9'Access, 16#035E# => Group_02B9'Access,
         16#035F# => Group_02B9'Access, 16#0360# => Group_02B9'Access,
         16#0361# => Group_02B9'Access, 16#0362# => Group_02B9'Access,
         16#0363# => Group_02B9'Access, 16#0364# => Group_02B9'Access,
         16#0365# => Group_02B9'Access, 16#0366# => Group_02B9'Access,
         16#0367# => Group_02B9'Access, 16#0368# => Group_02B9'Access,
         16#0369# => Group_02B9'Access, 16#036A# => Group_02B9'Access,
         16#036B# => Group_02B9'Access, 16#036C# => Group_02B9'Access,
         16#036D# => Group_02B9'Access, 16#036E# => Group_02B9'Access,
         16#036F# => Group_02B9'Access, 16#0370# => Group_02B9'Access,
         16#0371# => Group_02B9'Access, 16#0372# => Group_02B9'Access,
         16#0373# => Group_02B9'Access, 16#0374# => Group_02B9'Access,
         16#0375# => Group_02B9'Access, 16#0376# => Group_02B9'Access,
         16#0377# => Group_02B9'Access, 16#0378# => Group_02B9'Access,
         16#0379# => Group_02B9'Access, 16#037A# => Group_02B9'Access,
         16#037B# => Group_02B9'Access, 16#037C# => Group_02B9'Access,
         16#037D# => Group_02B9'Access, 16#037E# => Group_02B9'Access,
         16#037F# => Group_02B9'Access, 16#0380# => Group_02B9'Access,
         16#0381# => Group_02B9'Access, 16#0382# => Group_02B9'Access,
         16#0383# => Group_02B9'Access, 16#0384# => Group_02B9'Access,
         16#0385# => Group_02B9'Access, 16#0386# => Group_02B9'Access,
         16#0387# => Group_02B9'Access, 16#0388# => Group_02B9'Access,
         16#0389# => Group_02B9'Access, 16#038A# => Group_02B9'Access,
         16#038B# => Group_02B9'Access, 16#038C# => Group_02B9'Access,
         16#038D# => Group_02B9'Access, 16#038E# => Group_02B9'Access,
         16#038F# => Group_02B9'Access, 16#0390# => Group_02B9'Access,
         16#0391# => Group_02B9'Access, 16#0392# => Group_02B9'Access,
         16#0393# => Group_02B9'Access, 16#0394# => Group_02B9'Access,
         16#0395# => Group_02B9'Access, 16#0396# => Group_02B9'Access,
         16#0397# => Group_02B9'Access, 16#0398# => Group_02B9'Access,
         16#0399# => Group_02B9'Access, 16#039A# => Group_02B9'Access,
         16#039B# => Group_02B9'Access, 16#039C# => Group_02B9'Access,
         16#039D# => Group_02B9'Access, 16#039E# => Group_02B9'Access,
         16#039F# => Group_02B9'Access, 16#03A0# => Group_02B9'Access,
         16#03A1# => Group_02B9'Access, 16#03A2# => Group_02B9'Access,
         16#03A3# => Group_02B9'Access, 16#03A4# => Group_02B9'Access,
         16#03A5# => Group_02B9'Access, 16#03A6# => Group_02B9'Access,
         16#03A7# => Group_02B9'Access, 16#03A8# => Group_02B9'Access,
         16#03A9# => Group_02B9'Access, 16#03AA# => Group_02B9'Access,
         16#03AB# => Group_02B9'Access, 16#03AC# => Group_02B9'Access,
         16#03AD# => Group_02B9'Access, 16#03AE# => Group_02B9'Access,
         16#03AF# => Group_02B9'Access, 16#03B0# => Group_02B9'Access,
         16#03B1# => Group_02B9'Access, 16#03B2# => Group_02B9'Access,
         16#03B3# => Group_02B9'Access, 16#03B4# => Group_02B9'Access,
         16#03B5# => Group_02B9'Access, 16#03B6# => Group_02B9'Access,
         16#03B7# => Group_02B9'Access, 16#03B8# => Group_02B9'Access,
         16#03B9# => Group_02B9'Access, 16#03BA# => Group_02B9'Access,
         16#03BB# => Group_02B9'Access, 16#03BC# => Group_02B9'Access,
         16#03BD# => Group_02B9'Access, 16#03BE# => Group_02B9'Access,
         16#03BF# => Group_02B9'Access, 16#03C0# => Group_02B9'Access,
         16#03C1# => Group_02B9'Access, 16#03C2# => Group_02B9'Access,
         16#03C3# => Group_02B9'Access, 16#03C4# => Group_02B9'Access,
         16#03C5# => Group_02B9'Access, 16#03C6# => Group_02B9'Access,
         16#03C7# => Group_02B9'Access, 16#03C8# => Group_02B9'Access,
         16#03C9# => Group_02B9'Access, 16#03CA# => Group_02B9'Access,
         16#03CB# => Group_02B9'Access, 16#03CC# => Group_02B9'Access,
         16#03CD# => Group_02B9'Access, 16#03CE# => Group_02B9'Access,
         16#03CF# => Group_02B9'Access, 16#03D0# => Group_02B9'Access,
         16#03D1# => Group_02B9'Access, 16#03D2# => Group_02B9'Access,
         16#03D3# => Group_02B9'Access, 16#03D4# => Group_02B9'Access,
         16#03D5# => Group_02B9'Access, 16#03D6# => Group_02B9'Access,
         16#03D7# => Group_02B9'Access, 16#03D8# => Group_02B9'Access,
         16#03D9# => Group_02B9'Access, 16#03DA# => Group_02B9'Access,
         16#03DB# => Group_02B9'Access, 16#03DC# => Group_02B9'Access,
         16#03DD# => Group_02B9'Access, 16#03DE# => Group_02B9'Access,
         16#03DF# => Group_02B9'Access, 16#03E0# => Group_02B9'Access,
         16#03E1# => Group_02B9'Access, 16#03E2# => Group_02B9'Access,
         16#03E3# => Group_02B9'Access, 16#03E4# => Group_02B9'Access,
         16#03E5# => Group_02B9'Access, 16#03E6# => Group_02B9'Access,
         16#03E7# => Group_02B9'Access, 16#03E8# => Group_02B9'Access,
         16#03E9# => Group_02B9'Access, 16#03EA# => Group_02B9'Access,
         16#03EB# => Group_02B9'Access, 16#03EC# => Group_02B9'Access,
         16#03ED# => Group_02B9'Access, 16#03EE# => Group_02B9'Access,
         16#03EF# => Group_02B9'Access, 16#03F0# => Group_02B9'Access,
         16#03F1# => Group_02B9'Access, 16#03F2# => Group_02B9'Access,
         16#03F3# => Group_02B9'Access, 16#03F4# => Group_02B9'Access,
         16#03F5# => Group_02B9'Access, 16#03F6# => Group_02B9'Access,
         16#03F7# => Group_02B9'Access, 16#03F8# => Group_02B9'Access,
         16#03F9# => Group_02B9'Access, 16#03FA# => Group_02B9'Access,
         16#03FB# => Group_02B9'Access, 16#03FC# => Group_02B9'Access,
         16#03FD# => Group_02B9'Access, 16#03FE# => Group_02B9'Access,
         16#03FF# => Group_02FF'Access, 16#04FF# => Group_01FF'Access,
         16#05FF# => Group_01FF'Access, 16#06FF# => Group_01FF'Access,
         16#07FF# => Group_01FF'Access, 16#08FF# => Group_01FF'Access,
         16#09FF# => Group_01FF'Access, 16#0AFF# => Group_01FF'Access,
         16#0BFF# => Group_01FF'Access, 16#0CFF# => Group_01FF'Access,
         16#0DFF# => Group_01FF'Access, 16#0E00# => Group_0E00'Access,
         16#0E01# => Group_0E01'Access, 16#0E02# => Group_0E02'Access,
         16#0E03# => Group_0E02'Access, 16#0E04# => Group_0E02'Access,
         16#0E05# => Group_0E02'Access, 16#0E06# => Group_0E02'Access,
         16#0E07# => Group_0E02'Access, 16#0E08# => Group_0E02'Access,
         16#0E09# => Group_0E02'Access, 16#0E0A# => Group_0E02'Access,
         16#0E0B# => Group_0E02'Access, 16#0E0C# => Group_0E02'Access,
         16#0E0D# => Group_0E02'Access, 16#0E0E# => Group_0E02'Access,
         16#0E0F# => Group_0E02'Access, 16#0EFF# => Group_01FF'Access,
         16#0F00# => Group_00E0'Access, 16#0F01# => Group_00E0'Access,
         16#0F02# => Group_00E0'Access, 16#0F03# => Group_00E0'Access,
         16#0F04# => Group_00E0'Access, 16#0F05# => Group_00E0'Access,
         16#0F06# => Group_00E0'Access, 16#0F07# => Group_00E0'Access,
         16#0F08# => Group_00E0'Access, 16#0F09# => Group_00E0'Access,
         16#0F0A# => Group_00E0'Access, 16#0F0B# => Group_00E0'Access,
         16#0F0C# => Group_00E0'Access, 16#0F0D# => Group_00E0'Access,
         16#0F0E# => Group_00E0'Access, 16#0F0F# => Group_00E0'Access,
         16#0F10# => Group_00E0'Access, 16#0F11# => Group_00E0'Access,
         16#0F12# => Group_00E0'Access, 16#0F13# => Group_00E0'Access,
         16#0F14# => Group_00E0'Access, 16#0F15# => Group_00E0'Access,
         16#0F16# => Group_00E0'Access, 16#0F17# => Group_00E0'Access,
         16#0F18# => Group_00E0'Access, 16#0F19# => Group_00E0'Access,
         16#0F1A# => Group_00E0'Access, 16#0F1B# => Group_00E0'Access,
         16#0F1C# => Group_00E0'Access, 16#0F1D# => Group_00E0'Access,
         16#0F1E# => Group_00E0'Access, 16#0F1F# => Group_00E0'Access,
         16#0F20# => Group_00E0'Access, 16#0F21# => Group_00E0'Access,
         16#0F22# => Group_00E0'Access, 16#0F23# => Group_00E0'Access,
         16#0F24# => Group_00E0'Access, 16#0F25# => Group_00E0'Access,
         16#0F26# => Group_00E0'Access, 16#0F27# => Group_00E0'Access,
         16#0F28# => Group_00E0'Access, 16#0F29# => Group_00E0'Access,
         16#0F2A# => Group_00E0'Access, 16#0F2B# => Group_00E0'Access,
         16#0F2C# => Group_00E0'Access, 16#0F2D# => Group_00E0'Access,
         16#0F2E# => Group_00E0'Access, 16#0F2F# => Group_00E0'Access,
         16#0F30# => Group_00E0'Access, 16#0F31# => Group_00E0'Access,
         16#0F32# => Group_00E0'Access, 16#0F33# => Group_00E0'Access,
         16#0F34# => Group_00E0'Access, 16#0F35# => Group_00E0'Access,
         16#0F36# => Group_00E0'Access, 16#0F37# => Group_00E0'Access,
         16#0F38# => Group_00E0'Access, 16#0F39# => Group_00E0'Access,
         16#0F3A# => Group_00E0'Access, 16#0F3B# => Group_00E0'Access,
         16#0F3C# => Group_00E0'Access, 16#0F3D# => Group_00E0'Access,
         16#0F3E# => Group_00E0'Access, 16#0F3F# => Group_00E0'Access,
         16#0F40# => Group_00E0'Access, 16#0F41# => Group_00E0'Access,
         16#0F42# => Group_00E0'Access, 16#0F43# => Group_00E0'Access,
         16#0F44# => Group_00E0'Access, 16#0F45# => Group_00E0'Access,
         16#0F46# => Group_00E0'Access, 16#0F47# => Group_00E0'Access,
         16#0F48# => Group_00E0'Access, 16#0F49# => Group_00E0'Access,
         16#0F4A# => Group_00E0'Access, 16#0F4B# => Group_00E0'Access,
         16#0F4C# => Group_00E0'Access, 16#0F4D# => Group_00E0'Access,
         16#0F4E# => Group_00E0'Access, 16#0F4F# => Group_00E0'Access,
         16#0F50# => Group_00E0'Access, 16#0F51# => Group_00E0'Access,
         16#0F52# => Group_00E0'Access, 16#0F53# => Group_00E0'Access,
         16#0F54# => Group_00E0'Access, 16#0F55# => Group_00E0'Access,
         16#0F56# => Group_00E0'Access, 16#0F57# => Group_00E0'Access,
         16#0F58# => Group_00E0'Access, 16#0F59# => Group_00E0'Access,
         16#0F5A# => Group_00E0'Access, 16#0F5B# => Group_00E0'Access,
         16#0F5C# => Group_00E0'Access, 16#0F5D# => Group_00E0'Access,
         16#0F5E# => Group_00E0'Access, 16#0F5F# => Group_00E0'Access,
         16#0F60# => Group_00E0'Access, 16#0F61# => Group_00E0'Access,
         16#0F62# => Group_00E0'Access, 16#0F63# => Group_00E0'Access,
         16#0F64# => Group_00E0'Access, 16#0F65# => Group_00E0'Access,
         16#0F66# => Group_00E0'Access, 16#0F67# => Group_00E0'Access,
         16#0F68# => Group_00E0'Access, 16#0F69# => Group_00E0'Access,
         16#0F6A# => Group_00E0'Access, 16#0F6B# => Group_00E0'Access,
         16#0F6C# => Group_00E0'Access, 16#0F6D# => Group_00E0'Access,
         16#0F6E# => Group_00E0'Access, 16#0F6F# => Group_00E0'Access,
         16#0F70# => Group_00E0'Access, 16#0F71# => Group_00E0'Access,
         16#0F72# => Group_00E0'Access, 16#0F73# => Group_00E0'Access,
         16#0F74# => Group_00E0'Access, 16#0F75# => Group_00E0'Access,
         16#0F76# => Group_00E0'Access, 16#0F77# => Group_00E0'Access,
         16#0F78# => Group_00E0'Access, 16#0F79# => Group_00E0'Access,
         16#0F7A# => Group_00E0'Access, 16#0F7B# => Group_00E0'Access,
         16#0F7C# => Group_00E0'Access, 16#0F7D# => Group_00E0'Access,
         16#0F7E# => Group_00E0'Access, 16#0F7F# => Group_00E0'Access,
         16#0F80# => Group_00E0'Access, 16#0F81# => Group_00E0'Access,
         16#0F82# => Group_00E0'Access, 16#0F83# => Group_00E0'Access,
         16#0F84# => Group_00E0'Access, 16#0F85# => Group_00E0'Access,
         16#0F86# => Group_00E0'Access, 16#0F87# => Group_00E0'Access,
         16#0F88# => Group_00E0'Access, 16#0F89# => Group_00E0'Access,
         16#0F8A# => Group_00E0'Access, 16#0F8B# => Group_00E0'Access,
         16#0F8C# => Group_00E0'Access, 16#0F8D# => Group_00E0'Access,
         16#0F8E# => Group_00E0'Access, 16#0F8F# => Group_00E0'Access,
         16#0F90# => Group_00E0'Access, 16#0F91# => Group_00E0'Access,
         16#0F92# => Group_00E0'Access, 16#0F93# => Group_00E0'Access,
         16#0F94# => Group_00E0'Access, 16#0F95# => Group_00E0'Access,
         16#0F96# => Group_00E0'Access, 16#0F97# => Group_00E0'Access,
         16#0F98# => Group_00E0'Access, 16#0F99# => Group_00E0'Access,
         16#0F9A# => Group_00E0'Access, 16#0F9B# => Group_00E0'Access,
         16#0F9C# => Group_00E0'Access, 16#0F9D# => Group_00E0'Access,
         16#0F9E# => Group_00E0'Access, 16#0F9F# => Group_00E0'Access,
         16#0FA0# => Group_00E0'Access, 16#0FA1# => Group_00E0'Access,
         16#0FA2# => Group_00E0'Access, 16#0FA3# => Group_00E0'Access,
         16#0FA4# => Group_00E0'Access, 16#0FA5# => Group_00E0'Access,
         16#0FA6# => Group_00E0'Access, 16#0FA7# => Group_00E0'Access,
         16#0FA8# => Group_00E0'Access, 16#0FA9# => Group_00E0'Access,
         16#0FAA# => Group_00E0'Access, 16#0FAB# => Group_00E0'Access,
         16#0FAC# => Group_00E0'Access, 16#0FAD# => Group_00E0'Access,
         16#0FAE# => Group_00E0'Access, 16#0FAF# => Group_00E0'Access,
         16#0FB0# => Group_00E0'Access, 16#0FB1# => Group_00E0'Access,
         16#0FB2# => Group_00E0'Access, 16#0FB3# => Group_00E0'Access,
         16#0FB4# => Group_00E0'Access, 16#0FB5# => Group_00E0'Access,
         16#0FB6# => Group_00E0'Access, 16#0FB7# => Group_00E0'Access,
         16#0FB8# => Group_00E0'Access, 16#0FB9# => Group_00E0'Access,
         16#0FBA# => Group_00E0'Access, 16#0FBB# => Group_00E0'Access,
         16#0FBC# => Group_00E0'Access, 16#0FBD# => Group_00E0'Access,
         16#0FBE# => Group_00E0'Access, 16#0FBF# => Group_00E0'Access,
         16#0FC0# => Group_00E0'Access, 16#0FC1# => Group_00E0'Access,
         16#0FC2# => Group_00E0'Access, 16#0FC3# => Group_00E0'Access,
         16#0FC4# => Group_00E0'Access, 16#0FC5# => Group_00E0'Access,
         16#0FC6# => Group_00E0'Access, 16#0FC7# => Group_00E0'Access,
         16#0FC8# => Group_00E0'Access, 16#0FC9# => Group_00E0'Access,
         16#0FCA# => Group_00E0'Access, 16#0FCB# => Group_00E0'Access,
         16#0FCC# => Group_00E0'Access, 16#0FCD# => Group_00E0'Access,
         16#0FCE# => Group_00E0'Access, 16#0FCF# => Group_00E0'Access,
         16#0FD0# => Group_00E0'Access, 16#0FD1# => Group_00E0'Access,
         16#0FD2# => Group_00E0'Access, 16#0FD3# => Group_00E0'Access,
         16#0FD4# => Group_00E0'Access, 16#0FD5# => Group_00E0'Access,
         16#0FD6# => Group_00E0'Access, 16#0FD7# => Group_00E0'Access,
         16#0FD8# => Group_00E0'Access, 16#0FD9# => Group_00E0'Access,
         16#0FDA# => Group_00E0'Access, 16#0FDB# => Group_00E0'Access,
         16#0FDC# => Group_00E0'Access, 16#0FDD# => Group_00E0'Access,
         16#0FDE# => Group_00E0'Access, 16#0FDF# => Group_00E0'Access,
         16#0FE0# => Group_00E0'Access, 16#0FE1# => Group_00E0'Access,
         16#0FE2# => Group_00E0'Access, 16#0FE3# => Group_00E0'Access,
         16#0FE4# => Group_00E0'Access, 16#0FE5# => Group_00E0'Access,
         16#0FE6# => Group_00E0'Access, 16#0FE7# => Group_00E0'Access,
         16#0FE8# => Group_00E0'Access, 16#0FE9# => Group_00E0'Access,
         16#0FEA# => Group_00E0'Access, 16#0FEB# => Group_00E0'Access,
         16#0FEC# => Group_00E0'Access, 16#0FED# => Group_00E0'Access,
         16#0FEE# => Group_00E0'Access, 16#0FEF# => Group_00E0'Access,
         16#0FF0# => Group_00E0'Access, 16#0FF1# => Group_00E0'Access,
         16#0FF2# => Group_00E0'Access, 16#0FF3# => Group_00E0'Access,
         16#0FF4# => Group_00E0'Access, 16#0FF5# => Group_00E0'Access,
         16#0FF6# => Group_00E0'Access, 16#0FF7# => Group_00E0'Access,
         16#0FF8# => Group_00E0'Access, 16#0FF9# => Group_00E0'Access,
         16#0FFA# => Group_00E0'Access, 16#0FFB# => Group_00E0'Access,
         16#0FFC# => Group_00E0'Access, 16#0FFD# => Group_00E0'Access,
         16#0FFE# => Group_00E0'Access, 16#0FFF# => Group_0FFF'Access,
         16#1000# => Group_00E0'Access, 16#1001# => Group_00E0'Access,
         16#1002# => Group_00E0'Access, 16#1003# => Group_00E0'Access,
         16#1004# => Group_00E0'Access, 16#1005# => Group_00E0'Access,
         16#1006# => Group_00E0'Access, 16#1007# => Group_00E0'Access,
         16#1008# => Group_00E0'Access, 16#1009# => Group_00E0'Access,
         16#100A# => Group_00E0'Access, 16#100B# => Group_00E0'Access,
         16#100C# => Group_00E0'Access, 16#100D# => Group_00E0'Access,
         16#100E# => Group_00E0'Access, 16#100F# => Group_00E0'Access,
         16#1010# => Group_00E0'Access, 16#1011# => Group_00E0'Access,
         16#1012# => Group_00E0'Access, 16#1013# => Group_00E0'Access,
         16#1014# => Group_00E0'Access, 16#1015# => Group_00E0'Access,
         16#1016# => Group_00E0'Access, 16#1017# => Group_00E0'Access,
         16#1018# => Group_00E0'Access, 16#1019# => Group_00E0'Access,
         16#101A# => Group_00E0'Access, 16#101B# => Group_00E0'Access,
         16#101C# => Group_00E0'Access, 16#101D# => Group_00E0'Access,
         16#101E# => Group_00E0'Access, 16#101F# => Group_00E0'Access,
         16#1020# => Group_00E0'Access, 16#1021# => Group_00E0'Access,
         16#1022# => Group_00E0'Access, 16#1023# => Group_00E0'Access,
         16#1024# => Group_00E0'Access, 16#1025# => Group_00E0'Access,
         16#1026# => Group_00E0'Access, 16#1027# => Group_00E0'Access,
         16#1028# => Group_00E0'Access, 16#1029# => Group_00E0'Access,
         16#102A# => Group_00E0'Access, 16#102B# => Group_00E0'Access,
         16#102C# => Group_00E0'Access, 16#102D# => Group_00E0'Access,
         16#102E# => Group_00E0'Access, 16#102F# => Group_00E0'Access,
         16#1030# => Group_00E0'Access, 16#1031# => Group_00E0'Access,
         16#1032# => Group_00E0'Access, 16#1033# => Group_00E0'Access,
         16#1034# => Group_00E0'Access, 16#1035# => Group_00E0'Access,
         16#1036# => Group_00E0'Access, 16#1037# => Group_00E0'Access,
         16#1038# => Group_00E0'Access, 16#1039# => Group_00E0'Access,
         16#103A# => Group_00E0'Access, 16#103B# => Group_00E0'Access,
         16#103C# => Group_00E0'Access, 16#103D# => Group_00E0'Access,
         16#103E# => Group_00E0'Access, 16#103F# => Group_00E0'Access,
         16#1040# => Group_00E0'Access, 16#1041# => Group_00E0'Access,
         16#1042# => Group_00E0'Access, 16#1043# => Group_00E0'Access,
         16#1044# => Group_00E0'Access, 16#1045# => Group_00E0'Access,
         16#1046# => Group_00E0'Access, 16#1047# => Group_00E0'Access,
         16#1048# => Group_00E0'Access, 16#1049# => Group_00E0'Access,
         16#104A# => Group_00E0'Access, 16#104B# => Group_00E0'Access,
         16#104C# => Group_00E0'Access, 16#104D# => Group_00E0'Access,
         16#104E# => Group_00E0'Access, 16#104F# => Group_00E0'Access,
         16#1050# => Group_00E0'Access, 16#1051# => Group_00E0'Access,
         16#1052# => Group_00E0'Access, 16#1053# => Group_00E0'Access,
         16#1054# => Group_00E0'Access, 16#1055# => Group_00E0'Access,
         16#1056# => Group_00E0'Access, 16#1057# => Group_00E0'Access,
         16#1058# => Group_00E0'Access, 16#1059# => Group_00E0'Access,
         16#105A# => Group_00E0'Access, 16#105B# => Group_00E0'Access,
         16#105C# => Group_00E0'Access, 16#105D# => Group_00E0'Access,
         16#105E# => Group_00E0'Access, 16#105F# => Group_00E0'Access,
         16#1060# => Group_00E0'Access, 16#1061# => Group_00E0'Access,
         16#1062# => Group_00E0'Access, 16#1063# => Group_00E0'Access,
         16#1064# => Group_00E0'Access, 16#1065# => Group_00E0'Access,
         16#1066# => Group_00E0'Access, 16#1067# => Group_00E0'Access,
         16#1068# => Group_00E0'Access, 16#1069# => Group_00E0'Access,
         16#106A# => Group_00E0'Access, 16#106B# => Group_00E0'Access,
         16#106C# => Group_00E0'Access, 16#106D# => Group_00E0'Access,
         16#106E# => Group_00E0'Access, 16#106F# => Group_00E0'Access,
         16#1070# => Group_00E0'Access, 16#1071# => Group_00E0'Access,
         16#1072# => Group_00E0'Access, 16#1073# => Group_00E0'Access,
         16#1074# => Group_00E0'Access, 16#1075# => Group_00E0'Access,
         16#1076# => Group_00E0'Access, 16#1077# => Group_00E0'Access,
         16#1078# => Group_00E0'Access, 16#1079# => Group_00E0'Access,
         16#107A# => Group_00E0'Access, 16#107B# => Group_00E0'Access,
         16#107C# => Group_00E0'Access, 16#107D# => Group_00E0'Access,
         16#107E# => Group_00E0'Access, 16#107F# => Group_00E0'Access,
         16#1080# => Group_00E0'Access, 16#1081# => Group_00E0'Access,
         16#1082# => Group_00E0'Access, 16#1083# => Group_00E0'Access,
         16#1084# => Group_00E0'Access, 16#1085# => Group_00E0'Access,
         16#1086# => Group_00E0'Access, 16#1087# => Group_00E0'Access,
         16#1088# => Group_00E0'Access, 16#1089# => Group_00E0'Access,
         16#108A# => Group_00E0'Access, 16#108B# => Group_00E0'Access,
         16#108C# => Group_00E0'Access, 16#108D# => Group_00E0'Access,
         16#108E# => Group_00E0'Access, 16#108F# => Group_00E0'Access,
         16#1090# => Group_00E0'Access, 16#1091# => Group_00E0'Access,
         16#1092# => Group_00E0'Access, 16#1093# => Group_00E0'Access,
         16#1094# => Group_00E0'Access, 16#1095# => Group_00E0'Access,
         16#1096# => Group_00E0'Access, 16#1097# => Group_00E0'Access,
         16#1098# => Group_00E0'Access, 16#1099# => Group_00E0'Access,
         16#109A# => Group_00E0'Access, 16#109B# => Group_00E0'Access,
         16#109C# => Group_00E0'Access, 16#109D# => Group_00E0'Access,
         16#109E# => Group_00E0'Access, 16#109F# => Group_00E0'Access,
         16#10A0# => Group_00E0'Access, 16#10A1# => Group_00E0'Access,
         16#10A2# => Group_00E0'Access, 16#10A3# => Group_00E0'Access,
         16#10A4# => Group_00E0'Access, 16#10A5# => Group_00E0'Access,
         16#10A6# => Group_00E0'Access, 16#10A7# => Group_00E0'Access,
         16#10A8# => Group_00E0'Access, 16#10A9# => Group_00E0'Access,
         16#10AA# => Group_00E0'Access, 16#10AB# => Group_00E0'Access,
         16#10AC# => Group_00E0'Access, 16#10AD# => Group_00E0'Access,
         16#10AE# => Group_00E0'Access, 16#10AF# => Group_00E0'Access,
         16#10B0# => Group_00E0'Access, 16#10B1# => Group_00E0'Access,
         16#10B2# => Group_00E0'Access, 16#10B3# => Group_00E0'Access,
         16#10B4# => Group_00E0'Access, 16#10B5# => Group_00E0'Access,
         16#10B6# => Group_00E0'Access, 16#10B7# => Group_00E0'Access,
         16#10B8# => Group_00E0'Access, 16#10B9# => Group_00E0'Access,
         16#10BA# => Group_00E0'Access, 16#10BB# => Group_00E0'Access,
         16#10BC# => Group_00E0'Access, 16#10BD# => Group_00E0'Access,
         16#10BE# => Group_00E0'Access, 16#10BF# => Group_00E0'Access,
         16#10C0# => Group_00E0'Access, 16#10C1# => Group_00E0'Access,
         16#10C2# => Group_00E0'Access, 16#10C3# => Group_00E0'Access,
         16#10C4# => Group_00E0'Access, 16#10C5# => Group_00E0'Access,
         16#10C6# => Group_00E0'Access, 16#10C7# => Group_00E0'Access,
         16#10C8# => Group_00E0'Access, 16#10C9# => Group_00E0'Access,
         16#10CA# => Group_00E0'Access, 16#10CB# => Group_00E0'Access,
         16#10CC# => Group_00E0'Access, 16#10CD# => Group_00E0'Access,
         16#10CE# => Group_00E0'Access, 16#10CF# => Group_00E0'Access,
         16#10D0# => Group_00E0'Access, 16#10D1# => Group_00E0'Access,
         16#10D2# => Group_00E0'Access, 16#10D3# => Group_00E0'Access,
         16#10D4# => Group_00E0'Access, 16#10D5# => Group_00E0'Access,
         16#10D6# => Group_00E0'Access, 16#10D7# => Group_00E0'Access,
         16#10D8# => Group_00E0'Access, 16#10D9# => Group_00E0'Access,
         16#10DA# => Group_00E0'Access, 16#10DB# => Group_00E0'Access,
         16#10DC# => Group_00E0'Access, 16#10DD# => Group_00E0'Access,
         16#10DE# => Group_00E0'Access, 16#10DF# => Group_00E0'Access,
         16#10E0# => Group_00E0'Access, 16#10E1# => Group_00E0'Access,
         16#10E2# => Group_00E0'Access, 16#10E3# => Group_00E0'Access,
         16#10E4# => Group_00E0'Access, 16#10E5# => Group_00E0'Access,
         16#10E6# => Group_00E0'Access, 16#10E7# => Group_00E0'Access,
         16#10E8# => Group_00E0'Access, 16#10E9# => Group_00E0'Access,
         16#10EA# => Group_00E0'Access, 16#10EB# => Group_00E0'Access,
         16#10EC# => Group_00E0'Access, 16#10ED# => Group_00E0'Access,
         16#10EE# => Group_00E0'Access, 16#10EF# => Group_00E0'Access,
         16#10F0# => Group_00E0'Access, 16#10F1# => Group_00E0'Access,
         16#10F2# => Group_00E0'Access, 16#10F3# => Group_00E0'Access,
         16#10F4# => Group_00E0'Access, 16#10F5# => Group_00E0'Access,
         16#10F6# => Group_00E0'Access, 16#10F7# => Group_00E0'Access,
         16#10F8# => Group_00E0'Access, 16#10F9# => Group_00E0'Access,
         16#10FA# => Group_00E0'Access, 16#10FB# => Group_00E0'Access,
         16#10FC# => Group_00E0'Access, 16#10FD# => Group_00E0'Access,
         16#10FE# => Group_00E0'Access, 16#10FF# => Group_0FFF'Access,
         others   => Group_0105'Access);

end Matreshka.Internals.Unicode.Ucd.Core;
