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
--  A named element is an element in a model that may have a name.
------------------------------------------------------------------------------
with AMF.CMOF.Elements;
limited with AMF.CMOF.Namespaces;

package AMF.CMOF.Named_Elements is

   pragma Preelaborate;

   type CMOF_Named_Element_Interface is limited interface
     and AMF.CMOF.Elements.CMOF_Element_Interface;

   type CMOF_Named_Element is
     access all CMOF_Named_Element_Interface'Class;
   for CMOF_Named_Element'Storage_Size use 0;

   type Set_Of_CMOF_Named_Element is null record;
   type Ordered_Set_Of_CMOF_Named_Element is null record;

   not overriding function Get_Name
    (Self : not null access constant CMOF_Named_Element_Interface)
       return Optional_String is abstract;
   --  The name of the NamedElement.

   not overriding procedure Set_Name
    (Self : not null access CMOF_Named_Element_Interface;
     To   : Optional_String) is abstract;

   not overriding function Get_Visibility
    (Self : not null access constant CMOF_Named_Element_Interface)
       return Optional_CMOF_Visibility_Kind is abstract;
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   not overriding procedure Set_Visibility
    (Self : not null access CMOF_Named_Element_Interface;
     To   : Optional_CMOF_Visibility_Kind) is abstract;

   not overriding function Get_Namespace
    (Self : not null access constant CMOF_Named_Element_Interface)
       return AMF.CMOF.Namespaces.CMOF_Namespace is abstract;
   --  Specifies the namespace that owns the NamedElement.

   not overriding function Get_Qualified_Name
    (Self : not null access constant CMOF_Named_Element_Interface)
       return Optional_String is abstract;
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

end AMF.CMOF.Named_Elements;
