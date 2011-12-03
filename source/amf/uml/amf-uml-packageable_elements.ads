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
--  A packageable element indicates a named element that may be owned directly 
--  by a package.
--  Packageable elements are able to serve as a template parameter.
------------------------------------------------------------------------------
with AMF.UML.Named_Elements;
with AMF.UML.Parameterable_Elements;

package AMF.UML.Packageable_Elements is

   pragma Preelaborate;

   type UML_Packageable_Element is limited interface
     and AMF.UML.Named_Elements.UML_Named_Element
     and AMF.UML.Parameterable_Elements.UML_Parameterable_Element;

   type UML_Packageable_Element_Access is
     access all UML_Packageable_Element'Class;
   for UML_Packageable_Element_Access'Storage_Size use 0;

   not overriding function Get_Visibility
    (Self : not null access constant UML_Packageable_Element)
       return AMF.UML.UML_Visibility_Kind is abstract;
   --  Getter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   not overriding procedure Set_Visibility
    (Self : not null access UML_Packageable_Element;
     To   : AMF.UML.UML_Visibility_Kind) is abstract;
   --  Setter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

end AMF.UML.Packageable_Elements;
