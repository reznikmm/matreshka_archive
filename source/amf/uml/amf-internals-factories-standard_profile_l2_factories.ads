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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Data_Types;
with AMF.Factories.Standard_Profile_L2_Factories;
with AMF.Links;
with AMF.Standard_Profile_L2.Auxiliaries;
with AMF.Standard_Profile_L2.Calls;
with AMF.Standard_Profile_L2.Creates;
with AMF.Standard_Profile_L2.Derives;
with AMF.Standard_Profile_L2.Destroies;
with AMF.Standard_Profile_L2.Documents;
with AMF.Standard_Profile_L2.Entities;
with AMF.Standard_Profile_L2.Executables;
with AMF.Standard_Profile_L2.Focuses;
with AMF.Standard_Profile_L2.Frameworks;
with AMF.Standard_Profile_L2.Implementation_Classes;
with AMF.Standard_Profile_L2.Implements;
with AMF.Standard_Profile_L2.Instantiates;
with AMF.Standard_Profile_L2.Libraries;
with AMF.Standard_Profile_L2.Metaclasses;
with AMF.Standard_Profile_L2.Model_Libraries;
with AMF.Standard_Profile_L2.Processes;
with AMF.Standard_Profile_L2.Realizations;
with AMF.Standard_Profile_L2.Refines;
with AMF.Standard_Profile_L2.Responsibilities;
with AMF.Standard_Profile_L2.Scripts;
with AMF.Standard_Profile_L2.Sends;
with AMF.Standard_Profile_L2.Services;
with AMF.Standard_Profile_L2.Sources;
with AMF.Standard_Profile_L2.Specifications;
with AMF.Standard_Profile_L2.Subsystems;
with AMF.Standard_Profile_L2.Traces;
with AMF.Standard_Profile_L2.Types;
with AMF.Standard_Profile_L2.Utilities;
with League.Holders;

package AMF.Internals.Factories.Standard_Profile_L2_Factories is

   type Standard_Profile_L2_Factory is
     limited new AMF.Internals.Factories.Metamodel_Factory_Base
       and AMF.Factories.Standard_Profile_L2_Factories.Standard_Profile_L2_Factory with null record;

   overriding function Convert_To_String
    (Self      : not null access Standard_Profile_L2_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Value     : League.Holders.Holder) return League.Strings.Universal_String;

   overriding function Create
    (Self       : not null access Standard_Profile_L2_Factory;
     Meta_Class : not null access AMF.CMOF.Classes.CMOF_Class'Class)
       return not null AMF.Elements.Element_Access;

   overriding function Create_From_String
    (Self      : not null access Standard_Profile_L2_Factory;
     Data_Type : not null access AMF.CMOF.Data_Types.CMOF_Data_Type'Class;
     Image     : League.Strings.Universal_String) return League.Holders.Holder;

   overriding function Create_Link
    (Self           : not null access Standard_Profile_L2_Factory;
     Association    :
       not null access AMF.CMOF.Associations.CMOF_Association'Class;
     First_Element  : not null AMF.Elements.Element_Access;
     Second_Element : not null AMF.Elements.Element_Access)
       return not null AMF.Links.Link_Access;

   overriding function Get_Package
    (Self : not null access constant Standard_Profile_L2_Factory)
       return AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;

   function Constructor
    (Extent : AMF.Internals.AMF_Extent)
       return not null AMF.Factories.Factory_Access;

   function Get_Package return not null AMF.CMOF.Packages.CMOF_Package_Access;

   function Create_Auxiliary
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Auxiliaries.Standard_Profile_L2_Auxiliary_Access;

   function Create_Call
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Calls.Standard_Profile_L2_Call_Access;

   function Create_Create
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Creates.Standard_Profile_L2_Create_Access;

   function Create_Derive
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Derives.Standard_Profile_L2_Derive_Access;

   function Create_Destroy
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Destroies.Standard_Profile_L2_Destroy_Access;

   function Create_Document
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Documents.Standard_Profile_L2_Document_Access;

   function Create_Entity
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Entities.Standard_Profile_L2_Entity_Access;

   function Create_Executable
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Executables.Standard_Profile_L2_Executable_Access;

   function Create_Focus
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Focuses.Standard_Profile_L2_Focus_Access;

   function Create_Framework
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Frameworks.Standard_Profile_L2_Framework_Access;

   function Create_Implement
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Implements.Standard_Profile_L2_Implement_Access;

   function Create_Implementation_Class
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Implementation_Classes.Standard_Profile_L2_Implementation_Class_Access;

   function Create_Instantiate
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Instantiates.Standard_Profile_L2_Instantiate_Access;

   function Create_Library
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Libraries.Standard_Profile_L2_Library_Access;

   function Create_Metaclass
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Metaclasses.Standard_Profile_L2_Metaclass_Access;

   function Create_Model_Library
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Model_Libraries.Standard_Profile_L2_Model_Library_Access;

   function Create_Process
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Processes.Standard_Profile_L2_Process_Access;

   function Create_Realization
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Realizations.Standard_Profile_L2_Realization_Access;

   function Create_Refine
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Refines.Standard_Profile_L2_Refine_Access;

   function Create_Responsibility
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Responsibilities.Standard_Profile_L2_Responsibility_Access;

   function Create_Script
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Scripts.Standard_Profile_L2_Script_Access;

   function Create_Send
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Sends.Standard_Profile_L2_Send_Access;

   function Create_Service
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Services.Standard_Profile_L2_Service_Access;

   function Create_Source
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Sources.Standard_Profile_L2_Source_Access;

   function Create_Specification
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Specifications.Standard_Profile_L2_Specification_Access;

   function Create_Subsystem
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Subsystems.Standard_Profile_L2_Subsystem_Access;

   function Create_Trace
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Traces.Standard_Profile_L2_Trace_Access;

   function Create_Type
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Types.Standard_Profile_L2_Type_Access;

   function Create_Utility
    (Self : not null access Standard_Profile_L2_Factory)
       return AMF.Standard_Profile_L2.Utilities.Standard_Profile_L2_Utility_Access;

end AMF.Internals.Factories.Standard_Profile_L2_Factories;
