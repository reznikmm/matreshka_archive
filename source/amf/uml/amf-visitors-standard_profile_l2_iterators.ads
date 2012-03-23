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

package AMF.Visitors.Standard_Profile_L2_Iterators is

   pragma Preelaborate;

   type Standard_Profile_L2_Iterator is limited interface and AMF.Visitors.Abstract_Iterator;

   not overriding procedure Visit_Auxiliary
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Auxiliaries.Standard_Profile_L2_Auxiliary_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Call
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Calls.Standard_Profile_L2_Call_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Create
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Creates.Standard_Profile_L2_Create_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Derive
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Derives.Standard_Profile_L2_Derive_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Destroy
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Destroies.Standard_Profile_L2_Destroy_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Document
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Documents.Standard_Profile_L2_Document_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Entity
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Entities.Standard_Profile_L2_Entity_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Executable
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Executables.Standard_Profile_L2_Executable_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Focus
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Focuses.Standard_Profile_L2_Focus_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Framework
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Frameworks.Standard_Profile_L2_Framework_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Implement
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Implements.Standard_Profile_L2_Implement_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Implementation_Class
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Implementation_Classes.Standard_Profile_L2_Implementation_Class_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Instantiate
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Instantiates.Standard_Profile_L2_Instantiate_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Library
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Libraries.Standard_Profile_L2_Library_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Metaclass
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Metaclasses.Standard_Profile_L2_Metaclass_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Model_Library
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Model_Libraries.Standard_Profile_L2_Model_Library_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Process
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Processes.Standard_Profile_L2_Process_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Realization
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Realizations.Standard_Profile_L2_Realization_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Refine
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Refines.Standard_Profile_L2_Refine_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Responsibility
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Responsibilities.Standard_Profile_L2_Responsibility_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Script
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Scripts.Standard_Profile_L2_Script_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Send
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Sends.Standard_Profile_L2_Send_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Service
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Services.Standard_Profile_L2_Service_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Source
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Sources.Standard_Profile_L2_Source_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Specification
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Specifications.Standard_Profile_L2_Specification_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Subsystem
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Subsystems.Standard_Profile_L2_Subsystem_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Trace
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Traces.Standard_Profile_L2_Trace_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Type
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Types.Standard_Profile_L2_Type_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

   not overriding procedure Visit_Utility
    (Self    : in out Standard_Profile_L2_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.Standard_Profile_L2.Utilities.Standard_Profile_L2_Utility_Access;
     Control : in out AMF.Visitors.Traverse_Control) is null;

end AMF.Visitors.Standard_Profile_L2_Iterators;
