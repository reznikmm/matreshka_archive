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
with AMF.Elements;
with AMF.Utp;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.UTP_Types is

   pragma Preelaborate;

   type Element_Kinds is
    (E_None,
     E_Utp_Coding_Rule,
     E_Utp_Data_Partition,
     E_Utp_Data_Pool,
     E_Utp_Data_Selector,
     E_Utp_Default,
     E_Utp_Default_Application,
     E_Utp_Determ_Alt,
     E_Utp_Finish_Action,
     E_Utp_Get_Timezone_Action,
     E_Utp_Literal_Any,
     E_Utp_Literal_Any_Or_Null,
     E_Utp_Log_Action,
     E_Utp_Managed_Element,
     E_Utp_Read_Timer_Action,
     E_Utp_SUT,
     E_Utp_Set_Timezone_Action,
     E_Utp_Start_Timer_Action,
     E_Utp_Stop_Timer_Action,
     E_Utp_Test_Case,
     E_Utp_Test_Component,
     E_Utp_Test_Context,
     E_Utp_Test_Log,
     E_Utp_Test_Log_Application,
     E_Utp_Test_Objective,
     E_Utp_Test_Suite,
     E_Utp_Time_Out,
     E_Utp_Time_Out_Action,
     E_Utp_Time_Out_Message,
     E_Utp_Timer_Running_Action,
     E_Utp_Validation_Action);

   type Member_Kinds is
    (M_None,
     M_Collection_Of_Element,
     M_Collection_Of_String,
     M_Element,
     M_String,
     M_Unlimited_Natural,
     M_Verdict);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Collection_Of_String =>
            String_Collection : AMF.Internals.AMF_Collection_Of_String;

         when M_Element =>
            Link : AMF.Internals.AMF_Link;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;

         when M_Unlimited_Natural =>
            Unlimited_Natural_Value : AMF.Unlimited_Natural;

         when M_Verdict =>
            Verdict_Value : AMF.Utp.Utp_Verdict;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 7) of Member_Record;

   type Element_Record is record
      Kind   : Element_Kinds := E_None;
      Extent : AMF.Internals.AMF_Extent;
      Proxy  : AMF.Elements.Element_Access;
      Member : Member_Array;
   end record;

end AMF.Internals.Tables.UTP_Types;
