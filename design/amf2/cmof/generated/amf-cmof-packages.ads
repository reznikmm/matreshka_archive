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
--  A package is used to group elements, and provides a namespace for the 
--  grouped elements.
------------------------------------------------------------------------------
with AMF.CMOF.Namespaces;
limited with AMF.CMOF.Package_Merges.Collections;
with AMF.CMOF.Packageable_Elements;
limited with AMF.CMOF.Packageable_Elements.Collections;
limited with AMF.CMOF.Packages.Collections;
limited with AMF.CMOF.Types.Collections;

package AMF.CMOF.Packages is

   pragma Preelaborate;

   type CMOF_Package is limited interface
     and AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element
     and AMF.CMOF.Namespaces.CMOF_Namespace;

   type CMOF_Package_Access is
     access all CMOF_Package'Class;
   for CMOF_Package_Access'Storage_Size use 0;

   not overriding function Get_Packaged_Element
    (Self : not null access constant CMOF_Package)
       return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element is abstract;
   --  Specifies the packageable elements that are owned by this Package.

   not overriding function Get_Owned_Type
    (Self : not null access constant CMOF_Package)
       return AMF.CMOF.Types.Collections.Set_Of_CMOF_Type is abstract;
   --  References the packaged elements that are Types.

   not overriding function Get_Nested_Package
    (Self : not null access constant CMOF_Package)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package is abstract;
   --  References the packaged elements that are Packages.

   not overriding function Get_Nesting_Package
    (Self : not null access constant CMOF_Package)
       return AMF.CMOF.Packages.CMOF_Package_Access is abstract;
   --  References the Package that owns this Package.

   not overriding procedure Set_Nesting_Package
    (Self : not null access CMOF_Package;
     To   : AMF.CMOF.Packages.CMOF_Package_Access) is abstract;

   not overriding function Get_Package_Merge
    (Self : not null access constant CMOF_Package)
       return AMF.CMOF.Package_Merges.Collections.Set_Of_CMOF_Package_Merge is abstract;
   --  References the PackageMerges that are owned by this Package.

   not overriding function Get_Uri
    (Self : not null access constant CMOF_Package)
       return Optional_String is abstract;
   --  Provides an identifier for the package that can be used for many 
   --  purposes. A URI is the universally unique identification of the package 
   --  following the IETF URI specification, RFC 2396 
   --  http://www.ietf.org/rfc/rfc2396.txt. UML 1.4 and MOF 1.4 were assigned 
   --  URIs to their outermost package. The package URI appears in XMI files 
   --  when instances of the package’s classes are serialized.

   not overriding procedure Set_Uri
    (Self : not null access CMOF_Package;
     To   : Optional_String) is abstract;

end AMF.CMOF.Packages;
