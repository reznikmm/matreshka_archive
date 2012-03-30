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
with AMF.CMOF.Associations;
with AMF.CMOF.Elements.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Tags;
with AMF.CMOF.Types;
with AMF.UML.Elements.Collections;
with AMF.UML.Properties.Collections;
with AMF.UML.Stereotypes;
with AMF.UML.Types;

package body AMF.Transformations.UML_Profile_To_CMOF.Stage_2 is

   ---------------------
   -- Enter_Extension --
   ---------------------

   overriding procedure Enter_Extension
    (Self    : in out Transformer;
     Element : not null AMF.UML.Extensions.UML_Extension_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

      The_Association : constant
        not null AMF.CMOF.Associations.CMOF_Association_Access
          := AMF.CMOF.Associations.CMOF_Association_Access
              (Self.Context.Mapped_Element (Element));
      Member_End      : constant
        AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
          := Element.Get_Member_End;
      Collection      :
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := The_Association.Get_Member_End;

   begin
      --  Fill CMOF::Association::memberEnd attribute.

      for J in 1 .. Member_End.Length loop
         Collection.Add
          (AMF.CMOF.Properties.CMOF_Property_Access
            (Self.Context.Mapped_Element (Member_End.Element (J))));
      end loop;
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

      The_Property : constant
        not null AMF.CMOF.Properties.CMOF_Property_Access
          := AMF.CMOF.Properties.CMOF_Property_Access
              (Self.Context.Mapped_Element (Element));

   begin
      --  Set type of attribute.

      The_Property.Set_Type
       (AMF.CMOF.Types.CMOF_Type_Access
         (Self.Context.Mapped_Element
           (AMF.UML.Stereotypes.UML_Stereotype_Access'(Element.Get_Type))));
   end Enter_Extension_End;

   --------------------
   -- Enter_Property --
   --------------------

   overriding procedure Enter_Property
    (Self    : in out Transformer;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

      The_Property : constant
        not null AMF.CMOF.Properties.CMOF_Property_Access
          := AMF.CMOF.Properties.CMOF_Property_Access
              (Self.Context.Mapped_Element (Element));

   begin
      --  Set type of attribute.

      The_Property.Set_Type
       (AMF.CMOF.Types.CMOF_Type_Access
         (Self.Context.Mapped_Element
           (AMF.UML.Types.UML_Type_Access'(Element.Get_Type))));
   end Enter_Property;

   ---------------
   -- Enter_Tag --
   ---------------

   overriding procedure Enter_Tag
    (Self    : in out Transformer;
     Element : not null AMF.MOF.Tags.MOF_Tag_Access;
     Control : in out AMF.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Control);

      The_Tag    : constant not null AMF.CMOF.Tags.CMOF_Tag_Access
        := AMF.CMOF.Tags.CMOF_Tag_Access
            (Self.Context.Mapped_Element (Element));
      Elements   : constant AMF.UML.Elements.Collections.Set_Of_UML_Element
        := Element.Get_Element;
      Collection :
        AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
          := The_Tag.Get_Element;

   begin
      for J in 1 .. Elements.Length loop
         Collection.Add
          (AMF.CMOF.Elements.CMOF_Element_Access
            (Self.Context.Mapped_Element (Elements.Element (J))));
      end loop;
   end Enter_Tag;

end AMF.Transformations.UML_Profile_To_CMOF.Stage_2;
