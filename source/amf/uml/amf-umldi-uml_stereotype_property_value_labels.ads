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
--  For showing Property values of Stereotypes applied to UML abstract syntax 
--  elements.
------------------------------------------------------------------------------
limited with AMF.UML.Elements;
limited with AMF.UML.Properties;
with AMF.UMLDI.UML_Labels;

package AMF.UMLDI.UML_Stereotype_Property_Value_Labels is

   pragma Preelaborate;

   type UMLDI_UML_Stereotype_Property_Value_Label is limited interface
     and AMF.UMLDI.UML_Labels.UMLDI_UML_Label;

   type UMLDI_UML_Stereotype_Property_Value_Label_Access is
     access all UMLDI_UML_Stereotype_Property_Value_Label'Class;
   for UMLDI_UML_Stereotype_Property_Value_Label_Access'Storage_Size use 0;

   not overriding function Get_Model_Element
    (Self : not null access constant UMLDI_UML_Stereotype_Property_Value_Label)
       return AMF.UML.Properties.UML_Property_Access is abstract;
   --  Getter of UMLStereotypePropertyValueLabel::modelElement.
   --
   --  A Property of a Stereotype applied to the stereotypedElement.

   not overriding procedure Set_Model_Element
    (Self : not null access UMLDI_UML_Stereotype_Property_Value_Label;
     To   : AMF.UML.Properties.UML_Property_Access) is abstract;
   --  Setter of UMLStereotypePropertyValueLabel::modelElement.
   --
   --  A Property of a Stereotype applied to the stereotypedElement.

   not overriding function Get_Stereotyped_Element
    (Self : not null access constant UMLDI_UML_Stereotype_Property_Value_Label)
       return AMF.UML.Elements.UML_Element_Access is abstract;
   --  Getter of UMLStereotypePropertyValueLabel::stereotypedElement.
   --
   --  Element to which a Stereotype having the modelElement (Property) is 
   --  applied.

   not overriding procedure Set_Stereotyped_Element
    (Self : not null access UMLDI_UML_Stereotype_Property_Value_Label;
     To   : AMF.UML.Elements.UML_Element_Access) is abstract;
   --  Setter of UMLStereotypePropertyValueLabel::stereotypedElement.
   --
   --  Element to which a Stereotype having the modelElement (Property) is 
   --  applied.

end AMF.UMLDI.UML_Stereotype_Property_Value_Labels;
