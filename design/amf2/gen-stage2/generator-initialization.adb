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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Parameter_Direction_Kind_Holders;
with AMF.Holders;
with AMF.Values;
with CMOF.Associations;
with CMOF.Classes;
with CMOF.Collections;
with CMOF.Multiplicity_Elements;
with CMOF.Named_Elements;
with CMOF.Properties;
with CMOF.Reflection;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;
with League.Holders.Booleans;
with League.Holders.Integers;
with League.Strings;

with Generator.Names;
with Generator.Wide_Wide_Text_IO;

package body Generator.Initialization is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;
   use CMOF;
   use CMOF.Associations;
   use CMOF.Classes;
   use CMOF.Collections;
   use CMOF.Extents;
   use CMOF.Multiplicity_Elements;
   use CMOF.Named_Elements;
   use CMOF.Properties;
   use CMOF.Reflection;
   use CMOF.Typed_Elements;
   use CMOF.XMI_Helper;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use type League.Strings.Universal_String;

   procedure Generate_Metaclass_Initialization
    (Element : CMOF_Element;
     Numbers : CMOF_Element_Number_Maps.Map);

   procedure Generate_Link_Initialization
    (Element : CMOF_Element;
     Numbers : CMOF_Element_Number_Maps.Map);

   function Has_Parameter_Direction_Kind_Type
    (Property : CMOF_Property) return Boolean;

   function Has_Boolean_Type (Property : CMOF_Property) return Boolean;

   function Has_Integer_Type (Property : CMOF_Property) return Boolean;

   function Has_Unlimited_Natural_Type
    (Property : CMOF_Property) return Boolean;

   function Has_String_Type (Property : CMOF_Property) return Boolean;

   function Class_Properties_Except_Redefined
    (Self : CMOF_Class) return CMOF_Element_Sets.Set;
   --  Returns all properties of the specified class (including properties of
   --  superclasses, but except redefined properties).

   ---------------------------------------
   -- Class_Properties_Except_Redefined --
   ---------------------------------------

   function Class_Properties_Except_Redefined
    (Self : CMOF_Class) return CMOF_Element_Sets.Set
   is
      Result        : CMOF_Element_Sets.Set;
      All_Redefined : CMOF_Element_Sets.Set;

      procedure Process_Class (Class : CMOF_Class);

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Class : CMOF_Class) is
         Owned_Attribute : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Super_Class     : constant Set_Of_CMOF_Class
           := Get_Super_Class (Class);

      begin
         --  Analyze owned properties.

         for J in 1 .. Length (Owned_Attribute) loop
            declare
               Attribute          : constant CMOF_Property
                 := Element (Owned_Attribute, J);
               Redefined_Property : constant Set_Of_CMOF_Property
                 := Get_Redefined_Property (Attribute);

            begin
               --  Add all redefined properties into the set of redefined
               --  properties.

               for J in 1 .. Length (Redefined_Property) loop
                  declare
                     Redefined : constant CMOF_Property
                       := Element (Redefined_Property, J);

                  begin
                     if not All_Redefined.Contains (Redefined) then
                        All_Redefined.Insert (Redefined);
                     end if;
                  end;
               end loop;

               --  Add attribute into the result when it is not redefined and
               --  not in the result set already.

               if not All_Redefined.Contains (Attribute)
                 and not Result.Contains (Attribute)
               then
                  Result.Insert (Attribute);
               end if;
            end;
         end loop;

         --  Analyze superclasses

         for J in 1 .. Length (Super_Class) loop
            Process_Class (Element (Super_Class, J));
         end loop;
      end Process_Class;

   begin
      Process_Class (Self);

      return Result;
   end Class_Properties_Except_Redefined;

   ---------------------------------------
   -- Generate_Metaclass_Initialization --
   ---------------------------------------

   procedure Generate_Metaclass_Initialization
    (Element : CMOF_Element;
     Numbers : CMOF_Element_Number_Maps.Map)
   is

      use AMF.Holders;
      use League.Holders;
      use type AMF.Values.Value_Kinds;

      Meta_Class : constant CMOF_Class := Get_Meta_Class (Element);

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Property    : constant CMOF_Property
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Association : constant CMOF_Association := Get_Association (Property);
         Value       : constant AMF.Values.Value := Get (Element, Property);

      begin
         if Is_Data_Type (Get_Type (Property)) then
            if Has_Boolean_Type (Property) then
               Put
                ("   Internal_Set_" & To_Ada_Identifier (Get_Name (Property))
                   & " (");
               Put (Numbers.Element (Element), Width => 0);
               Put (", ");

               if League.Holders.Booleans.Element (Value.Holder_Value) then
                  Put_Line ("True);");

               else
                  Put_Line ("False);");
               end if;
--               if Is_Optional (Property) then
--               end if;

            elsif Has_Integer_Type (Property) then
               if Get_Lower (Property) = 0 then
                  Put
                   ("   Internal_Set_"
                      & To_Ada_Identifier (Get_Name (Property))
                      & " (");
                  Put (Numbers.Element (Element), Width => 0);
                  Put_Line
                   (", (False,"
                      & Integer'Wide_Wide_Image
                         (League.Holders.Integers.Element (Value.Holder_Value))
                      & "));");

               else
                  raise Program_Error;
               end if;

            elsif Has_Unlimited_Natural_Type (Property) then
               if Get_Lower (Property) = 0 then
                  Put
                   ("   Internal_Set_"
                      & To_Ada_Identifier (Get_Name (Property))
                      & " (");
                  Put (Numbers.Element (Element), Width => 0);
                  Put (", ");

                  if Value.Optional_Unlimited_Natural_Value.Value.Unlimited then
                     Put_Line ("(False, (Unlimited => True)));");

                  else
                     Put_Line
                      ("(False, (False,"
                         & Integer'Wide_Wide_Image
                            (Value.Optional_Unlimited_Natural_Value.Value.Value)
                         & ")));");
                  end if;

               else
                  raise Program_Error;
               end if;

            elsif Has_String_Type (Property) then
               if Is_Multivalued (Property) then
                  Put_Line
                   (Standard_Error,
                    Get_Name (Property).To_Wide_Wide_String
                      & ": Multivalued string value");

               elsif Get_Lower (Property) = 0 then
                  if not Is_Empty (Value.Holder_Value) then
                     Put_Line
                      ("   Internal_Set_"
                         & To_Ada_Identifier (Get_Name (Property)));
                     Put ("    (");
                     Put (Numbers.Element (Element), Width => 0);
                     Put_Line (",");
                     Put_Line
                      ("     (False, League.Strings.To_Universal_String ("""
                         & League.Holders.Element
                            (Value.Holder_Value).To_Wide_Wide_String
                         & """)));");
                  end if;

               else
                  raise Program_Error;
               end if;

            elsif Has_Parameter_Direction_Kind_Type (Property) then
               Put
                ("   Internal_Set_" & To_Ada_Identifier (Get_Name (Property))
                   & " (");
               Put (Numbers.Element (Element), Width => 0);
               Put (", ");

               case AMF.CMOF.Parameter_Direction_Kind_Holders.Element
                     (Value.Holder_Value)
               is
                  when In_Direction =>
                     Put_Line ("In_Direction);");

                  when Out_Direction =>
                     Put_Line ("Out_Direction);");

                  when In_Out_Direction =>
                     Put_Line ("In_Out_Direction);");

                  when Return_Direction =>
                     Put_Line ("Return_Direction);");
               end case;
            else
               --  Enumeration

               null;
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Put
       ("   Initialize_"
          & To_Ada_Identifier (Get_Name (Meta_Class))
          & " (");
      Put (Numbers.Element (Element), Width => 0);
      Put_Line (", Extent);");
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Metaclass_Initialization;

   ----------------------------------
   -- Generate_Link_Initialization --
   ----------------------------------

   procedure Generate_Link_Initialization
    (Element : CMOF_Element;
     Numbers : CMOF_Element_Number_Maps.Map)
   is

      use type AMF.Values.Value_Kinds;

      Meta_Class : constant CMOF_Class := Get_Meta_Class (Element);

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Property    : constant CMOF_Property
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Association : constant CMOF_Association := Get_Association (Property);
         Value       : constant AMF.Values.Value := Get (Element, Property);

         procedure Establish_Link
          (Association : CMOF_Association;
           Property    : CMOF_Property;
           Element     : CMOF_Element;
           Other       : CMOF_Element);

         --------------------
         -- Establish_Link --
         --------------------

         procedure Establish_Link
          (Association : CMOF_Association;
           Property    : CMOF_Property;
           Element     : CMOF_Element;
           Other       : CMOF_Element)
         is
            First_End  : constant CMOF_Property
              := Collections.Element (Get_Member_End (Association), 1);
            Second_End : constant CMOF_Property
              := Collections.Element (Get_Member_End (Association), 2);

         begin
            if First_End = Property then
               --  Link is created only when specified property is a first
               --  property in the Association::membrEnd. This allows to
               --  suppress generation of duplicate links.

               Put_Line ("   Internal_Create_Link");
               Put_Line
                ("    (" & Association_Constant_Name (Association) & ",");
               Put ("     ");
               Put (Numbers.Element (Element), Width => 0);
               Put_Line (",");
               Put_Line ("     " & Property_Constant_Name (First_End) & ",");
               Put ("     ");
               Put (Numbers.Element (Other), Width => 0);
               Put_Line (",");
               Put_Line ("     " & Property_Constant_Name (Second_End) & ");");
            end if;

         end Establish_Link;

      begin
         if Is_Class (Get_Type (Property)) then
            if Is_Multivalued (Property) then
               for J in 1 .. Length (Value.Collection_Value) loop
                  Establish_Link
                   (Association,
                    Property,
                    Element,
                    Collections.Element (Value.Collection_Value, J));
               end loop;

            else
               if Value.Element_Value /= Null_CMOF_Element then
                  Establish_Link
                   (Association, Property, Element, Value.Element_Value);
               end if;
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Link_Initialization;

   ------------------------------------------------------
   -- Generate_Metamodel_Initialization_Implementation --
   ------------------------------------------------------

   procedure Generate_Metamodel_Initialization_Implementation
    (Elements : CMOF.Extents.CMOF_Element_Sets.Set;
     Numbers  : CMOF_Element_Number_Maps.Map;
     Total    : Positive)
   is

      procedure Generate_Metaclass_Initialization
       (Position : CMOF_Element_Sets.Cursor);
      --  Generates initialization of metaclass except links.

      procedure Generate_Link_Initialization
       (Position : CMOF_Element_Sets.Cursor);
      --  Generates initialization of links.

      ----------------------------------
      -- Generate_Link_Initialization --
      ----------------------------------

      procedure Generate_Link_Initialization
       (Position : CMOF_Element_Sets.Cursor)
      is
         Element : constant CMOF_Element
           := CMOF_Element_Sets.Element (Position);

      begin
         Generate_Link_Initialization (Element, Numbers);
      end Generate_Link_Initialization;

      ---------------------------------------
      -- Generate_Metaclass_Initialization --
      ---------------------------------------

      procedure Generate_Metaclass_Initialization
       (Position : CMOF_Element_Sets.Cursor)
      is
         Element : constant CMOF_Element
           := CMOF_Element_Sets.Element (Position);

      begin
         Generate_Metaclass_Initialization (Element, Numbers);
      end Generate_Metaclass_Initialization;

   begin
      Put_Header;
      Put_Line ("with League.Strings;");
      New_Line;
      Put_Line ("with AMF;");
      Put_Line ("with CMOF.Internals.Attributes;");
      Put_Line ("with CMOF.Internals.Constructors;");
      Put_Line ("with CMOF.Internals.Extents;");
      Put_Line ("with CMOF.Internals.Links;");
      Put_Line ("with CMOF.Internals.Metamodel;");
      Put_Line ("with CMOF.Internals.Tables;");
      New_Line;
      Put_Line ("package body CMOF.Internals.Setup is");
      New_Line;
      Put_Line ("   use CMOF.Internals.Attributes;");
      Put_Line ("   use CMOF.Internals.Constructors;");
      Put_Line ("   use CMOF.Internals.Extents;");
      Put_Line ("   use CMOF.Internals.Links;");
      Put_Line ("   use CMOF.Internals.Metamodel;");
      New_Line;
      Put_Line ("   Extent : constant CMOF_Extent := CMOF_Metamodel_Extent;");
      New_Line;
      Put_Line ("begin");
      Put
       ("   Tables.Elements.Set_Last (");
      Put (Total, Width => 0);
      Put_Line
       (");");
      Put_Line ("   Initialize_CMOF_Metamodel_Extent;");
      New_Line;
      Elements.Iterate (Generate_Metaclass_Initialization'Access);
      Elements.Iterate (Generate_Link_Initialization'Access);
      New_Line;
      Put_Line ("end CMOF.Internals.Setup;");
   end Generate_Metamodel_Initialization_Implementation;

   ----------------------
   -- Has_Boolean_Type --
   ----------------------

   function Has_Boolean_Type (Property : CMOF_Property) return Boolean is
   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("Boolean");
   end Has_Boolean_Type;

   ----------------------
   -- Has_Integer_Type --
   ----------------------

   function Has_Integer_Type (Property : CMOF_Property) return Boolean is
   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("Integer");
   end Has_Integer_Type;

   ---------------------------------------
   -- Has_Parameter_Direction_Kind_Type --
   ---------------------------------------

   function Has_Parameter_Direction_Kind_Type
    (Property : CMOF_Property) return Boolean is
   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("ParameterDirectionKind");
   end Has_Parameter_Direction_Kind_Type;

   --------------------------------
   -- Has_Unlimited_Natural_Type --
   --------------------------------

   function Has_Unlimited_Natural_Type
    (Property : CMOF_Property) return Boolean is
   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("UnlimitedNatural");
   end Has_Unlimited_Natural_Type;

   ---------------------
   -- Has_String_Type --
   ---------------------

   function Has_String_Type (Property : CMOF_Property) return Boolean is
   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("String");
   end Has_String_Type;

end Generator.Initialization;
