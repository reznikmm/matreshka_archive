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
--  A parameterable element is an element that can be exposed as a formal 
--  template parameter for a template, or specified as an actual parameter in 
--  a binding of a template.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Template_Parameters;

package AMF.UML.Parameterable_Elements is

   pragma Preelaborate;

   type UML_Parameterable_Element is limited interface
     and AMF.UML.Elements.UML_Element;

   type UML_Parameterable_Element_Access is
     access all UML_Parameterable_Element'Class;
   for UML_Parameterable_Element_Access'Storage_Size use 0;

   not overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Parameterable_Element)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is abstract;
   --  The formal template parameter that owns this element.

   not overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Parameterable_Element;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is abstract;

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Parameterable_Element)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is abstract;
   --  The template parameter that exposes this element as a formal parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Parameterable_Element;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is abstract;

   not overriding function Is_Compatible_With
    (Self : not null access constant UML_Parameterable_Element;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is abstract;
   --  The query isCompatibleWith() determines if this parameterable element 
   --  is compatible with the specified parameterable element. By default 
   --  parameterable element P is compatible with parameterable element Q if 
   --  the kind of P is the same or a subtype as the kind of Q. Subclasses 
   --  should override this operation to specify different compatibility 
   --  constraints.

   not overriding function Is_Template_Parameter
    (Self : not null access constant UML_Parameterable_Element)
       return Boolean is abstract;
   --  The query isTemplateParameter() determines if this parameterable 
   --  element is exposed as a formal template parameter.

end AMF.UML.Parameterable_Elements;
