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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  A classifier has the ability to own ports as specific and type checked 
--  interaction points.
------------------------------------------------------------------------------
limited with AMF.UML.Ports.Collections;
with AMF.UML.Structured_Classifiers;

package AMF.UML.Encapsulated_Classifiers is

   pragma Preelaborate;

   type UML_Encapsulated_Classifier is limited interface
     and AMF.UML.Structured_Classifiers.UML_Structured_Classifier;

   type UML_Encapsulated_Classifier_Access is
     access all UML_Encapsulated_Classifier'Class;
   for UML_Encapsulated_Classifier_Access'Storage_Size use 0;

   not overriding function Get_Owned_Port
    (Self : not null access constant UML_Encapsulated_Classifier)
       return AMF.UML.Ports.Collections.Set_Of_UML_Port is abstract;
   --  Getter of EncapsulatedClassifier::ownedPort.
   --
   --  References a set of ports that an encapsulated classifier owns.

   not overriding function Owned_Port
    (Self : not null access constant UML_Encapsulated_Classifier)
       return AMF.UML.Ports.Collections.Set_Of_UML_Port is abstract;
   --  Operation EncapsulatedClassifier::ownedPort.
   --
   --  Missing derivation for EncapsulatedClassifier::/ownedPort : Port

end AMF.UML.Encapsulated_Classifiers;
