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
limited with AMF.CMOF.Associations;
limited with AMF.CMOF.Classes;
limited with AMF.CMOF.Data_Types;
with AMF.CMOF.Structural_Features;

package AMF.CMOF.Properties is

   pragma Preelaborate;

   type CMOF_Property_Interface is limited interface
     and AMF.CMOF.Structural_Features.CMOF_Structural_Feature_Interface;

   type CMOF_Property is
     access all CMOF_Property_Interface'Class;

   type Set_Of_CMOF_Property is null record;
   type Ordered_Set_Of_CMOF_Property is null record;

   not overriding function Get_Is_Read_Only
    (Self : not null access constant CMOF_Property_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Read_Only
    (Self : not null access CMOF_Property_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Default
    (Self : not null access constant CMOF_Property_Interface)
       return Optional_String is abstract;

   not overriding procedure Set_Default
    (Self : not null access CMOF_Property_Interface;
     To   : Optional_String) is abstract;

   not overriding function Get_Is_Composite
    (Self : not null access constant CMOF_Property_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Composite
    (Self : not null access CMOF_Property_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Property_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Property_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Is_Derived_Union
    (Self : not null access constant CMOF_Property_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Derived_Union
    (Self : not null access CMOF_Property_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Class
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Classes.CMOF_Class is abstract;

   not overriding procedure Set_Class
    (Self : not null access CMOF_Property_Interface;
     To   : AMF.CMOF.Classes.CMOF_Class) is abstract;

   not overriding function Get_Owning_Association
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Associations.CMOF_Association is abstract;

   not overriding procedure Set_Owning_Association
    (Self : not null access CMOF_Property_Interface;
     To   : AMF.CMOF.Associations.CMOF_Association) is abstract;

   not overriding function Get_Redefined_Property
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Properties.Set_Of_CMOF_Property is abstract;

   not overriding function Get_Subsetted_Property
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Properties.Set_Of_CMOF_Property is abstract;

   not overriding function Get_Opposite
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Properties.CMOF_Property is abstract;

   not overriding procedure Set_Opposite
    (Self : not null access CMOF_Property_Interface;
     To   : AMF.CMOF.Properties.CMOF_Property) is abstract;

   not overriding function Get_Datatype
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Data_Types.CMOF_Data_Type is abstract;

   not overriding procedure Set_Datatype
    (Self : not null access CMOF_Property_Interface;
     To   : AMF.CMOF.Data_Types.CMOF_Data_Type) is abstract;

   not overriding function Get_Association
    (Self : not null access constant CMOF_Property_Interface)
       return AMF.CMOF.Associations.CMOF_Association is abstract;

   not overriding procedure Set_Association
    (Self : not null access CMOF_Property_Interface;
     To   : AMF.CMOF.Associations.CMOF_Association) is abstract;

end AMF.CMOF.Properties;