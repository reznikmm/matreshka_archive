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
--  Shows Classifiers with shapes that may have compartments.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UMLDI.UML_Compartmentable_Shapes;

package AMF.UMLDI.UML_Classifier_Shapes is

   pragma Preelaborate;

   type UMLDI_UML_Classifier_Shape is limited interface
     and AMF.UMLDI.UML_Compartmentable_Shapes.UMLDI_UML_Compartmentable_Shape;

   type UMLDI_UML_Classifier_Shape_Access is
     access all UMLDI_UML_Classifier_Shape'Class;
   for UMLDI_UML_Classifier_Shape_Access'Storage_Size use 0;

   not overriding function Get_Is_Double_Sided
    (Self : not null access constant UMLDI_UML_Classifier_Shape)
       return Boolean is abstract;
   --  Getter of UMLClassifierShape::isDoubleSided.
   --
   --  For modelElements that are Classes with true as a value for isActive 
   --  that are shown as rectangles, indicates whether the vertical sides 
   --  shall be rendered as double lines.

   not overriding procedure Set_Is_Double_Sided
    (Self : not null access UMLDI_UML_Classifier_Shape;
     To   : Boolean) is abstract;
   --  Setter of UMLClassifierShape::isDoubleSided.
   --
   --  For modelElements that are Classes with true as a value for isActive 
   --  that are shown as rectangles, indicates whether the vertical sides 
   --  shall be rendered as double lines.

   not overriding function Get_Is_Indent_For_Visibility
    (Self : not null access constant UMLDI_UML_Classifier_Shape)
       return Boolean is abstract;
   --  Getter of UMLClassifierShape::isIndentForVisibility.
   --
   --  For modelElements that are shown with feature compartments, indicates 
   --  whether features are shown indented under visibility headings.

   not overriding procedure Set_Is_Indent_For_Visibility
    (Self : not null access UMLDI_UML_Classifier_Shape;
     To   : Boolean) is abstract;
   --  Setter of UMLClassifierShape::isIndentForVisibility.
   --
   --  For modelElements that are shown with feature compartments, indicates 
   --  whether features are shown indented under visibility headings.

   not overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Classifier_Shape)
       return AMF.UML.Classifiers.UML_Classifier_Access is abstract;
   --  Getter of UMLClassifierShape::modelElement.
   --
   --  Restricts UMLClassifierShapes to showing exactly one Classifier.

   not overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Classifier_Shape;
     To   : AMF.UML.Classifiers.UML_Classifier_Access) is abstract;
   --  Setter of UMLClassifierShape::modelElement.
   --
   --  Restricts UMLClassifierShapes to showing exactly one Classifier.

end AMF.UMLDI.UML_Classifier_Shapes;
