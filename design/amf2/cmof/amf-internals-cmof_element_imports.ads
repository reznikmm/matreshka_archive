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
with AMF.CMOF.Element_Imports;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Namespaces;
with AMF.CMOF.Packageable_Elements;
with AMF.Internals.CMOF_Elements;

package AMF.Internals.CMOF_Element_Imports is

   type CMOF_Element_Import_Proxy is
     limited new AMF.Internals.CMOF_Elements.CMOF_Element_Proxy
       and AMF.CMOF.Element_Imports.CMOF_Element_Import
         with null record;

   --  XXX These subprograms are stubs

   overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Owner
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;

   overriding function Get_Related_Element
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Source
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Target
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return CMOF.CMOF_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Element_Import_Proxy;
     To   : CMOF.CMOF_Visibility_Kind);

   overriding function Get_Alias
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return Optional_String;

   overriding procedure Set_Alias
    (Self : not null access CMOF_Element_Import_Proxy;
     To   : Optional_String);

   overriding function Get_Imported_Element
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access;

   overriding procedure Set_Imported_Element
    (Self : not null access CMOF_Element_Import_Proxy;
     To   : AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access);

   overriding function Get_Importing_Namespace
    (Self : not null access constant CMOF_Element_Import_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace_Access;

   overriding procedure Set_Importing_Namespace
    (Self : not null access CMOF_Element_Import_Proxy;
     To   : AMF.CMOF.Namespaces.CMOF_Namespace_Access);

end AMF.Internals.CMOF_Element_Imports;
