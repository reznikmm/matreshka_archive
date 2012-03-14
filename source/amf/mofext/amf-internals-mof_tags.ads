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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Internals.MOF_Elements;
with AMF.MOF.Tags;
with AMF.UML.Comments.Collections;
with AMF.UML.Elements.Collections;
with AMF.Visitors;

package AMF.Internals.MOF_Tags is

   type MOF_Tag_Proxy is
     limited new AMF.Internals.MOF_Elements.MOF_Element_Proxy
       and AMF.MOF.Tags.MOF_Tag with null record;

   overriding function Get_Name
    (Self : not null access constant MOF_Tag_Proxy)
       return League.Strings.Universal_String;
   --  Getter of Tag::name.
   --

   overriding procedure Set_Name
    (Self : not null access MOF_Tag_Proxy;
     To   : League.Strings.Universal_String);
   --  Setter of Tag::name.
   --

   overriding function Get_Value
    (Self : not null access constant MOF_Tag_Proxy)
       return League.Strings.Universal_String;
   --  Getter of Tag::value.
   --

   overriding procedure Set_Value
    (Self : not null access MOF_Tag_Proxy;
     To   : League.Strings.Universal_String);
   --  Setter of Tag::value.
   --

   overriding function Get_Element
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Tag::element.
   --

   overriding function Get_Tag_Owner
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Tag::tagOwner.
   --

   overriding procedure Set_Tag_Owner
    (Self : not null access MOF_Tag_Proxy;
     To   : AMF.UML.Elements.UML_Element_Access);
   --  Setter of Tag::tagOwner.
   --

   overriding function Get_Owned_Comment
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function All_Owned_Elements
    (Self : not null access constant MOF_Tag_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Must_Be_Owned
    (Self : not null access constant MOF_Tag_Proxy)
       return Boolean;
   --  Operation Element::mustBeOwned.
   --
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner. Subclasses of Element that do not require an owner must 
   --  override this operation.

   overriding procedure Enter_Element
    (Self    : not null access constant MOF_Tag_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant MOF_Tag_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant MOF_Tag_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.MOF_Tags;
