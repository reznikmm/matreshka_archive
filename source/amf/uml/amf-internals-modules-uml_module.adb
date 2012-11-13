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
with AMF.Internals.Factories.Primitive_Types_Factories;
with AMF.Internals.Factories.Standard_Profile_L2_Factories;
with AMF.Internals.Factories.Standard_Profile_L3_Factories;
with AMF.Internals.Factories.UML_Factories;
with AMF.Internals.Factories.UMLDI_Factories;
with AMF.Internals.Factories.UML_Module_Factory;
with AMF.Internals.Tables.Primitive_Types_Metamodel.Links;
with AMF.Internals.Tables.Primitive_Types_Metamodel.Objects;
with AMF.Internals.Tables.Primitive_Types_Metamodel.Properties;
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Links;
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Objects;
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Properties;
with AMF.Internals.Tables.Standard_Profile_L3_Metamodel.Links;
with AMF.Internals.Tables.Standard_Profile_L3_Metamodel.Objects;
with AMF.Internals.Tables.Standard_Profile_L3_Metamodel.Properties;
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel.Links;
with AMF.Internals.Tables.UML_Metamodel.Objects;
with AMF.Internals.Tables.UML_Metamodel.Properties;
with AMF.Internals.Tables.UMLDI_Metamodel.Links;
with AMF.Internals.Tables.UMLDI_Metamodel.Objects;
with AMF.Internals.Tables.UMLDI_Metamodel.Properties;

with AMF.Internals.Modules.CMOF_Module;
pragma Unreferenced (AMF.Internals.Modules.CMOF_Module);
pragma Elaborate_All (AMF.Internals.Modules.CMOF_Module);
--  CMOF module package and all its dependencies must be elaborated before
--  elaboration of this package.

with AMF.Internals.Modules.DD_Module;
pragma Unreferenced (AMF.Internals.Modules.DD_Module);
pragma Elaborate_All (AMF.Internals.Modules.DD_Module);
--  CMOF module package and all its dependencies must be elaborated before
--  elaboration of this package.

package body AMF.Internals.Modules.UML_Module is

   --  Global objects of factories for supported metamodels.

   UML_Module_Factory :
     aliased AMF.Internals.Factories.UML_Module_Factory.UML_Module_Factory;
   Module             : AMF_Metamodel;

begin
   --  Register module's factory.

   AMF.Internals.Factories.Register (UML_Module_Factory'Access, Module);

   --  Initialize metamodels.

   AMF.Internals.Tables.Primitive_Types_Metamodel.Objects.Initialize;
   AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Objects.Initialize;
   AMF.Internals.Tables.Standard_Profile_L3_Metamodel.Objects.Initialize;
   AMF.Internals.Tables.UML_Metamodel.Objects.Initialize;
   AMF.Internals.Tables.UMLDI_Metamodel.Objects.Initialize;

   AMF.Internals.Tables.Primitive_Types_Metamodel.Properties.Initialize;
   AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Properties.Initialize;
   AMF.Internals.Tables.Standard_Profile_L3_Metamodel.Properties.Initialize;
   AMF.Internals.Tables.UML_Metamodel.Properties.Initialize;
   AMF.Internals.Tables.UMLDI_Metamodel.Properties.Initialize;

   AMF.Internals.Tables.Primitive_Types_Metamodel.Links.Initialize;
   AMF.Internals.Tables.Standard_Profile_L2_Metamodel.Links.Initialize;
   AMF.Internals.Tables.Standard_Profile_L3_Metamodel.Links.Initialize;
   AMF.Internals.Tables.UML_Metamodel.Links.Initialize;
   AMF.Internals.Tables.UMLDI_Metamodel.Links.Initialize;

   --  Initialize element table of UML module.

   AMF.Internals.Tables.UML_Element_Table.Initialize (Module);

   --  Register factories.

   AMF.Internals.Factories.Register
    (AMF.Internals.Factories.Primitive_Types_Factories.Get_Package,
     AMF.Internals.Factories.Primitive_Types_Factories.Constructor'Access);
   AMF.Internals.Factories.Register
    (AMF.Internals.Factories.UML_Factories.Get_Package,
     AMF.Internals.Factories.UML_Factories.Constructor'Access);
   AMF.Internals.Factories.Register
    (AMF.Internals.Factories.Standard_Profile_L2_Factories.Get_Package,
     AMF.Internals.Factories.Standard_Profile_L2_Factories.Constructor'Access);
   AMF.Internals.Factories.Register
    (AMF.Internals.Factories.Standard_Profile_L3_Factories.Get_Package,
     AMF.Internals.Factories.Standard_Profile_L3_Factories.Constructor'Access);
   AMF.Internals.Factories.Register
    (AMF.Internals.Factories.UMLDI_Factories.Get_Package,
     AMF.Internals.Factories.UMLDI_Factories.Constructor'Access);
end AMF.Internals.Modules.UML_Module;
