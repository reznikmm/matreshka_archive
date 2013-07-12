------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body WSDL.Assertions is

   WSDL_Assertion_Message :
     constant array (WSDL_Assertion) of League.Strings.Universal_String
       := (Description_1001               =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1002               =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1003               =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1004               =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1005               =>
             League.Strings.To_Universal_String
              ("invalid order of children elements of wsdl:decription element"),
           Description_1006               =>
             League.Strings.To_Universal_String ("not supported"),
           Types_1007                     =>
             League.Strings.To_Universal_String ("not supported"),
           Types_1008                     =>
             League.Strings.To_Universal_String ("not supported"),
           Interface_1009                 =>
             League.Strings.To_Universal_String ("not supported"),
           Interface_1010                 =>
             League.Strings.To_Universal_String
              ("name of the interface component must be unique"),
           Interface_1011                 =>
             League.Strings.To_Universal_String
              ("list of extended interfaces must not contain duplicates"),
           Interface_1012                 =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceFault_1013            =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceFault_1014            =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceFault_1015            =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceFault_1016            =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceFault_1017            =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceOperation_1018        =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceOperation_1019        =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceOperation_1020        =>
             League.Strings.To_Universal_String ("not supported"),
           InterfaceOperation_1021        =>
             League.Strings.To_Universal_String ("not supported"),
           MEP_1022                       =>
             League.Strings.To_Universal_String ("MEP is not supported"),
           InterfaceOperation_1023        =>
             League.Strings.To_Universal_String ("not supported"),
           MessageLabel_1024              =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceMessageReference_1025 =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceMessageReference_1026 =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceMessageReference_1027 =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceMessageReference_1028 =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceMessageReference_1029 =>
             League.Strings.To_Universal_String
              ("effective message label must be unique"),
           MessageLabel_1030              =>
             League.Strings.To_Universal_String
              ("no such placeholder message defined by the MEP"),
           MessageLabel_1031              =>
             League.Strings.To_Universal_String
              ("MEP has more than one placeholder message in this direction,"
                 & " message label must be specified"),
           MessageLabel_1032              =>
             League.Strings.To_Universal_String
              ("MEP doesn't have placeholder message with direction ""In"""),
           MessageLabel_1033              =>
             League.Strings.To_Universal_String
              ("MEP doesn't have placeholder message with direction ""Out"""),
           MessageLabel_1034              =>
             League.Strings.To_Universal_String
              ("MEP doesn't support fault in the ""In"" direction"),
           MessageLabel_1035              =>
             League.Strings.To_Universal_String
              ("MEP doesn't support fault in then ""Out"" direction"),
           InterfaceFaultReference_1037   =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceFaultReference_1038   =>
             League.Strings.To_Universal_String ("enforced by construction"),
           InterfaceFaultReference_1039   =>
             League.Strings.To_Universal_String
              ("combination of its interface fault and message label must be"
                 & " unique"),
           InterfaceFaultReference_1040   =>
             League.Strings.To_Universal_String
              ("MEP has more than one fault in this direction, message label"
                 & " must be specified"),
           MessageLabel_1041              =>
             League.Strings.To_Universal_String
              ("MEP has more than one placeholder message in this direction,"
                  & " message label must be specified"),
           MessageLabel_1042              =>
             League.Strings.To_Universal_String
              ("no such placeholder message defined by the MEP"),
           MessageLabel_1043              =>
             League.Strings.To_Universal_String
              ("MEP doesn't have placeholder message with this direction"),
           Binding_1044                   =>
             League.Strings.To_Universal_String
              ("interface must be specified for binding when it specify"
                 & " operation or fault binding details"),
           Binding_1045                   =>
             League.Strings.To_Universal_String ("not supported"),
           Binding_1046                   =>
             League.Strings.To_Universal_String ("not supported"),
           Binding_1047                   =>
             League.Strings.To_Universal_String ("not supported"),
           Binding_1048                   =>
             League.Strings.To_Universal_String ("not supported"),
           Binding_1049                   =>
             League.Strings.To_Universal_String
              ("name of binding component must be unique"),
           BindingFault_1050              =>
             League.Strings.To_Universal_String
              ("duplicate specification of binding details for interface"
                 & " fault"));

   ------------
   -- Report --
   ------------

   procedure Report
    (File      : League.Strings.Universal_String;
     Line      : WSDL.Diagnoses.Line_Number;
     Column    : WSDL.Diagnoses.Column_Number;
     Assertion : WSDL_Assertion) is
   begin
      WSDL.Diagnoses.Report
       (File, Line, Column, WSDL_Assertion_Message (Assertion));
   end Report;

end WSDL.Assertions;
