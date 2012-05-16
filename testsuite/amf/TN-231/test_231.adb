------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                            Testsuite Component                           --
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
--  Check whether UML::Operation::bodyCondition attribute is serialized as
--  XML attribute, but not as XML element.
------------------------------------------------------------------------------
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;

with AMF.Facility;
with AMF.Factories.UML_Factories;
with AMF.UML.Classes;
with AMF.UML.Constraints.Collections;
with AMF.UML.Operations.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages;
with AMF.URI_Stores;
with League.Strings;
with XMI.Writer;

with AMF.Internals.Modules.UML_Module;

procedure Test_231 is

   use type League.Strings.Universal_String;

   function "+"
    (Item : Wide_Wide_String) return League.Strings.Universal_String
       renames League.Strings.To_Universal_String;

   LF : Wide_Wide_Character
     renames Ada.Characters.Wide_Wide_Latin_1.LF;

   Expected    : constant League.Strings.Universal_String
     := +("<?xml version=""1.0""?>" & LF
            & "<xmi:XMI xmlns:uml='http://www.omg.org/spec/UML/20100901' xmlns:xmi='http://www.omg.org/spec/XMI/20100901'>" & LF
            & "  <uml:Package xmi:type='uml:Package' xmi:id='16777217'>" & LF
            & "    <packagedElement xmi:type='uml:Class' xmi:id='16777218'>" & LF
            & "      <ownedOperation xmi:type='uml:Operation' xmi:id='16777220' bodyCondition='16777219'>" & LF
            & "        <ownedRule xmi:type='uml:Constraint' xmi:id='16777219'/>" & LF
            & "      </ownedOperation>" & LF
            & "    </packagedElement>" & LF
            & "  </uml:Package>" & LF
            & "</xmi:XMI>");

   UML_URI     : constant League.Strings.Universal_String
     := +"http://www.omg.org/spec/UML/20100901";
   UML_Factory : AMF.Factories.UML_Factories.UML_Factory_Access;
   Store       : AMF.URI_Stores.URI_Store_Access;

begin
   --  Initialize facility.

   AMF.Facility.Initialize;

   --  Create store.

   Store := AMF.Facility.Create_URI_Store (+"local:///test");

   --  Lookup for factory.

   UML_Factory :=
     AMF.Factories.UML_Factories.UML_Factory_Access
      (Store.Get_Factory (UML_URI));

   --  Create elements of model.

   declare
      The_Package    : constant AMF.UML.Packages.UML_Package_Access
        := UML_Factory.Create_Package;
      The_Class      : constant AMF.UML.Classes.UML_Class_Access
        := UML_Factory.Create_Class;
      The_Constraint : constant AMF.UML.Constraints.UML_Constraint_Access
        := UML_Factory.Create_Constraint;
      The_Operation  : constant AMF.UML.Operations.UML_Operation_Access
        := UML_Factory.Create_Operation;

      Packaged_Element :
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
      Owned_Operation  :
        AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation;
      Owned_Rule       :
        AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;

   begin
      --  Connect elements.

      Packaged_Element := The_Package.Get_Packaged_Element;
      Packaged_Element.Add (The_Class);

      Owned_Operation := The_Class.Get_Owned_Operation;
      Owned_Operation.Add (The_Operation);

      Owned_Rule := The_Operation.Get_Owned_Rule;
      Owned_Rule.Add (The_Constraint);

      The_Operation.Set_Body_Condition (The_Constraint);
   end;

   --  Serialize model into XMI and check result.

   if XMI.Writer (Store) /= Expected then
      Ada.Wide_Wide_Text_IO.Put_Line (XMI.Writer (Store).To_Wide_Wide_String);

      raise Program_Error;
   end if;
end Test_231;
