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
--  An interface realization is a specialized realization relationship between 
--  a classifier and an interface. This relationship signifies that the 
--  realizing classifier conforms to the contract specified by the interface.
------------------------------------------------------------------------------
limited with AMF.UML.Behaviored_Classifiers;
limited with AMF.UML.Interfaces;
with AMF.UML.Realizations;

package AMF.UML.Interface_Realizations is

   pragma Preelaborate;

   type UML_Interface_Realization_Interface is limited interface
     and AMF.UML.Realizations.UML_Realization_Interface;

   type UML_Interface_Realization is
     access all UML_Interface_Realization_Interface'Class;
   for UML_Interface_Realization'Storage_Size use 0;

   not overriding function Get_Contract
    (Self : not null access constant UML_Interface_Realization_Interface)
       return AMF.UML.Interfaces.UML_Interface is abstract;
   --  References the Interface specifying the conformance contract.

   not overriding procedure Set_Contract
    (Self : not null access UML_Interface_Realization_Interface;
     To   : AMF.UML.Interfaces.UML_Interface) is abstract;

   not overriding function Get_Implementing_Classifier
    (Self : not null access constant UML_Interface_Realization_Interface)
       return AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier is abstract;
   --  References the BehavioredClassifier that owns this Interfacerealization 
   --  (i.e., the classifier that realizes the Interface to which it points).

   not overriding procedure Set_Implementing_Classifier
    (Self : not null access UML_Interface_Realization_Interface;
     To   : AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier) is abstract;

end AMF.UML.Interface_Realizations;
