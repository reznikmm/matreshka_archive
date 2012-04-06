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
limited with AMF.String_Collections;
limited with AMF.UML.Behaviors;

package AMF.Utp.Test_Logs is

   pragma Preelaborate;

   type Utp_Test_Log is limited interface;

   type Utp_Test_Log_Access is
     access all Utp_Test_Log'Class;
   for Utp_Test_Log_Access'Storage_Size use 0;

   not overriding function Get_Base_Behavior
    (Self : not null access constant Utp_Test_Log)
       return AMF.UML.Behaviors.UML_Behavior_Access is abstract;
   --  Getter of TestLog::base_Behavior.
   --

   not overriding procedure Set_Base_Behavior
    (Self : not null access Utp_Test_Log;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is abstract;
   --  Setter of TestLog::base_Behavior.
   --

   not overriding function Get_Tester
    (Self : not null access constant Utp_Test_Log)
       return AMF.String_Collections.Set_Of_String is abstract;
   --  Getter of TestLog::tester.
   --

   not overriding function Get_Executed_At
    (Self : not null access constant Utp_Test_Log)
       return AMF.Optional_String is abstract;
   --  Getter of TestLog::executedAt.
   --

   not overriding procedure Set_Executed_At
    (Self : not null access Utp_Test_Log;
     To   : AMF.Optional_String) is abstract;
   --  Setter of TestLog::executedAt.
   --

   not overriding function Get_Duration
    (Self : not null access constant Utp_Test_Log)
       return AMF.Optional_String is abstract;
   --  Getter of TestLog::duration.
   --

   not overriding procedure Set_Duration
    (Self : not null access Utp_Test_Log;
     To   : AMF.Optional_String) is abstract;
   --  Setter of TestLog::duration.
   --

   not overriding function Get_Verdict
    (Self : not null access constant Utp_Test_Log)
       return AMF.Utp.Utp_Verdict is abstract;
   --  Getter of TestLog::verdict.
   --

   not overriding procedure Set_Verdict
    (Self : not null access Utp_Test_Log;
     To   : AMF.Utp.Utp_Verdict) is abstract;
   --  Setter of TestLog::verdict.
   --

   not overriding function Get_Verdict_Reason
    (Self : not null access constant Utp_Test_Log)
       return AMF.Optional_String is abstract;
   --  Getter of TestLog::verdictReason.
   --

   not overriding procedure Set_Verdict_Reason
    (Self : not null access Utp_Test_Log;
     To   : AMF.Optional_String) is abstract;
   --  Setter of TestLog::verdictReason.
   --

   not overriding function Get_Sut_Version
    (Self : not null access constant Utp_Test_Log)
       return AMF.Optional_String is abstract;
   --  Getter of TestLog::sutVersion.
   --

   not overriding procedure Set_Sut_Version
    (Self : not null access Utp_Test_Log;
     To   : AMF.Optional_String) is abstract;
   --  Setter of TestLog::sutVersion.
   --

end AMF.Utp.Test_Logs;
