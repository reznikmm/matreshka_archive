------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.CMOF;
with AMF.Internals.Tables.CMOF_Attributes;
with AMF.Internals.Tables.DI_String_Data_00;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.DI_Metamodel.Properties is

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Initialize_1;
      Initialize_2;
      Initialize_3;
      Initialize_4;
      Initialize_5;
      Initialize_6;
      Initialize_7;
      Initialize_8;
      Initialize_9;
      Initialize_10;
      Initialize_11;
      Initialize_12;
      Initialize_13;
      Initialize_14;
      Initialize_15;
      Initialize_16;
      Initialize_17;
      Initialize_18;
      Initialize_19;
      Initialize_20;
      Initialize_21;
      Initialize_22;
      Initialize_23;
      Initialize_24;
      Initialize_25;
      Initialize_26;
      Initialize_27;
      Initialize_28;
      Initialize_29;
      Initialize_30;
      Initialize_31;
      Initialize_32;
      Initialize_33;
      Initialize_34;
      Initialize_35;
      Initialize_36;
      Initialize_37;
      Initialize_38;
      Initialize_39;
      Initialize_40;
      Initialize_41;
      Initialize_42;
      Initialize_43;
      Initialize_44;
      Initialize_45;
      Initialize_46;
      Initialize_47;
      Initialize_48;
      Initialize_49;
      Initialize_50;
      Initialize_51;
      Initialize_52;
      Initialize_53;
   end Initialize;

   ------------------
   -- Initialize_1 --
   ------------------

   procedure Initialize_1 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 1, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 1,
        AMF.Internals.Tables.DI_String_Data_00.MS_0018'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 1, (Is_Empty => True));
   end Initialize_1;

   ------------------
   -- Initialize_2 --
   ------------------

   procedure Initialize_2 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 2, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 2,
        AMF.Internals.Tables.DI_String_Data_00.MS_0004'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 2, (Is_Empty => True));
   end Initialize_2;

   ------------------
   -- Initialize_3 --
   ------------------

   procedure Initialize_3 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 3, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 3,
        AMF.Internals.Tables.DI_String_Data_00.MS_002C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 3, (Is_Empty => True));
   end Initialize_3;

   ------------------
   -- Initialize_4 --
   ------------------

   procedure Initialize_4 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 4, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 4,
        AMF.Internals.Tables.DI_String_Data_00.MS_002B'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 4, (Is_Empty => True));
   end Initialize_4;

   ------------------
   -- Initialize_5 --
   ------------------

   procedure Initialize_5 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Abstract (Base + 5, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 5,
        AMF.Internals.Tables.DI_String_Data_00.MS_0029'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 5, (Is_Empty => True));
   end Initialize_5;

   ------------------
   -- Initialize_6 --
   ------------------

   procedure Initialize_6 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 6, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 6, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 6, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 6, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 6, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 6,
        AMF.Internals.Tables.DI_String_Data_00.MS_0003'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 6, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 6, (False, AMF.CMOF.Public_Visibility));
   end Initialize_6;

   ------------------
   -- Initialize_7 --
   ------------------

   procedure Initialize_7 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 7,
        Matreshka.Internals.Strings.Shared_Empty_String'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 7,
        AMF.Internals.Tables.DI_String_Data_00.MS_0030'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 7, (False, AMF.CMOF.Public_Visibility));
   end Initialize_7;

   ------------------
   -- Initialize_8 --
   ------------------

   procedure Initialize_8 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 8,
        Matreshka.Internals.Strings.Shared_Empty_String'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 8,
        AMF.Internals.Tables.DI_String_Data_00.MS_0015'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 8, (False, AMF.CMOF.Public_Visibility));
   end Initialize_8;

   ------------------
   -- Initialize_9 --
   ------------------

   procedure Initialize_9 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Default
       (Base + 9,
        AMF.Internals.Tables.DI_String_Data_00.MS_0014'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 9,
        AMF.Internals.Tables.DI_String_Data_00.MS_0009'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 9, (False, AMF.CMOF.Public_Visibility));
   end Initialize_9;

   -------------------
   -- Initialize_10 --
   -------------------

   procedure Initialize_10 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Composite (Base + 10, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 10, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 10,
        AMF.Internals.Tables.DI_String_Data_00.MS_0011'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 10, (False, AMF.CMOF.Public_Visibility));
   end Initialize_10;

   -------------------
   -- Initialize_11 --
   -------------------

   procedure Initialize_11 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 11, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 11, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 11, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 11, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 11,
        AMF.Internals.Tables.DI_String_Data_00.MS_0019'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 11, (False, AMF.CMOF.Public_Visibility));
   end Initialize_11;

   -------------------
   -- Initialize_12 --
   -------------------

   procedure Initialize_12 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 12, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 12, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 12, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 12, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 12,
        AMF.Internals.Tables.DI_String_Data_00.MS_0024'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 12, (False, AMF.CMOF.Public_Visibility));
   end Initialize_12;

   -------------------
   -- Initialize_13 --
   -------------------

   procedure Initialize_13 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 13, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 13,
        AMF.Internals.Tables.DI_String_Data_00.MS_000D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 13, (False, AMF.CMOF.Public_Visibility));
   end Initialize_13;

   -------------------
   -- Initialize_14 --
   -------------------

   procedure Initialize_14 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 14, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 14, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 14, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 14,
        AMF.Internals.Tables.DI_String_Data_00.MS_000C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 14, (False, AMF.CMOF.Public_Visibility));
   end Initialize_14;

   -------------------
   -- Initialize_15 --
   -------------------

   procedure Initialize_15 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 15, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 15, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 15, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 15,
        AMF.Internals.Tables.DI_String_Data_00.MS_001C'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 15, (False, AMF.CMOF.Public_Visibility));
   end Initialize_15;

   -------------------
   -- Initialize_16 --
   -------------------

   procedure Initialize_16 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Ordered (Base + 16, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Unique (Base + 16, False);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 16, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 16,
        AMF.Internals.Tables.DI_String_Data_00.MS_0016'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 16, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 16, (False, AMF.CMOF.Public_Visibility));
   end Initialize_16;

   -------------------
   -- Initialize_17 --
   -------------------

   procedure Initialize_17 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 17, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 17,
        AMF.Internals.Tables.DI_String_Data_00.MS_000E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 17, (False, AMF.CMOF.Public_Visibility));
   end Initialize_17;

   -------------------
   -- Initialize_18 --
   -------------------

   procedure Initialize_18 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 18,
        AMF.Internals.Tables.DI_String_Data_00.MS_002A'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 18, (False, AMF.CMOF.Private_Visibility));
   end Initialize_18;

   -------------------
   -- Initialize_19 --
   -------------------

   procedure Initialize_19 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 19,
        AMF.Internals.Tables.DI_String_Data_00.MS_0013'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 19, (False, AMF.CMOF.Private_Visibility));
   end Initialize_19;

   -------------------
   -- Initialize_20 --
   -------------------

   procedure Initialize_20 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 20,
        AMF.Internals.Tables.DI_String_Data_00.MS_0028'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 20, (False, AMF.CMOF.Private_Visibility));
   end Initialize_20;

   -------------------
   -- Initialize_21 --
   -------------------

   procedure Initialize_21 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 21,
        AMF.Internals.Tables.DI_String_Data_00.MS_002D'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 21, (False, AMF.CMOF.Private_Visibility));
   end Initialize_21;

   -------------------
   -- Initialize_22 --
   -------------------

   procedure Initialize_22 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 22,
        AMF.Internals.Tables.DI_String_Data_00.MS_0021'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 22, (False, AMF.CMOF.Private_Visibility));
   end Initialize_22;

   -------------------
   -- Initialize_23 --
   -------------------

   procedure Initialize_23 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 23,
        AMF.Internals.Tables.DI_String_Data_00.MS_0026'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 23, (False, AMF.CMOF.Private_Visibility));
   end Initialize_23;

   -------------------
   -- Initialize_24 --
   -------------------

   procedure Initialize_24 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 24,
        AMF.Internals.Tables.DI_String_Data_00.MS_0017'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Uri
       (Base + 24,
        AMF.Internals.Tables.DI_String_Data_00.MS_0012'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 24, (Is_Empty => True));
   end Initialize_24;

   -------------------
   -- Initialize_25 --
   -------------------

   procedure Initialize_25 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 25,
        AMF.Internals.Tables.DI_String_Data_00.MS_000F'Access);
   end Initialize_25;

   -------------------
   -- Initialize_26 --
   -------------------

   procedure Initialize_26 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 26, AMF.CMOF.Public_Visibility);
   end Initialize_26;

   -------------------
   -- Initialize_27 --
   -------------------

   procedure Initialize_27 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 27, AMF.CMOF.Public_Visibility);
   end Initialize_27;

   -------------------
   -- Initialize_28 --
   -------------------

   procedure Initialize_28 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 28,
        AMF.Internals.Tables.DI_String_Data_00.MS_002F'Access);
   end Initialize_28;

   -------------------
   -- Initialize_29 --
   -------------------

   procedure Initialize_29 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 29,
        AMF.Internals.Tables.DI_String_Data_00.MS_000B'Access);
   end Initialize_29;

   -------------------
   -- Initialize_30 --
   -------------------

   procedure Initialize_30 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 30,
        AMF.Internals.Tables.DI_String_Data_00.MS_0023'Access);
   end Initialize_30;

   -------------------
   -- Initialize_31 --
   -------------------

   procedure Initialize_31 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 31,
        AMF.Internals.Tables.DI_String_Data_00.MS_001A'Access);
   end Initialize_31;

   -------------------
   -- Initialize_32 --
   -------------------

   procedure Initialize_32 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 32,
        AMF.Internals.Tables.DI_String_Data_00.MS_0031'Access);
   end Initialize_32;

   -------------------
   -- Initialize_33 --
   -------------------

   procedure Initialize_33 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 33,
        AMF.Internals.Tables.DI_String_Data_00.MS_0034'Access);
   end Initialize_33;

   -------------------
   -- Initialize_34 --
   -------------------

   procedure Initialize_34 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 34,
        AMF.Internals.Tables.DI_String_Data_00.MS_001E'Access);
   end Initialize_34;

   -------------------
   -- Initialize_35 --
   -------------------

   procedure Initialize_35 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 35,
        AMF.Internals.Tables.DI_String_Data_00.MS_0000'Access);
   end Initialize_35;

   -------------------
   -- Initialize_36 --
   -------------------

   procedure Initialize_36 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 36,
        AMF.Internals.Tables.DI_String_Data_00.MS_0025'Access);
   end Initialize_36;

   -------------------
   -- Initialize_37 --
   -------------------

   procedure Initialize_37 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 37,
        AMF.Internals.Tables.DI_String_Data_00.MS_0032'Access);
   end Initialize_37;

   -------------------
   -- Initialize_38 --
   -------------------

   procedure Initialize_38 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 38,
        AMF.Internals.Tables.DI_String_Data_00.MS_001D'Access);
   end Initialize_38;

   -------------------
   -- Initialize_39 --
   -------------------

   procedure Initialize_39 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 39,
        AMF.Internals.Tables.DI_String_Data_00.MS_001B'Access);
   end Initialize_39;

   -------------------
   -- Initialize_40 --
   -------------------

   procedure Initialize_40 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 40,
        AMF.Internals.Tables.DI_String_Data_00.MS_000A'Access);
   end Initialize_40;

   -------------------
   -- Initialize_41 --
   -------------------

   procedure Initialize_41 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 41,
        AMF.Internals.Tables.DI_String_Data_00.MS_0020'Access);
   end Initialize_41;

   -------------------
   -- Initialize_42 --
   -------------------

   procedure Initialize_42 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 42,
        AMF.Internals.Tables.DI_String_Data_00.MS_0022'Access);
   end Initialize_42;

   -------------------
   -- Initialize_43 --
   -------------------

   procedure Initialize_43 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 43,
        AMF.Internals.Tables.DI_String_Data_00.MS_0007'Access);
   end Initialize_43;

   -------------------
   -- Initialize_44 --
   -------------------

   procedure Initialize_44 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 44,
        AMF.Internals.Tables.DI_String_Data_00.MS_0002'Access);
   end Initialize_44;

   -------------------
   -- Initialize_45 --
   -------------------

   procedure Initialize_45 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 45, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 45, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 45, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 45, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 45,
        AMF.Internals.Tables.DI_String_Data_00.MS_002E'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 45, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 45, (False, AMF.CMOF.Public_Visibility));
   end Initialize_45;

   -------------------
   -- Initialize_46 --
   -------------------

   procedure Initialize_46 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 46,
        AMF.Internals.Tables.DI_String_Data_00.MS_0008'Access);
   end Initialize_46;

   -------------------
   -- Initialize_47 --
   -------------------

   procedure Initialize_47 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 47, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 47, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 47, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 47, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 47,
        AMF.Internals.Tables.DI_String_Data_00.MS_0001'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 47, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 47, (False, AMF.CMOF.Public_Visibility));
   end Initialize_47;

   -------------------
   -- Initialize_48 --
   -------------------

   procedure Initialize_48 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Body
       (Base + 48,
        AMF.Internals.Tables.DI_String_Data_00.MS_001F'Access);
   end Initialize_48;

   -------------------
   -- Initialize_49 --
   -------------------

   procedure Initialize_49 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Derived_Union (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Is_Read_Only (Base + 49, True);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 49, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 49,
        AMF.Internals.Tables.DI_String_Data_00.MS_0033'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 49, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 49, (False, AMF.CMOF.Public_Visibility));
   end Initialize_49;

   -------------------
   -- Initialize_50 --
   -------------------

   procedure Initialize_50 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 50, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 50,
        AMF.Internals.Tables.DI_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Upper (Base + 50, (False, (Unlimited => True)));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 50, (False, AMF.CMOF.Public_Visibility));
   end Initialize_50;

   -------------------
   -- Initialize_51 --
   -------------------

   procedure Initialize_51 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Lower (Base + 51, (False, 0));
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 51,
        AMF.Internals.Tables.DI_String_Data_00.MS_0006'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Visibility (Base + 51, (False, AMF.CMOF.Public_Visibility));
   end Initialize_51;

   -------------------
   -- Initialize_52 --
   -------------------

   procedure Initialize_52 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 52,
        AMF.Internals.Tables.DI_String_Data_00.MS_0027'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 52,
        AMF.Internals.Tables.DI_String_Data_00.MS_0005'Access);
   end Initialize_52;

   -------------------
   -- Initialize_53 --
   -------------------

   procedure Initialize_53 is
   begin
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Name
       (Base + 53,
        AMF.Internals.Tables.DI_String_Data_00.MS_0010'Access);
      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_Value
       (Base + 53,
        AMF.Internals.Tables.DI_String_Data_00.MS_0012'Access);
   end Initialize_53;

end AMF.Internals.Tables.DI_Metamodel.Properties;
