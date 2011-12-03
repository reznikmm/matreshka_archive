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
--  A substitution is a relationship between two classifiers signifies that 
--  the substituting classifier complies with the contract specified by the 
--  contract classifier. This implies that instances of the substituting 
--  classifier are runtime substitutable where instances of the contract 
--  classifier are expected.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UML.Realizations;

package AMF.UML.Substitutions is

   pragma Preelaborate;

   type UML_Substitution is limited interface
     and AMF.UML.Realizations.UML_Realization;

   type UML_Substitution_Access is
     access all UML_Substitution'Class;
   for UML_Substitution_Access'Storage_Size use 0;

   not overriding function Get_Contract
    (Self : not null access constant UML_Substitution)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of Substitution::contract.
   --
   --  The contract with which the substituting classifier complies.

   not overriding procedure Set_Contract
    (Self : not null access UML_Substitution;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;
   --  Setter of Substitution::contract.
   --
   --  The contract with which the substituting classifier complies.

   not overriding function Get_Substituting_Classifier
    (Self : not null access constant UML_Substitution)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of Substitution::substitutingClassifier.
   --
   --  Instances of the substituting classifier are runtime substitutable 
   --  where instances of the contract classifier are expected.

   not overriding procedure Set_Substituting_Classifier
    (Self : not null access UML_Substitution;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;
   --  Setter of Substitution::substitutingClassifier.
   --
   --  Instances of the substituting classifier are runtime substitutable 
   --  where instances of the contract classifier are expected.

end AMF.UML.Substitutions;
