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
--  A generalization set is a packageable element whose instances define 
--  collections of subsets of generalization relationships.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
limited with AMF.UML.Generalizations.Collections;
with AMF.UML.Packageable_Elements;

package AMF.UML.Generalization_Sets is

   pragma Preelaborate;

   type UML_Generalization_Set_Interface is limited interface
     and AMF.UML.Packageable_Elements.UML_Packageable_Element_Interface;

   type UML_Generalization_Set is
     access all UML_Generalization_Set_Interface'Class;
   for UML_Generalization_Set'Storage_Size use 0;

   not overriding function Get_Generalization
    (Self : not null access constant UML_Generalization_Set_Interface)
       return AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization is abstract;
   --  Designates the instances of Generalization which are members of a given 
   --  GeneralizationSet.

   not overriding function Get_Is_Covering
    (Self : not null access constant UML_Generalization_Set_Interface)
       return Boolean is abstract;
   --  Indicates (via the associated Generalizations) whether or not the set 
   --  of specific Classifiers are covering for a particular general 
   --  classifier. When isCovering is true, every instance of a particular 
   --  general Classifier is also an instance of at least one of its specific 
   --  Classifiers for the GeneralizationSet. When isCovering is false, there 
   --  are one or more instances of the particular general Classifier that are 
   --  not instances of at least one of its specific Classifiers defined for 
   --  the GeneralizationSet.

   not overriding procedure Set_Is_Covering
    (Self : not null access UML_Generalization_Set_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Disjoint
    (Self : not null access constant UML_Generalization_Set_Interface)
       return Boolean is abstract;
   --  Indicates whether or not the set of specific Classifiers in a 
   --  Generalization relationship have instance in common. If isDisjoint is 
   --  true, the specific Classifiers for a particular GeneralizationSet have 
   --  no members in common; that is, their intersection is empty. If 
   --  isDisjoint is false, the specific Classifiers in a particular 
   --  GeneralizationSet have one or more members in common; that is, their 
   --  intersection is not empty. For example, Person could have two 
   --  Generalization relationships, each with the different specific 
   --  Classifier: Manager or Staff. This would be disjoint because every 
   --  instance of Person must either be a Manager or Staff. In contrast, 
   --  Person could have two Generalization relationships involving two 
   --  specific (and non-covering) Classifiers: Sales Person and Manager. This 
   --  GeneralizationSet would not be disjoint because there are instances of 
   --  Person which can be a Sales Person and a Manager.

   not overriding procedure Set_Is_Disjoint
    (Self : not null access UML_Generalization_Set_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Powertype
    (Self : not null access constant UML_Generalization_Set_Interface)
       return AMF.UML.Classifiers.UML_Classifier is abstract;
   --  Designates the Classifier that is defined as the power type for the 
   --  associated GeneralizationSet.

   not overriding procedure Set_Powertype
    (Self : not null access UML_Generalization_Set_Interface;
     To   : AMF.UML.Classifiers.UML_Classifier) is abstract;

end AMF.UML.Generalization_Sets;
