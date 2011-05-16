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
--  A classifier template parameter exposes a classifier as a formal template 
--  parameter.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UML.Template_Parameters;

package AMF.UML.Classifier_Template_Parameters is

   pragma Preelaborate;

   type UML_Classifier_Template_Parameter_Interface is limited interface
     and AMF.UML.Template_Parameters.UML_Template_Parameter_Interface;

   type UML_Classifier_Template_Parameter is
     access all UML_Classifier_Template_Parameter_Interface'Class;

   type Set_Of_UML_Classifier_Template_Parameter is null record;
   type Ordered_Set_Of_UML_Classifier_Template_Parameter is null record;

   not overriding function Get_Allow_Substitutable
    (Self : not null access constant UML_Classifier_Template_Parameter_Interface)
       return Boolean is abstract;
   --  Constrains the required relationship between an actual parameter and 
   --  the parameteredElement for this formal parameter.

   not overriding procedure Set_Allow_Substitutable
    (Self : not null access UML_Classifier_Template_Parameter_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Constraining_Classifier
    (Self : not null access constant UML_Classifier_Template_Parameter_Interface)
       return AMF.UML.Classifiers.Set_Of_UML_Classifier is abstract;
   --  The classifiers that constrain the argument that can be used for the 
   --  parameter. If the allowSubstitutable attribute is true, then any 
   --  classifier that is compatible with this constraining classifier can be 
   --  substituted; otherwise, it must be either this classifier or one of its 
   --  subclasses. If this property is empty, there are no constraints on the 
   --  classifier that can be used as an argument.

   not overriding function Get_Parametered_Element
    (Self : not null access constant UML_Classifier_Template_Parameter_Interface)
       return AMF.UML.Classifiers.UML_Classifier is abstract;
   --  The parameterable classifier for this template parameter.

   not overriding procedure Set_Parametered_Element
    (Self : not null access UML_Classifier_Template_Parameter_Interface;
     To   : AMF.UML.Classifiers.UML_Classifier) is abstract;

end AMF.UML.Classifier_Template_Parameters;
