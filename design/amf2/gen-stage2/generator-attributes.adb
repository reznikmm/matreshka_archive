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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Containers.Vectors;
with Ada.Strings.Wide_Wide_Fixed;

with AMF.CMOF.Associations;
with AMF.CMOF.Types;
with AMF.CMOF.Properties.Collections;

with Generator.Attribute_Mapping;
with Generator.Names;
with Generator.Type_Mapping;
with Generator.Units;

package body Generator.Attributes is

   use Ada.Strings;
   use Ada.Strings.Wide_Wide_Fixed;
   use Generator.Attribute_Mapping;
   use Generator.Names;
   use type AMF.Optional_String;
   use type League.Strings.Universal_String;

   type Pair is record
      Class     : AMF.CMOF.Classes.CMOF_Class_Access;
      Attribute : AMF.CMOF.Properties.CMOF_Property_Access;
   end record;

   package Pair_Vectors is
     new Ada.Containers.Vectors (Positive, Pair);

   type Homograph_Information is record
      Pairs : Pair_Vectors.Vector;
   end record;

   type Homograph_Information_Access is access all Homograph_Information;

   function Less
    (Left  : Homograph_Information_Access;
     Right : Homograph_Information_Access) return Boolean;

   package Homograph_Sets is
     new Ada.Containers.Ordered_Sets
          (Homograph_Information_Access, Less);

   Getters : Homograph_Sets.Set;

   procedure Analyze;
   --  Analyze classes and prepare information to generate getters and setters.

   procedure Add
    (Set       : in out Homograph_Sets.Set;
     Class     : AMF.CMOF.Classes.CMOF_Class_Access;
     Attribute : AMF.CMOF.Properties.CMOF_Property_Access);
   --  Adds attribute into set of attribute groups.

   procedure Generate_Attributes_Mapping_Constants
    (Unit : in out Generator.Units.Unit;
     Info : not null Metamodel_Information_Access;
     Used : not null Metamodel_Information_Access);
   --  Generates attribute mapping constants.

   String_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");

   ---------
   -- Add --
   ---------

   procedure Add
    (Set       : in out Homograph_Sets.Set;
     Class     : AMF.CMOF.Classes.CMOF_Class_Access;
     Attribute : AMF.CMOF.Properties.CMOF_Property_Access)
   is

      procedure Find_Group (Position : Homograph_Sets.Cursor);

      procedure Find_Class (Position : Pair_Vectors.Cursor);

      Group : Homograph_Information_Access;
      Found : Boolean := False;

      ----------------
      -- Find_Class --
      ----------------

      procedure Find_Class (Position : Pair_Vectors.Cursor) is
         use type AMF.CMOF.Classes.CMOF_Class_Access;

      begin
         if Pair_Vectors.Element (Position).Class = Class then
            Found := True;
         end if;
      end Find_Class;

      ----------------
      -- Find_Group --
      ----------------

      procedure Find_Group (Position : Homograph_Sets.Cursor) is
      begin
         if not Is_Ada_Distinguishable
                 (Homograph_Sets.Element
                   (Position).Pairs.First_Element.Attribute,
                  Attribute,
                  Internal)
         then
            Group := Homograph_Sets.Element (Position);
         end if;
      end Find_Group;

   begin
      Set.Iterate (Find_Group'Access);

      if Group = null then
         Group := new Homograph_Information;
         Group.Pairs.Append ((Class, Attribute));

         if Set.Contains (Group) then
            raise Program_Error;
         end if;

         Set.Insert (Group);

      else
         --  Class can have more than two attributes of the same name connected
         --  into redefinition chain. All these attributes shares the same slot
         --  or collection, so we just check whether no duplications.

         Group.Pairs.Iterate (Find_Class'Access);

         if not Found then
            Group.Pairs.Append ((Class, Attribute));
         end if;
      end if;
   end Add;

   -------------
   -- Analyze --
   -------------

   procedure Analyze is

      procedure Analyze_Class (Position : Class_Information_Maps.Cursor);

      -------------------
      -- Analyze_Class --
      -------------------

      procedure Analyze_Class (Position : Class_Information_Maps.Cursor) is

         procedure Analyze_Attribute (Position : CMOF_Property_Sets.Cursor);

         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);

         -----------------------
         -- Analyze_Attribute --
         -----------------------

         procedure Analyze_Attribute (Position : CMOF_Property_Sets.Cursor) is
         begin
            Add (Getters, Class.Class, CMOF_Property_Sets.Element (Position));
         end Analyze_Attribute;

      begin
         Class.All_Attributes.Iterate (Analyze_Attribute'Access);
      end Analyze_Class;

   begin
      Class_Info.Iterate (Analyze_Class'Access);
   end Analyze;

   ----------------------------------------
   -- Generate_Attributes_Implementation --
   ----------------------------------------

   procedure Generate_Attributes_Implementation is

      procedure Dump_Class (Position : Class_Information_Maps.Cursor);

      procedure Generate_Getter (Position : Homograph_Sets.Cursor);

      procedure Generate_Setter (Position : Homograph_Sets.Cursor);

      Unit : Generator.Units.Unit;

      ----------------
      -- Dump_Class --
      ----------------

      procedure Dump_Class (Position : Class_Information_Maps.Cursor) is

         procedure Dump_Slot (Position : CMOF_Property_Sets.Cursor);

         procedure Dump_Collection (Position : CMOF_Property_Sets.Cursor);

         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);

         ---------------------
         -- Dump_Collection --
         ---------------------

         procedure Dump_Collection (Position : CMOF_Property_Sets.Cursor) is
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);
            Attribute_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            if Metamodel_Info.Attribute_Collection.Contains (Attribute) then
               Unit.Add_Line
                ("   --    "
                   & Integer'Wide_Wide_Image
                      (Metamodel_Info.Attribute_Collection.Element
                        (Attribute))
                   & "  "
                   & Attribute_Class.Get_Name.Value
                   & Attribute_Class.Separator
                   & Attribute.Get_Name.Value);
            end if;
         end Dump_Collection;

         ---------------
         -- Dump_Slot --
         ---------------

         procedure Dump_Slot (Position : CMOF_Property_Sets.Cursor) is
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);
            Attribute_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            if Metamodel_Info.Attribute_Member.Contains (Attribute) then
               Unit.Add_Line
                ("   --    "
                   & Integer'Wide_Wide_Image
                      (Metamodel_Info.Attribute_Member.Element (Attribute))
                   & "  "
                   & Attribute_Class.Get_Name.Value.To_Wide_Wide_String
                   & Attribute_Class.Separator
                   & Attribute.Get_Name.Value.To_Wide_Wide_String);
            end if;
         end Dump_Slot;

      begin
         if Class.Class.Get_Is_Abstract then
            --  Abstract class can't be instantiated.

            return;
         end if;

         Unit.Add_Line;
         Unit.Add_Line ("   --  " & Class.Class.Get_Name.Value);
         Unit.Add_Line (+"   --");
         Class.All_Attributes.Iterate (Dump_Slot'Access);
         Unit.Add_Line (+"   --");
         Class.All_Attributes.Iterate (Dump_Collection'Access);
      end Dump_Class;

      ---------------------
      -- Generate_Getter --
      ---------------------

      procedure Generate_Getter (Position : Homograph_Sets.Cursor) is

         procedure Generate (Position : Pair_Vectors.Cursor);

         Generated : Boolean := False;

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : Pair_Vectors.Cursor) is
            Class           : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Pair_Vectors.Element (Position).Class;
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Pair_Vectors.Element (Position).Attribute;
            Info            : constant Class_Information_Access
              := Class_Info.Element (Class);
            Attribute_Type  : constant AMF.CMOF.Types.CMOF_Type_Access
              := Attribute.Get_Type;

         begin
            if Generated then
               --  Attribute's getter has been generated already.

               return;

            else
               Generated := True;
            end if;

            if Attribute_Type.Get_Name = String_Name then
               --  String is handled in specific way.

               case Representation (Attribute) is
                  when Value | Holder =>
                     Unit.Add_Line (+"      return");
                     Unit.Context.Add
                      ("AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table");
                     Unit.Add_Line
                      ("        AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value;");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Unit.Context.Add
                      ("AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table");
                     Unit.Add
                      ("      return AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Collection_Value;");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Unit.Context.Add
                      ("AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table");
                     Unit.Add
                      ("      return AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Collection_Value;");
               end case;

            elsif Metamodel_Info.Attribute_Member.Contains (Attribute) then
               if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
                  Unit.Add_Line
                   (+"      return");
                  Unit.Context.Add (+"AMF.Internals.Links");
                  Unit.Add_Line
                   (+"        AMF.Internals.Links.Opposite_Element");
                  Unit.Context.Add
                   ("AMF.Internals.Tables."
                      & Metamodel_Name
                      & "_Element_Table");
                  Unit.Add
                   ("         (AMF.Internals.Tables."
                      & Metamodel_Name
                      & "_Element_Table.Table (Self).Member ("
                      & Trim
                         (Integer'Wide_Wide_Image
                           (Metamodel_Info.Attribute_Member.Element
                             (Attribute)),
                          Both)
                      & ").Link, Self, No_"
                      & Metamodel_Name
                      & "_Element)");

               else
                  Unit.Context.Add
                   ("AMF.Internals.Tables."
                      & Metamodel_Name
                      & "_Element_Table");
                  Unit.Add
                   ("      return AMF.Internals.Tables."
                      & Metamodel_Name
                      & "_Element_Table.Table (Self).Member ("
                      & Trim
                         (Integer'Wide_Wide_Image
                           (Metamodel_Info.Attribute_Member.Element
                             (Attribute)),
                          Both)
                      & ").");
                  Unit.Add
                   (Generator.Type_Mapping.Member_Name
                     (Attribute_Type, Representation (Attribute)));
               end if;

               Unit.Add_Line (+";");

            else
               --  Collections are of type Element also.

               Unit.Context.Add
                ("AMF.Internals.Tables." & Metamodel_Name & "_Element_Table");
               Unit.Add_Line
                ("      return AMF.Internals.Tables."
                   & Metamodel_Name
                   & "_Element_Table.Table (Self).Member (0).Collection +"
                   & Integer'Wide_Wide_Image
                      (Metamodel_Info.Attribute_Collection.Element (Attribute))
                   & ";");
            end if;
         end Generate;

         Getter    : constant Homograph_Information_Access
           := Homograph_Sets.Element (Position);
         Attribute : AMF.CMOF.Properties.CMOF_Property_Access
           := Getter.Pairs.First_Element.Attribute;
         Redefined : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
           := Attribute.Get_Redefined_Property;
         Name      : constant League.Strings.Universal_String
           := +"Internal_Get_" & To_Ada_Identifier (Attribute.Get_Name.Value);

      begin
         --  Unwind to original property definition.

         while not Redefined.Is_Empty loop
            Attribute := Redefined.Element (1);
            Redefined := Attribute.Get_Redefined_Property;
         end loop;

         Unit.Add_Header (Name, 3);
         Unit.Add_Line;
         Unit.Add_Line ("   function " & Name);
         Unit.Add_Line
          ("    (Self : AMF.Internals." & Metamodel_Name & "_Element)");
         Unit.Add_Line
          ("       return "
             & Type_Mapping.Internal_Ada_Type_Qualified_Name
                (Attribute.Get_Type, Representation (Attribute))
             & " is");
         Unit.Add_Line (+"   begin");
         Unit.Context.Add
          ("AMF.Internals.Tables." & Metamodel_Name & "_Element_Table");
         Getter.Pairs.Iterate (Generate'Access);
         Unit.Add_Line ("   end " & Name & ";");
      end Generate_Getter;

      ---------------------
      -- Generate_Setter --
      ---------------------

      procedure Generate_Setter (Position : Homograph_Sets.Cursor) is

         use type AMF.CMOF.Properties.CMOF_Property_Access;

         procedure Generate (Position : Pair_Vectors.Cursor);

         Generated : Boolean := False;

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : Pair_Vectors.Cursor) is
            Class           : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Pair_Vectors.Element (Position).Class;
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Pair_Vectors.Element (Position).Attribute;
            Info            : constant Class_Information_Access
              := Class_Info.Element (Class);
            Attribute_Type  : constant AMF.CMOF.Types.CMOF_Type_Access
              := Attribute.Get_Type;
            Association     : constant AMF.CMOF.Associations.CMOF_Association_Access
              := Attribute.Get_Association;

            function Member_Name return Wide_Wide_String;

            -----------------
            -- Member_Name --
            -----------------

            function Member_Name return Wide_Wide_String is
            begin
               if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
                  return "Element";

               else
                  return
                    Generator.Type_Mapping.Member_Name
                     (Attribute_Type,
                      Representation (Attribute)).To_Wide_Wide_String;
               end if;
            end Member_Name;

         begin
            if Generated then
               return;

            else
               Generated := True;
            end if;

            if Attribute_Type.Get_Name = String_Name then
               case Representation (Attribute) is
                  when Value =>
                     Unit.Add_Line (+"      Old :=");
                     Unit.Context.Add
                      ("AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table");
                     Unit.Add_Line
                      ("        AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value;");
                     Unit.Add_Line;
                     Unit.Add_Line
                      ("      "
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value := To;");
                     Unit.Add_Line
                      (+"      "
                          & "Matreshka.Internals.Strings.Reference");
                     Unit.Add_Line
                      ("       ("
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value);");
                     Unit.Add_Line;
                     Unit.Context.Add
                      (+"AMF.Internals.Tables."
                          & To_Ada_Identifier
                             (Owning_Metamodel_Ada_Name (Attribute_Type))
                          & "_Notification");
                     Unit.Add_Line
                      (+"      AMF.Internals.Tables."
                          & To_Ada_Identifier
                             (Owning_Metamodel_Ada_Name (Attribute_Type))
                          & "_Notification.Notify_Attribute_Set");
                     Unit.Context.Add
                      (Property_Constant_Package_Name (Attribute));
                     Unit.Add_Line
                      ("       (Self, "
                         & Property_Constant_Qualified_Name (Attribute)
                         & ", Old, To);");
                     Unit.Add_Line
                      (+"      "
                          & "Matreshka.Internals.Strings.Dereference (Old);");

                  when Holder =>
                     Unit.Context.Add
                      ("AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table");
                     Unit.Add_Line
                      ("      Old := AMF.Internals.Tables."
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value;");
                     Unit.Add_Line;
                     Unit.Add_Line
                      ("      "
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value := To;");
                     Unit.Add_Line;
                     Unit.Add_Line
                      ("      if "
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value /= null then");
                     Unit.Add_Line
                      (+"         "
                          & "Matreshka.Internals.Strings.Reference");
                     Unit.Add_Line
                      ("          ("
                         & Metamodel_Name
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Metamodel_Info.Attribute_Member.Element
                                (Attribute)),
                             Both)
                         & ").String_Value);");
                     Unit.Add_Line (+"      end if;");
                     Unit.Add_Line;
                     Unit.Context.Add
                      (+"AMF.Internals.Tables."
                          & To_Ada_Identifier
                             (Owning_Metamodel_Ada_Name (Attribute_Type))
                          & "_Notification");
                     Unit.Add_Line
                      (+"      AMF.Internals.Tables."
                          & To_Ada_Identifier
                             (Owning_Metamodel_Ada_Name (Attribute_Type))
                          & "_Notification.Notify_Attribute_Set");
                     Unit.Context.Add
                      (Property_Constant_Package_Name (Attribute));
                     Unit.Add_Line
                      ("       (Self, "
                         & Property_Constant_Qualified_Name (Attribute)
                         & ", Old, To);");
                     Unit.Add_Line;
                     Unit.Add_Line (+"      if Old /= null then");
                     Unit.Add_Line
                      (+"         "
                          & "Matreshka.Internals.Strings.Reference (Old);");
                     Unit.Add_Line (+"      end if;");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               Unit.Context.Add (+"AMF.Internals.Links");
               Unit.Add_Line (+"      AMF.Internals.Links.Create_Link");
               Unit.Context.Add
                (Association_Constant_Package_Name (Association));
               Unit.Add_Line
                ("       ("
                   & Association_Constant_Qualified_Name (Association)
                   & ',');

               if Association.Get_Member_End.Element (1) = Attribute then
                  Unit.Add_Line (+"        Self,");
                  Unit.Add_Line (+"        To);");

               elsif Association.Get_Member_End.Element (2) = Attribute then
                  Unit.Add_Line (+"        To,");
                  Unit.Add_Line (+"        Self);");

               else
                  raise Program_Error;
               end if;

            else
               Unit.Context.Add
                ("AMF.Internals.Tables." & Metamodel_Name & "_Element_Table");
               Unit.Add_Line
                ("      Old := AMF.Internals.Tables."
                   & Metamodel_Name
                   & "_Element_Table.Table (Self).Member ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Metamodel_Info.Attribute_Member.Element (Attribute)),
                       Both)
                   & ")."
                   & Member_Name
                   & ";" );
               Unit.Add_Line
                ("      AMF.Internals.Tables."
                   & Metamodel_Name
                   & "_Element_Table.Table (Self).Member ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Metamodel_Info.Attribute_Member.Element (Attribute)),
                       Both)
                   & ")."
                   & Member_Name
                   & " := To;");
               Unit.Add_Line;
               Unit.Context.Add
                (+"AMF.Internals.Tables."
                    & To_Ada_Identifier
                       (Owning_Metamodel_Ada_Name (Attribute_Type))
                    & "_Notification");
               Unit.Add_Line
                (+"      AMF.Internals.Tables."
                    & To_Ada_Identifier
                       (Owning_Metamodel_Ada_Name (Attribute_Type))
                    & "_Notification.Notify_Attribute_Set");
               Unit.Context.Add (Property_Constant_Package_Name (Attribute));
               Unit.Add_Line
                ("       (Self, "
                   & Property_Constant_Qualified_Name (Attribute)
                   & ", Old, To);");
            end if;
         end Generate;

         Getter         : constant Homograph_Information_Access
           := Homograph_Sets.Element (Position);
         Attribute      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := Getter.Pairs.First_Element.Attribute;
         Attribute_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Attribute.Get_Type;
         Name           : constant League.Strings.Universal_String
           := +"Internal_Set_" & To_Ada_Identifier (Attribute.Get_Name.Value);

      begin
         if not Has_Internal_Setter (Attribute) then
            return;
         end if;

         Unit.Add_Header (Name, 3);
         Unit.Add_Line;
         Unit.Add_Line ("   procedure " & Name);
         Unit.Add_Line
          ("    (Self : AMF.Internals." & Metamodel_Name & "_Element;");
         Unit.Add_Line
          ("     To   : "
            & Type_Mapping.Internal_Ada_Type_Qualified_Name
               (Attribute_Type, Representation (Attribute))
            & ")");
         Unit.Add_Line (+"   is");
         Unit.Add_Line
          ("      Old : "
            & Type_Mapping.Internal_Ada_Type_Qualified_Name
               (Attribute_Type, Representation (Attribute))
            & ";");
         Unit.Add_Line;
         Unit.Add_Line (+"   begin");
         Unit.Context.Add
          ("AMF.Internals.Tables." & Metamodel_Name & "_Element_Table");
         Getter.Pairs.Iterate (Generate'Access);
         Unit.Add_Line ("   end " & Name & ";");
      end Generate_Setter;

      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Tables." & Metamodel_Name & "_Attributes";

   begin
      Unit.Add_Unit_Header
       (Integer'Max (2010, Generator.First_Year),
        Integer'Max (2012, Generator.Last_Year));
      Unit.Add_Line;
      Unit.Add_Line ("package body " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line
       (+"   use type Matreshka.Internals.Strings.Shared_String_Access;");
      Class_Info.Iterate (Dump_Class'Access);
      Getters.Iterate (Generate_Getter'Access);
      Getters.Iterate (Generate_Setter'Access);
      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Attributes_Implementation;

   -------------------------------------------
   -- Generate_Attributes_Mapping_Constants --
   -------------------------------------------

   procedure Generate_Attributes_Mapping_Constants
    (Unit : in out Generator.Units.Unit;
     Info : not null Metamodel_Information_Access;
     Used : not null Metamodel_Information_Access)
   is

      procedure Generate_Collection (Position : Class_Information_Maps.Cursor);

      procedure Generate_Slot (Position : Class_Information_Maps.Cursor);

      First_Class : Boolean := True;

      -------------------------
      -- Generate_Collection --
      -------------------------

      procedure Generate_Collection
       (Position : Class_Information_Maps.Cursor)
      is

         procedure Generate (Position : CMOF_Property_Sets.Cursor);

         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : CMOF_Property_Sets.Cursor) is
            Attribute : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);
            Owner     : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            if not Metamodel_Info.Attribute_Collection.Contains (Attribute)
              or else not Used.Element_Numbers.Contains
                           (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
            then
               --  XXX First condition should be described.
               --  ... or there is no mapping for this attribute in the
               --  metamodel (thus, attributes is defined in another
               --  metamodel).

               return;
            end if;

            Unit.Add
             (+Trim
                (Integer'Wide_Wide_Image
                  (Used.Element_Numbers.Element
                    (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))),
                 Both));
            Unit.Set_Column (18);
            Unit.Add
             (+" =>"
                 & Integer'Wide_Wide_Image
                    (Metamodel_Info.Attribute_Collection.Element (Attribute))
                 & ",");
            Unit.Set_Column (29);
            Unit.Add_Line
             ("--  "
                & Owner.Get_Name.Value
                & Owner.Separator
                & Attribute.Get_Name.Value);
            Unit.Add (+"           ");
         end Generate;

      begin
         if Class.Class.Get_Is_Abstract then
            return;
         end if;

         if First_Class then
            First_Class := False;

         else
            Unit.Add_Line (+",");
            Unit.Add (+"         ");
         end if;

         Unit.Context.Add ("AMF.Internals.Tables." & Info.Ada_Name & "_Types");
         Unit.Add_Line
          ("AMF.Internals.Tables."
             & Info.Ada_Name
             & "_Types.E_"
             & To_Ada_Identifier (Class.Class.Get_Name.Value)
             & " =>");
         Unit.Add (+"          (");
         Class.All_Attributes.Iterate (Generate'Access);
         Unit.Add (+"others => 0)");
      end Generate_Collection;

      -------------------
      -- Generate_Slot --
      -------------------

      procedure Generate_Slot (Position : Class_Information_Maps.Cursor) is

         procedure Generate (Position : CMOF_Property_Sets.Cursor);

         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : CMOF_Property_Sets.Cursor) is
            Attribute : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);
            Owner     : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            if not Metamodel_Info.Attribute_Member.Contains (Attribute)
              or else not Used.Element_Numbers.Contains
                           (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
            then
               --  XXX First condition should be described.
               --  ... or there is no mapping for this attribute in the
               --  metamodel (thus, attributes is defined in another
               --  metamodel).

               return;
            end if;

            Unit.Add
             (+Trim
                (Integer'Wide_Wide_Image
                  (Used.Element_Numbers.Element
                    (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))),
                 Both));
            Unit.Set_Column (18);
            Unit.Add
             (+" =>"
                 & Integer'Wide_Wide_Image
                    (Metamodel_Info.Attribute_Member.Element (Attribute))
                 & ",");
            Unit.Set_Column (29);
            Unit.Add_Line
             ("--  "
                & Owner.Get_Name.Value
                & Owner.Separator
                & Attribute.Get_Name.Value);
            Unit.Add (+"           ");
         end Generate;

      begin
         if Class.Class.Get_Is_Abstract then
            return;
         end if;

         if First_Class then
            First_Class := False;

         else
            Unit.Add_Line (+",");
            Unit.Add (+"         ");
         end if;

         Unit.Context.Add
          ("AMF.Internals.Tables." & Metamodel_Name & "_Types");
         Unit.Add_Line
          ("AMF.Internals.Tables."
             & Metamodel_Name
             & "_Types.E_"
             & To_Ada_Identifier (Class.Class.Get_Name.Value)
             & " =>");
         Unit.Add (+"          (");
         Class.All_Attributes.Iterate (Generate'Access);
         Unit.Add (+"others => 0)");
      end Generate_Slot;

   begin
      Unit.Add_Line;
      Unit.Add_Line ("   " & Used.Ada_Name & "_Collection_Offset : constant");
      Unit.Add_Line
       ("     array (AMF.Internals.Tables."
          & Info.Ada_Name
          & "_Types.Element_Kinds,");
      Unit.Add_Line
       (+"            AMF.Internals.CMOF_Element range"
           & Integer'Wide_Wide_Image (Used.First_Class_Property)
           & " .."
           & Integer'Wide_Wide_Image (Used.Last_Multiple_Class_Property)
           & ")");
      Unit.Add_Line (+"       of AMF.Internals.AMF_Collection_Of_Element :=");
      Unit.Add_Line
       (+"        (AMF.Internals.Tables."
           & Metamodel_Name
           & "_Types.E_None =>");
      Unit.Add_Line (+"          (others => 0),");
      Unit.Add (+"         ");
      Class_Info.Iterate (Generate_Collection'Access);
      Unit.Add_Line (+");");
      Unit.Add_Line;
      Unit.Add_Line ("   " & Used.Ada_Name & "_Member_Offset : constant");
      Unit.Add_Line
       ("     array (AMF.Internals.Tables."
          & Info.Ada_Name
          & "_Types.Element_Kinds,");
      Unit.Add_Line
       (+"            AMF.Internals.CMOF_Element range"
           & Integer'Wide_Wide_Image (Used.Last_Multiple_Class_Property + 1)
           & " .."
           & Integer'Wide_Wide_Image (Used.Last_Class_Property)
           & ") of Natural :=");
      Unit.Add_Line
       (+"        (AMF.Internals.Tables."
           & Metamodel_Name
           & "_Types.E_None =>");
      Unit.Add_Line (+"          (others => 0),");
      Unit.Add (+"         ");
      First_Class := True;
      Class_Info.Iterate (Generate_Slot'Access);
      Unit.Add_Line (+");");
   end Generate_Attributes_Mapping_Constants;

   -----------------------------------------------
   -- Generate_Attributes_Mapping_Specification --
   -----------------------------------------------

   procedure Generate_Attributes_Mapping_Specification is
      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Tables."
             & Metamodel_Info.Ada_Name
             & "_Attribute_Mappings";
      Unit         : Generator.Units.Unit;
      Position     : AMF.Extents.Collections.Extent_Sets.Cursor;

   begin
      Unit.Add_Unit_Header
       (Integer'Max (2010, Generator.First_Year),
        Integer'Max (2012, Generator.Last_Year));
      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Unit.Add_Line;
      Unit.Add_Line (+"   pragma Preelaborate;");

      Position := Used_Extents.First;

      while AMF.Extents.Collections.Extent_Sets.Has_Element (Position) loop
         Generate_Attributes_Mapping_Constants
          (Unit,
           Metamodel_Info,
           Metamodel_Infos.Element
            (AMF.Extents.Collections.Extent_Sets.Element (Position)));

         AMF.Extents.Collections.Extent_Sets.Next (Position);
      end loop;

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Attributes_Mapping_Specification;

   ---------------------------------------
   -- Generate_Attributes_Specification --
   ---------------------------------------

   procedure Generate_Attributes_Specification is

      procedure Generate_Getter (Position : Homograph_Sets.Cursor);

      Unit : Generator.Units.Unit;

      ---------------------
      -- Generate_Getter --
      ---------------------

      procedure Generate_Getter (Position : Homograph_Sets.Cursor) is

         procedure Generate_Usage (Position : Pair_Vectors.Cursor);

         --------------------
         -- Generate_Usage --
         --------------------

         procedure Generate_Usage (Position : Pair_Vectors.Cursor) is
            Class           : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Pair_Vectors.Element (Position).Class;
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Pair_Vectors.Element (Position).Attribute;
            Attribute_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            Unit.Add_Line
             ("   --  "
                & Class.Get_Name.Value
                & " => "
                & Attribute_Class.Get_Name.Value
                & Attribute_Class.Separator
                & Attribute.Get_Name.Value);
         end Generate_Usage;

         Getter    : constant Homograph_Information_Access
           := Homograph_Sets.Element (Position);
         Attribute : AMF.CMOF.Properties.CMOF_Property_Access
           := Getter.Pairs.First_Element.Attribute;
         Redefined : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
           := Attribute.Get_Redefined_Property;
         Get_Name  : constant League.Strings.Universal_String
           := +"Internal_Get_" & To_Ada_Identifier (Attribute.Get_Name.Value);
         Set_Name  : constant League.Strings.Universal_String
           := +"Internal_Set_" & To_Ada_Identifier (Attribute.Get_Name.Value);
         Type_Name : League.Strings.Universal_String;

      begin
         --  Unwind to original property definition.

         while not Redefined.Is_Empty loop
            Attribute := Redefined.Element (1);
            Redefined := Attribute.Get_Redefined_Property;
         end loop;

         Type_Name :=
           Generator.Type_Mapping.Internal_Ada_Type_Qualified_Name
            (Attribute.Get_Type, Representation (Attribute));

         Unit.Add_Line;
         Unit.Add_Line ("   function " & Get_Name);
         Unit.Context.Add
          (Generator.Type_Mapping.Internal_Ada_Package_Name
            (Attribute.Get_Type, Representation (Attribute)));
         Unit.Add_Line
          ("    (Self : AMF.Internals." & Metamodel_Name & "_Element)");
         Unit.Add_Line ("       return " & Type_Name & ";");

         if Has_Internal_Setter (Attribute) then
            Unit.Add_Line ("   procedure " & Set_Name);
            Unit.Add_Line
             ("    (Self : AMF.Internals." & Metamodel_Name & "_Element;");
            Unit.Add_Line ("     To   : " & Type_Name & ");");
         end if;

         Getter.Pairs.Iterate (Generate_Usage'Access);
      end Generate_Getter;

      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Tables." & Metamodel_Name & "_Attributes";

   begin
      Analyze;

      Unit.Add_Unit_Header
       (Integer'Max (2010, Generator.First_Year),
        Integer'Max (2011, Generator.Last_Year));
      Unit.Add_Line;
      Unit.Add_Line ("package " & Package_Name & " is");
      Getters.Iterate (Generate_Getter'Access);
      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Attributes_Specification;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : Homograph_Information_Access;
     Right : Homograph_Information_Access) return Boolean is
   begin
      return
        Less
         (Left.Pairs.First_Element.Attribute,
          Right.Pairs.First_Element.Attribute);
   end Less;

end Generator.Attributes;
