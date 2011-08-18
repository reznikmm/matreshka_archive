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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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

   -- types --
   type Isc_Database_Handle is new System.Address;
   type Isc_Transaction_Handle is new System.Address;

   Null_Isc_Database_Handle : constant Isc_Database_Handle :=
     Isc_Database_Handle (System.Null_Address);

   Null_Isc_Transaction_Handle : constant Isc_Transaction_Handle :=
     Isc_Transaction_Handle (System.Null_Address);

   subtype Isc_Short  is Interfaces.C.short;
   subtype Isc_Long   is Interfaces.C.long;
   subtype Isc_Status is Isc_Long;

   type Isc_Status_Access is access constant Isc_Status;

   type Isc_Statuses is array (1 .. 20) of aliased Isc_Status;
   pragma Convention (C, Isc_Statuses);

   subtype Isc_String is Interfaces.C.char_array;

   type Isc_Teb is record
      Db_Handle  : access Isc_Database_Handle := null;
      Tpb_Length :        Isc_Long            := 0;
      Tpb        : access Isc_String          := null;
   end record;
   pragma Convention (C, Isc_Teb);

   type Isc_Tebs is array (Integer range <>) of Isc_Teb;
   pragma Convention (C, Isc_Tebs);

   -- constants --

   subtype Isc_Info_Code is Interfaces.C.char;

   Frb_Info_Att_Charset : constant Isc_Info_Code := Isc_Info_Code'Val (101);

   Isc_Info_Firebird_Version : constant Isc_Info_Code :=
     Isc_Info_Code'Val (103);

   Isc_Info_Version : constant Isc_Info_Code := Isc_Info_Code'Val (12);

   Buffer_Length : constant := 512;

   Huge_Buffer_Length : constant := Buffer_Length * 20;

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
   Isc_Dpb_Dummy_Packet_Interval : constant Isc_Dpb_Code :=
     Isc_Dpb_Code'Val (58);

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

   -- methods --

   function Isc_Attach_Database
     (Status         : access Isc_Statuses;
      Db_Name_Length :        Isc_Short;
      Db_Name        :        Isc_String;
      Db_Handle      : access Isc_Database_Handle;
      Parms_Length   :        Isc_Short;
      Parms          :        Isc_String)
      return Isc_Status;

   function Isc_Detach_Database
     (Status : access Isc_Statuses;
      Handle : access Isc_Database_Handle)
      return Isc_Status;

   function Get_Error
     (Status : access Isc_Statuses)
      return League.Strings.Universal_String;

   function To_Universal_String
     (Buffer : access Isc_String;
      From   : Interfaces.C.size_t;
      Last   : Interfaces.C.size_t)
      return League.Strings.Universal_String;

   function Isc_Sqlcode (Status : Isc_Statuses) return Isc_Long;

   procedure Isc_Sql_Interprete
     (Sqlcode       :        Isc_Short;
      Buffer        : access Isc_String;
      Buffer_Length :        Isc_Short);

   function Isc_Interprete
     (Buffer : access Isc_String;
      Status : access Isc_Status_Access)
      return Isc_Status;

   function Isc_Commit_Retaining
     (Status : access Isc_Statuses;
      Handle : access Isc_Transaction_Handle)
      return Isc_Status;

   function Isc_Start_Multiple
     (Status     : access Isc_Statuses;
      Handle     : access Isc_Transaction_Handle;
      Tebs_Count :        Isc_Short;
      Teb        : access Isc_Tebs)
      return Isc_Status;

   function Isc_Rollback_Transaction
     (Status : access Isc_Statuses;
      Handle : access Isc_Transaction_Handle)
      return Isc_Status;

private

   pragma Linker_Options ("-lfbclient");

   pragma Import (Stdcall, Isc_Attach_Database, "isc_attach_database");
   pragma Import (Stdcall, Isc_Detach_Database, "isc_detach_database");
   pragma Import (Stdcall, Isc_Sqlcode, "isc_sqlcode");
   pragma Import (Stdcall, Isc_Sql_Interprete, "isc_sql_interprete");
   pragma Import (Stdcall, Isc_Interprete, "isc_interprete");
   pragma Import (Stdcall, Isc_Commit_Retaining, "isc_commit_retaining");
   pragma Import (Stdcall, Isc_Start_Multiple, "isc_start_multiple");
   pragma Import (Stdcall, Isc_Rollback_Transaction, "isc_rollback_transaction");

end Matreshka.Internals.SQL_Drivers.Firebird;
