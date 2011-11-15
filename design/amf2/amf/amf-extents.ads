------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                      Complete Meta Object Facility                       --
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
with AMF.Elements.Collections;

package AMF.Extents is

   pragma Preelaborate;

   type Extent is limited interface;

   type Extent_Access is access all Extent'Class;
   for Extent_Access'Storage_Size use 0;

   not overriding function Use_Containment
    (Self : not null access constant Extent) return Boolean is abstract;
   --  When true, recursively include all elements contained by members of the
   --  elements().

   not overriding function Elements
    (Self : not null access constant Extent)
       return AMF.Elements.Collections.Set_Of_Element is abstract;
   --  Returns a ReflectiveSequence of the elements directly referenced by this
   --  extent. If exclusive()==true, these elements must have
   --  container()==null. Extent.elements() is a reflective operation, not a
   --  reference between Extent and Element. See Chapter 4, “Reflection” for a
   --  definition of ReflectiveSequence.

   not overriding procedure Add_Element
    (Self    : not null access Extent;
     Element : not null AMF.Elements.Element_Access) is abstract;
   --  Adds an existing Element to the extent. This is a null operation if the
   --  Element is already in the Extent.

   not overriding procedure Remove_Element
    (Self    : not null access Extent;
     Element : not null AMF.Elements.Element_Access) is abstract;
   --  Removes the Element from the extent. It is an error if the Element is
   --  not a member. This may or may not result in it being deleted (see
   --  Section 6.3.2, “Deletion Semantics”).

   not overriding procedure Move_Element
    (Self    : not null access Extent;
     Element : not null AMF.Elements.Element_Access;
     Target  : not null access Extent'Class) is abstract;
   --  An atomic combination of addElement and removeElement. targetExtent must
   --  be different from the extent on which the operation is invoked.

   not overriding procedure Delete_Extent
    (Self : not null access Extent) is abstract;
   --  Deletes the Extent, but not necessarily the Elements it contains (see
   --  Section 6.3.2, “Deletion Semantics).

end AMF.Extents;
