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
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Redefinable_Elements.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;

package body Generator.Analyzer is

   procedure Compute_All_Properties
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Computes all attributes of the class, assigns slot and collections.

   -------------------
   -- Analyze_Model --
   -------------------

   procedure Analyze_Model
    (Extent : not null AMF.URI_Stores.URI_Store_Access)
   is
      Elements : constant AMF.Elements.Collections.Reflective_Collection
        := Extent.Elements;

   begin
      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all in AMF.CMOF.Classes.CMOF_Class'Class then
            declare
               Class : AMF.CMOF.Classes.CMOF_Class_Access
                 := AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J));

            begin
               Compute_All_Properties (Class);
            end;
         end if;
      end loop;
   end Analyze_Model;

   ----------------------------
   -- Compute_All_Properties --
   ----------------------------

   procedure Compute_All_Properties
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      procedure Process_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
      --  Process specified class and all its superclasses.

      Info       : not null Class_Information_Access
        := new Class_Information'(Class, others => <>);
      Slot       : Natural := 0;
      --  Number of last used slot, slot number zero is used to store number of
      --  first collection.
      Collection : Natural := 0;
      --  Number of last used collection, collection number zero is used to
      --  manage element's links when association end is owned by association.

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Superclasses   : AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Attributes     :
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Redefines      : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

      begin
         --  Process superclasses

         for J in 1 .. Superclasses.Length loop
            Process_Class (Superclasses.Element (J));
         end loop;

         --  Process class's attributes

         for J in 1 .. Attributes.Length loop
            Attribute := Attributes.Element (J);
            Redefines := Attribute.Get_Redefined_Property;
            Attribute_Type := Attribute.Get_Type;


            --  Add property into set of all attributes.

            if not Info.All_Attributes.Contains (Attribute) then
               Info.All_Attributes.Insert (Attribute);

               --  Assign slot or collection for attribute.

               if Attribute_Type.all not in AMF.CMOF.Classes.CMOF_Class'Class
                 or (Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
                       and not Attribute.Is_Multivalued)
               then
                  --  Slot property.

                  if Redefines.Is_Empty then
                     --  Attribite doesn't redefine another attribute,
                     --  assign slot for it.

                     Slot := Slot + 1;
                     Info.Slot.Insert (Attribute, Slot);
                     Info.Slot_Index.Insert (Slot, Attribute);

                  else
                     --  Attribute redefines another attribute. use
                     --  previously assigned slot for it.

                     Info.Slot.Insert
                      (Attribute, Info.Slot.Element (Redefines.Element (1)));
                  end if;

               else
                  --  Collection of element property.

                  if Redefines.Is_Empty then
                     --  Attribute doesn't redefine another attribute,
                     --  assign collection for it.

                     Collection := Collection + 1;
                     Info.Collection.Insert (Attribute, Collection);
                     Info.Collection_Index.Insert (Collection, Attribute);

                  else
                     --  Attribute redefines another attribute. use
                     --  previously assigned collection for it.

                     Info.Collection.Insert
                      (Attribute,
                       Info.Collection.Element (Redefines.Element (1)));
                  end if;
               end if;
            end if;
         end loop;
      end Process_Class;

   begin
      if Class.Get_Is_Abstract then
         --  Ignore abstract classes.

         return;
      end if;

      Process_Class (Class);
      Class_Info.Insert (Class, Info);
   end Compute_All_Properties;

end Generator.Analyzer;
