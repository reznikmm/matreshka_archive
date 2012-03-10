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
with AMF.Internals.UML_Elements;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Instance_Specifications;
with AMF.UML.Slots;
with AMF.UML.Structural_Features;
with AMF.UML.Value_Specifications.Collections;
with AMF.Visitors.UML_Iterators;
with AMF.Visitors.UML_Visitors;

package AMF.Internals.UML_Slots is

   type UML_Slot_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Slots.UML_Slot with null record;

   overriding function Get_Defining_Feature
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Structural_Features.UML_Structural_Feature_Access;
   --  Getter of Slot::definingFeature.
   --
   --  The structural feature that specifies the values that may be held by 
   --  the slot.

   overriding procedure Set_Defining_Feature
    (Self : not null access UML_Slot_Proxy;
     To   : AMF.UML.Structural_Features.UML_Structural_Feature_Access);
   --  Setter of Slot::definingFeature.
   --
   --  The structural feature that specifies the values that may be held by 
   --  the slot.

   overriding function Get_Owning_Instance
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Instance_Specifications.UML_Instance_Specification_Access;
   --  Getter of Slot::owningInstance.
   --
   --  The instance specification that owns this slot.

   overriding procedure Set_Owning_Instance
    (Self : not null access UML_Slot_Proxy;
     To   : AMF.UML.Instance_Specifications.UML_Instance_Specification_Access);
   --  Setter of Slot::owningInstance.
   --
   --  The instance specification that owns this slot.

   overriding function Get_Value
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification;
   --  Getter of Slot::value.
   --
   --  The value or values corresponding to the defining feature for the 
   --  owning instance specification.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Slot_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Slot_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Slot_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_UML_Element
    (Self     : not null access constant UML_Slot_Proxy;
     Iterator : not null access AMF.Visitors.UML_Iterators.UML_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Slots;
