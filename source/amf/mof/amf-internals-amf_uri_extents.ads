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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.Elements.Collections;
with AMF.Extents;
with AMF.Links.Collections;
with AMF.URI_Extents;

package AMF.Internals.AMF_URI_Extents is

   type AMF_URI_Extent is limited new AMF.URI_Extents.URI_Extent with record
      Id : AMF_Extent;
   end record;

   type AMF_URI_Extent_Access is access all AMF_URI_Extent'Class;

   ---------------------------
   --  Extent's operations  --
   ---------------------------

   overriding function Use_Containment
    (Self : not null access constant AMF_URI_Extent) return Boolean;
   --  When true, recursively include all elements contained by members of the
   --  elements().

   overriding function Elements
    (Self : not null access constant AMF_URI_Extent)
       return AMF.Elements.Collections.Set_Of_Element;
   --  Returns a ReflectiveSequence of the elements directly referenced by this
   --  extent. If exclusive()==true, these elements must have
   --  container()==null. Extent.elements() is a reflective operation, not a
   --  reference between Extent and Element. See Chapter 4, “Reflection” for a
   --  definition of ReflectiveSequence.

   overriding function Elements_Of_Type
    (Self             : not null access constant AMF_URI_Extent;
     The_Type         : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Include_Subtypes : Boolean)
       return AMF.Elements.Collections.Set_Of_Element;
   --  This returns those elements in the extent that are instances of the
   --  supplied Class. If includeSubtypes is true, then instances of any
   --  subclasses are also returned.

   overriding function Links_Of_Type
    (Self     : not null access constant AMF_URI_Extent;
     The_Type : not null AMF.CMOF.Associations.CMOF_Association_Access)
       return AMF.Links.Collections.Set_Of_Link;
   --  linksOfType(type : Association) : Link[0..*]
   --  This returns those links in the extent that are instances of the
   --  supplied Association.

   overriding function Linked_Elements
    (Self                     : not null access constant AMF_URI_Extent;
     Association              :
       not null AMF.CMOF.Associations.CMOF_Association_Access;
     End_Element              : not null AMF.Elements.Element_Access;
     End_1_To_End_2_Direction : Boolean)
       return AMF.Elements.Collections.Set_Of_Element;
   --  This navigates the supplied Association from the supplied Element. The
   --  direction of navigation is given by the end1ToEnd2Direction parameter:
   --  if true, then the supplied Element is treated as the first end of the
   --  Association.

   overriding function Link_Exists
    (Self           : not null access constant AMF_URI_Extent;
     Association    : not null AMF.CMOF.Associations.CMOF_Association_Access;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return Boolean;
   --  This returns true if there exists at least one link for the association
   --  between the supplied elements at their respective ends.

   overriding procedure Add_Element
    (Self    : not null access AMF_URI_Extent;
     Element : not null AMF.Elements.Element_Access);
   --  Adds an existing Element to the extent. This is a null operation if the
   --  Element is already in the Extent.

   overriding procedure Remove_Element
    (Self    : not null access AMF_URI_Extent;
     Element : not null AMF.Elements.Element_Access);
   --  Removes the Element from the extent. It is an error if the Element is
   --  not a member. This may or may not result in it being deleted (see
   --  Section 6.3.2, “Deletion Semantics”).

   overriding procedure Move_Element
    (Self    : not null access AMF_URI_Extent;
     Element : not null AMF.Elements.Element_Access;
     Target  : not null access AMF.Extents.Extent'Class);
   --  An atomic combination of addElement and removeElement. targetExtent must
   --  be different from the extent on which the operation is invoked.

   overriding procedure Delete_Extent (Self : not null access AMF_URI_Extent);
   --  Deletes the Extent, but not necessarily the Elements it contains (see
   --  Section 6.3.2, “Deletion Semantics).

   ------------------------------
   --  URIExtent's operations  --
   ------------------------------

   overriding function Context_URI
    (Self : not null access constant AMF_URI_Extent)
       return League.Strings.Universal_String;
   --  Specifies an identifier for the extent that establishes a URI context
   --  for identifying elements in the extent. An extent has an identifier if a
   --  URI is assigned. URI is defined in IETF RFC-2396 available at
   --  http://www.ietf.org/rfc/rfc2396.txt.

   overriding function URI
    (Self    : not null access constant AMF_URI_Extent;
     Element : not null access constant AMF.Elements.Abstract_Element'Class)
       return League.Strings.Universal_String;
   --  Returns the URI of the given element in the extent. Returns Null if the
   --  element is not in the extent.

   overriding function Element
    (Self : not null access constant AMF_URI_Extent;
     URI  : League.Strings.Universal_String)
       return AMF.Elements.Element_Access;
   --  Returns the Element identified by the given URI in the extent. Returns
   --  Null if there is no element in the extent with the given URI. Note the
   --  Element does not (necessarily) contain a property corresponding to the
   --  URI. The URI identifies the element in the context of the extent. The
   --  same element may have a different identifier in another extent.

end AMF.Internals.AMF_URI_Extents;
