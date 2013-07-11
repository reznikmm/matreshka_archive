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
--  Declaration of WSDL assertions and violation reporting utilities.
------------------------------------------------------------------------------
with League.Strings;

with WSDL.Diagnoses;

package WSDL.Assertions is

   type WSDL_Assertion is
     (Description_1001,
      --  The value of the targetNamespace attribute information item SHOULD be
      --  dereferencable.

      Description_1002,
      --  It SHOULD resolve to a human or machine processable document that
      --  directly or indirectly defines the intended semantics of those
      --  components.

      Description_1003,
      --  It MAY resolve to a WSDL 2.0 document that provides service
      --  description information for that namespace.

      Description_1004,
      --  If a WSDL 2.0 document is split into multiple WSDL 2.0 documents
      --  (which may be combined as needed via 4.1 Including Descriptions),
      --  then the targetNamespace attribute information item SHOULD resolve to
      --  a master WSDL 2.0 document that includes all the WSDL 2.0 documents
      --  needed for that service description.

      Description_1005,
      --  Zero or more element information items amongst its [children], in
      --  order as follows:

      Description_1006,
      --  Its value MUST be an absolute IRI (see [IETF RFC 3987]) and should be
      --  dereferencable.

      Types_1007,
      --  Each XML Schema element declaration MUST have a unique QName. 

      Types_1008,
      --  Each XML Schema type definition MUST have a unique QName. 

      Interface_1009,
      --  To avoid circular definitions, an interface MUST NOT appear in the
      --  set of interfaces it extends, either directly or indirectly. 

      Interface_1010,
      --  For each Interface component in the {interfaces} property of a
      --  Description component, the {name} property MUST be unique.

      Interface_1011,
      --  The list of xs:QName in an extends attribute information item MUST
      --  NOT contain duplicates. 

      Interface_1012,
      --  Its value, if present, MUST contain absolute IRIs (see [IETF RFC
      --  3987]).

      InterfaceFault_1013,
      --  An xs:token with one of the values #any, #none, #other, or #element.

      InterfaceFault_1014,
      -- When the {message content model} property has the value #any or #none
      -- the {element declaration} property MUST be empty.

      InterfaceFault_1015,
      --  In cases where, due to an interface extending one or more other
      --  interfaces, two or more Interface Fault components have the same
      --  value for their {name} property, then the component models of those
      --  Interface Fault components MUST be equivalent (see 2.15 Equivalence
      --  of Components).

      InterfaceFault_1016,
      --  For the above reason, it is considered good practice to ensure, where
      --  necessary, that the local name of the {name} property of Interface
      --  Fault components within a namespace SHOULD be unique, thus allowing
      --  such derivation to occur without inadvertent error.

      InterfaceFault_1017,
      --  If the element attribute information item has a value, then it MUST
      --  resolve to an Element Declaration component from the {element
      --  declarations} property of the Description component.

      InterfaceOperation_1018,
      --  This xs:anyURI MUST be an absolute IRI (see [IETF RFC 3987]).

      InterfaceOperation_1019,
      --  These xs:anyURIs MUST be absolute IRIs (see [IETF RFC 3986]).

      InterfaceOperation_1020,
      --  In cases where, due to an interface extending one or more other
      --  interfaces, two or more Interface Operation components have the same
      --  value for their {name} property, then the component models of those
      --  Interface Operation components MUST be equivalent (see 2.15
      --  Equivalence of Components).

      InterfaceOperation_1021,
      --  For the above reason, it is considered good practice to ensure, where
      --  necessary, that the {name} property of Interface Operation components
      --  within a namespace SHOULD be unique, thus allowing such derivation to
      --  occur without inadvertent error.

      MEP_1022,
      --  A message exchange pattern is itself uniquely identified by an
      --  absolute IRI, which is used as the value of the {message exchange
      --  pattern} property of the Interface Operation component, and which
      --  specifies the fault propagation ruleset that its faults obey.

      InterfaceOperation_1023,
      --  An Interface Operation component MUST satisfy the specification
      --  defined by each operation style identified by its {style} property.

      MessageLabel_1024,
      --  The value of this property MUST match the name of a placeholder
      --  message defined by the message exchange pattern. 

      InterfaceMessageReference_1025,
      --  An xs:token with one of the values in or out, indicating whether the
      --  message is coming to the service or going from the service,
      --  respectively.

      InterfaceMessageReference_1026,
      --  The direction MUST be the same as the direction of the message
      --  identified by the {message label} property in the {message exchange
      --  pattern} of the Interface Operation component this is contained
      --  within.

      InterfaceMessageReference_1027,
      --  An xs:token with one of the values #any, #none, #other, or #element.

      InterfaceMessageReference_1028,
      --  When the {message content model} property has the value #any or
      --  #none, the {element declaration} property MUST be empty.

      InterfaceMessageReference_1029,
      --  For each Interface Message Reference component in the {interface
      --  message references} property of an Interface Operation component, its
      --  {message label} property MUST be unique.

      MessageLabel_1030,
      --  If the messageLabel attribute information item of an interface
      --  message reference element information item is present, then its
      --  actual value MUST match the {message label} of some placeholder
      --  message with {direction} equal to the message direction.

      MessageLabel_1031,
      --  If the messageLabel attribute information item of an interface
      --  message reference element information item is absent then there MUST
      --  be a unique placeholder message with {direction} equal to the message
      --  direction.

      MessageLabel_1032,
      --  If the local name is input then the message exchange pattern MUST
      --  have at least one placeholder message with direction "In".

      MessageLabel_1033,
      --  If the local name is output then the message exchange pattern MUST
      --  have at least one placeholder message with direction "Out".

      MessageLabel_1034,
      --  If the local name is infault then the message exchange pattern MUST
      --  support at least one fault in the "In" direction.

      MessageLabel_1035,
      --  If the local name is outfault then the message exchange pattern MUST
      --  support at least one fault in the "Out" direction.

--      InterfaceFaultReference_1037,
--      --  The value of this property MUST match the name of a placeholder
--      --  message defined by the message exchange pattern.
--
--      InterfaceFaultReference_1038,
--      --  The direction MUST be consistent with the direction implied by the
--      --  fault propagation ruleset used in the message exchange pattern of the
--      --  operation.

      InterfaceFaultReference_1040,
      --  The messageLabel attribute information item MUST be present in the
      --  XML representation of an Interface Fault Reference component with a
      --  given {direction}, if the {message exchange pattern} of the parent
      --  Interface Operation component has more than one fault with that
      --  direction.

      MessageLabel_1041,
      --  The messageLabel attribute information item of an interface fault
      --  reference element information item MUST be present if the message
      --  exchange pattern has more than one placeholder message with
      --  {direction} equal to the message direction.

      MessageLabel_1042,
      --  If the messageLabel attribute information item of an interface fault
      --  reference element information item is present then its actual value
      --  MUST match the {message label} of some placeholder message with
      --  {direction} equal to the message direction.

      MessageLabel_1043);
      --  If the messageLabel attribute information item of an interface fault
      --  reference element information item is absent then there MUST be a
      --  unique placeholder message with {direction} equal to the message
      --  direction.

   procedure Report
    (File      : League.Strings.Universal_String;
     Line      : WSDL.Diagnoses.Line_Number;
     Column    : WSDL.Diagnoses.Column_Number;
     Assertion : WSDL_Assertion);
   --  Reports assertion.

end WSDL.Assertions;
