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
--  A template parameter substitution relates the actual parameter to a formal 
--  template parameter as part of a template binding.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Parameterable_Elements;
limited with AMF.UML.Template_Bindings;
limited with AMF.UML.Template_Parameters;

package AMF.UML.Template_Parameter_Substitutions is

   pragma Preelaborate;

   type UML_Template_Parameter_Substitution_Interface is limited interface
     and AMF.UML.Elements.UML_Element_Interface;

   type UML_Template_Parameter_Substitution is
     access all UML_Template_Parameter_Substitution_Interface'Class;
   for UML_Template_Parameter_Substitution'Storage_Size use 0;

   not overriding function Get_Actual
    (Self : not null access constant UML_Template_Parameter_Substitution_Interface)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element is abstract;
   --  The element that is the actual parameter for this substitution.

   not overriding procedure Set_Actual
    (Self : not null access UML_Template_Parameter_Substitution_Interface;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element) is abstract;

   not overriding function Get_Formal
    (Self : not null access constant UML_Template_Parameter_Substitution_Interface)
       return AMF.UML.Template_Parameters.UML_Template_Parameter is abstract;
   --  The formal template parameter that is associated with this substitution.

   not overriding procedure Set_Formal
    (Self : not null access UML_Template_Parameter_Substitution_Interface;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter) is abstract;

   not overriding function Get_Owned_Actual
    (Self : not null access constant UML_Template_Parameter_Substitution_Interface)
       return AMF.UML.Parameterable_Elements.UML_Parameterable_Element is abstract;
   --  The actual parameter that is owned by this substitution.

   not overriding procedure Set_Owned_Actual
    (Self : not null access UML_Template_Parameter_Substitution_Interface;
     To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element) is abstract;

   not overriding function Get_Template_Binding
    (Self : not null access constant UML_Template_Parameter_Substitution_Interface)
       return AMF.UML.Template_Bindings.UML_Template_Binding is abstract;
   --  The optional bindings from this element to templates.

   not overriding procedure Set_Template_Binding
    (Self : not null access UML_Template_Parameter_Substitution_Interface;
     To   : AMF.UML.Template_Bindings.UML_Template_Binding) is abstract;

end AMF.UML.Template_Parameter_Substitutions;
