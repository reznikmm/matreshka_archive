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
--  An element is a constituent of a model. As such, it has the capability of 
--  owning other elements.
------------------------------------------------------------------------------
limited with AMF.CMOF.Comments.Collections;
limited with AMF.CMOF.Elements.Collections;

package AMF.CMOF.Elements is

   pragma Preelaborate;

   type CMOF_Element is limited interface;

   type CMOF_Element_Access is
     access all CMOF_Element'Class;
   for CMOF_Element_Access'Storage_Size use 0;

   not overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Element)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is abstract;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   not overriding function Get_Owner
    (Self : not null access constant CMOF_Element)
       return AMF.CMOF.Elements.CMOF_Element_Access is abstract;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   not overriding function Get_Owned_Comment
    (Self : not null access constant CMOF_Element)
       return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment is abstract;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   not overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Element)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is abstract;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   not overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Element)
       return Boolean is abstract;
   --  Operation Element::mustBeOwned.
   --
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner. Subclasses of Element that do not require an owner must 
   --  override this operation.

end AMF.CMOF.Elements;
