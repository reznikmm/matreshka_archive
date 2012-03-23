------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Wide_Wide_Text_IO;

with AMF.Facility;
with AMF.URI_Extents;
with XMI.Reader;

with Generator.Arguments;

package body Generator.Loader is

   use Generator.Arguments;

   ---------------------
   -- Load_Metamodels --
   ---------------------

   procedure Load_Metamodels is
   begin
      for J in 1 .. Metamodel_URIs.Length loop
         declare
            Extents  : constant AMF.Extents.Collections.Set_Of_Extent
              := AMF.Facility.Extent;
            Position : AMF.Extents.Collections.Extent_Sets.Cursor
              := Extents.First;
            Found    : Boolean := False;

         begin
            Ada.Wide_Wide_Text_IO.Put_Line
             (Ada.Wide_Wide_Text_IO.Standard_Error,
              "  ... '"
                & Metamodel_URIs.Element (J).To_Wide_Wide_String
                & ''');

            --  Try to locate URI in the list of loaded extents.

            while
              AMF.Extents.Collections.Extent_Sets.Has_Element (Position)
            loop
               if AMF.URI_Extents.URI_Extent_Access
                   (AMF.Extents.Collections.Extent_Sets.Element
                     (Position)).Context_URI = Metamodel_URIs.Element (J)
               then
                  Module_Info.Extents.Append
                   (AMF.Extents.Collections.Extent_Sets.Element (Position));
                  Found := True;

                  exit;
               end if;

               AMF.Extents.Collections.Extent_Sets.Next (Position);
            end loop;

            --  Load metamodel when it is not found in the list of loaded
            --  models.

            if not Found then
               Module_Info.Extents.Append
                (AMF.Extents.Extent_Access
                  (XMI.Reader.Read_URI (Metamodel_URIs.Element (J))));
            end if;
         end;
      end loop;
   end Load_Metamodels;

end Generator.Loader;
