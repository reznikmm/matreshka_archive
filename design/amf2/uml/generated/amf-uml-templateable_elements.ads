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
--  A templateable element is an element that can optionally be defined as a 
--  template and bound to other templates.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Template_Bindings;
limited with AMF.UML.Template_Signatures;

package AMF.UML.Templateable_Elements is

   pragma Preelaborate;

   type UML_Templateable_Element_Interface is limited interface
     and AMF.UML.Elements.UML_Element_Interface;

   type UML_Templateable_Element is
     access all UML_Templateable_Element_Interface'Class;

   type Set_Of_UML_Templateable_Element is null record;
   type Ordered_Set_Of_UML_Templateable_Element is null record;

   not overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Templateable_Element_Interface)
       return AMF.UML.Template_Signatures.UML_Template_Signature is abstract;
   --  The optional template signature specifying the formal template 
   --  parameters.

   not overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Templateable_Element_Interface;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature) is abstract;

   not overriding function Get_Template_Binding
    (Self : not null access constant UML_Templateable_Element_Interface)
       return AMF.UML.Template_Bindings.Set_Of_UML_Template_Binding is abstract;
   --  The optional bindings from this element to templates.

end AMF.UML.Templateable_Elements;
