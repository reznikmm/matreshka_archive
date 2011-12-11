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
with AMF.UML.Classifier_Template_Parameters;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Template_Signatures;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Classifier_Template_Parameters is

   type UML_Classifier_Template_Parameter_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter with null record;

   overriding function Get_Allow_Substitutable
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return Boolean;
   --  Getter of ClassifierTemplateParameter::allowSubstitutable.
   --
   --  Constrains the required relationship between an actual parameter and 
   --  the parameteredElement for this formal parameter.

   overriding procedure Set_Allow_Substitutable
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : Boolean);
   --  Setter of ClassifierTemplateParameter::allowSubstitutable.
   --
   --  Constrains the required relationship between an actual parameter and 
   --  the parameteredElement for this formal parameter.

   overriding function Get_Constraining_Classifier
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of ClassifierTemplateParameter::constrainingClassifier.
   --
   --  The classifiers that constrain the argument that can be used for the 
   --  parameter. If the allowSubstitutable attribute is true, then any 
   --  classifier that is compatible with this constraining classifier can be 
   --  substituted; otherwise, it must be either this classifier or one of its 
   --  subclasses. If this property is empty, there are no constraints on the 
   --  classifier that can be used as an argument.

   overriding function Get_Parametered_Element
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of ClassifierTemplateParameter::parameteredElement.
   --
   --  The parameterable classifier for this template parameter.

   overriding procedure Set_Parametered_Element
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access);
   --  Setter of ClassifierTemplateParameter::parameteredElement.
   --
   --  The parameterable classifier for this template parameter.

   overriding function Get_Default
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access;
   --  Getter of TemplateParameter::default.
   --
   --  The element that is the default for this formal template parameter.

   overriding procedure Set_Default
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access);
   --  Setter of TemplateParameter::default.
   --
   --  The element that is the default for this formal template parameter.

   overriding function Get_Owned_Default
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access;
   --  Getter of TemplateParameter::ownedDefault.
   --
   --  The element that is owned by this template parameter for the purpose of 
   --  providing a default.

   overriding procedure Set_Owned_Default
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access);
   --  Setter of TemplateParameter::ownedDefault.
   --
   --  The element that is owned by this template parameter for the purpose of 
   --  providing a default.

   overriding function Get_Owned_Parametered_Element
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access;
   --  Getter of TemplateParameter::ownedParameteredElement.
   --
   --  The element that is owned by this template parameter.

   overriding procedure Set_Owned_Parametered_Element
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access);
   --  Setter of TemplateParameter::ownedParameteredElement.
   --
   --  The element that is owned by this template parameter.

   overriding function Get_Parametered_Element
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access;
   --  Getter of TemplateParameter::parameteredElement.
   --
   --  The element exposed by this template parameter.

   overriding procedure Set_Parametered_Element
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access);
   --  Setter of TemplateParameter::parameteredElement.
   --
   --  The element exposed by this template parameter.

   overriding function Get_Signature
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;
   --  Getter of TemplateParameter::signature.
   --
   --  The template signature that owns this template parameter.

   overriding procedure Set_Signature
    (Self : not null access UML_Classifier_Template_Parameter_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);
   --  Setter of TemplateParameter::signature.
   --
   --  The template signature that owns this template parameter.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Classifier_Template_Parameter_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Classifier_Template_Parameter_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Classifier_Template_Parameter_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

end AMF.Internals.UML_Classifier_Template_Parameters;
