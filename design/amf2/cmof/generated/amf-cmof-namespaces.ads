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
limited with AMF.CMOF.Constraints;
limited with AMF.CMOF.Element_Imports;
with AMF.CMOF.Named_Elements;
limited with AMF.CMOF.Package_Imports;
limited with AMF.CMOF.Packageable_Elements;

package AMF.CMOF.Namespaces is

   pragma Preelaborate;

   type CMOF_Namespace_Interface is limited interface
     and AMF.CMOF.Named_Elements.CMOF_Named_Element_Interface;

   type CMOF_Namespace is
     access all CMOF_Namespace_Interface'Class;

   type Set_Of_CMOF_Namespace is null record;
   type Ordered_Set_Of_CMOF_Namespace is null record;

   not overriding function Get_Imported_Member
    (Self : not null access constant CMOF_Namespace_Interface)
       return AMF.CMOF.Packageable_Elements.Set_Of_CMOF_Packageable_Element is abstract;

   not overriding function Get_Element_Import
    (Self : not null access constant CMOF_Namespace_Interface)
       return AMF.CMOF.Element_Imports.Set_Of_CMOF_Element_Import is abstract;

   not overriding function Get_Package_Import
    (Self : not null access constant CMOF_Namespace_Interface)
       return AMF.CMOF.Package_Imports.Set_Of_CMOF_Package_Import is abstract;

   not overriding function Get_Owned_Member
    (Self : not null access constant CMOF_Namespace_Interface)
       return AMF.CMOF.Named_Elements.Set_Of_CMOF_Named_Element is abstract;

   not overriding function Get_Member
    (Self : not null access constant CMOF_Namespace_Interface)
       return AMF.CMOF.Named_Elements.Set_Of_CMOF_Named_Element is abstract;

   not overriding function Get_Owned_Rule
    (Self : not null access constant CMOF_Namespace_Interface)
       return AMF.CMOF.Constraints.Set_Of_CMOF_Constraint is abstract;

end AMF.CMOF.Namespaces;
