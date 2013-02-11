------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Testsuite Component                           --
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
--  Test:T28
--
--  Description:
--
--  Node A sends to node C message with Body element that has encodingStyle
--  attribute. Node C returns Fault message, because Body element must not
--  contain attributes.
--
--  Messages:
--
--  Message sent from Node A
--
--  <?xml version='1.0' ?>
--  <env:Envelope xmlns:env="http://www.w3.org/2003/05/soap-envelope"> 
--    <env:Body env:encodingStyle="http://www.w3.org/2003/05/soap-encoding">
--      <test:echoOk xmlns:test="http://example.org/ts-tests" >
--        foo
--      </test:echoOk>
--    </env:Body>
--  </env:Envelope>
--
--  Message sent from Node C
--
--  <?xml version='1.0' ?>
--  <env:Envelope xmlns:env="http://www.w3.org/2003/05/soap-envelope"> 
--    <env:Body>
--      <env:Fault>
--        <env:Code>
--          <env:Value>env:Sender</env:Value>
--        </env:Code>
--        <env:Reason>
--          <env:Text xml:lang="en-US">
--            Incorrect SOAP Body element serialization
--          </env:Text>
--        </env:Reason>
--        <env:Detail>
--          SOAP Body must not have encodingStyle attribute information item.
--        </env:Detail>
--      </env:Fault>
--    </env:Body>
--  </env:Envelope>
------------------------------------------------------------------------------

package SOAPConf.Testcases.Test_T28 is

   Scenario : constant Testcase_Data
     := (League.Strings.To_Universal_String
          ("<?xml version='1.0'?>"
             & "<env:Envelope"
             & " xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
             & "<env:Body"
             & " env:encodingStyle='http://www.w3.org/2003/05/soap-encoding'>"
             & "<test:echoOk xmlns:test='http://example.org/ts-tests'>"
             & "foo"
             & "</test:echoOk>"
             & "</env:Body>"
             & "</env:Envelope>"),
         League.Strings.To_Universal_String
          ("<?xml version='1.0'?>"
             & "<env:Envelope"
             & " xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
             & "<env:Body>"
             & "<env:Fault>"
             & "<env:Code>"
             & "<env:Value>env:Sender</env:Value>"
             & "</env:Code>"
             & "<env:Reason>"
             & "<env:Text xml:lang='en-US'>"
             & "Incorrect SOAP Body element serialization"
             & "</env:Text>"
             & "</env:Reason>"
             & "<env:Detail>"
             & "SOAP Body must not have encodingStyle attribute information"
             & " item."
             & "</env:Detail>"
             & "</env:Fault>"
             & "</env:Body>"
             & "</env:Envelope>"));

end SOAPConf.Testcases.Test_T28;
