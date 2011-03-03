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
-- Copyright © 2011, Maxim Reznik <reznikmm@gmail.com>                      --
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

with System;
with Interfaces.C;        use Interfaces;

with Matreshka.Internals.Utf16;

package Matreshka.Internals.SQL_Drivers.OCI is

   subtype Address is System.Address;
   Null_Address : constant Address := System.Null_Address;

   subtype Size_T is C.size_t;

   subtype Sword is C.int;
   subtype Ub4 is Unsigned_32;
   subtype Ub2 is Unsigned_16;
   subtype Ub1 is Unsigned_8;
   subtype Sb1 is Integer_8;
   subtype Sb2 is C.Short;

   subtype Ora_Text is C.char_array;

   type Ub4_Ptr is access all Ub4;

   type Error_Code is new Sword;

   Call_Success           : constant Error_Code := 0;
   Call_Success_With_Info : constant Error_Code := 1;
   Call_Need_Data         : constant Error_Code := 99;
   Call_No_Data           : constant Error_Code := 100;
   Call_Error             : constant Error_Code := -1;
   Call_Invalid_Handle    : constant Error_Code := -2;
   Call_Still_Executing   : constant Error_Code := -3123;
   Call_Continue          : constant Error_Code := -24200;

   type Handle_Type is new Ub4;

   HT_Environment : constant Handle_Type := 1;
   HT_Error       : constant Handle_Type := 2;
   HT_Service     : constant Handle_Type := 3;
   HT_Statament   : constant Handle_Type := 4;
   DT_Parameter   : constant Handle_Type := 53;
   DT_Time_LTZ    : constant Handle_Type := 70;

   type Data_Type is new Ub2;

   SQLT_CHR      : constant Data_Type := 1;
   SQLT_NUM      : constant Data_Type := 2;
   SQLT_INT      : constant Data_Type := 3;
   SQLT_FLT      : constant Data_Type := 4;
   SQLT_STR      : constant Data_Type := 5;
   SQLT_VNU      : constant Data_Type := 6;
   SQLT_VCS      : constant Data_Type := 9;
   SQLT_DAT      : constant Data_Type := 12;
   SQLT_BFLOAT   : constant Data_Type := 21;
   SQLT_BDOUBLE  : constant Data_Type := 22;
   SQLT_AFC      : constant Data_Type := 96;
   SQLT_IBFLOAT  : constant Data_Type := 100;
   SQLT_IBDOUBLE : constant Data_Type := 101;
   SQLT_TIMESTAMP     : constant Data_Type := 187;
   SQLT_TIMESTAMP_TZ  : constant Data_Type := 188;
   SQLT_INTERVAL_YM   : constant Data_Type := 189;
   SQLT_INTERVAL_DS   : constant Data_Type := 190;
   SQLT_TIMESTAMP_LTZ : constant Data_Type := 232;

   type Internal is private;

   type Handle       is access all Internal;
   type Bind         is access all Internal;
   type Define       is access all Internal;

   pragma Convention (C, Handle);
   pragma Convention (C, Bind);
   pragma Convention (C, Define);

   type Environment  is new Handle;
   pragma Convention (C, Environment);

   function Handle_Alloc
     (Parent      : in     Environment;
      Target      : access Handle;
      Target_Type : in     Handle_Type;
      Extra_Sz    : in     Size_T :=0;
      Extra_Ptr   : in     Address := Null_Address)
     return Error_Code;

   function Handle_Free
     (Target      : in     Handle;
      Target_Type : in     Handle_Type)
     return Error_Code;

   function Descriptor_Alloc
     (Parent      : in     Environment;
      Target      : access Handle;
      Target_Type : in     Handle_Type;
      Extra_Sz    : in     Size_T :=0;
      Extra_Ptr   : in     Address := Null_Address)
     return Error_Code;

   type Error_Handle is new Handle;

   function Attr_Get
     (Target      : in     Handle;
      Target_Type : in     Handle_Type;
      Buffer      : in     Address;
      Length      : in     Ub4_Ptr;
      Attr        : in     Ub4;
      Error       : in     Error_Handle)
     return Error_Code;

   Attr_Data_Size      : constant Ub4 := 1;
   Attr_Data_Type      : constant Ub4 := 2;
   Attr_Name           : constant Ub4 := 4;
   Attr_Data_Precision : constant Ub4 := 5;
   Attr_Data_Scale     : constant Ub4 := 6;
   Attr_Param_Count    : constant Ub4 := 18;
   Attr_Stmt_Type      : constant Ub4 := 24;
   Attr_Charset_Id     : constant Ub4 := 31;
   Attr_Param_Type     : constant Ub4 := 123;
   Attr_NCharset_Id    : constant Ub4 := 262;
   Attr_Char_Used      : constant Ub4 := 285;
   Attr_Char_Size      : constant Ub4 := 286;

   function Descriptor_Free
     (Target      : in     Handle;
      Target_Type : in     Handle_Type)
     return Error_Code;

   type Parameter        is new Handle;

   function Param_Get
     (Target      : in     Handle;
      Target_Type : in     Handle_Type;
      Error       : in     Error_Handle;
      Result      : access Parameter;
      Position    : in     Ub4)
     return Error_Code;

   type Service_Handle   is new Handle;
   type Statement_Handle is new Handle;

   type Env_Mode is new Ub4;

   Default  : constant          :=16#000#;
   Threaded : constant Env_Mode :=16#001#;
   Object   : constant Env_Mode :=16#002#;
   Events   : constant Env_Mode :=16#004#;
   Shared   : constant Env_Mode :=16#010#;

   OCI_UTF16ID : constant := 1000;

   function Env_NLS_Create
     (Target    : access Environment;
      Mode      : in     Env_Mode;
      Ctxp      : in     Address := Null_Address;
      Malocfp   : in     Address := Null_Address;
      Ralocfp   : in     Address := Null_Address;
      Mfreefp   : in     Address := Null_Address;
      Extra_Sz  : in     Size_T := 0;
      Extra_Ptr : in     Address := Null_Address;
      Charset   : in     Ub2 := OCI_UTF16ID;
      N_Charset : in     Ub2 := OCI_UTF16ID)
     return Error_Code;

   function Logon
     (Env          : in     Environment;
      Error        : in     Error_Handle;
      Target       : access Service_Handle;
      Username     : in     Matreshka.Internals.Utf16.Utf16_String;
      Username_Len : in     Ub4;
      Password     : in     Matreshka.Internals.Utf16.Utf16_String;
      Passwd_Len   : in     Ub4;
      Dbname       : in     Matreshka.Internals.Utf16.Utf16_String;
      Dbname_Len   : in     Ub4)
     return Error_Code;

   function Logoff
     (Target       : in     Service_Handle;
      Error        : in     Error_Handle)
     return Error_Code;

   function Commit
     (Target       : in     Service_Handle;
      Error        : in     Error_Handle;
      Flags        : in     Ub4 := Default)
     return Error_Code;

   function Rollback
     (Target       : in     Service_Handle;
      Error        : in     Error_Handle;
      Flags        : in     Ub4 := Default)
     return Error_Code;

   function Error_Get
     (Error       : in     Error_Handle;
      Record_No   : in     Ub4;
      Sql_State   : in     Address := Null_Address;
      Ora_Code    : access Ub4;
      Buffer      : in     Matreshka.Internals.Utf16.Unaligned_Utf16_String;
      Buffer_Size : in     Ub4;
      H_Type      : in     Handle_Type := HT_Error)
     return Error_Code;

   function Stmt_Prepare
     (Stmt         : in     Statement_Handle;
      Error        : in     Error_Handle;
      Text         : in     Matreshka.Internals.Utf16.Utf16_String;
      Text_Length  : in     Ub4;
      Language     : in     Ub4 := 1;
      Mode         : in     Ub4 := 0)
     return Error_Code;

   function Stmt_Execute
     (Service      : in     Service_Handle;
      Stmt         : in     Statement_Handle;
      Errhp        : in     Error_Handle;
      Iters        : in     Ub4;
      Row_Off      : in     Ub4 := 0;
      Snap_In      : in     Address := Null_Address;
      Snap_Out     : in     Address := Null_Address;
      Mode         : in     Ub4 := 0)
     return Error_Code;

   function Stmt_Fetch
     (Stmt         : in     Statement_Handle;
      Error        : in     Error_Handle;
      Rows         : in     Ub4 := 1;
      Orientation  : in     Ub2 := Default;
      Offset       : in     Ub4 := 0;
      Mode         : in     Ub4 := Default)
     return Error_Code;

   function Bind_By_Name
     (Stmt         : in     Statement_Handle;
      Target       : access Bind;
      Error        : in     Error_Handle;
      Place        : in     Matreshka.Internals.Utf16.Utf16_String;
      Place_Length : in     Ub4;
      Value        : in     Address;
      Value_Length : in     Ub4;
      Value_Type   : in     Data_Type;
      Indicator    : access Sb2;
      Array_Length : in     Address := Null_Address;
      Rcodep       : in     Address := Null_Address;
      Max_Array    : in     Ub4 := 0;
      Curelep      : in     Address := Null_Address;
      Mode         : in     Ub4 := 0)
     return Error_Code;

   function Bind_By_Pos
     (Stmt         : in     Statement_Handle;
      Target       : access Bind;
      Error        : in     Error_Handle;
      Position     : in     Ub4;
      Value        : in     Address;
      Value_Length : in     Ub4;
      Value_Type   : in     Data_Type;
      Indicator    : access Sb2;
      Array_Length : in     Address := Null_Address;
      Rcodep       : in     Address := Null_Address;
      Max_Array    : in     Ub4 := 0;
      Curelep      : in     Address := Null_Address;
      Mode         : in     Ub4 := 0)
     return Error_Code;

   function Define_By_Pos
     (Stmt         : in     Statement_Handle;
      Target       : access Define;
      Error        : in     Error_Handle;
      Position     : in     Ub4;
      Value        : in     Address;
      Value_Length : in     Ub4;
      Value_Type   : in     Data_Type;
      Indicator    : access Sb2;
      Array_Length : in     Address := Null_Address;
      Rcodep       : in     Address := Null_Address;
      Mode         : in     Ub4 := 0)
     return Error_Code;

   function Charset_Id_To_Name
     (Env          : in     Environment;
      Buffer       : in     Ora_Text;
      Buffer_Len   : in     Size_T;
      Id           : in     Ub2)
     return Error_Code;

   function Name_Map
     (Env          : in     Environment;
      Buffer       : in     Ora_Text;
      Buffer_Len   : in     Size_T;
      Source       : in     Ora_Text;
      Flag         : in     Sword)
     return Error_Code;

   type Date_Time is new Handle;

   function Get_Date
     (Env   : in     Environment;
      Error : in     Error_Handle;
      Date  : in     Date_Time;
      Year  : access Sb2;
      Month : access Ub1;
      Day   : access Ub1)
     return Error_Code;

   function Get_Time
     (Env   : in     Environment;
      Error : in     Error_Handle;
      Date  : in     Date_Time;
      Hour  : access Ub1;
      Min   : access Ub1;
      Sec   : access Ub1;
      Fract : access Ub4)
     return Error_Code;

   function Construct
     (Env    : in     Environment;
      Error  : in     Error_Handle;
      Date   : in     Date_Time;
      Year   : in     Sb2;
      Month  : in     Ub1;
      Day    : in     Ub1;
      Hour   : in     Ub1;
      Min    : in     Ub1;
      Sec    : in     Ub1;
      Fract  : in     Ub4;
      TZ     : in     Address := Null_Address;
      TZ_Len : in     Size_T := 0)
     return Error_Code;

private

   type Internal is new Integer;

   pragma Import (C, Env_NLS_Create,    "OCIEnvNlsCreate");
   pragma Import (C, Handle_Alloc,  "OCIHandleAlloc");
   pragma Import (C, Handle_Free,   "OCIHandleFree");
   pragma Import (C, Logon,         "OCILogon");
   pragma Import (C, Logoff,        "OCILogoff");
   pragma Import (C, Error_Get,     "OCIErrorGet");
   pragma Import (C, Stmt_Prepare,  "OCIStmtPrepare");
   pragma Import (C, Bind_By_Name,  "OCIBindByName");
   pragma Import (C, Bind_By_Pos,   "OCIBindByPos");
   pragma Import (C, Define_By_Pos, "OCIDefineByPos");
   pragma Import (C, Stmt_Execute,  "OCIStmtExecute");
   pragma Import (C, Attr_Get,      "OCIAttrGet");
   pragma Import (C, Stmt_Fetch,    "OCIStmtFetch2");
   pragma Import (C, Commit,        "OCITransCommit");
   pragma Import (C, Rollback,      "OCITransRollback");
   pragma Import (C, Param_Get,     "OCIParamGet");
   pragma Import (C, Name_Map,      "OCINlsNameMap");
   pragma Import (C, Get_Date,      "OCIDateTimeGetDate");
   pragma Import (C, Get_Time,      "OCIDateTimeGetTime");
   pragma Import (C, Construct,     "OCIDateTimeConstruct");

   pragma Import (C, Charset_Id_To_Name, "OCINlsCharSetIdToName");
   pragma Import (C, Descriptor_Free,    "OCIDescriptorFree");
   pragma Import (C, Descriptor_Alloc,   "OCIDescriptorAlloc");


end Matreshka.Internals.SQL_Drivers.OCI;
