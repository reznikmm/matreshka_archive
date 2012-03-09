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
with AMF.Internals.UML_Named_Elements;
with AMF.UML.Classifiers.Collections;

package AMF.Internals.UML_Classifiers is

   type UML_Classifier_Proxy is
     abstract new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Classifiers.UML_Classifier
         with null record;

   overriding function All_Parents
    (Self : not null access constant UML_Classifier_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Operation Classifier::allParents.
   --
   --  The query allParents() gives all of the direct and indirect ancestors 
   --  of a generalized Classifier.

   overriding function Parents
    (Self : not null access constant UML_Classifier_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Operation Classifier::parents.
   --
   --  The query parents() gives all of the immediate ancestors of a 
   --  generalized Classifier.

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Classifier_Proxy;
     To   : Boolean);
   --  Setter of Classifier::isAbstract.
   --
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

end AMF.Internals.UML_Classifiers;
