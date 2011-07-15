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
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;

with Generator.Type_Mapping;

package body Generator.Attribute_Mapping is

   ----------------------------
   -- Is_Ada_Distinguishable --
   ----------------------------

   function Is_Ada_Distinguishable
    (Attribute_1 : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Attribute_2 : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Mode        : Subprogram_Kinds) return Boolean
   is
      use type AMF.Optional_String;
      use type League.Strings.Universal_String;

      Redefined_1 : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
      Redefined_2 : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
      Actual_1    : AMF.CMOF.Properties.CMOF_Property_Access;
      Actual_2    : AMF.CMOF.Properties.CMOF_Property_Access;

   begin
      if Attribute_1.Get_Name /= Attribute_2.Get_Name then
         --  Two subprograms with different names is distinguishable in Ada.

         return True;
      end if;

      case Mode is
         when Public | Proxy =>
            return
              Type_Mapping.Public_Ada_Type_Qualified_Name
               (Actual_1.Get_Type, Representation (Actual_1))
                /= Type_Mapping.Public_Ada_Type_Qualified_Name
                    (Actual_2.Get_Type, Representation (Actual_2));

         when Internal =>
            --  Looking for deepest redefined property for each attribute. This
            --  allows to detect situation when redefined property has
            --  multivalued multiplicity but source property is not
            --  multivalued.

            Actual_1 := Attribute_1;
            Redefined_1 := Attribute_1.Get_Redefined_Property;

            while not Redefined_1.Is_Empty loop
               Actual_1 := Redefined_1.Element (1);

               Redefined_1 := Actual_1.Get_Redefined_Property;
            end loop;

            Actual_2 := Attribute_2;
            Redefined_2 := Attribute_2.Get_Redefined_Property;

            while not Redefined_2.Is_Empty loop
               Actual_2 := Redefined_2.Element (1);

               Redefined_2 := Actual_2.Get_Redefined_Property;
            end loop;

            return
              Type_Mapping.Internal_Ada_Type_Qualified_Name
               (Actual_1.Get_Type, Representation (Actual_1))
                /= Type_Mapping.Internal_Ada_Type_Qualified_Name
                    (Actual_2.Get_Type, Representation (Actual_2));
      end case;
   end Is_Ada_Distinguishable;

   --------------------
   -- Representation --
   --------------------

   function Representation
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Representation_Kinds is
   begin
      if Attribute.Is_Multivalued then
         if Attribute.Get_Is_Unique then
            if Attribute.Get_Is_Ordered then
               return Ordered_Set;

            else
               return Set;
            end if;

         else
            if Attribute.Get_Is_Ordered then
               return Sequence;

            else
               return Bag;
            end if;
         end if;

      elsif Attribute.Lower_Bound = 0 then
         return Holder;

      else
         return Value;
      end if;
   end Representation;

end Generator.Attribute_Mapping;
