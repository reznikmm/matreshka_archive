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
--  A redefinable element is an element that, when defined in the context of a 
--  classifier, can be redefined more specifically or differently in the 
--  context of another classifier that specializes (directly or indirectly) 
--  the context classifier.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers;
with AMF.UML.Named_Elements;

package AMF.UML.Redefinable_Elements is

   pragma Preelaborate;

   type UML_Redefinable_Element_Interface is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element_Interface;

   type UML_Redefinable_Element is
     access all UML_Redefinable_Element_Interface'Class;

   type Set_Of_UML_Redefinable_Element is null record;
   type Ordered_Set_Of_UML_Redefinable_Element is null record;

   not overriding function Get_Is_Leaf
    (Self : not null access constant UML_Redefinable_Element_Interface)
       return Boolean is abstract;
   --  Indicates whether it is possible to further redefine a 
   --  RedefinableElement. If the value is true, then it is not possible to 
   --  further redefine the RedefinableElement. Note that this property is 
   --  preserved through package merge operations; that is, the capability to 
   --  redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in 
   --  the resulting RedefinableElement of a package merge operation where a 
   --  RedefinableElement with isLeaf=false is merged with a matching 
   --  RedefinableElement with isLeaf=true: the resulting RedefinableElement 
   --  will have isLeaf=false. Default value is false.

   not overriding procedure Set_Is_Leaf
    (Self : not null access UML_Redefinable_Element_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Redefined_Element
    (Self : not null access constant UML_Redefinable_Element_Interface)
       return AMF.UML.Redefinable_Elements.Set_Of_UML_Redefinable_Element is abstract;
   --  The redefinable element that is being redefined by this element.

   not overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Redefinable_Element_Interface)
       return AMF.UML.Classifiers.Set_Of_UML_Classifier is abstract;
   --  References the contexts that this element may be redefined from.

end AMF.UML.Redefinable_Elements;
