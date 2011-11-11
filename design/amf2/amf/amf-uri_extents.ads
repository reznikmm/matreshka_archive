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
with AMF.Elements;
with AMF.Extents;

package AMF.URI_Extents is

   pragma Preelaborate;

   type URI_Extent is limited interface and AMF.Extents.Extent;

   type URI_Extent_Access is access all URI_Extent'Class;
   for URI_Extent_Access'Storage_Size use 0;

   not overriding function Context_URI
    (Self : not null access constant URI_Extent)
       return League.Strings.Universal_String is abstract;
   --  Specifies an identifier for the extent that establishes a URI context
   --  for identifying elements in the extent. An extent has an identifier if a
   --  URI is assigned. URI is defined in IETF RFC-2396 available at
   --  http://www.ietf.org/rfc/rfc2396.txt.

   not overriding function URI
    (Self    : not null access constant URI_Extent;
     Element : not null access constant AMF.Elements.Abstract_Element'Class)
       return League.Strings.Universal_String is abstract;
   --  Returns the URI of the given element in the extent. Returns Null if the
   --  element is not in the extent.

   not overriding function Element
    (Self : not null access constant URI_Extent;
     URI  : League.Strings.Universal_String)
       return AMF.Elements.Element_Access is abstract;
   --  Returns the Element identified by the given URI in the extent. Returns
   --  Null if there is no element in the extent with the given URI. Note the
   --  Element does not (necessarily) contain a property corresponding to the
   --  URI. The URI identifies the element in the context of the extent. The
   --  same element may have a different identifier in another extent.

end AMF.URI_Extents;
