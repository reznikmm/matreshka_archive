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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.CMOF.Types;
with AMF.Internals.Helpers;

with Generator.Names;

package body Generator is

   use type AMF.Optional_String;
   use type AMF.Internals.AMF_Element;

   ---------------------------------------
   -- Class_Properties_Except_Redefined --
   ---------------------------------------

   function Class_Properties_Except_Redefined
    (Self : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Element_Sets.Set
   is
      Result        : CMOF_Element_Sets.Set;
      All_Redefined : CMOF_Element_Sets.Set;

      procedure Process_Class (Class : AMF.CMOF.Classes.CMOF_Class_Access);

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Class : AMF.CMOF.Classes.CMOF_Class_Access) is
         Owned_Attribute : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Super_Class     : constant
           AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
             := Class.Get_Super_Class;

      begin
         --  Analyze owned properties.

         for J in 1 .. Owned_Attribute.Length loop
            declare
               Attribute          : constant
                 AMF.CMOF.Properties.CMOF_Property_Access
                   := Owned_Attribute.Element (J);
               Redefined_Property : constant
                 AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
                   := Attribute.Get_Redefined_Property;

            begin
               --  Add all redefined properties into the set of redefined
               --  properties.

               for J in 1 .. Redefined_Property.Length loop
                  declare
                     Redefined : constant
                       AMF.CMOF.Properties.CMOF_Property_Access
                         := Redefined_Property.Element (J);

                  begin
                     if not All_Redefined.Contains
                             (AMF.CMOF.Elements.CMOF_Element_Access
                               (Redefined))
                     then
                        All_Redefined.Insert
                         (AMF.CMOF.Elements.CMOF_Element_Access (Redefined));
                     end if;
                  end;
               end loop;

               --  Add attribute into the result when it is not redefined and
               --  not in the result set already.

               if not All_Redefined.Contains
                       (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
                 and not Result.Contains
                          (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
               then
                  Result.Insert
                   (AMF.CMOF.Elements.CMOF_Element_Access (Attribute));
               end if;
            end;
         end loop;

         --  Analyze superclasses

         for J in 1 .. Super_Class.Length loop
            Process_Class (Super_Class.Element (J));
         end loop;
      end Process_Class;

   begin
      Process_Class (Self);

      return Result;
   end Class_Properties_Except_Redefined;

   -------------------------
   -- Has_Internal_Setter --
   -------------------------

   function Has_Internal_Setter
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean
   is
      The_Type : constant AMF.CMOF.Types.CMOF_Type_Access
        := Attribute.Get_Type;

   begin
      return
        not Attribute.Get_Is_Read_Only
          and then not Attribute.Is_Multivalued
--          and then The_Type.all not in AMF.CMOF.Classes.CMOF_Class'Class
          and then Use_Member_Slot (Attribute);
   end Has_Internal_Setter;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : AMF.CMOF.Properties.CMOF_Property_Access)
       return Ada.Containers.Hash_Type is
   begin
      return
        Ada.Containers.Hash_Type
         (AMF.Internals.Helpers.To_Element
           (AMF.Elements.Element_Access (Item)));
   end Hash;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Natural) return Ada.Containers.Hash_Type is
   begin
      return Ada.Containers.Hash_Type (Item);
   end Hash;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Right : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return Boolean
   is
      L : constant League.Strings.Universal_String
        := Generator.Names.Owning_Metamodel_Name (Left) & Left.Get_Name.Value;
      R : constant League.Strings.Universal_String
        := Generator.Names.Owning_Metamodel_Name (Right)
             & Right.Get_Name.Value;

   begin
      return L < R;
   end Less;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access;
     Right : not null AMF.CMOF.Data_Types.CMOF_Data_Type_Access)
       return Boolean
   is
      L : constant League.Strings.Universal_String
        := Generator.Names.Owning_Metamodel_Name (Left) & Left.Get_Name.Value;
      R : constant League.Strings.Universal_String
        := Generator.Names.Owning_Metamodel_Name (Right)
             & Right.Get_Name.Value;

   begin
      return L < R;
   end Less;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : not null AMF.CMOF.Properties.CMOF_Property_Access;
     Right : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean is
   begin
      if Left.Get_Name /= Right.Get_Name then
         return Left.Get_Name < Right.Get_Name;

      else
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Left))
             < AMF.Internals.Helpers.To_Element
                (AMF.Elements.Element_Access (Right));
      end if;
   end Less;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access;
     Right : AMF.CMOF.Named_Elements.CMOF_Named_Element_Access)
       return Boolean is
   begin
      if Left.Get_Name /= Right.Get_Name then
         return Left.Get_Name < Right.Get_Name;

      else
         return
           AMF.Internals.Helpers.To_Element
            (AMF.Elements.Element_Access (Left))
             < AMF.Internals.Helpers.To_Element
                (AMF.Elements.Element_Access (Right));
      end if;
   end Less;

   --------------------
   -- Representation --
   --------------------

   function Representation
    (Parameter : not null AMF.CMOF.Parameters.CMOF_Parameter_Access)
       return Representation_Kinds is
   begin
      if Parameter.Is_Multivalued then
         if Parameter.Get_Is_Unique then
            if Parameter.Get_Is_Ordered then
               return Ordered_Set;

            else
               return Set;
            end if;

         else
            if Parameter.Get_Is_Ordered then
               return Sequence;

            else
               return Bag;
            end if;
         end if;

      elsif Parameter.Lower_Bound = 0 then
         return Holder;

      else
         return Value;
      end if;
   end Representation;

   ----------
   -- Sort --
   ----------

   function Sort
    (Set : CMOF_Element_Sets.Set)
       return CMOF_Named_Element_Ordered_Sets.Set
   is
      Result   : CMOF_Named_Element_Ordered_Sets.Set;
      Position : CMOF_Element_Sets.Cursor := Set.First;

   begin
      while CMOF_Element_Sets.Has_Element (Position) loop
         Result.Insert
            (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
              (CMOF_Element_Sets.Element (Position)));
         CMOF_Element_Sets.Next (Position);
      end loop;

      return Result;
   end Sort;

   ---------------------
   -- Use_Member_Slot --
   ---------------------

   function Use_Member_Slot
    (Attribute : not null AMF.CMOF.Properties.CMOF_Property_Access)
       return Boolean
   is
      Attribute_Type     : constant AMF.CMOF.Types.CMOF_Type_Access
        := Attribute.Get_Type;
      Redefined_Property : constant
        AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
          := Attribute.Get_Redefined_Property;

   begin
      if not Redefined_Property.Is_Empty then
         --  When attribute redefines another attribute alanyze redefined one,
         --  because redefinition can change multiplicity.

         return Use_Member_Slot (Redefined_Property.Element (1));

      else
         return
           Attribute_Type.all not in AMF.CMOF.Classes.CMOF_Class'Class
             or (Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
                   and not Attribute.Is_Multivalued);
      end if;
   end Use_Member_Slot;

end Generator;
