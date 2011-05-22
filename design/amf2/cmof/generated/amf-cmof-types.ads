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
--  A type is a named element that is used as the type for a typed element. A 
--  type can be contained in a package.
------------------------------------------------------------------------------
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Packageable_Elements;
limited with AMF.CMOF.Packages;

package AMF.CMOF.Types is

   pragma Preelaborate;

   type CMOF_Type is limited interface
     and AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element
     and AMF.CMOF.Named_Elements.CMOF_Named_Element;

   type CMOF_Type_Access is
     access all CMOF_Type'Class;
   for CMOF_Type_Access'Storage_Size use 0;

   not overriding function Get_Package
    (Self : not null access constant CMOF_Type)
       return AMF.CMOF.Packages.CMOF_Package_Access is abstract;
   --  Specifies the owning package of this classifier, if any.

   not overriding procedure Set_Package
    (Self : not null access CMOF_Type;
     To   : AMF.CMOF.Packages.CMOF_Package_Access) is abstract;

   not overriding function Conforms_To
    (Self : not null access constant CMOF_Type;
     Other : AMF.CMOF.Types.CMOF_Type_Access)
       return Boolean is abstract;
   --  The query conformsTo() gives true for a type that conforms to another. 
   --  By default, two types do not conform to each other. This query is 
   --  intended to be redefined for specific conformance situations.

end AMF.CMOF.Types;
