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
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Properties.Collections;

package body AMF.Transformations.UML_Profile_To_CMOF.Stage_1 is

   use type AMF.UML.UML_Aggregation_Kind;

   ---------------------
   -- Enter_Extension --
   ---------------------

   overriding procedure Enter_Extension
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extensions.UML_Extension_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      --  Create association and set its attributes.

      Self.The_Association := Self.Context.Create_CMOF_Association (Element);
      Self.The_Association.Set_Name (Element.Get_Name);
      Self.The_Package.Get_Packaged_Element.Add (Self.The_Association);
   end Enter_Extension;

   -------------------------
   -- Enter_Extension_End --
   -------------------------

   overriding procedure Enter_Extension_End
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extension_Ends.UML_Extension_End_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

      The_Property : AMF.CMOF.Properties.CMOF_Property_Access;

   begin
      --  Create instance of CMOF::Property and set its attributes.

      The_Property := Self.Context.Create_CMOF_Property (Element);
      The_Property.Set_Name (Element.Get_Name);
      The_Property.Set_Lower (Element.Lower_Bound);
      The_Property.Set_Upper (Element.Upper_Bound);
      The_Property.Set_Is_Composite
       (Element.Get_Aggregation = AMF.UML.Composite);
      Self.The_Association.Get_Owned_End.Add (The_Property);
   end Enter_Extension_End;

   -------------------
   -- Enter_Profile --
   -------------------

   overriding procedure Enter_Profile
    (Self    : in out Transformer;
     Element : not null AMF.UML.Profiles.UML_Profile_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      --  Create instance of CMOF::Package and set its attributes.

      Self.The_Package := Self.Context.Create_CMOF_Package (Element);
      Self.The_Package.Set_Name (Element.Get_Name);
      Self.The_Package.Set_URI (Element.Get_URI);
   end Enter_Profile;

   --------------------
   -- Enter_Property --
   --------------------

   overriding procedure Enter_Property
    (Self    : in out Transformer;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

      The_Property : AMF.CMOF.Properties.CMOF_Property_Access;

   begin
      --  Create instance of CMOF::Property and set its attributes.

      The_Property := Self.Context.Create_CMOF_Property (Element);
      The_Property.Set_Name (Element.Get_Name);
      The_Property.Set_Lower (Element.Lower_Bound);
      The_Property.Set_Upper (Element.Upper_Bound);
      The_Property.Set_Is_Composite
       (Element.Get_Aggregation = AMF.UML.Composite);

      Self.The_Class.Get_Owned_Attribute.Add (The_Property);
   end Enter_Property;

   ----------------------
   -- Enter_Stereotype --
   ----------------------

   overriding procedure Enter_Stereotype
    (Self    : in out Transformer;
     Element : not null AMF.UML.Stereotypes.UML_Stereotype_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

   begin
      --  Create instance of CMOF::Class and set its attributes.

      Self.The_Class := Self.Context.Create_CMOF_Class (Element);
      Self.The_Class.Set_Name (Element.Get_Name);
      Self.The_Class.Set_Is_Abstract (Element.Get_Is_Abstract);

      Self.The_Package.Get_Packaged_Element.Add (Self.The_Class);
   end Enter_Stereotype;

   ---------------------
   -- Leave_Extension --
   ---------------------

   overriding procedure Leave_Extension
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extensions.UML_Extension_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Element);
      pragma Unreferenced (Control);

   begin
      Self.The_Association := null;
   end Leave_Extension;

   -------------------
   -- Leave_Profile --
   -------------------

   overriding procedure Leave_Profile
    (Self    : in out Transformer;
     Element : not null AMF.UML.Profiles.UML_Profile_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Element);
      pragma Unreferenced (Control);

   begin
      Self.The_Package := null;
   end Leave_Profile;

   ----------------------
   -- Leave_Stereotype --
   ----------------------

   overriding procedure Leave_Stereotype
    (Self    : in out Transformer;
     Element : not null AMF.UML.Stereotypes.UML_Stereotype_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Element);
      pragma Unreferenced (Control);

   begin
      Self.The_Class := null;
   end Leave_Stereotype;

end AMF.Transformations.UML_Profile_To_CMOF.Stage_1;