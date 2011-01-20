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
with AMF.CMOF.Namespaces;
limited with AMF.CMOF.Package_Merges;
with AMF.CMOF.Packageable_Elements;
limited with AMF.CMOF.Types;

package AMF.CMOF.Packages is

   pragma Preelaborate;

   type CMOF_Package_Interface is limited interface
     and AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Interface
     and AMF.CMOF.Namespaces.CMOF_Namespace_Interface;

   type CMOF_Package is
     access all CMOF_Package_Interface'Class;

   type Set_Of_CMOF_Package is null record;
   type Ordered_Set_Of_CMOF_Package is null record;

   not overriding function Get_Packaged_Element
    (Self : not null access constant CMOF_Package_Interface)
       return AMF.CMOF.Packageable_Elements.Set_Of_CMOF_Packageable_Element is abstract;

   not overriding function Get_Owned_Type
    (Self : not null access constant CMOF_Package_Interface)
       return AMF.CMOF.Types.Set_Of_CMOF_Type is abstract;

   not overriding function Get_Nested_Package
    (Self : not null access constant CMOF_Package_Interface)
       return AMF.CMOF.Packages.Set_Of_CMOF_Package is abstract;

   not overriding function Get_Nesting_Package
    (Self : not null access constant CMOF_Package_Interface)
       return AMF.CMOF.Packages.CMOF_Package is abstract;

   not overriding procedure Set_Nesting_Package
    (Self : not null access CMOF_Package_Interface;
     To   : AMF.CMOF.Packages.CMOF_Package) is abstract;

   not overriding function Get_Package_Merge
    (Self : not null access constant CMOF_Package_Interface)
       return AMF.CMOF.Package_Merges.Set_Of_CMOF_Package_Merge is abstract;

   not overriding function Get_Uri
    (Self : not null access constant CMOF_Package_Interface)
       return Optional_String is abstract;

   not overriding procedure Set_Uri
    (Self : not null access CMOF_Package_Interface;
     To   : Optional_String) is abstract;

end AMF.CMOF.Packages;