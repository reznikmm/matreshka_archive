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

with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Elements;
with AMF.CMOF.Parameter_Direction_Kind_Holders;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Holders.Collections;
with AMF.Holders.Elements;
with AMF.Holders.Unlimited_Naturals;
with AMF.Elements;
with AMF.Holders;
with AMF.Internals.CMOF_Elements;
with AMF.Internals.Helpers;
with League.Holders.Booleans;
with League.Holders.Integers;
with League.Strings;

with Generator.Names;
with Generator.Wide_Wide_Text_IO;

package body Generator.Initialization is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;
   use AMF.CMOF;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use type AMF.Optional_Integer;
   use type AMF.Optional_String;
   use type League.Strings.Universal_String;

   procedure Generate_Metaclass_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access;
     Numbers : CMOF_Element_Number_Maps.Map);
   --  Generate initialization of metaclass element.

   procedure Generate_Properties_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access;
     Numbers : CMOF_Element_Number_Maps.Map);
   --  Generate initialization of metaclass's properties.

   procedure Generate_Link_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access;
     Numbers : CMOF_Element_Number_Maps.Map);
   --  Generate initialization of links.

   function Is_Parameter_Direction_Kind_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Boolean_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Integer_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Unlimited_Natural_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Class_Properties_Except_Redefined
    (Self : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Element_Sets.Set;
   --  Returns all properties of the specified class (including properties of
   --  superclasses, but except redefined properties).

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

   ----------------------------------
   -- Generate_Link_Initialization --
   ----------------------------------

   procedure Generate_Link_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access;
     Numbers : CMOF_Element_Number_Maps.Map)
   is
      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         use type AMF.Elements.Element_Access;

         Property      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := AMF.CMOF.Properties.CMOF_Property_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Property.Get_Type;
         Association   : constant AMF.CMOF.Associations.CMOF_Association_Access
           := Property.Get_Association;
         Value         : constant League.Holders.Holder
           := AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

         procedure Establish_Link
          (Association :
             not null AMF.CMOF.Associations.CMOF_Association_Access;
           Property    : not null AMF.CMOF.Properties.CMOF_Property_Access;
           Element     : not null AMF.CMOF.Elements.CMOF_Element_Access;
           Other       : not null AMF.CMOF.Elements.CMOF_Element_Access);

         --------------------
         -- Establish_Link --
         --------------------

         procedure Establish_Link
          (Association :
             not null AMF.CMOF.Associations.CMOF_Association_Access;
           Property    : not null AMF.CMOF.Properties.CMOF_Property_Access;
           Element     : not null AMF.CMOF.Elements.CMOF_Element_Access;
           Other       : not null AMF.CMOF.Elements.CMOF_Element_Access)
         is
            use type AMF.CMOF.Properties.CMOF_Property_Access;

            Member_End : constant
              AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
                := Association.Get_Member_End;
            First_End  : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Member_End.Element (1);
            Second_End : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Member_End.Element (2);

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
         if Property_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
            if Property.Is_Multivalued then
               for J in 1 .. AMF.Holders.Collections.Element
                              (Value).Length
               loop
                  Establish_Link
                   (Association,
                    Property,
                    Element,
                    AMF.CMOF.Elements.CMOF_Element_Access
                     (AMF.Holders.Collections.Element (Value).Element (J)));
               end loop;

            else
               if AMF.Holders.Elements.Element (Value) /= null then
                  Establish_Link
                   (Association,
                    Property,
                    Element,
                    AMF.CMOF.Elements.CMOF_Element_Access
                     (AMF.Holders.Elements.Element (Value)));
               end if;
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Link_Initialization;

   ---------------------------------------
   -- Generate_Metaclass_Initialization --
   ---------------------------------------

   procedure Generate_Metaclass_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access;
     Numbers : CMOF_Element_Number_Maps.Map)
   is
      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

   begin
      Put
       ("   Initialize_"
          & To_Ada_Identifier (Meta_Class.Get_Name.Value)
          & " (");
      Put (Numbers.Element (Element), Width => 0);
      Put_Line (");");
      Put ("   Internal_Append (Extent, ");
      Put (Numbers.Element (Element), Width => 0);
      Put_Line (");");
   end Generate_Metaclass_Initialization;

   ------------------------------------------------------
   -- Generate_Metamodel_Initialization_Implementation --
   ------------------------------------------------------

   procedure Generate_Metamodel_Initialization_Implementation
    (Elements : AMF.Elements.Collections.Reflective_Collection;
     Numbers  : CMOF_Element_Number_Maps.Map;
     Total    : Positive) is
   begin
      Put_Header;
      Put_Line ("with League.Strings;");
      New_Line;
      Put_Line ("with AMF." & Metamodel_Name.To_Wide_Wide_String & ";");
      Put_Line ("with AMF.Internals.Extents;");
      Put_Line ("with AMF.Internals.Links;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attributes;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Constructors;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Element_Table;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      New_Line;
      Put_Line
       ("package body AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Setup is");
      New_Line;
      Put_Line ("   use AMF." & Metamodel_Name.To_Wide_Wide_String & ";");
      Put_Line ("   use AMF.Internals.Extents;");
      Put_Line ("   use AMF.Internals.Links;");
      Put_Line ("   use AMF.Internals.Tables;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attributes;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Constructors;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      New_Line;
      Put_Line ("   Extent : constant AMF.Internals.AMF_Extent");
      Put_Line ("     := AMF.Internals.Extents.Allocate_Extent;");
      New_Line;
      Put_Line ("begin");
      Put
       ("   CMOF_Element_Table.Set_Last (");
      Put (Total, Width => 0);
      Put_Line
       (");");
      New_Line;

      for J in 1 .. Elements.Length loop
         Generate_Metaclass_Initialization
          (AMF.CMOF.Elements.CMOF_Element_Access
            (Elements.Element (J)), Numbers);
      end loop;

      for J in 1 .. Elements.Length loop
         Generate_Properties_Initialization
          (AMF.CMOF.Elements.CMOF_Element_Access
            (Elements.Element (J)), Numbers);
      end loop;

      New_Line;

      for J in 1 .. Elements.Length loop
         Generate_Link_Initialization
          (AMF.CMOF.Elements.CMOF_Element_Access
            (Elements.Element (J)), Numbers);
      end loop;

      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Setup;");
   end Generate_Metamodel_Initialization_Implementation;

   ----------------------------------------
   -- Generate_Properties_Initialization --
   ----------------------------------------

   procedure Generate_Properties_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access;
     Numbers : CMOF_Element_Number_Maps.Map)
   is
      use AMF.Holders;
      use League.Holders;

      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Property      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := AMF.CMOF.Properties.CMOF_Property_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Property.Get_Type;
         Association   : constant AMF.CMOF.Associations.CMOF_Association_Access
           := Property.Get_Association;
         Value         : constant League.Holders.Holder
           := AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

      begin
         if Property_Type.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            if Is_Boolean_Type (Property_Type) then
               Put
                ("   Internal_Set_"
                   & To_Ada_Identifier (Property.Get_Name.Value)
                   & " (");
               Put (Numbers.Element (Element), Width => 0);
               Put (", ");

               if League.Holders.Booleans.Element (Value) then
                  Put_Line ("True);");

               else
                  Put_Line ("False);");
               end if;
--               if Is_Optional (Property) then
--               end if;

            elsif Is_Integer_Type (Property_Type) then
               if Property.Get_Lower = 0 then
                  Put
                   ("   Internal_Set_"
                      & To_Ada_Identifier (Property.Get_Name.Value)
                      & " (");
                  Put (Numbers.Element (Element), Width => 0);
                  Put_Line
                   (", (False,"
                      & Integer'Wide_Wide_Image
                         (League.Holders.Integers.Element (Value))
                      & "));");

               else
                  raise Program_Error;
               end if;

            elsif Is_Unlimited_Natural_Type (Property_Type) then
               if Property.Get_Lower = 0 then
                  Put
                   ("   Internal_Set_"
                      & To_Ada_Identifier (Property.Get_Name.Value)
                      & " (");
                  Put (Numbers.Element (Element), Width => 0);
                  Put (", ");

                  if AMF.Holders.Unlimited_Naturals.Element
                      (Value).Unlimited
                  then
                     Put_Line ("(False, (Unlimited => True)));");

                  else
                     Put_Line
                      ("(False, (False,"
                         & Integer'Wide_Wide_Image
                            (AMF.Holders.Unlimited_Naturals.Element
                              (Value).Value)
                         & ")));");
                  end if;

               else
                  raise Program_Error;
               end if;

            elsif Is_String_Type (Property_Type) then
               if Property.Is_Multivalued then
                  Put_Line
                   (Standard_Error,
                    Property.Get_Name.Value.To_Wide_Wide_String
                      & ": Multivalued string value");

               elsif Property.Get_Lower = 0 then
                  if not Is_Empty (Value) then
                     Put_Line
                      ("   Internal_Set_"
                         & To_Ada_Identifier (Property.Get_Name.Value));
                     Put ("    (");
                     Put (Numbers.Element (Element), Width => 0);
                     Put_Line (",");
                     Put_Line
                      ("     (False, League.Strings.To_Universal_String ("""
                         & League.Holders.Element (Value).To_Wide_Wide_String
                         & """)));");
                  end if;

               else
                  Put_Line
                   ("   Internal_Set_"
                      & To_Ada_Identifier (Property.Get_Name.Value));
                  Put ("    (");
                  Put (Numbers.Element (Element), Width => 0);
                  Put_Line (",");
                  Put_Line
                   ("     (League.Strings.To_Universal_String ("""
                      & League.Holders.Element (Value).To_Wide_Wide_String
                      & """)));");
               end if;

            elsif Is_Parameter_Direction_Kind_Type (Property_Type) then
               Put
                ("   Internal_Set_"
                   & To_Ada_Identifier (Property.Get_Name.Value)
                   & " (");
               Put (Numbers.Element (Element), Width => 0);
               Put (", ");

               case AMF.CMOF.Parameter_Direction_Kind_Holders.Element
                     (Value)
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
      New_Line;
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Properties_Initialization;

   ---------------------
   -- Is_Boolean_Type --
   ---------------------

   function Is_Boolean_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("Boolean");
   end Is_Boolean_Type;

   ---------------------
   -- Is_Integer_Type --
   ---------------------

   function Is_Integer_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("Integer");
   end Is_Integer_Type;

   --------------------------------------
   -- Is_Parameter_Direction_Kind_Type --
   --------------------------------------

   function Is_Parameter_Direction_Kind_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return
        Element.Get_Name
          = League.Strings.To_Universal_String ("ParameterDirectionKind");
   end Is_Parameter_Direction_Kind_Type;

   -------------------------------
   -- Is_Unlimited_Natural_Type --
   -------------------------------

   function Is_Unlimited_Natural_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return
        Element.Get_Name
          = League.Strings.To_Universal_String ("UnlimitedNatural");
   end Is_Unlimited_Natural_Type;

   --------------------
   -- Is_String_Type --
   --------------------

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("String");
   end Is_String_Type;

end Generator.Initialization;
