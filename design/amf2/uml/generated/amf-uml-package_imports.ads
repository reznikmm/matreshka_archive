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
--  A package import is a relationship that allows the use of unqualified 
--  names to refer to package members from other namespaces.
------------------------------------------------------------------------------
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Namespaces;
limited with AMF.UML.Packages;

package AMF.UML.Package_Imports is

   pragma Preelaborate;

   type UML_Package_Import_Interface is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship_Interface;

   type UML_Package_Import is
     access all UML_Package_Import_Interface'Class;

   type Set_Of_UML_Package_Import is null record;
   type Ordered_Set_Of_UML_Package_Import is null record;

   not overriding function Get_Imported_Package
    (Self : not null access constant UML_Package_Import_Interface)
       return AMF.UML.Packages.UML_Package is abstract;
   --  Specifies the Package whose members are imported into a Namespace.

   not overriding procedure Set_Imported_Package
    (Self : not null access UML_Package_Import_Interface;
     To   : AMF.UML.Packages.UML_Package) is abstract;

   not overriding function Get_Importing_Namespace
    (Self : not null access constant UML_Package_Import_Interface)
       return AMF.UML.Namespaces.UML_Namespace is abstract;
   --  Specifies the Namespace that imports the members from a Package.

   not overriding procedure Set_Importing_Namespace
    (Self : not null access UML_Package_Import_Interface;
     To   : AMF.UML.Namespaces.UML_Namespace) is abstract;

   not overriding function Get_Visibility
    (Self : not null access constant UML_Package_Import_Interface)
       return UML_Visibility_Kind is abstract;
   --  Specifies the visibility of the imported PackageableElements within the 
   --  importing Namespace, i.e., whether imported elements will in turn be 
   --  visible to other packages that use that importingPackage as an 
   --  importedPackage. If the PackageImport is public, the imported elements 
   --  will be visible outside the package, while if it is private they will 
   --  not.

   not overriding procedure Set_Visibility
    (Self : not null access UML_Package_Import_Interface;
     To   : UML_Visibility_Kind) is abstract;

end AMF.UML.Package_Imports;
