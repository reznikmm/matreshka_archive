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
--  A redefinable template signature supports the addition of formal template 
--  parameters in a specialization of a template classifier.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UML.Redefinable_Elements;
limited with AMF.UML.Redefinable_Template_Signatures.Collections;
limited with AMF.UML.Template_Parameters.Collections;
with AMF.UML.Template_Signatures;

package AMF.UML.Redefinable_Template_Signatures is

   pragma Preelaborate;

   type UML_Redefinable_Template_Signature is limited interface
     and AMF.UML.Redefinable_Elements.UML_Redefinable_Element
     and AMF.UML.Template_Signatures.UML_Template_Signature;

   type UML_Redefinable_Template_Signature_Access is
     access all UML_Redefinable_Template_Signature'Class;
   for UML_Redefinable_Template_Signature_Access'Storage_Size use 0;

   not overriding function Get_Classifier
    (Self : not null access constant UML_Redefinable_Template_Signature)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of RedefinableTemplateSignature::classifier.
   --
   --  The classifier that owns this template signature.

   not overriding procedure Set_Classifier
    (Self : not null access UML_Redefinable_Template_Signature;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;
   --  Setter of RedefinableTemplateSignature::classifier.
   --
   --  The classifier that owns this template signature.

   not overriding function Get_Extended_Signature
    (Self : not null access constant UML_Redefinable_Template_Signature)
       return AMF.UML.Redefinable_Template_Signatures.Collections.Set_Of_UML_Redefinable_Template_Signature is abstract;
   --  Getter of RedefinableTemplateSignature::extendedSignature.
   --
   --  The template signature that is extended by this template signature.

   not overriding function Get_Inherited_Parameter
    (Self : not null access constant UML_Redefinable_Template_Signature)
       return AMF.UML.Template_Parameters.Collections.Set_Of_UML_Template_Parameter is abstract;
   --  Getter of RedefinableTemplateSignature::inheritedParameter.
   --
   --  The formal template parameters of the extendedSignature.

   not overriding function Inherited_Parameter
    (Self : not null access constant UML_Redefinable_Template_Signature)
       return AMF.UML.Template_Parameters.Collections.Set_Of_UML_Template_Parameter is abstract;
   --  Operation RedefinableTemplateSignature::inheritedParameter.
   --
   --  Missing derivation for 
   --  RedefinableTemplateSignature::/inheritedParameter : TemplateParameter

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Redefinable_Template_Signature;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is abstract;
   --  Operation RedefinableTemplateSignature::isConsistentWith.
   --
   --  The query isConsistentWith() specifies, for any two 
   --  RedefinableTemplateSignatures in a context in which redefinition is 
   --  possible, whether redefinition would be logically consistent. A 
   --  redefining template signature is always consistent with a redefined 
   --  template signature, since redefinition only adds new formal parameters.

end AMF.UML.Redefinable_Template_Signatures;
