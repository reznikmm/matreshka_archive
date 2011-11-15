------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Tags;
with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

with League.Application;

with AMF.Elements.Collections;
with AMF.Facility;
with AMF.URI_Stores;
with AMF.UML.Extensions;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Profiles;
with AMF.UML.Stereotypes;
with XMI.Reader;

with AMF.Internals.Factories.UML_Factory;
pragma Unreferenced (AMF.Internals.Factories.UML_Factory);
--  Setup UML support.

procedure UMLProfile2CMOF is
   Store    : AMF.URI_Stores.URI_Store_Access;
   Elements : AMF.Elements.Collections.Set_Of_Element;
   Element  : AMF.Elements.Element_Access;

   procedure Profile_To_Package
    (Source : not null AMF.UML.Profiles.UML_Profile_Access);

   procedure Stereotype_To_Class
    (Source : not null AMF.UML.Stereotypes.UML_Stereotype_Access);

   procedure Extension_To_Association
    (Source : not null AMF.UML.Extensions.UML_Extension_Access);

   ------------------------------
   -- Extension_To_Association --
   ------------------------------

   procedure Extension_To_Association
    (Source : not null AMF.UML.Extensions.UML_Extension_Access) is
   begin
      if Source.Get_Name.Is_Empty then
         Ada.Wide_Wide_Text_IO.Put_Line ("Processing extension");

      else
         Ada.Wide_Wide_Text_IO.Put_Line
          ("Processing extension '"
             & Source.Get_Name.Value.To_Wide_Wide_String
             & ''');
      end if;
   end Extension_To_Association;

   ------------------------
   -- Profile_To_Package --
   ------------------------

   procedure Profile_To_Package
    (Source : not null AMF.UML.Profiles.UML_Profile_Access)
   is
      Elements : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Source.Get_Packaged_Element;
      Element  : AMF.UML.Packageable_Elements.UML_Packageable_Element_Access;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("Processing profile '"
          & Source.Get_Name.Value.To_Wide_Wide_String
          & ''');

      for J in 1 .. Elements.Length loop
         Element := Elements.Element (J);

         if Element.all in AMF.UML.Stereotypes.UML_Stereotype'Class then
            Stereotype_To_Class
             (AMF.UML.Stereotypes.UML_Stereotype_Access (Element));

         elsif Element.all in AMF.UML.Extensions.UML_Extension'Class then
            Extension_To_Association
             (AMF.UML.Extensions.UML_Extension_Access (Element));

         else
            Ada.Text_IO.Put_Line (Ada.Tags.External_Tag (Element.all'Tag));
         end if;
      end loop;
   end Profile_To_Package;

   -------------------------
   -- Stereotype_To_Class --
   -------------------------

   procedure Stereotype_To_Class
    (Source : not null AMF.UML.Stereotypes.UML_Stereotype_Access) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("Processing stereotype '"
          & Source.Get_Name.Value.To_Wide_Wide_String
          & ''');
   end Stereotype_To_Class;

begin
   --  Initialize facility.

   AMF.Facility.Initialize;

   --  Load model.

   Store := XMI.Reader.Read_File (League.Application.Arguments.Element (1));

   --  Get all model's elements.

   Elements := Store.Elements;

   --  Looking for profile.

   for J in 1 .. Elements.Length loop
      Element := Elements.Element (J);

      if Element.all in AMF.UML.Profiles.UML_Profile'Class then
         Profile_To_Package
          (AMF.UML.Profiles.UML_Profile_Access (Element));
      end if;
   end loop;
end UMLProfile2CMOF;
