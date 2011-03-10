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
with Interfaces.C;
with System;

with Matreshka.Internals.Utf16;

package Matreshka.Internals.SQL_Drivers.OCI is

   subtype Address is System.Address;
   Null_Address : constant Address := System.Null_Address;

   subtype Size_T is Interfaces.C.size_t;

   subtype Sword is Interfaces.C.int;
   subtype Ub4 is Interfaces.Unsigned_32;
   subtype Ub2 is Interfaces.Unsigned_16;
   subtype Ub1 is Interfaces.Unsigned_8;
   subtype Sb1 is Interfaces.Integer_8;
   subtype Sb2 is Interfaces.C.short;

   subtype Ora_Text is Interfaces.C.char_array;

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

   SQLT_CHR           : constant Data_Type := 1;
   SQLT_NUM           : constant Data_Type := 2;
   SQLT_INT           : constant Data_Type := 3;
   SQLT_FLT           : constant Data_Type := 4;
   SQLT_STR           : constant Data_Type := 5;
   SQLT_VNU           : constant Data_Type := 6;
   SQLT_VCS           : constant Data_Type := 9;
   SQLT_DAT           : constant Data_Type := 12;
   SQLT_BFLOAT        : constant Data_Type := 21;
   SQLT_BDOUBLE       : constant Data_Type := 22;
   SQLT_AFC           : constant Data_Type := 96;
   SQLT_IBFLOAT       : constant Data_Type := 100;
   SQLT_IBDOUBLE      : constant Data_Type := 101;
   SQLT_TIMESTAMP     : constant Data_Type := 187;
   SQLT_TIMESTAMP_TZ  : constant Data_Type := 188;
   SQLT_INTERVAL_YM   : constant Data_Type := 189;
   SQLT_INTERVAL_DS   : constant Data_Type := 190;
   SQLT_TIMESTAMP_LTZ : constant Data_Type := 232;

   type Internal is limited private;

   type Handle is access all Internal;
   pragma Convention (C, Handle);

   subtype Environment      is Handle;
   subtype Error_Handle     is Handle;
   subtype Parameter        is Handle;
   subtype Date_Time        is Handle;
   subtype Service_Handle   is Handle;
   subtype Statement_Handle is Handle;

   type Bind is access all Internal;
   pragma Convention (C, Bind);

   type Define is access all Internal;
   pragma Convention (C, Define);

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

   type Env_Mode is new Ub4;

   Default  : constant          := 16#000#;
   Threaded : constant Env_Mode := 16#001#;
   Object   : constant Env_Mode := 16#002#;
   Events   : constant Env_Mode := 16#004#;
   Shared   : constant Env_Mode := 16#010#;

   OCI_UTF16ID : constant := 1000;

   function OCIHandleAlloc
    (Parent      : Environment;
     Target      : access Handle;
     Target_Type : Handle_Type;
     Extra_Sz    : Size_T := 0;
     Extra_Ptr   : Address := Null_Address) return Error_Code;
   pragma Import (C, OCIHandleAlloc, "OCIHandleAlloc");

   function OCIHandleFree
    (Target      : Handle;
     Target_Type : Handle_Type) return Error_Code;
   pragma Import (C, OCIHandleFree, "OCIHandleFree");

   function OCIDescriptorAlloc
    (Parent      : Environment;
     Target      : access Handle;
     Target_Type : Handle_Type;
     Extra_Sz    : Size_T := 0;
     Extra_Ptr   : Address := Null_Address) return Error_Code;
   pragma Import (C, OCIDescriptorAlloc, "OCIDescriptorAlloc");

   function OCIAttrGet
    (Target      : Handle;
     Target_Type : Handle_Type;
     Buffer      : Address;
     Length      : Ub4_Ptr;
     Attr        : Ub4;
     Error       : Error_Handle) return Error_Code;
   pragma Import (C, OCIAttrGet, "OCIAttrGet");

   function OCIDescriptorFree
    (Target      : Handle;
     Target_Type : Handle_Type) return Error_Code;
   pragma Import (C, OCIDescriptorFree, "OCIDescriptorFree");

   function OCIParamGet
    (Target      : Handle;
     Target_Type : Handle_Type;
     Error       : Error_Handle;
     Result      : access Parameter;
     Position    : Ub4) return Error_Code;
   pragma Import (C, OCIParamGet, "OCIParamGet");

   function OCIEnvNlsCreate
    (Target    : access Environment;
     Mode      : Env_Mode;
     Ctxp      : Address := Null_Address;
     Malocfp   : Address := Null_Address;
     Ralocfp   : Address := Null_Address;
     Mfreefp   : Address := Null_Address;
     Extra_Sz  : Size_T := 0;
     Extra_Ptr : Address := Null_Address;
     Charset   : Ub2 := OCI_UTF16ID;
     N_Charset : Ub2 := OCI_UTF16ID) return Error_Code;
   pragma Import (C, OCIEnvNlsCreate, "OCIEnvNlsCreate");

   function OCILogon
    (Env          : Environment;
     Error        : Error_Handle;
     Target       : access Service_Handle;
     Username     : Matreshka.Internals.Utf16.Utf16_String;
     Username_Len : Ub4;
     Password     : Matreshka.Internals.Utf16.Utf16_String;
     Passwd_Len   : Ub4;
     Dbname       : Matreshka.Internals.Utf16.Utf16_String;
     Dbname_Len   : Ub4) return Error_Code;
   pragma Import (C, OCILogon, "OCILogon");

   function OCILogoff
    (Target : Service_Handle; Error : Error_Handle) return Error_Code;
   pragma Import (C, OCILogoff, "OCILogoff");

   function OCITransCommit
    (Target : Service_Handle;
     Error  : Error_Handle;
     Flags  : Ub4 := Default) return Error_Code;
   pragma Import (C, OCITransCommit, "OCITransCommit");

   function OCITransRollback
    (Target : Service_Handle;
     Error  : Error_Handle;
     Flags  : Ub4 := Default) return Error_Code;
   pragma Import (C, OCITransRollback, "OCITransRollback");

   function OCIErrorGet
    (Error       : Error_Handle;
     Record_No   : Ub4;
     Sql_State   : Address := Null_Address;
     Ora_Code    : access Ub4;
     Buffer      : Matreshka.Internals.Utf16.Utf16_String;
     Buffer_Size : Ub4;
     H_Type      : Handle_Type := HT_Error) return Error_Code;
   pragma Import (C, OCIErrorGet, "OCIErrorGet");

   function OCIStmtPrepare
    (Stmt        : Statement_Handle;
     Error       : Error_Handle;
     Text        : Matreshka.Internals.Utf16.Utf16_String;
     Text_Length : Ub4;
     Language    : Ub4 := 1;
     Mode        : Ub4 := 0) return Error_Code;
   pragma Import (C, OCIStmtPrepare, "OCIStmtPrepare");

   function OCIStmtExecute
    (Service  : Service_Handle;
     Stmt     : Statement_Handle;
     Errhp    : Error_Handle;
     Iters    : Ub4;
     Row_Off  : Ub4 := 0;
     Snap_In  : Address := Null_Address;
     Snap_Out : Address := Null_Address;
     Mode     : Ub4 := 0) return Error_Code;
   pragma Import (C, OCIStmtExecute, "OCIStmtExecute");

   function OCIStmtFetch2
    (Stmt        : Statement_Handle;
     Error       : Error_Handle;
     Rows        : Ub4 := 1;
     Orientation : Ub2 := Default;
     Offset      : Ub4 := 0;
     Mode        : Ub4 := Default) return Error_Code;
   pragma Import (C, OCIStmtFetch2,    "OCIStmtFetch2");

   function OCIBindByName
    (Stmt         : Statement_Handle;
     Target       : access Bind;
     Error        : Error_Handle;
     Place        : Matreshka.Internals.Utf16.Utf16_String;
     Place_Length : Ub4;
     Value        : Address;
     Value_Length : Ub4;
     Value_Type   : Data_Type;
     Indicator    : access Sb2;
     Array_Length : Address := Null_Address;
     Rcodep       : Address := Null_Address;
     Max_Array    : Ub4 := 0;
     Curelep      : Address := Null_Address;
     Mode         : Ub4 := 0) return Error_Code;
   pragma Import (C, OCIBindByName,  "OCIBindByName");

   function OCIBindByPos
    (Stmt         : Statement_Handle;
     Target       : access Bind;
     Error        : Error_Handle;
     Position     : Ub4;
     Value        : Address;
     Value_Length : Ub4;
     Value_Type   : Data_Type;
     Indicator    : access Sb2;
     Array_Length : Address := Null_Address;
     Rcodep       : Address := Null_Address;
     Max_Array    : Ub4 := 0;
     Curelep      : Address := Null_Address;
     Mode         : Ub4 := 0) return Error_Code;
   pragma Import (C, OCIBindByPos, "OCIBindByPos");

   function OCIDefineByPos
    (Stmt         : Statement_Handle;
     Target       : access Define;
     Error        : Error_Handle;
     Position     : Ub4;
     Value        : Address;
     Value_Length : Ub4;
     Value_Type   : Data_Type;
     Indicator    : access Sb2;
     Array_Length : Address := Null_Address;
     Rcodep       : Address := Null_Address;
     Mode         : Ub4 := 0) return Error_Code;
   pragma Import (C, OCIDefineByPos, "OCIDefineByPos");

   function OCINlsCharSetIdToName
    (Env        : Environment;
     Buffer     : Ora_Text;
     Buffer_Len : Size_T;
     Id         : Ub2) return Error_Code;
   pragma Import (C, OCINlsCharSetIdToName, "OCINlsCharSetIdToName");

   function OCINlsNameMap
    (Env        : Environment;
     Buffer     : Ora_Text;
     Buffer_Len : Size_T;
     Source     : Ora_Text;
     Flag       : Sword) return Error_Code;
   pragma Import (C, OCINlsNameMap, "OCINlsNameMap");

   function OCIDateTimeGetDate
    (Env   : Environment;
     Error : Error_Handle;
     Date  : Date_Time;
     Year  : access Sb2;
     Month : access Ub1;
     Day   : access Ub1) return Error_Code;
   pragma Import (C, OCIDateTimeGetDate, "OCIDateTimeGetDate");

   function OCIDateTimeGetTime
    (Env   : Environment;
     Error : Error_Handle;
     Date  : Date_Time;
     Hour  : access Ub1;
     Min   : access Ub1;
     Sec   : access Ub1;
     Fract : access Ub4) return Error_Code;
   pragma Import (C, OCIDateTimeGetTime, "OCIDateTimeGetTime");

   function OCIDateTimeConstruct
    (Env    : Environment;
     Error  : Error_Handle;
     Date   : Date_Time;
     Year   : Sb2;
     Month  : Ub1;
     Day    : Ub1;
     Hour   : Ub1;
     Min    : Ub1;
     Sec    : Ub1;
     Fract  : Ub4;
     TZ     : Address := Null_Address;
     TZ_Len : Size_T := 0) return Error_Code;
   pragma Import (C, OCIDateTimeConstruct, "OCIDateTimeConstruct");

private

   type Internal is limited null record;

end Matreshka.Internals.SQL_Drivers.OCI;
