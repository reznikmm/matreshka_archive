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
with AMF.CMOF.Constraints.Collections;
with AMF.CMOF.Element_Imports.Collections;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Named_Elements.Collections;
with AMF.CMOF.Namespaces.Collections;
with AMF.CMOF.Package_Imports.Collections;
with AMF.CMOF.Package_Merges.Collections;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages.Collections;
with AMF.CMOF.Types.Collections;
with AMF.Internals.CMOF_Named_Elements;
with CMOF;

package AMF.Internals.CMOF_Packages is

   type CMOF_Package_Proxy is
     limited new AMF.Internals.CMOF_Named_Elements.CMOF_Named_Element_Proxy
       and AMF.CMOF.Packages.CMOF_Package with null record;

   --  XXX These subprograms are stubs

   overriding function Get_Owned_Element
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Get_Owner
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access;

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element;

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Package_Proxy)
       return Boolean;

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Optional_CMOF_Visibility_Kind;

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Package_Proxy;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind);

   overriding function Get_Namespace
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace_Access;

   overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Package_Proxy)
       return Optional_String;

   overriding function All_Namespaces
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Namespaces.Collections.Ordered_Set_Of_CMOF_Namespace;

   overriding function Is_Distinguishable_From
    (Self : not null access constant CMOF_Package_Proxy;
     N : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Ns : AMF.CMOF.Namespaces.CMOF_Namespace_Access)
       return Boolean;

   overriding function Separator
    (Self : not null access constant CMOF_Package_Proxy)
       return League.Strings.Universal_String;

   overriding function Qualified_Name
    (Self : not null access constant CMOF_Package_Proxy)
       return League.Strings.Universal_String;

   overriding function Get_Imported_Member
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Get_Element_Import
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Element_Imports.Collections.Set_Of_CMOF_Element_Import;

   overriding function Get_Package_Import
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Package_Imports.Collections.Set_Of_CMOF_Package_Import;

   overriding function Get_Owned_Member
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function Get_Member
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element;

   overriding function Get_Owned_Rule
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint;

   overriding function Imported_Member
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Get_Names_Of_Member
    (Self : not null access constant CMOF_Package_Proxy;
     Element : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return AMF.CMOF.Set_Of_String;

   overriding function Import_Members
    (Self : not null access constant CMOF_Package_Proxy;
     Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Exclude_Collisions
    (Self : not null access constant CMOF_Package_Proxy;
     Imps : AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Members_Are_Distinguishable
    (Self : not null access constant CMOF_Package_Proxy)
       return Boolean;

   overriding function Get_Packaged_Element
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Get_Owned_Type
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type;

   overriding function Get_Nested_Package
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;

   overriding function Get_Nesting_Package
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packages.CMOF_Package_Access;

   overriding procedure Set_Nesting_Package
    (Self : not null access CMOF_Package_Proxy;
     To   : AMF.CMOF.Packages.CMOF_Package_Access);

   overriding function Get_Package_Merge
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Package_Merges.Collections.Set_Of_CMOF_Package_Merge;

   overriding function Get_Uri
    (Self : not null access constant CMOF_Package_Proxy)
       return Optional_String;

   overriding procedure Set_Uri
    (Self : not null access CMOF_Package_Proxy;
     To   : Optional_String);

   overriding function Visible_Members
    (Self : not null access constant CMOF_Package_Proxy)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;

   overriding function Makes_Visible
    (Self : not null access constant CMOF_Package_Proxy;
     El : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return Boolean;

end AMF.Internals.CMOF_Packages;
