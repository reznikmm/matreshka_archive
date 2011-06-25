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
with Ada.Command_Line;

with Qt_Ada.Application;
with Qt4.Core_Applications;
with Qt4.Strings;

with AMF.CMOF.Classes;
with AMF.CMOF.Elements;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages;
with AMF.Elements;
with AMF.Factories.Registry;
with CMOF.Internals.Setup;
with CMOF.Extents;
with CMOF.XMI_Helper;
with League.Strings;

with Modeler.Main_Windows;

procedure Modeler.Driver is

   function "+" (Item : Wide_Wide_String) return Qt4.Strings.Q_String
     renames Qt4.Strings.From_Ucs_4;
   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   Window : Modeler.Main_Windows.Main_Window_Access;

begin
   Qt_Ada.Application.Initialize;
   Qt4.Core_Applications.Set_Organization_Name (+"Vadim Godunko");
   Qt4.Core_Applications.Set_Organization_Domain (+"qtada.com");
   Qt4.Core_Applications.Set_Application_Name (+"Matreshka Modeler");
   Qt4.Core_Applications.Set_Application_Version (+"0.2.0");

   Window := Main_Windows.Constructors.Create;
   Window.Show;

   --  XXX

   declare
      Extent  : constant CMOF.CMOF_Extent := CMOF.Extents.Create_Extent;
      Factory : constant AMF.Factories.AMF_Factory_Access
        := AMF.Factories.Registry.Resolve
            (+"http://schema.omg.org/spec/MOF/2.0/cmof.xml");
      Pack    : AMF.CMOF.Packages.CMOF_Package_Access
        := AMF.CMOF.Packages.CMOF_Package_Access
            (Factory.Create
              (Extent,
               AMF.CMOF.Classes.CMOF_Class_Access
                (AMF.CMOF.Elements.CMOF_Element_Access
                  (CMOF.XMI_Helper.Resolve (+"Package")))));
      Packed  :
        AMF.CMOF.Packageable_Elements.Collections.
          Set_Of_CMOF_Packageable_Element
            := Pack.Get_Packaged_Element;
      Class   : AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.CMOF.Classes.CMOF_Class_Access
            (Factory.Create
              (Extent,
               AMF.CMOF.Classes.CMOF_Class_Access
                (AMF.CMOF.Elements.CMOF_Element_Access
                  (CMOF.XMI_Helper.Resolve (+"Class")))));

   begin
      Pack.Set_Name ((False, +"Package one"));
      Class.Set_Name ((False, +"Class two"));
      Packed.Add (Class);
   end;

   --  XXX

   Qt_Ada.Application.Execute;
   Qt_Ada.Application.Finalize;
end Modeler.Driver;
