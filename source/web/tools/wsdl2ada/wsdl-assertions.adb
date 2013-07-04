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

--   type WSDL_Assertion is
--     (Description_1001,
--      --  The value of the targetNamespace attribute information item SHOULD be
--      --  dereferencable.
--
--      Description_1002,
--      --  It SHOULD resolve to a human or machine processable document that
--      --  directly or indirectly defines the intended semantics of those
--      --  components.
--
--      Description_1003,
--      --  It MAY resolve to a WSDL 2.0 document that provides service
--      --  description information for that namespace.
--
--      Description_1004,
--      --  If a WSDL 2.0 document is split into multiple WSDL 2.0 documents
--      --  (which may be combined as needed via 4.1 Including Descriptions),
--      --  then the targetNamespace attribute information item SHOULD resolve to
--      --  a master WSDL 2.0 document that includes all the WSDL 2.0 documents
--      --  needed for that service description.
--
--      Description_1005,
--      --  Zero or more element information items amongst its [children], in
--      --  order as follows:
--
--      Description_1006);
--      --  Its value MUST be an absolute IRI (see [IETF RFC 3987]) and should be
--      --  dereferencable.
   WSDL_Assertion_Message :
     constant array (WSDL_Assertion) of League.Strings.Universal_String
       := (Description_1001 =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1002 =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1003 =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1004 =>
             League.Strings.To_Universal_String ("not supported"),
           Description_1005 =>
             League.Strings.To_Universal_String
              ("invalid order of children elements of wsdl:decription element"),
           Description_1006 =>
             League.Strings.To_Universal_String ("not supported"));

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
