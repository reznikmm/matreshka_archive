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
with AMF.CMOF.Behavioral_Features;
limited with AMF.CMOF.Classes;
limited with AMF.CMOF.Constraints;
limited with AMF.CMOF.Data_Types;
limited with AMF.CMOF.Parameters;
limited with AMF.CMOF.Types;

package AMF.CMOF.Operations is

   pragma Preelaborate;

   type CMOF_Operation_Interface is limited interface
     and AMF.CMOF.Behavioral_Features.CMOF_Behavioral_Feature_Interface;

   type CMOF_Operation is
     access all CMOF_Operation_Interface'Class;

   type Set_Of_CMOF_Operation is null record;
   type Ordered_Set_Of_CMOF_Operation is null record;

   not overriding function Get_Is_Query
    (Self : not null access constant CMOF_Operation_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Query
    (Self : not null access CMOF_Operation_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Ordered
    (Self : not null access constant CMOF_Operation_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Ordered
    (Self : not null access CMOF_Operation_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Unique
    (Self : not null access constant CMOF_Operation_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Unique
    (Self : not null access CMOF_Operation_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Lower
    (Self : not null access constant CMOF_Operation_Interface)
       return Optional_Integer is abstract;

   not overriding procedure Set_Lower
    (Self : not null access CMOF_Operation_Interface;
     To   : Optional_Integer) is abstract;

   not overriding function Get_Upper
    (Self : not null access constant CMOF_Operation_Interface)
       return Optional_Unlimited_Natural is abstract;

   not overriding procedure Set_Upper
    (Self : not null access CMOF_Operation_Interface;
     To   : Optional_Unlimited_Natural) is abstract;

   not overriding function Get_Class
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Classes.CMOF_Class is abstract;

   not overriding procedure Set_Class
    (Self : not null access CMOF_Operation_Interface;
     To   : AMF.CMOF.Classes.CMOF_Class) is abstract;

   not overriding function Get_Datatype
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Data_Types.CMOF_Data_Type is abstract;

   not overriding procedure Set_Datatype
    (Self : not null access CMOF_Operation_Interface;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type) is abstract;

   overriding function Get_Raised_Exception
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Types.Set_Of_CMOF_Type is abstract;

   not overriding function Get_Redefined_Operation
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Operations.Set_Of_CMOF_Operation is abstract;

   not overriding function Get_Type
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Types.CMOF_Type is abstract;

   not overriding procedure Set_Type
    (Self : not null access CMOF_Operation_Interface;
     To   : AMF.CMOF.Types.CMOF_Type) is abstract;

   overriding function Get_Owned_Parameter
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Parameters.Ordered_Set_Of_CMOF_Parameter is abstract;

   not overriding function Get_Precondition
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Constraints.Set_Of_CMOF_Constraint is abstract;

   not overriding function Get_Postcondition
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Constraints.Set_Of_CMOF_Constraint is abstract;

   not overriding function Get_Body_Condition
    (Self : not null access constant CMOF_Operation_Interface)
       return AMF.CMOF.Constraints.CMOF_Constraint is abstract;

   not overriding procedure Set_Body_Condition
    (Self : not null access CMOF_Operation_Interface;
     To   : AMF.CMOF.Constraints.CMOF_Constraint) is abstract;

end AMF.CMOF.Operations;
