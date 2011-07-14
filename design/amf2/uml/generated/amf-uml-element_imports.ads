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
--  An element import identifies an element in another package, and allows the 
--  element to be referenced using its name without a qualifier.
------------------------------------------------------------------------------
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Namespaces;
limited with AMF.UML.Packageable_Elements;

package AMF.UML.Element_Imports is

   pragma Preelaborate;

   type UML_Element_Import is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship;

   type UML_Element_Import_Access is
     access all UML_Element_Import'Class;
   for UML_Element_Import_Access'Storage_Size use 0;

   not overriding function Get_Alias
    (Self : not null access constant UML_Element_Import)
       return AMF.Optional_String is abstract;
   --  Specifies the name that should be added to the namespace of the 
   --  importing package in lieu of the name of the imported packagable 
   --  element. The aliased name must not clash with any other member name in 
   --  the importing package. By default, no alias is used.

   not overriding procedure Set_Alias
    (Self : not null access UML_Element_Import;
     To   : AMF.Optional_String) is abstract;

   not overriding function Get_Imported_Element
    (Self : not null access constant UML_Element_Import)
       return AMF.UML.Packageable_Elements.UML_Packageable_Element_Access is abstract;
   --  Specifies the PackageableElement whose name is to be added to a 
   --  Namespace.

   not overriding procedure Set_Imported_Element
    (Self : not null access UML_Element_Import;
     To   : AMF.UML.Packageable_Elements.UML_Packageable_Element_Access) is abstract;

   not overriding function Get_Importing_Namespace
    (Self : not null access constant UML_Element_Import)
       return AMF.UML.Namespaces.UML_Namespace_Access is abstract;
   --  Specifies the Namespace that imports a PackageableElement from another 
   --  Package.

   not overriding procedure Set_Importing_Namespace
    (Self : not null access UML_Element_Import;
     To   : AMF.UML.Namespaces.UML_Namespace_Access) is abstract;

   not overriding function Get_Visibility
    (Self : not null access constant UML_Element_Import)
       return AMF.UML.UML_Visibility_Kind is abstract;
   --  Specifies the visibility of the imported PackageableElement within the 
   --  importing Package. The default visibility is the same as that of the 
   --  imported element. If the imported element does not have a visibility, 
   --  it is possible to add visibility to the element import.

   not overriding procedure Set_Visibility
    (Self : not null access UML_Element_Import;
     To   : AMF.UML.UML_Visibility_Kind) is abstract;

   not overriding function Get_Name
    (Self : not null access constant UML_Element_Import)
       return League.Strings.Universal_String is abstract;
   --  The query getName() returns the name under which the imported 
   --  PackageableElement will be known in the importing namespace.

end AMF.UML.Element_Imports;
