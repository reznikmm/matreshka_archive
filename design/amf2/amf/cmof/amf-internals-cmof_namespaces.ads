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
with AMF.CMOF.Element_Imports.Collections;
with AMF.CMOF.Named_Elements.Collections;
with AMF.CMOF.Namespaces;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.Internals.CMOF_Named_Elements;

generic
   type Named_Element_Proxy is
     abstract new AMF.Internals.CMOF_Named_Elements.CMOF_Named_Element_Proxy
       with private;

package AMF.Internals.CMOF_Namespaces is

   type CMOF_Namespace_Proxy is
     abstract limited new Named_Element_Proxy
       and AMF.CMOF.Namespaces.CMOF_Namespace with null record;

   overriding function Get_Element_Import
    (Self : not null access constant CMOF_Namespace_Proxy)
       return AMF.CMOF.Element_Imports.Collections.Set_Of_CMOF_Element_Import;

   overriding function Get_Imported_Member
    (Self : not null access constant CMOF_Namespace_Proxy)
       return
         AMF.CMOF.Packageable_Elements.Collections.
           Set_Of_CMOF_Packageable_Element;

   overriding function Get_Member
    (Self : not null access constant CMOF_Namespace_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

end AMF.Internals.CMOF_Namespaces;
