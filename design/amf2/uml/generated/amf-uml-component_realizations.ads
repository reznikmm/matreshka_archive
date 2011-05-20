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
--  The realization concept is specialized to (optionally) define the 
--  classifiers that realize the contract offered by a component in terms of 
--  its provided and required interfaces. The component forms an abstraction 
--  from these various classifiers.
------------------------------------------------------------------------------
limited with AMF.UML.Classifiers.Collections;
limited with AMF.UML.Components;
with AMF.UML.Realizations;

package AMF.UML.Component_Realizations is

   pragma Preelaborate;

   type UML_Component_Realization_Interface is limited interface
     and AMF.UML.Realizations.UML_Realization_Interface;

   type UML_Component_Realization is
     access all UML_Component_Realization_Interface'Class;
   for UML_Component_Realization'Storage_Size use 0;

   not overriding function Get_Abstraction
    (Self : not null access constant UML_Component_Realization_Interface)
       return AMF.UML.Components.UML_Component is abstract;
   --  The Component that owns this ComponentRealization and which is 
   --  implemented by its realizing classifiers.

   not overriding procedure Set_Abstraction
    (Self : not null access UML_Component_Realization_Interface;
     To   : AMF.UML.Components.UML_Component) is abstract;

   not overriding function Get_Realizing_Classifier
    (Self : not null access constant UML_Component_Realization_Interface)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is abstract;
   --  The classifiers that are involved in the implementation of the 
   --  Component that owns this Realization.

end AMF.UML.Component_Realizations;
