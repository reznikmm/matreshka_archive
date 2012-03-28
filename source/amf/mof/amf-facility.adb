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
with League.Strings.Internals;

with AMF.Internals.Extents;
with AMF.Internals.XMI_URI_Rewriter;
with AMF.Internals.Tables.AMF_Tables;
with AMF.Stores;

with AMF.Internals.Modules.CMOF_Module;
pragma Unreferenced (AMF.Internals.Modules.CMOF_Module);
--  Dependency from CMOF module is required to construct CMOF metamodel at
--  elaboration time.

package body AMF.Facility is

   ----------------------
   -- Create_URI_Store --
   ----------------------

   function Create_URI_Store
    (Context_URI : League.Strings.Universal_String)
       return AMF.URI_Stores.URI_Store_Access is
   begin
      return
        AMF.Internals.Extents.Allocate_URI_Store
         (League.Strings.Internals.Internal (Context_URI));
   end Create_URI_Store;

   ------------
   -- Extent --
   ------------

   function Extent return AMF.Extents.Collections.Set_Of_Extent is
      Extent : AMF.Extents.Extent_Access;

   begin
      return Result : AMF.Extents.Collections.Set_Of_Extent do
         for J in 1 .. AMF.Internals.Tables.AMF_Tables.Extents.Last loop
            Extent := AMF.Internals.Extents.Proxy (J);

            if Extent.all in AMF.Stores.Store'Class then
               --  By convention, all metamodel's extents are not stores to
               --  prevent them from modification, so only stores are included
               --  in the set.

               Result.Insert (Extent);
            end if;
         end loop;
      end return;
   end Extent;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      AMF.Internals.XMI_URI_Rewriter.Initialize;
   end Initialize;

   -----------------
   -- Resolve_URI --
   -----------------

   function Resolve_URI
    (Href : League.Strings.Universal_String;
     Base : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
       return AMF.Elements.Element_Access is
   begin
      return null;
   end Resolve_URI;

end AMF.Facility;
