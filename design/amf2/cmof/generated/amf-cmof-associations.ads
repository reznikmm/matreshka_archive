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
with AMF.CMOF.Classifiers;
limited with AMF.CMOF.Properties;
with AMF.CMOF.Relationships;
limited with AMF.CMOF.Types;

package AMF.CMOF.Associations is

   pragma Preelaborate;

   type CMOF_Association_Interface is limited interface
     and AMF.CMOF.Classifiers.CMOF_Classifier_Interface
     and AMF.CMOF.Relationships.CMOF_Relationship_Interface;

   type CMOF_Association is
     access all CMOF_Association_Interface'Class;

   type Set_Of_CMOF_Association is null record;
   type Ordered_Set_Of_CMOF_Association is null record;

   not overriding function Get_Is_Derived
    (Self : not null access constant CMOF_Association_Interface)
       return Boolean is abstract;

   not overriding procedure Set_Is_Derived
    (Self : not null access CMOF_Association_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Owned_End
    (Self : not null access constant CMOF_Association_Interface)
       return AMF.CMOF.Properties.Ordered_Set_Of_CMOF_Property is abstract;

   not overriding function Get_End_Type
    (Self : not null access constant CMOF_Association_Interface)
       return AMF.CMOF.Types.Set_Of_CMOF_Type is abstract;

   not overriding function Get_Member_End
    (Self : not null access constant CMOF_Association_Interface)
       return AMF.CMOF.Properties.Ordered_Set_Of_CMOF_Property is abstract;

   not overriding function Get_Navigable_Owned_End
    (Self : not null access constant CMOF_Association_Interface)
       return AMF.CMOF.Properties.Set_Of_CMOF_Property is abstract;

end AMF.CMOF.Associations;