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
with AMF.Internals.UML_Elements;
with AMF.UML.Classifiers;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Generalization_Sets.Collections;
with AMF.UML.Generalizations;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Generalizations is

   type UML_Generalization_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Generalizations.UML_Generalization with null record;

   overriding function Get_General
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of Generalization::general.
   --
   --  References the general classifier in the Generalization relationship.

   overriding procedure Set_General
    (Self : not null access UML_Generalization_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access);
   --  Setter of Generalization::general.
   --
   --  References the general classifier in the Generalization relationship.

   overriding function Get_Generalization_Set
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set;
   --  Getter of Generalization::generalizationSet.
   --
   --  Designates a set in which instances of Generalization is considered 
   --  members.

   overriding function Get_Is_Substitutable
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.Optional_Boolean;
   --  Getter of Generalization::isSubstitutable.
   --
   --  Indicates whether the specific classifier can be used wherever the 
   --  general classifier can be used. If true, the execution traces of the 
   --  specific classifier will be a superset of the execution traces of the 
   --  general classifier.

   overriding procedure Set_Is_Substitutable
    (Self : not null access UML_Generalization_Proxy;
     To   : AMF.Optional_Boolean);
   --  Setter of Generalization::isSubstitutable.
   --
   --  Indicates whether the specific classifier can be used wherever the 
   --  general classifier can be used. If true, the execution traces of the 
   --  specific classifier will be a superset of the execution traces of the 
   --  general classifier.

   overriding function Get_Specific
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of Generalization::specific.
   --
   --  References the specializing classifier in the Generalization 
   --  relationship.

   overriding procedure Set_Specific
    (Self : not null access UML_Generalization_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access);
   --  Setter of Generalization::specific.
   --
   --  References the specializing classifier in the Generalization 
   --  relationship.

   overriding function Get_Source
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::source.
   --
   --  Specifies the sources of the DirectedRelationship.

   overriding function Get_Target
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::target.
   --
   --  Specifies the targets of the DirectedRelationship.

   overriding function Get_Related_Element
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Relationship::relatedElement.
   --
   --  Specifies the elements related by the Relationship.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Generalization_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Generalization_Proxy)
       return Boolean;
   --  Operation Element::mustBeOwned.
   --
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner. Subclasses of Element that do not require an owner must 
   --  override this operation.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Generalization_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Generalization_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.UML_Generalizations;
