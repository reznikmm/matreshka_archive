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
--  Checks whether type of property is not null when it imported from another
--  metamodel and critical error was encountered when one of XMI document is
--  loaded.
------------------------------------------------------------------------------
with League.Application;

with AMF.Facility;
with AMF.UML.Properties;
with AMF.UML.Types;
with AMF.URI_Stores;
with AMF.Visitors.UML_Visitors;
with AMF.Visitors.UML_Containment;
with XMI.Reader;

with AMF.Internals.Modules.MOFEXT_Module;
pragma Unreferenced (AMF.Internals.Modules.MOFEXT_Module);
with AMF.Internals.Modules.UML_Module;
pragma Unreferenced (AMF.Internals.Modules.UML_Module);

procedure Test_226 is

   type Test_226_Visitor is
     limited new AMF.Visitors.UML_Visitors.UML_Visitor with
   record
      Found : Boolean := False;
   end record;

   overriding procedure Enter_Property
    (Self    : in out Test_226_Visitor;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control);

   --------------------
   -- Enter_Property --
   --------------------

   overriding procedure Enter_Property
    (Self    : in out Test_226_Visitor;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      use type AMF.UML.Types.UML_Type_Access;

      The_Type : constant AMF.UML.Types.UML_Type_Access := Element.Get_Type;

   begin
      Self.Found := True;

      if The_Type = null then
         raise Program_Error;
      end if;
   end Enter_Property;

   Store    : AMF.URI_Stores.URI_Store_Access;
   Iterator : AMF.Visitors.UML_Containment.UML_Containment_Iterator;
   Test     : Test_226_Visitor;

begin
   AMF.Facility.Initialize;
   Store := XMI.Reader.Read_URI (League.Application.Arguments.Element (1));
   Iterator.Visit (Test, Store);

   if not Test.Found then
      raise Program_Error;
   end if;
end Test_226;
