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
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  Interfaces may include receptions (in addition to operations).
--  An interface is a kind of classifier that represents a declaration of a 
--  set of coherent public features and obligations. An interface specifies a 
--  contract; any instance of a classifier that realizes the interface must 
--  fulfill that contract. The obligations that may be associated with an 
--  interface are in the form of various kinds of constraints (such as pre- 
--  and post-conditions) or protocol specifications, which may impose ordering 
--  restrictions on interactions through the interface.
--  Since an interface specifies conformance characteristics, it does not own 
--  detailed behavior specifications. Instead, interfaces may own a protocol 
--  state machine that specifies event sequences and pre/post conditions for 
--  the operations and receptions described by the interface.
------------------------------------------------------------------------------
with AMF.UML.Classifiers;
limited with AMF.UML.Operations;
limited with AMF.UML.Properties;
limited with AMF.UML.Protocol_State_Machines;
limited with AMF.UML.Receptions;

package AMF.UML.Interfaces is

   pragma Preelaborate;

   type UML_Interface_Interface is limited interface
     and AMF.UML.Classifiers.UML_Classifier_Interface;

   type UML_Interface is
     access all UML_Interface_Interface'Class;

   type Set_Of_UML_Interface is null record;
   type Ordered_Set_Of_UML_Interface is null record;

   not overriding function Get_Nested_Classifier
    (Self : not null access constant UML_Interface_Interface)
       return AMF.UML.Classifiers.Ordered_Set_Of_UML_Classifier is abstract;
   --  References all the Classifiers that are defined (nested) within the 
   --  Class.

   not overriding function Get_Owned_Attribute
    (Self : not null access constant UML_Interface_Interface)
       return AMF.UML.Properties.Ordered_Set_Of_UML_Property is abstract;
   --  The attributes (i.e. the properties) owned by the class.

   not overriding function Get_Owned_Operation
    (Self : not null access constant UML_Interface_Interface)
       return AMF.UML.Operations.Ordered_Set_Of_UML_Operation is abstract;
   --  The operations owned by the class.

   not overriding function Get_Owned_Reception
    (Self : not null access constant UML_Interface_Interface)
       return AMF.UML.Receptions.Set_Of_UML_Reception is abstract;
   --  Receptions that objects providing this interface are willing to accept.

   not overriding function Get_Protocol
    (Self : not null access constant UML_Interface_Interface)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine is abstract;
   --  References a protocol state machine specifying the legal sequences of 
   --  the invocation of the behavioral features described in the interface.

   not overriding procedure Set_Protocol
    (Self : not null access UML_Interface_Interface;
     To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine) is abstract;

   not overriding function Get_Redefined_Interface
    (Self : not null access constant UML_Interface_Interface)
       return AMF.UML.Interfaces.Set_Of_UML_Interface is abstract;
   --  References all the Interfaces redefined by this Interface.

end AMF.UML.Interfaces;
