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
--  A package merge defines how the contents of one package are extended by 
--  the contents of another package.
------------------------------------------------------------------------------
with AMF.UML.Directed_Relationships;
limited with AMF.UML.Packages;

package AMF.UML.Package_Merges is

   pragma Preelaborate;

   type UML_Package_Merge_Interface is limited interface
     and AMF.UML.Directed_Relationships.UML_Directed_Relationship_Interface;

   type UML_Package_Merge is
     access all UML_Package_Merge_Interface'Class;
   for UML_Package_Merge'Storage_Size use 0;

   not overriding function Get_Merged_Package
    (Self : not null access constant UML_Package_Merge_Interface)
       return AMF.UML.Packages.UML_Package is abstract;
   --  References the Package that is to be merged with the receiving package 
   --  of the PackageMerge.

   not overriding procedure Set_Merged_Package
    (Self : not null access UML_Package_Merge_Interface;
     To   : AMF.UML.Packages.UML_Package) is abstract;

   not overriding function Get_Receiving_Package
    (Self : not null access constant UML_Package_Merge_Interface)
       return AMF.UML.Packages.UML_Package is abstract;
   --  References the Package that is being extended with the contents of the 
   --  merged package of the PackageMerge.

   not overriding procedure Set_Receiving_Package
    (Self : not null access UML_Package_Merge_Interface;
     To   : AMF.UML.Packages.UML_Package) is abstract;

end AMF.UML.Package_Merges;
