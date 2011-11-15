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
with League.Strings.Internals;

with AMF.Internals.Extents;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.AMF_Tables;
with CMOF.Internals.Extents;

package body AMF.Internals.AMF_URI_Extents is

   -----------------
   -- Add_Element --
   -----------------

   overriding procedure Add_Element
    (Self    : not null access AMF_URI_Extent;
     Element : not null AMF.Elements.Element_Access) is
   begin
      null;
   end Add_Element;

   -----------------
   -- Context_URI --
   -----------------

   overriding function Context_URI
    (Self : not null access constant AMF_URI_Extent)
       return League.Strings.Universal_String is
   begin
      return
        League.Strings.Internals.Create
         (AMF.Internals.Tables.AMF_Tables.Extents.Table (Self.Id).Context_URI);
   end Context_URI;

   -------------------
   -- Delete_Extent --
   -------------------

   overriding procedure Delete_Extent (Self : not null access AMF_URI_Extent) is
   begin
      null;
   end Delete_Extent;

   -------------
   -- Element --
   -------------

   overriding function Element
    (Self : not null access constant AMF_URI_Extent;
     URI  : League.Strings.Universal_String)
       return AMF.Elements.Element_Access is
   begin
      return
        AMF.Internals.Helpers.To_Element
         (AMF.Internals.Extents.Element (Self.Id, URI));
   end Element;

   --------------
   -- Elements --
   --------------

   overriding function Elements
    (Self : not null access constant AMF_URI_Extent)
       return AMF.Elements.Collections.Set_Of_Element is
   begin
      return
        AMF.Elements.Collections.Wrap
         (Standard.CMOF.Internals.Extents.All_Elements (Self.Id));
   end Elements;

   ------------------
   -- Move_Element --
   ------------------

   overriding procedure Move_Element
    (Self    : not null access AMF_URI_Extent;
     Element : not null AMF.Elements.Element_Access;
     Target  : not null access AMF.Extents.Extent'Class) is
   begin
      null;
   end Move_Element;

   --------------------
   -- Remove_Element --
   --------------------

   overriding procedure Remove_Element
    (Self    : not null access AMF_URI_Extent;
     Element : not null AMF.Elements.Element_Access) is
   begin
      null;
   end Remove_Element;

   ---------
   -- URI --
   ---------

   overriding function URI
    (Self    : not null access constant AMF_URI_Extent;
     Element : not null access constant AMF.Elements.Abstract_Element'Class)
       return League.Strings.Universal_String is
   begin
      return
        AMF.Internals.Extents.URI
         (Self.Id, AMF.Internals.Helpers.To_Element (Element));
   end URI;

   ---------------------
   -- Use_Containment --
   ---------------------

   overriding function Use_Containment
    (Self : not null access constant AMF_URI_Extent) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return True;
   end Use_Containment;

end AMF.Internals.AMF_URI_Extents;
