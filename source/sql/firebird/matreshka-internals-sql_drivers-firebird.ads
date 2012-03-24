------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  $Revision: $ $Date: $
------------------------------------------------------------------------------
--  This package is low level bindings to Firebird library.
------------------------------------------------------------------------------
with System;
with Interfaces.C;

package Matreshka.Internals.SQL_Drivers.Firebird is

   -----------
   -- Types --
   -----------

   type Isc_Database_Handle is new System.Address;
   type Isc_Database_Handle_Access is access constant Isc_Database_Handle;
   pragma Convention (C, Isc_Database_Handle_Access);

   Null_Isc_Database_Handle : constant Isc_Database_Handle
     := Isc_Database_Handle (System.Null_Address);

   type Isc_Transaction_Handle is new System.Address;
   type Isc_Transaction_Handle_Access is
     access constant Isc_Transaction_Handle;
   pragma Convention (C, Isc_Transaction_Handle_Access);

   Null_Isc_Transaction_Handle : constant Isc_Transaction_Handle
     := Isc_Transaction_Handle (System.Null_Address);

   type Isc_Stmt_Handle is new System.Address;

   Null_Isc_Stmt_Handle : constant Isc_Stmt_Handle
     := Isc_Stmt_Handle (System.Null_Address);

   subtype Isc_Address is System.Address;
   Zero : constant Isc_Address := System.Null_Address;

   subtype Isc_Short is Interfaces.C.short;

   type Isc_Short_Access is access all Isc_Short;
   pragma Convention (C, Isc_Short_Access);

   subtype Isc_Ushort is Interfaces.Unsigned_16;

   subtype Isc_Long is Interfaces.C.long;

   type Isc_Result_Code is new Isc_Long;

   type Isc_Results is array (1 .. 20) of aliased Isc_Result_Code;
   pragma Convention (C, Isc_Results);

   type Isc_Result_Codes is array (Positive range <>) of Isc_Result_Code;

   type Isc_Results_Access is access constant Isc_Result_Code;
   pragma Convention (C, Isc_Results_Access);

   subtype Isc_String is Interfaces.C.char_array;
   type Isc_String_Access is access all Isc_String;

   type Isc_Teb is record
      Db_Handle  : access Isc_Database_Handle := null;
      Tpb_Length : Isc_Long                   := 0;
      Tpb        : access Isc_String          := null;
   end record;
   pragma Convention (C, Isc_Teb);

   type Isc_Tebs is array (Integer range <>) of Isc_Teb;
   pragma Convention (C, Isc_Tebs);

   subtype Isc_Db_Dialect is Interfaces.Unsigned_16 range 1 .. 3;

   Isc_Sqlda_Current_Version : constant := 1;
   Current_Metanames_Length  : constant := 32;

   type Isc_Field_Index is new Isc_Short range 0 .. Isc_Short'Last;
   subtype Isc_Valid_Field_Index is Isc_Field_Index
     range 1 .. Isc_Field_Index'Last;

   --  for allow XSQLVAR:sqltype bits manipulation
   subtype Isc_Num_Bits is Natural range 0 .. 15;

   type Isc_Sqltype is array (Isc_Num_Bits) of Boolean;
   pragma Pack (Isc_Sqltype);
   for Isc_Sqltype'Size use 16;

   Isc_Sqlind_Flag : constant Isc_Num_Bits := 0;

   Isc_Type_Text : constant Isc_Sqltype
     := (False, False, True, False, False, False, True, True, True,
         others => False); --  452; 111000100

   Isc_Type_Varying : constant Isc_Sqltype
     := (False, False, False, False, False, False, True, True, True,
         others => False); --  448; 111000000

   Isc_Type_Short : constant Isc_Sqltype
     := (False, False, True, False, True, True, True, True, True,
         others => False); --  500; 111110100

   Isc_Type_Long : constant Isc_Sqltype
     := (False, False, False, False, True, True, True, True, True,
         others => False); --  496; 111110000

   Isc_Type_Float : constant Isc_Sqltype
     := (False, True, False, False, False, True, True, True, True,
         others => False); --  482; 111100010

   Isc_Type_Double : constant Isc_Sqltype
     := (False, False, False, False, False, True, True, True, True,
         others => False); --  480; 111100000

   Isc_Type_D_Float : constant Isc_Sqltype
     := (False, True,  False, False, True, False, False, False, False, True,
         others => False); --  530; 1000010010

   Isc_Type_Timestamp : constant Isc_Sqltype
     := (False, True, True, True, True, True, True, True, True,
         others => False); --  510; 111111110

   Isc_Type_Blob : constant Isc_Sqltype
     := (False, False, False, True, False, False, False, False, False, True,
         others => False); --  520; 1000001000

   Isc_Type_Array : constant Isc_Sqltype
     := (False, False, True, True, True, False, False, False, False, True,
         others => False); --  540; 1000011100

   Isc_Type_Quad : constant Isc_Sqltype
     := (False, True, True, False, False, True, False, False, False, True,
         others => False); --  550; 1000100110

   Isc_Type_Time : constant Isc_Sqltype
     := (False, False, False, False, True, True, False, False, False, True,
         others => False); --  560; 1000110000

   Isc_Type_Date : constant Isc_Sqltype
     := (False, True, False, True, True, True, False, False, False, True,
         others => False); --  570; 1000111010

   Isc_Type_Int64 : constant Isc_Sqltype
     := (False, False, True, False, False, False, True, False, False, True,
         others => False); --  580; 1001000100

   Isc_Type_Boolean : constant Isc_Sqltype
     := (False, True, True, True, False, False, True, False, False, True,
         others => False); --  590; 1001001110

   Isc_Type_Empty  : constant Isc_Sqltype := (others => False);       --  0;
   Isc_Type_Empty1 : constant Isc_Sqltype := (True, others => False); --  1;
   Isc_Type_Min    : constant Isc_Sqltype
     := (False, False, False, False, False, False, False, False, False,
         False, False, False, False, False, False, True); --  -1;

   Empty_Metanames_String : constant Isc_String (1 .. Current_Metanames_Length)
     := (others => Interfaces.C.nul);

   type Isc_Sqlvar is record
      Sqltype    : Isc_Sqltype      := Isc_Type_Empty; --  datatype of field
      Sqlscale   : Isc_Short        := 0;    --  scale factor
      Sqlsubtype : Isc_Short        := 0;    -- BLOBs & Text types only
      Sqllen     : Isc_Short        := 0;    -- length of data area
      Sqldata    : Isc_Address      := Zero; -- address of data
      Sqlind     : Isc_Short_Access := null; -- address of indicator variable

      Sqlname_Length : Isc_Short := 0; -- length of sqlname field
      --  name of field, name length + space for NULL
      Sqlname : Isc_String (1 .. Current_Metanames_Length) :=
        Empty_Metanames_String;

      Relname_Length : Isc_Short := 0; -- length of relation name
      --  field's relation name + space for NULL
      Relname : Isc_String (1 .. Current_Metanames_Length) :=
        Empty_Metanames_String;

      Ownname_Length : Isc_Short := 0; -- length of owner name
      --  relation's owner name + space for NULL
      Ownname : Isc_String (1 .. Current_Metanames_Length) :=
        Empty_Metanames_String;

      Aliasname_Length : Isc_Short := 0; -- length of alias name
      --  relation's alias name + space for NULL
      Aliasname : Isc_String (1 .. Current_Metanames_Length) :=
        Empty_Metanames_String;
   end record;
   pragma Convention (C, Isc_Sqlvar);

   type Isc_Sqlvars is array (Isc_Valid_Field_Index) of aliased Isc_Sqlvar;
   pragma Convention (C, Isc_Sqlvars);
   pragma Suppress (Index_Check, Isc_Sqlvars);

   type Isc_Sqlda is record
      -- version of this XSQLDA
      Version : Isc_Short := Isc_Sqlda_Current_Version;

      --  XSQLDA name field
      Sqldaid : Isc_String (1 .. 8) := (others => Interfaces.C.nul);

      Sqldabc : Isc_Long        := 0; -- length in bytes of SQLDA
      Sqln    : Isc_Field_Index := 1; -- number of fields allocated
      Sqld    : Isc_Field_Index := 0; -- used number of fields
      Sqlvar  : Isc_Sqlvars; -- first field of 1..n array of fields
   end record;
   pragma Convention (C, Isc_Sqlda);

   -- Constants --

   Buffer_Length : constant := 512;

   Huge_Buffer_Length : constant := Buffer_Length * 20;

   Isc_True : constant := 1;

   -- Database parameter block stuff --

   subtype Isc_Dpb_Code is Interfaces.C.char;

   Isc_Dpb_Version1           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (1);
   Isc_Dpb_Cdd_Pathname       : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (1);
   Isc_Dpb_Allocation         : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (2);
   Isc_Dpb_Journal            : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (3);
   Isc_Dpb_Page_Size          : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (4);
   Isc_Dpb_Num_Buffers        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (5);
   Isc_Dpb_Buffer_Length      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (6);
   Isc_Dpb_Debug              : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (7);
   Isc_Dpb_Garbage_Collect    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (8);
   Isc_Dpb_Verify             : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (9);
   Isc_Dpb_Sweep              : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (10);
   Isc_Dpb_Enable_Journal     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (11);
   Isc_Dpb_Disable_Journal    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (12);
   Isc_Dpb_Dbkey_Scope        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (13);
   Isc_Dpb_Number_Of_Users    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (14);
   Isc_Dpb_Trace              : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (15);
   Isc_Dpb_No_Garbage_Collect : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (16);
   Isc_Dpb_Damaged            : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (17);
   Isc_Dpb_License            : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (18);
   Isc_Dpb_Sys_User_Name      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (19);
   Isc_Dpb_Encrypt_Key        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (20);
   Isc_Dpb_Activate_Shadow    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (21);
   Isc_Dpb_Sweep_Interval     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (22);
   Isc_Dpb_Delete_Shadow      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (23);
   Isc_Dpb_Force_Write        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (24);
   Isc_Dpb_Begin_Log          : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (25);
   Isc_Dpb_Quit_Log           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (26);
   Isc_Dpb_No_Reserve         : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (27);
   Isc_Dpb_User_Name          : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (28);
   Isc_Dpb_Password           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (29);
   Isc_Dpb_Password_Enc       : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (30);
   Isc_Dpb_Sys_User_Name_Enc  : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (31);
   Isc_Dpb_Interp             : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (32);
   Isc_Dpb_Online_Dump        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (33);
   Isc_Dpb_Old_File_Size      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (34);
   Isc_Dpb_Old_Num_Files      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (35);
   Isc_Dpb_Old_File           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (36);
   Isc_Dpb_Old_Start_Page     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (37);
   Isc_Dpb_Old_Start_Seqno    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (38);
   Isc_Dpb_Old_Start_File     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (39);
   Isc_Dpb_Drop_Walfile       : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (40);
   Isc_Dpb_Old_Dump_Id        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (41);
   Isc_Dpb_Wal_Backup_Dir     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (42);
   Isc_Dpb_Wal_Chkptlen       : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (43);
   Isc_Dpb_Wal_Numbufs        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (44);
   Isc_Dpb_Wal_Bufsize        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (45);
   Isc_Dpb_Wal_Grp_Cmt_Wait   : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (46);
   Isc_Dpb_Lc_Messages        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (47);
   Isc_Dpb_Lc_Ctype           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (48);
   Isc_Dpb_Cache_Manager      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (49);
   Isc_Dpb_Shutdown           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (50);
   Isc_Dpb_Online             : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (51);
   Isc_Dpb_Shutdown_Delay     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (52);
   Isc_Dpb_Reserved           : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (53);
   Isc_Dpb_Overwrite          : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (54);
   Isc_Dpb_Sec_Attach         : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (55);
   Isc_Dpb_Disable_Wal        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (56);
   Isc_Dpb_Connect_Timeout    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (57);
   Isc_Dpb_Dummy_Packet_Interval : constant Isc_Dpb_Code
     := Isc_Dpb_Code'Val (58);

   Isc_Dpb_Gbak_Attach        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (59);
   Isc_Dpb_Sql_Role_Name      : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (60);

   Isc_Dpb_Set_Page_Buffers   : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (61);
   Isc_Dpb_Working_Directory  : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (62);
   Isc_Dpb_Sql_Dialect        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (63);
   Isc_Dpb_Set_Db_Readonly    : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (64);
   Isc_Dpb_Set_Db_Sql_Dialect : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (65);
   Isc_Dpb_Gfix_Attach        : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (66);
   Isc_Dpb_Gstat_Attach       : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (67);
   Isc_Dpb_Set_Db_Charset     : constant Isc_Dpb_Code := Isc_Dpb_Code'Val (68);

   -- Isc_DPB_Verify specific flags --

   subtype Isc_Dpb_Vcode is Interfaces.C.char;

   Isc_Dpb_Pages         : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (1);
   Isc_Dpb_Records       : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (2);
   Isc_Dpb_Indices       : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (4);
   Isc_Dpb_Transactions  : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (8);
   Isc_Dpb_No_Update     : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (16);
   Isc_Dpb_Repair        : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (32);
   Isc_DPB_Ignore        : constant Isc_Dpb_Vcode := Isc_Dpb_Vcode'Val (64);

   -- Transaction parameter block stuff --

   subtype Isc_Tpb_Code is Interfaces.C.char;

   Isc_Tpb_Version1         : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (1);
   Isc_Tpb_Version3         : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (3);
   Isc_Tpb_Consistency      : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (1);
   Isc_Tpb_Concurrency      : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (2);
   Isc_Tpb_Shared           : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (3);
   Isc_Tpb_Protected        : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (4);
   Isc_Tpb_Exclusive        : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (5);
   Isc_Tpb_Wait             : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (6);
   Isc_Tpb_Nowait           : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (7);
   Isc_Tpb_Read             : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (8);
   Isc_Tpb_Write            : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (9);
   Isc_Tpb_Lock_Read        : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (10);
   Isc_Tpb_Lock_Write       : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (11);
   Isc_Tpb_Verb_Time        : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (12);
   Isc_Tpb_Commit_Time      : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (13);
   Isc_Tpb_Ignore_Limbo     : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (14);
   Isc_Tpb_Read_Committed   : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (15);
   Isc_Tpb_Autocommit       : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (16);
   Isc_Tpb_Rec_Version      : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (17);
   Isc_Tpb_No_Rec_Version   : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (18);
   Isc_Tpb_Restart_Requests : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (19);
   Isc_Tpb_No_Auto_Undo     : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (20);
   Isc_Tpb_No_Savepoint     : constant Isc_Tpb_Code := Isc_Tpb_Code'Val (21);
   --  IB 7.5

   Isc_Tpb_Last_Code        : constant Isc_Tpb_Code := Isc_Tpb_No_Savepoint;

   type Isc_Stmt_Free_Code is new Isc_Short;
   pragma Convention (C, Isc_Stmt_Free_Code);

   Isc_Sql_Close : constant Isc_Stmt_Free_Code := 1;
   Isc_Sql_Drop  : constant Isc_Stmt_Free_Code := 2;

   type Isc_Character_Set is
    (UNKNOWN,    NONE,        OCTETS,
     ASCII,      UNICODE_FSS, SJIS_0208,
     EUCJ_0208,  DOS737,      DOS437,
     DOS850,     DOS865,      DOS860,
     DOS863,     DOS775,      DOS858,
     DOS862,     DOS864,      NEXT,
     ISO8859_1,  ISO8859_2,   ISO8859_3,
     ISO8859_4,  ISO8859_5,   ISO8859_6,
     ISO8859_7,  ISO8859_8,   ISO8859_9,
     ISO8859_13, KSC_5601,    DOS852,
     DOS857,     DOS861,      DOS866,
     DOS869,     CYRL,        WIN1250,
     WIN1251,    WIN1252,     WIN1253,
     WIN1254,    BIG_5,       GB_2312,
     WIN1255,    WIN1256,     WIN1257,
     UFT8);

   Isc_Charsets_Count : constant Isc_Short := 60;

   type Isc_Character_Sets is
     array (0 .. Isc_Charsets_Count) of Isc_Character_Set;

   Character_Set : constant Isc_Character_Sets :=
    (NONE,        OCTETS,     ASCII,
     UNICODE_FSS, UFT8,       SJIS_0208,
     EUCJ_0208,   UNKNOWN,    UNKNOWN,
     DOS737,      DOS437,     DOS850,
     DOS865,      DOS860,     DOS863,
     DOS775,      DOS858,     DOS862,
     DOS864,      NEXT,       UNKNOWN,
     ISO8859_1,   ISO8859_2,  ISO8859_3,
     UNKNOWN,     UNKNOWN,    UNKNOWN,
     UNKNOWN,     UNKNOWN,    UNKNOWN,
     UNKNOWN,     UNKNOWN,    UNKNOWN,
     UNKNOWN,     ISO8859_4,  ISO8859_5,
     ISO8859_6,   ISO8859_7,  ISO8859_8,
     ISO8859_9,   ISO8859_13, UNKNOWN,
     UNKNOWN,     UNKNOWN,    KSC_5601,
     DOS852,      DOS857,     DOS861,
     DOS866,      DOS869,     CYRL,
     WIN1250,     WIN1251,    WIN1252,
     WIN1253,     WIN1254,    BIG_5,
     GB_2312,     WIN1255,    WIN1256,
     WIN1257);

   -- Error codes --

   Isc_Dsql_Cursor_Err       : constant Isc_Result_Code := 335544572;
   Isc_Bad_Stmt_Handle       : constant Isc_Result_Code := 335544485;
   Isc_Dsql_Cursor_Close_Err : constant Isc_Result_Code := 335544577;

   -- Info --
   subtype Isc_Info_Request is Interfaces.C.char;

   Isc_Info_Sql_Stmt_Type : constant Isc_Info_Request :=
     Isc_Info_Request'Val (21);

   Frb_Info_Att_Charset : constant Isc_Info_Request :=
     Isc_Info_Request'Val (101);

   -- methods --

   function Isc_Attach_Database
    (Status         : access Isc_Results;
     Db_Name_Length : Isc_Short;
     Db_Name        : Isc_String;
     Db_Handle      : access Isc_Database_Handle;
     Parms_Length   : Isc_Short;
     Parms          : Isc_String) return Isc_Result_Code;

   function Isc_Detach_Database
    (Status : access Isc_Results;
     Handle : access Isc_Database_Handle) return Isc_Result_Code;

   function Isc_Sqlcode (Status : Isc_Results) return Isc_Long;

   procedure Isc_Sql_Interprete
    (Sqlcode       : Isc_Short;
     Buffer        : access Isc_String;
     Buffer_Length : Isc_Short);

   function Isc_Interprete
    (Buffer : access Isc_String;
     Status : access Isc_Results_Access) return Isc_Result_Code;

   function Isc_Commit_Retaining
    (Status : access Isc_Results;
     Handle : access Isc_Transaction_Handle) return Isc_Result_Code;

   function Isc_Start_Multiple
    (Status     : access Isc_Results;
     Handle     : access Isc_Transaction_Handle;
     Tebs_Count : Isc_Short;
     Teb        : access Isc_Tebs) return Isc_Result_Code;

   function Isc_Rollback_Transaction
    (Status : access Isc_Results;
     Handle : access Isc_Transaction_Handle) return Isc_Result_Code;

   function Isc_Dsql_Fetch
    (Status  : access Isc_Results;
     Handle  : access Isc_Stmt_Handle;
     Version : Isc_Db_Dialect;
     Sqlda   : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Dsql_Free_Statement
    (Status : access Isc_Results;
     Handle : access Isc_Stmt_Handle;
     Code   : Isc_Stmt_Free_Code) return Isc_Result_Code;

   function Isc_Dsql_Alloc_Statement2
    (Status : access Isc_Results;
     Db     : Isc_Database_Handle_Access;
     Stmt   : access Isc_Stmt_Handle) return Isc_Result_Code;

   function Isc_Dsql_Prepare
    (Status    : access Isc_Results;
     Tr        : Isc_Transaction_Handle_Access;
     Stmt      : access Isc_Stmt_Handle;
     Length    : Isc_Ushort;
     Statement : Isc_String;
     Dialect   : Isc_Ushort;
     Xsqlda    : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Dsql_Sql_Info
    (Status        : access Isc_Results;
     Stmt          : access Isc_Stmt_Handle;
     Items_Length  : Isc_Short;
     Items         : Isc_String;
     Buffer_Length : Isc_Short;
     Buffer        : access Isc_String) return Isc_Result_Code;

   function Isc_Vax_Integer
    (Buffer : Isc_String;
     Length : Isc_Short) return Isc_Long;

   function Isc_Dsql_Set_Cursor_Name
    (Status : access Isc_Results;
     Stmt   : access Isc_Stmt_Handle;
     Name   : Isc_String;
     Itype  : Isc_Ushort) return Isc_Result_Code;

   function Isc_Dsql_Describe_Bind
    (Status  : access Isc_Results;
     Stmt    : access Isc_Stmt_Handle;
     Version : Isc_Ushort;
     Params  : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Dsql_Describe
    (Status  : access Isc_Results;
     Stmt    : access Isc_Stmt_Handle;
     Version : Isc_Ushort;
     Rec     : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Dsql_Execute_Immediate
    (Status    : access Isc_Results;
     Db        : Isc_Database_Handle_Access;
     Tr        : Isc_Transaction_Handle_Access;
     Length    : Isc_Short;
     Statement : Isc_String;
     Version   : Isc_Ushort;
     Params    : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Dsql_Execute
    (Status  : access Isc_Results;
     Tr      : Isc_Transaction_Handle_Access;
     Stmt    : access Isc_Stmt_Handle;
     Version : Isc_Ushort;
     Params  : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Dsql_Execute2
    (Status  : access Isc_Results;
     Tr      : Isc_Transaction_Handle_Access;
     Stmt    : access Isc_Stmt_Handle;
     Version : Isc_Ushort;
     Params  : access Isc_Sqlda;
     Fields  : access Isc_Sqlda) return Isc_Result_Code;

   function Isc_Database_Info
    (Status     : access Isc_Results;
     Handle     : access Isc_Database_Handle;
     Length     : Isc_Short;
     Items      : Isc_String;
     Buf_Length : Isc_Short;
     Buf        : access Isc_String) return Isc_Result_Code;

   -----------
   -- Utils --
   -----------

   function Get_Error
    (Status : access Isc_Results) return League.Strings.Universal_String;

   function Check_For_Error
    (Status : access Isc_Results;
     Codes  : Isc_Result_Codes) return Boolean;

   function To_Isc_String
    (Item : League.Strings.Universal_String)
     return Isc_String;

   function Is_Datetime_Type (Sql_Type : Isc_Sqltype) return Boolean;
   function Is_Numeric_Type (Sql_Type : Isc_Sqltype) return Boolean;

   -------------------------
   -- Time & Date Support --
   -------------------------

   type Isc_Date is new Isc_Long;

   type Isc_Time is new Interfaces.Unsigned_32;

   type Isc_Timestamp is record
      Timestamp_Date : Isc_Date;
      Timestamp_Time : Isc_Time;
   end record;
   pragma Convention (C, Isc_Timestamp);

   Isc_Time_Seconds_Precision_Scale : constant := 4;
   MSecs_Per_Sec : constant := 10**Isc_Time_Seconds_Precision_Scale;

   -- C_Time --

   type C_Time is record
      Tm_Sec    : Interfaces.C.int := 0;
      Tm_Min    : Interfaces.C.int := 0;
      Tm_Hour   : Interfaces.C.int := 0;
      Tm_Mday   : Interfaces.C.int := 0;
      Tm_Mon    : Interfaces.C.int := 0;
      Tm_Year   : Interfaces.C.int := 0;
      Tm_Wday   : Interfaces.C.int := 0;
      Tm_Yday   : Interfaces.C.int := 0;
      Tm_Isdst  : Interfaces.C.int := 0;
      Tm_Gmtoff : Interfaces.C.int := 0;
      Tm_Zone   : System.Address := System.Null_Address;
   end record;
   pragma Convention (C, C_Time);

   procedure Isc_Encode_Sql_Time
    (C_Date  : access C_Time;
     Ib_Date : access Isc_Time);

   procedure Isc_Encode_Sql_Date
    (C_Date  : access C_Time;
     Ib_Date : access Isc_Date);

   procedure Isc_Encode_Timestamp
    (C_Date  : access C_Time;
     Ib_Date : access Isc_Timestamp);

   procedure Isc_Decode_Timestamp
    (Ib_Date : access Isc_Timestamp;
     C_Date  : access C_Time);

   procedure Isc_Decode_Sql_Date
    (Ib_Date : access Isc_Date;
     C_Date  : access C_Time);

   procedure Isc_Decode_Sql_Time
    (Ib_Date : access Isc_Time;
     C_Date  : access C_Time);

private

   pragma Import (Stdcall, Isc_Attach_Database, "isc_attach_database");
   pragma Import (Stdcall, Isc_Detach_Database, "isc_detach_database");
   pragma Import (Stdcall, Isc_Sqlcode, "isc_sqlcode");
   pragma Import (Stdcall, Isc_Sql_Interprete, "isc_sql_interprete");
   pragma Import (Stdcall, Isc_Interprete, "isc_interprete");
   pragma Import (Stdcall, Isc_Commit_Retaining, "isc_commit_retaining");
   pragma Import (Stdcall, Isc_Start_Multiple, "isc_start_multiple");
   pragma Import (Stdcall, Isc_Dsql_Fetch, "isc_dsql_fetch");
   pragma Import
           (Stdcall, Isc_Dsql_Free_Statement, "isc_dsql_free_statement");
   pragma Import (Stdcall, Isc_Dsql_Prepare, "isc_dsql_prepare");
   pragma Import (Stdcall, Isc_Dsql_Sql_Info, "isc_dsql_sql_info");
   pragma Import (Stdcall, Isc_Vax_Integer, "isc_vax_integer");
   pragma Import (Stdcall, Isc_Dsql_Describe_Bind, "isc_dsql_describe_bind");
   pragma Import (Stdcall, Isc_Dsql_Describe, "isc_dsql_describe");
   pragma Import (Stdcall, Isc_Dsql_Execute, "isc_dsql_execute");
   pragma Import (Stdcall, Isc_Dsql_Execute2, "isc_dsql_execute2");
   pragma Import (Stdcall, Isc_Encode_Sql_Time, "isc_encode_sql_time");
   pragma Import (Stdcall, Isc_Encode_Timestamp, "isc_encode_timestamp");
   pragma Import (Stdcall, Isc_Encode_Sql_Date, "isc_encode_sql_date");
   pragma Import (Stdcall, Isc_Decode_Timestamp, "isc_decode_timestamp");
   pragma Import (Stdcall, Isc_Decode_Sql_Date, "isc_decode_sql_date");
   pragma Import (Stdcall, Isc_Decode_Sql_Time, "isc_decode_sql_time");
   pragma Import (Stdcall, Isc_Database_Info, "isc_database_info");
   pragma Import
           (Stdcall, Isc_Rollback_Transaction, "isc_rollback_transaction");
   pragma Import
           (Stdcall, Isc_Dsql_Alloc_Statement2, "isc_dsql_alloc_statement2");
   pragma Import
           (Stdcall, Isc_Dsql_Set_Cursor_Name, "isc_dsql_set_cursor_name");
   pragma Import
           (Stdcall,
            Isc_Dsql_Execute_Immediate,
            "isc_dsql_execute_immediate");

end Matreshka.Internals.SQL_Drivers.Firebird;
