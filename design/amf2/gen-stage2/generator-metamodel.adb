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
with Ada.Wide_Wide_Text_IO;

with League.Holders.Booleans;
with League.Holders.Integers;

with AMF.CMOF.Associations;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Holders.Parameter_Direction_Kinds;
with AMF.CMOF.Holders.Visibility_Kinds;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Holders.Reflective_Collections;
with AMF.Holders.Elements;
with AMF.Holders.Unlimited_Naturals;
with AMF.Reflective_Collections;

with Generator.Names;
with Generator.String_Data;
with Generator.Units;
with Generator.Wide_Wide_Text_IO;

package body Generator.Metamodel is

   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use Generator.String_Data;
   use Generator.Wide_Wide_Text_IO;
   use type AMF.Optional_Integer;
   use type AMF.Optional_String;
   use type League.Strings.Universal_String;

   procedure Generate_Metamodel_Initialization
    (Unit : in out Generator.Units.Unit);

   procedure Generate_Metaclass_Initialization
    (Unit    : in out Generator.Units.Unit;
     Element : not null AMF.CMOF.Elements.CMOF_Element_Access);
   --  Generate initialization of metaclass element.

   procedure Generate_Properties_Initialization
    (Unit    : in out Generator.Units.Unit;
     Element : not null AMF.CMOF.Elements.CMOF_Element_Access);
   --  Generate initialization of metaclass's properties.

   procedure Generate_Link_Initialization
    (Unit    : in out Generator.Units.Unit;
     Element : not null AMF.CMOF.Elements.CMOF_Element_Access);
   --  Generate initialization of links.

   function Is_Parameter_Direction_Kind_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Visibility_Kind_Type
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

   ----------------------------------
   -- Generate_Link_Initialization --
   ----------------------------------

   procedure Generate_Link_Initialization
    (Unit    : in out Generator.Units.Unit;
     Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
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
         Value         : League.Holders.Holder;

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

               Unit.Context.Add (+"AMF.Internals.Links");
               Unit.Add_Line
                (+"      AMF.Internals.Links.Internal_Create_Link");
               Unit.Context.Add
                (Association_Constant_Package_Name (Association));
               Unit.Add_Line
                ("       ("
                   & Association_Constant_Qualified_Name (Association)
                   & ",");
               Unit.Add_Line
                (+"        Base +"
                    & Integer'Wide_Wide_Image
                       (Metamodel_Info.Element_Numbers.Element (Element))
                    & ",");
               Unit.Context.Add (Property_Constant_Package_Name (First_End));
               Unit.Add_Line
                ("        "
                   & Property_Constant_Qualified_Name (First_End)
                   & ",");

               if Metamodel_Info.Element_Numbers.Contains (Other) then
                  Unit.Add_Line
                   (+"        Base +"
                       & Integer'Wide_Wide_Image
                          (Metamodel_Info.Element_Numbers.Element (Other))
                       & ",");

               else
                  --  Cross metamodel link.

                  Unit.Context.Add (Element_Constant_Package_Name (Other));
                  Unit.Add_Line
                   ("        "
                      & Element_Constant_Qualified_Name (Other)
                      & ",");
               end if;

               Unit.Context.Add (Property_Constant_Package_Name (Second_End));
               Unit.Add_Line
                ("        "
                   & Property_Constant_Qualified_Name (Second_End)
                   & ");");
            end if;
         end Establish_Link;

      begin
         if Property_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
            Value :=
              AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

            if Property.Is_Multivalued then
               declare
                  Elements : constant
                    AMF.Reflective_Collections.Reflective_Collection
                      := AMF.Holders.Reflective_Collections.Element (Value);

               begin
                  for J in 1 .. Elements.Length loop
                     Establish_Link
                      (Association,
                       Property,
                       Element,
                       AMF.CMOF.Elements.CMOF_Element_Access
                        (AMF.Holders.Elements.Element (Elements.Element (J))));
                  end loop;
               end;

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
   -- Generate_Metamodel_Implementation --
   ---------------------------------------

   procedure Generate_Metamodel_Implementation is

      Unit : Generator.Units.Unit;

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Class_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor);

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor);

      -----------------------------------
      -- Generate_Association_Constant --
      -----------------------------------

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));

      begin
         Unit.Add_Header (Association_Constant_Name (Association), 3);
         Unit.Add_Line;
         Unit.Add_Line
          ("   function "
             & Association_Constant_Name (Association)
             & " return AMF.Internals.CMOF_Element is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line
          (+"      return Base +"
              & Integer'Wide_Wide_Image
                 (Metamodel_Info.Element_Numbers.Element
                   (AMF.CMOF.Elements.CMOF_Element_Access (Association)))
              & ";");
         Unit.Add_Line
          ("   end " & Association_Constant_Name (Association) & ";");
      end Generate_Association_Constant;

      --------------------------------------------
      -- Generate_Association_Property_Constant --
      --------------------------------------------

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));
         Owned_End   : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Association.Get_Owned_End;

         procedure Generate_Property_Constant
          (Property : not null AMF.CMOF.Properties.CMOF_Property_Access);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Property : not null AMF.CMOF.Properties.CMOF_Property_Access) is
         begin
            Unit.Add_Header (Property_Constant_Name (Property), 3);
            Unit.Add_Line;
            Unit.Add_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element is");
            Unit.Add_Line (+"   begin");
            Unit.Add_Line
             (+"      return Base +"
                 & Integer'Wide_Wide_Image
                    (Metamodel_Info.Element_Numbers.Element
                      (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                 & ";");
            Unit.Add_Line
             ("   end " & Property_Constant_Name (Property) & ";");
         end Generate_Property_Constant;

      begin
         for J in 1 .. Owned_End.Length loop
            Generate_Property_Constant (Owned_End.Element (J));
         end loop;
      end Generate_Association_Property_Constant;

      -----------------------------
      -- Generate_Class_Constant --
      -----------------------------

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Unit.Add_Header (Type_Constant_Name (Class), 3);
         Unit.Add_Line;
         Unit.Add_Line
          ("   function "
             & Type_Constant_Name (Class)
             & " return AMF.Internals.CMOF_Element is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line
          (+"      return Base +"
              & Integer'Wide_Wide_Image
                 (Metamodel_Info.Element_Numbers.Element
                   (AMF.CMOF.Elements.CMOF_Element_Access (Class)))
              & ";");
         Unit.Add_Line ("   end " & Type_Constant_Name (Class) & ";");
      end Generate_Class_Constant;

      --------------------------------------
      -- Generate_Class_Property_Constant --
      --------------------------------------

      procedure Generate_Class_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
         is
            Property : constant AMF.CMOF.Properties.CMOF_Property_Access
              := AMF.CMOF.Properties.CMOF_Property_Access
                  (CMOF_Named_Element_Ordered_Sets.Element (Position));
            Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
              := Property.Get_Type;

         begin
            Unit.Add_Header (Property_Constant_Name (Property), 3);
            Unit.Add_Line;
            Unit.Add_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element is");
            Unit.Add_Line (+"   begin");
            Unit.Add_Line
             (+"      return Base +"
                 & Integer'Wide_Wide_Image
                    (Metamodel_Info.Element_Numbers.Element
                      (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                 & ";");
            Unit.Add_Line
             ("   end " & Property_Constant_Name (Property) & ";");
         end Generate_Property_Constant;

         Class      : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Properties.Insert
             (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
               (Attributes.Element (J)));
         end loop;

         Properties.Iterate (Generate_Property_Constant'Access);
      end Generate_Class_Property_Constant;

      ---------------------------------
      -- Generate_Data_Type_Constant --
      ---------------------------------

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Data_Type : constant AMF.CMOF.Data_Types.CMOF_Data_Type_Access
           := AMF.CMOF.Data_Types.CMOF_Data_Type_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Unit.Add_Header (Type_Constant_Name (Data_Type), 3);
         Unit.Add_Line;
         Unit.Add_Line
          ("   function "
             & Type_Constant_Name (Data_Type)
             & " return AMF.Internals.CMOF_Element is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line
          (+"      return Base +"
              & Integer'Wide_Wide_Image
                 (Metamodel_Info.Element_Numbers.Element
                   (AMF.CMOF.Elements.CMOF_Element_Access (Data_Type)))
              & ";");
         Unit.Add_Line
          ("   end "
             & Type_Constant_Name (Data_Type)
             & ";");
      end Generate_Data_Type_Constant;

      -------------------------------
      -- Generate_Package_Constant --
      -------------------------------

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant AMF.CMOF.Packages.CMOF_Package_Access
           := AMF.CMOF.Packages.CMOF_Package_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Unit.Add_Header (Package_Constant_Name (Element), 3);
         Unit.Add_Line;
         Unit.Add_Line
          ("   function "
             & Package_Constant_Name (Element)
             & " return AMF.Internals.CMOF_Element is");
         Unit.Add_Line (+"   begin");
         Unit.Add_Line
          (+"      return Base +"
              & Integer'Wide_Wide_Image
                 (Metamodel_Info.Element_Numbers.Element
                   (AMF.CMOF.Elements.CMOF_Element_Access (Element)))
              & ";");
         Unit.Add_Line
          ("   end "
             & Package_Constant_Name (Element)
             & ";");
      end Generate_Package_Constant;

      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Tables." & Metamodel_Info.Ada_Name & "_Metamodel";

   begin
      Unit.Add_Unit_Header
       (Integer'Max (2010, Generator.First_Year),
        Integer'Max (2012, Generator.Last_Year));
      Unit.Add_Line;
      Unit.Add_Line ("package body " & Package_Name & " is");

      Unit.Add_Line;
      Unit.Add_Line (+"   Base : AMF.Internals.CMOF_Element := 0;");

      --  Generate implementation of meta element query function.

      Sort (Metamodel_Info.Packages).Iterate
       (Generate_Package_Constant'Access);
      Sort (Metamodel_Info.Data_Types).Iterate
       (Generate_Data_Type_Constant'Access);
      Sort (Metamodel_Info.Classes).Iterate (Generate_Class_Constant'Access);
      Sort (Metamodel_Info.Classes).Iterate
       (Generate_Class_Property_Constant'Access);

      if Metamodel_Info.Ada_Name.To_Wide_Wide_String = "CMOF" then
         --  Constants for properties owned by associations needed only to
         --  initialize CMOF model.

         Metamodel_Info.Associations.Iterate
          (Generate_Association_Property_Constant'Access);
      end if;

      Metamodel_Info.Associations.Iterate
       (Generate_Association_Constant'Access);

      Unit.Add_Header ("MB_" & Metamodel_Info.Ada_Name, 3);
      Unit.Add_Line;
      Unit.Add_Line
       ("   function MB_"
          & Metamodel_Info.Ada_Name
          & " return AMF.Internals.AMF_Element is");
      Unit.Add_Line (+"   begin");
      Unit.Add_Line (+"      return Base;");
      Unit.Add_Line ("   end MB_" & Metamodel_Info.Ada_Name & ";");

      Unit.Add_Header ("MB_" & Metamodel_Info.Ada_Name, 3);
      Unit.Add_Line;
      Unit.Add_Line
       ("   function ML_"
          & Metamodel_Info.Ada_Name
          & " return AMF.Internals.AMF_Element is");
      Unit.Add_Line (+"   begin");
      Unit.Add_Line
       (+"      return Base +"
           & Integer'Wide_Wide_Image (Metamodel_Info.Last_Element)
           & ";");
      Unit.Add_Line ("   end ML_" & Metamodel_Info.Ada_Name & ";");

      Generate_Metamodel_Initialization (Unit);
      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Metamodel_Implementation;

   ---------------------------------------
   -- Generate_Metaclass_Initialization --
   ---------------------------------------

   procedure Generate_Metaclass_Initialization
    (Unit    : in out Generator.Units.Unit;
     Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
   is
      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

   begin
      if Metamodel_Info.Element_Numbers.Element (Element) /= 1 then
         Unit.Add_Line;
      end if;

      Unit.Context.Add (+"AMF.Internals.Tables.CMOF_Constructors");
      Unit.Context.Add (+"AMF.Internals.Extents");
      Unit.Add_Line
       (+"      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_"
           & To_Ada_Identifier (Meta_Class.Get_Name.Value)
           & ";");
      Unit.Add_Line
       (+"      AMF.Internals.Extents.Internal_Append (Extent, Aux);");

      if Metamodel_Info.Element_Numbers.Element (Element) = 1 then
         Unit.Add_Line (+"      Base := Aux - 1;");
      end if;
   end Generate_Metaclass_Initialization;

   ---------------------------------------
   -- Generate_Metamodel_Initialization --
   ---------------------------------------

   procedure Generate_Metamodel_Initialization
    (Unit : in out Generator.Units.Unit)
   is
      Position : Number_CMOF_Element_Maps.Cursor;

   begin
      Unit.Add_Header (+"Initialize_Objects", 3);
      Unit.Add_Line;
      Unit.Context.Add (+"AMF.Internals.Extents");
      Unit.Add_Line (+"   procedure Initialize_Objects is");
      Unit.Add_Line (+"      Extent : constant AMF.Internals.AMF_Extent");
      Unit.Add_Line (+"        := AMF.Internals.Extents.Allocate_Extent");
      Unit.Add_Line
       ("            ("
          & String_Data_Package_Name
             (Metamodel_Info.all, Metamodel_Info.Root_Package.Get_Uri.Value)
          & "."
          & String_Data_Constant_Name
             (Metamodel_Info.all, Metamodel_Info.Root_Package.Get_Uri.Value)
          & "'Access);");
      Unit.Add_Line (+"      Aux    : AMF.Internals.CMOF_Element;");
      Unit.Add_Line;
      Unit.Add_Line (+"   begin");

      Position := Metamodel_Info.Number_Element.First;

      while Number_CMOF_Element_Maps.Has_Element (Position) loop
         Generate_Metaclass_Initialization
          (Unit, Number_CMOF_Element_Maps.Element (Position));
         Number_CMOF_Element_Maps.Next (Position);
      end loop;

      Position := Metamodel_Info.Number_Element.First;

      while Number_CMOF_Element_Maps.Has_Element (Position) loop
         Generate_Properties_Initialization
          (Unit, Number_CMOF_Element_Maps.Element (Position));
         Number_CMOF_Element_Maps.Next (Position);
      end loop;

      Unit.Add_Line (+"   end Initialize_Objects;");
      Unit.Add_Header (+"Initialize_Links", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   procedure Initialize_Links is");
      Unit.Add_Line (+"   begin");

      Position := Metamodel_Info.Number_Element.First;

      while Number_CMOF_Element_Maps.Has_Element (Position) loop
         Generate_Link_Initialization
          (Unit, Number_CMOF_Element_Maps.Element (Position));
         Number_CMOF_Element_Maps.Next (Position);
      end loop;

      Unit.Add_Line (+"   end Initialize_Links;");
   end Generate_Metamodel_Initialization;

   ----------------------------------------
   -- Generate_Properties_Initialization --
   ----------------------------------------

   procedure Generate_Properties_Initialization
    (Unit    : in out Generator.Units.Unit;
     Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
   is
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
         Default       : constant AMF.Optional_String
           := Property.Get_Default;
         Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Property.Get_Type;
         Value         : League.Holders.Holder;

      begin
         if Property_Type.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class
           and then not Property.Get_Is_Derived
         then
            Value :=
              AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

            Unit.Context.Add (+"AMF.Internals.Tables.CMOF_Attributes");

            if Is_Boolean_Type (Property_Type) then
               if not Default.Is_Empty then
                  if (Default.Value.To_Wide_Wide_String = "false"
                        and then not League.Holders.Booleans.Element (Value))
                    or else (Default.Value.To_Wide_Wide_String = "true"
                        and then League.Holders.Booleans.Element (Value))
                  then
                     return;
                  end if;
               end if;

               Unit.Add
                (+"      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                    & To_Ada_Identifier (Property.Get_Name.Value)
                    & " (Base +"
                    & Integer'Wide_Wide_Image
                       (Metamodel_Info.Element_Numbers.Element (Element))
                    & ", ");

               if League.Holders.Booleans.Element (Value) then
                  Unit.Add_Line (+"True);");

               else
                  Unit.Add_Line (+"False);");
               end if;

            elsif Is_Integer_Type (Property_Type) then
               if not Default.Is_Empty then
                  if League.Holders.Integers.Element (Value)
                    = Integer'Wide_Wide_Value
                       (Default.Value.To_Wide_Wide_String)
                  then
                     return;
                  end if;
               end if;

               if Property.Get_Lower = 0 then
                  Unit.Context.Add (+"AMF.Internals.Tables.CMOF_Attributes");
                  Unit.Add
                   (+"      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                       & To_Ada_Identifier (Property.Get_Name.Value)
                       & " (Base +"
                       & Integer'Wide_Wide_Image
                          (Metamodel_Info.Element_Numbers.Element (Element)));
                  Unit.Add_Line
                   (+", (False,"
                       & Integer'Wide_Wide_Image
                          (League.Holders.Integers.Element (Value))
                       & "));");

               else
                  raise Program_Error;
               end if;

            elsif Is_Unlimited_Natural_Type (Property_Type) then
               if not Default.Is_Empty
                 and then not League.Holders.Is_Empty (Value)
                 and then not AMF.Holders.Unlimited_Naturals.Element
                               (Value).Unlimited
               then
                  if AMF.Holders.Unlimited_Naturals.Element (Value).Value
                    = Integer'Wide_Wide_Value
                       (Default.Value.To_Wide_Wide_String)
                  then
                     return;
                  end if;
               end if;

               if Property.Get_Lower = 0 then
                  Unit.Add
                   (+"      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                       & To_Ada_Identifier (Property.Get_Name.Value)
                       & " (Base +"
                       & Integer'Wide_Wide_Image
                          (Metamodel_Info.Element_Numbers.Element (Element))
                       & ", ");

                  if AMF.Holders.Unlimited_Naturals.Element
                      (Value).Unlimited
                  then
                     Unit.Add_Line (+"(False, (Unlimited => True)));");

                  else
                     Unit.Add_Line
                      (+"(False, (False,"
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

               else
                  if not Is_Empty (Value) then
                     Unit.Add_Line
                      (+"      "
                         & "AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                         & To_Ada_Identifier (Property.Get_Name.Value));
                     Unit.Add_Line
                      (+"       (Base +"
                          & Integer'Wide_Wide_Image
                             (Metamodel_Info.Element_Numbers.Element (Element))
                          & ",");
                     Unit.Context.Add
                      (String_Data_Package_Name
                        (Metamodel_Info.all, League.Holders.Element (Value)));
                     Unit.Add_Line
                      ("        "
                         & String_Data_Package_Name
                            (Metamodel_Info.all, League.Holders.Element (Value))
                         & "."
                         & String_Data_Constant_Name
                            (Metamodel_Info.all, League.Holders.Element (Value))
                         & "'Access);");
                  end if;
               end if;

            elsif Is_Parameter_Direction_Kind_Type (Property_Type) then
               --  XXX Check for default value is not implemented.

               Unit.Add
                (+"      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                    & To_Ada_Identifier (Property.Get_Name.Value)
                    & " (Base +"
                    & Integer'Wide_Wide_Image
                       (Metamodel_Info.Element_Numbers.Element (Element))
                    & ", ");

               Unit.Context.Add (+"AMF.CMOF");

               case AMF.CMOF.Holders.Parameter_Direction_Kinds.Element
                     (Value)
               is
                  when AMF.CMOF.In_Parameter =>
                     Unit.Add_Line (+"AMF.CMOF.In_Parameter);");

                  when AMF.CMOF.Out_Parameter =>
                     Unit.Add_Line (+"AMF.CMOF.Out_Direction);");

                  when AMF.CMOF.In_Out_Parameter =>
                     Unit.Add_Line (+"AMF.CMOF.In_Out_Direction);");

                  when AMF.CMOF.Return_Parameter =>
                     Unit.Add_Line (+"AMF.CMOF.Return_Parameter);");
               end case;

            elsif Is_Visibility_Kind_Type (Property_Type) then
               --  XXX Check for default value is not implemented.

               if Property.Is_Multivalued then
                  raise Program_Error;

               elsif Property.Get_Lower = 0 then
                  if League.Holders.Is_Empty (Value) then
                     Unit.Add_Line
                      (+"      "
                          & "AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                          & To_Ada_Identifier (Property.Get_Name.Value)
                          & " (Base +"
                          & Integer'Wide_Wide_Image
                             (Metamodel_Info.Element_Numbers.Element (Element))
                          & ", (Is_Empty => True));");

                  else
                     Unit.Add
                      (+"      "
                          & "AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                          & To_Ada_Identifier (Property.Get_Name.Value)
                          & " (Base +"
                          & Integer'Wide_Wide_Image
                             (Metamodel_Info.Element_Numbers.Element (Element))
                          & ", (False, ");

                     Unit.Context.Add (+"AMF.CMOF");

                     case AMF.CMOF.Holders.Visibility_Kinds.Element
                           (Value)
                     is
                        when AMF.CMOF.Public_Visibility =>
                           Unit.Add_Line (+"AMF.CMOF.Public_Visibility));");

                        when AMF.CMOF.Private_Visibility =>
                           Unit.Add_Line (+"AMF.CMOF.Private_Visibility));");

                        when AMF.CMOF.Protected_Visibility =>
                           Unit.Add_Line (+"AMF.CMOF.Protected_Visibility));");

                        when AMF.CMOF.Package_Visibility =>
                           Unit.Add_Line (+"AMF.CMOF.Package_Visibility));");
                     end case;
                  end if;

               else
                  Unit.Add
                   (+"      "
                       & "AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                       & To_Ada_Identifier (Property.Get_Name.Value)
                       & " (Base +"
                       & Integer'Wide_Wide_Image
                          (Metamodel_Info.Element_Numbers.Element (Element))
                       & ", ");

                  Unit.Context.Add (+"AMF.CMOF");

                  case AMF.CMOF.Holders.Visibility_Kinds.Element
                        (Value)
                  is
                     when AMF.CMOF.Public_Visibility =>
                        Unit.Add_Line (+"AMF.CMOF.Public_Visibility);");

                     when AMF.CMOF.Private_Visibility =>
                        Unit.Add_Line (+"AMF.CMOF.Private_Visibility);");

                     when AMF.CMOF.Protected_Visibility =>
                        Unit.Add_Line (+"AMF.CMOF.Protected_Visibility);");

                     when AMF.CMOF.Package_Visibility =>
                        Unit.Add_Line (+"AMF.CMOF.Package_Visibility);");
                  end case;
               end if;

            else
               --  Enumeration

               Put_Line
                (Standard_Error,
                 "warning: initialization of property of type "
                   & Property_Type.Get_Name.Value.To_Wide_Wide_String
                   & " is not implemented");
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Unit.Add_Line;
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Properties_Initialization;

   --------------------------------------
   -- Generate_Metamodel_Specification --
   --------------------------------------

   procedure Generate_Metamodel_Specification is

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Class_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor);

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor);

      -----------------------------------
      -- Generate_Association_Constant --
      -----------------------------------

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));

      begin
         Put_Line
          ("   function "
             & Association_Constant_Name (Association)
             & " return AMF.Internals.CMOF_Element;");
      end Generate_Association_Constant;

      --------------------------------------------
      -- Generate_Association_Property_Constant --
      --------------------------------------------

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));
         Owned_End   : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Association.Get_Owned_End;

         procedure Generate_Property_Constant
          (Property : not null AMF.CMOF.Properties.CMOF_Property_Access);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Property : not null AMF.CMOF.Properties.CMOF_Property_Access) is
         begin
            Put_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element;");
         end Generate_Property_Constant;

      begin
         for J in 1 .. Owned_End.Length loop
            Generate_Property_Constant (Owned_End.Element (J));
         end loop;
      end Generate_Association_Property_Constant;

      --------------------------------------
      -- Generate_Class_Property_Constant --
      --------------------------------------

      procedure Generate_Class_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
         is
            Property : constant AMF.CMOF.Properties.CMOF_Property_Access
              := AMF.CMOF.Properties.CMOF_Property_Access
                  (CMOF_Named_Element_Ordered_Sets.Element (Position));
            Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
              := Property.Get_Type;

         begin
            Put_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element;");
         end Generate_Property_Constant;

         Class      : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Properties.Insert
             (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
               (Attributes.Element (J)));
         end loop;

         Properties.Iterate (Generate_Property_Constant'Access);
      end Generate_Class_Property_Constant;

      -----------------------------
      -- Generate_Class_Constant --
      -----------------------------

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Put_Line
          ("   function "
             & Type_Constant_Name (Class).To_Wide_Wide_String
             & " return AMF.Internals.CMOF_Element;");
      end Generate_Class_Constant;

      ---------------------------------
      -- Generate_Data_Type_Constant --
      ---------------------------------

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Data_Type : constant AMF.CMOF.Data_Types.CMOF_Data_Type_Access
           := AMF.CMOF.Data_Types.CMOF_Data_Type_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Put_Line
          ("   function "
             & Type_Constant_Name (Data_Type).To_Wide_Wide_String
             & " return AMF.Internals.CMOF_Element;");
      end Generate_Data_Type_Constant;

      -------------------------------
      -- Generate_Package_Constant --
      -------------------------------

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant AMF.CMOF.Packages.CMOF_Package_Access
           := AMF.CMOF.Packages.CMOF_Package_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Put_Line
          ("   function "
             & Package_Constant_Name (Element).To_Wide_Wide_String
             & " return AMF.Internals.CMOF_Element;");
      end Generate_Package_Constant;

   begin
      Put_Header (2010, 2012);
      New_Line;
      Put_Line
       ("package AMF.Internals.Tables."
          & Metamodel_Info.Ada_Name
          & "_Metamodel is");
--      New_Line;
--      Put_Line ("   pragma Preelaborate;");
      New_Line;
      Sort (Metamodel_Info.Packages).Iterate
       (Generate_Package_Constant'Access);
      New_Line;
      Sort (Metamodel_Info.Data_Types).Iterate
       (Generate_Data_Type_Constant'Access);

      if not Metamodel_Info.Classes.Is_Empty then
         New_Line;
         Sort (Metamodel_Info.Classes).Iterate
          (Generate_Class_Constant'Access);
         New_Line;
         Sort (Metamodel_Info.Classes).Iterate
          (Generate_Class_Property_Constant'Access);
      end if;

      if Metamodel_Info.Ada_Name.To_Wide_Wide_String = "CMOF" then
         --  Constants for properties owned by associations needed only to
         --  initialize CMOF model.

         Metamodel_Info.Associations.Iterate
          (Generate_Association_Property_Constant'Access);
      end if;

      if not Metamodel_Info.Associations.Is_Empty then
         New_Line;
         Metamodel_Info.Associations.Iterate
          (Generate_Association_Constant'Access);
      end if;

      if Metamodel_Info.Ada_Name.To_Wide_Wide_String = "CMOF" then
         --  Several subtypes are used in CMOF to be able to bootstrap CMOF
         --  metamodel. Other metamodel uses already created CMOF metamodel.

         New_Line;
         Put_Line ("   subtype CMOF_Meta_Class is");
         Put_Line
          ("     AMF.Internals.CMOF_Element range"
             & Natural'Wide_Wide_Image (Metamodel_Info.First_Class)
             & " .."
             & Natural'Wide_Wide_Image (Metamodel_Info.Last_Class)
             & ";");
         New_Line;
      end if;

      New_Line;
      Put_Line
       ("   function MB_"
          & Metamodel_Info.Ada_Name
          & " return AMF.Internals.AMF_Element;");
      New_Line;
      Put_Line
       ("   function ML_"
          & Metamodel_Info.Ada_Name
          & " return AMF.Internals.AMF_Element;");

      New_Line;
      Put_Line ("   procedure Initialize_Objects;");
      New_Line;
      Put_Line ("   procedure Initialize_Links;");
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables." & Metamodel_Info.Ada_Name & "_Metamodel;");
   end Generate_Metamodel_Specification;

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

   -----------------------------
   -- Is_Visibility_Kind_Type --
   -----------------------------

   function Is_Visibility_Kind_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return
        Element.Get_Name
          = League.Strings.To_Universal_String ("VisibilityKind");
   end Is_Visibility_Kind_Type;

   --------------------
   -- Is_String_Type --
   --------------------

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("String");
   end Is_String_Type;

end Generator.Metamodel;
