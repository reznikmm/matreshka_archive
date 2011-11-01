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
with League.Holders;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Holders.Elements;

package body AMF.Internals.Elements is

   procedure Internal_Container
    (Element    : not null access constant Element_Implementation'Class;
     Meta_Class : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Result     : out AMF.Elements.Element_Access);
   --  Internal implementation of Element.Container operation to process
   --  superclasses recursively.

   ---------------
   -- Container --
   ---------------

   overriding function Container
    (Self : not null access constant Element_Implementation)
       return AMF.Elements.Element_Access
   is
      Result : AMF.Elements.Element_Access;

   begin
      Internal_Container
       (Self, Element_Implementation'Class (Self.all).Get_Meta_Class, Result);

      return Result;
   end Container;

   ------------------------
   -- Internal_Container --
   ------------------------

   procedure Internal_Container
    (Element    : not null access constant Element_Implementation'Class;
     Meta_Class : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Result     : out AMF.Elements.Element_Access)
   is
      use type AMF.CMOF.Properties.CMOF_Property_Access;
      use type AMF.Elements.Element_Access;

      Super_Class    : constant AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
        := Meta_Class.Get_Super_Class;
      Attributes     : constant
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := Meta_Class.Get_Owned_Attribute;
      Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
      Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;
      Association    : AMF.CMOF.Associations.CMOF_Association_Access;
      Member_End     :
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property;
      Opposite       : AMF.CMOF.Properties.CMOF_Property_Access;
      Value          : League.Holders.Holder;

   begin
      --  Go through all attributes of the specified metaclass and try to
      --  retrieve value for all attributes which opposite end of the
      --  association is composite. Return retrieved value when it is not
      --  empty.

      for J in 1 .. Attributes.Length loop
         Attribute      := Attributes.Element (J);
         Attribute_Type := Attribute.Get_Type;
         Association    := Attribute.Get_Association;

         if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
            --  Compute opposite end of association.
            --
            --  Note: CMOF::Property::opposite can't be used here because of
            --  strong dependency from navigability, which is not needed here.

            Member_End := Association.Get_Member_End;

            if Member_End.Element (1) = Attribute then
               Opposite := Member_End.Element (2);

            else
               Opposite := Member_End.Element (1);
            end if;

            --  Retrieve value of attribute when opposite is composite end.

            if Opposite.Get_Is_Composite then
               Value := Element.Get (Attribute);
               Result := AMF.Holders.Elements.Element (Value);

               if Result /= null then
                  return;
               end if;
            end if;
         end if;
      end loop;

      --  Go through all attributes of all superclasses.

      for J in 1 .. Super_Class.Length loop
         Internal_Container (Element, Super_Class.Element (J), Result);

         if Result /= null then
            return;
         end if;
      end loop;
   end Internal_Container;

end AMF.Internals.Elements;
