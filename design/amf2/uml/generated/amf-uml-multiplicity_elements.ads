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
--  A multiplicity is a definition of an inclusive interval of non-negative 
--  integers beginning with a lower bound and ending with a (possibly 
--  infinite) upper bound. A multiplicity element embeds this information to 
--  specify the allowable cardinalities for an instantiation of this element.
------------------------------------------------------------------------------
with AMF.UML.Elements;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Multiplicity_Elements is

   pragma Preelaborate;

   type UML_Multiplicity_Element_Interface is limited interface
     and AMF.UML.Elements.UML_Element_Interface;

   type UML_Multiplicity_Element is
     access all UML_Multiplicity_Element_Interface'Class;

   type Set_Of_UML_Multiplicity_Element is null record;
   type Ordered_Set_Of_UML_Multiplicity_Element is null record;

   not overriding function Get_Is_Ordered
    (Self : not null access constant UML_Multiplicity_Element_Interface)
       return Boolean is abstract;
   --  For a multivalued multiplicity, this attribute specifies whether the 
   --  values in an instantiation of this element are sequentially ordered.

   not overriding procedure Set_Is_Ordered
    (Self : not null access UML_Multiplicity_Element_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Unique
    (Self : not null access constant UML_Multiplicity_Element_Interface)
       return Boolean is abstract;
   --  For a multivalued multiplicity, this attributes specifies whether the 
   --  values in an instantiation of this element are unique.

   not overriding procedure Set_Is_Unique
    (Self : not null access UML_Multiplicity_Element_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Lower
    (Self : not null access constant UML_Multiplicity_Element_Interface)
       return Optional_Integer is abstract;
   --  Specifies the lower bound of the multiplicity interval.

   not overriding procedure Set_Lower
    (Self : not null access UML_Multiplicity_Element_Interface;
     To   : Optional_Integer) is abstract;

   not overriding function Get_Lower_Value
    (Self : not null access constant UML_Multiplicity_Element_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  The specification of the lower bound for this multiplicity.

   not overriding procedure Set_Lower_Value
    (Self : not null access UML_Multiplicity_Element_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

   not overriding function Get_Upper
    (Self : not null access constant UML_Multiplicity_Element_Interface)
       return Optional_Unlimited_Natural is abstract;
   --  Specifies the upper bound of the multiplicity interval.

   not overriding procedure Set_Upper
    (Self : not null access UML_Multiplicity_Element_Interface;
     To   : Optional_Unlimited_Natural) is abstract;

   not overriding function Get_Upper_Value
    (Self : not null access constant UML_Multiplicity_Element_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  The specification of the upper bound for this multiplicity.

   not overriding procedure Set_Upper_Value
    (Self : not null access UML_Multiplicity_Element_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

end AMF.UML.Multiplicity_Elements;
