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

   type UML_Parameterable_Element_Interface is limited interface
     and AMF.UML.Elements.UML_Element_Interface;

   type UML_Parameterable_Element is
     access all UML_Parameterable_Element_Interface'Class;

   type Set_Of_UML_Parameterable_Element is null record;
   type Ordered_Set_Of_UML_Parameterable_Element is null record;

   not overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Parameterable_Element_Interface)
       return AMF.UML.Template_Parameters.UML_Template_Parameter is abstract;
   --  The formal template parameter that owns this element.

   not overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Parameterable_Element_Interface;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter) is abstract;

   not overriding function Get_Template_Parameter
    (Self : not null access constant UML_Parameterable_Element_Interface)
       return AMF.UML.Template_Parameters.UML_Template_Parameter is abstract;
   --  The template parameter that exposes this element as a formal parameter.

   not overriding procedure Set_Template_Parameter
    (Self : not null access UML_Parameterable_Element_Interface;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter) is abstract;

end AMF.UML.Parameterable_Elements;
