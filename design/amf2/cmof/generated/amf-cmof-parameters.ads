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
--  A parameter is a specification of an argument used to pass information 
--  into or out of an invocation of a behavioral feature.
------------------------------------------------------------------------------
with AMF.CMOF.Multiplicity_Elements;
limited with AMF.CMOF.Operations;
with AMF.CMOF.Typed_Elements;

package AMF.CMOF.Parameters is

   pragma Preelaborate;

   type CMOF_Parameter_Interface is limited interface
     and AMF.CMOF.Typed_Elements.CMOF_Typed_Element_Interface
     and AMF.CMOF.Multiplicity_Elements.CMOF_Multiplicity_Element_Interface;

   type CMOF_Parameter is
     access all CMOF_Parameter_Interface'Class;
   for CMOF_Parameter'Storage_Size use 0;

   not overriding function Get_Default
    (Self : not null access constant CMOF_Parameter_Interface)
       return Optional_String is abstract;
   --  Specifies a String that represents a value to be used when no argument 
   --  is supplied for the Parameter.

   not overriding procedure Set_Default
    (Self : not null access CMOF_Parameter_Interface;
     To   : Optional_String) is abstract;

   not overriding function Get_Direction
    (Self : not null access constant CMOF_Parameter_Interface)
       return CMOF_Parameter_Direction_Kind is abstract;
   --  Indicates whether a parameter is being sent into or out of a behavioral 
   --  element.

   not overriding procedure Set_Direction
    (Self : not null access CMOF_Parameter_Interface;
     To   : CMOF_Parameter_Direction_Kind) is abstract;

   not overriding function Get_Operation
    (Self : not null access constant CMOF_Parameter_Interface)
       return AMF.CMOF.Operations.CMOF_Operation is abstract;
   --  References the Operation owning this parameter.

   not overriding procedure Set_Operation
    (Self : not null access CMOF_Parameter_Interface;
     To   : AMF.CMOF.Operations.CMOF_Operation) is abstract;

end AMF.CMOF.Parameters;
