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
--  By specializing multiplicity element, it supports a multiplicity that 
--  specifies valid cardinalities for the collection of values associated with 
--  an instantiation of the structural feature.
--  A structural feature is a typed feature of a classifier that specifies the 
--  structure of instances of the classifier.
------------------------------------------------------------------------------
with AMF.UML.Features;
with AMF.UML.Multiplicity_Elements;
with AMF.UML.Typed_Elements;

package AMF.UML.Structural_Features is

   pragma Preelaborate;

   type UML_Structural_Feature_Interface is limited interface
     and AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Interface
     and AMF.UML.Features.UML_Feature_Interface
     and AMF.UML.Typed_Elements.UML_Typed_Element_Interface;

   type UML_Structural_Feature is
     access all UML_Structural_Feature_Interface'Class;

   type Set_Of_UML_Structural_Feature is null record;
   type Ordered_Set_Of_UML_Structural_Feature is null record;

   not overriding function Get_Is_Read_Only
    (Self : not null access constant UML_Structural_Feature_Interface)
       return Boolean is abstract;
   --  States whether the feature's value may be modified by a client.

   not overriding procedure Set_Is_Read_Only
    (Self : not null access UML_Structural_Feature_Interface;
     To   : Boolean) is abstract;

end AMF.UML.Structural_Features;
