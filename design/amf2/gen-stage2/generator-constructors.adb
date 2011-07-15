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
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Enumeration_Literals.Collections;
with AMF.CMOF.Enumerations;
with AMF.CMOF.Types;
with League.Strings;

with Generator.Names;
with Generator.Type_Mapping;
with Generator.Wide_Wide_Text_IO;

package body Generator.Constructors is

   use Ada.Strings;
   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;

   Boolean_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Boolean");
   Integer_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");
   Real_Name              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Real");
   String_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");
   Unlimited_Natural_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UnlimitedNatural");

   Unlimited_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("*");

   ------------------------------------------
   -- Generate_Constructors_Implementation --
   ------------------------------------------

   procedure Generate_Constructors_Implementation is

      procedure Generate_With (Position : Class_Information_Maps.Cursor);
      --  Generates with clause for proxy package.

      procedure Generate_Create (Position : Class_Information_Maps.Cursor);

      ---------------------
      -- Generate_Create --
      ---------------------

      procedure Generate_Create (Position : Class_Information_Maps.Cursor) is
         use type AMF.Optional_String;

         Class          : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name     : constant League.Strings.Universal_String
           := Class.Class.Get_Name.Value;
         Name           : constant Wide_Wide_String
           := "Create_" & To_Ada_Identifier (Class.Class.Get_Name.Value);
         Element_Kind   : constant Wide_Wide_String
           := "E_" & To_Ada_Identifier (Class.Class.Get_Name.Value);
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;
         Default        : AMF.Optional_String;

      begin
         Put_Header (Name, 3);
         New_Line;
         Put_Line
          ("   function "
             & Name
             & " return AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element is");
         Put_Line
          ("      Self : AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element;");
         New_Line;
         Put_Line ("   begin");
         Put_Line
          ("      "
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element_Table.Increment_Last;");
         Put_Line
          ("      Self := "
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element_Table.Last;");
         New_Line;
         Put_Line
          ("      "
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element_Table.Table (Self) :=");
         Put_Line ("       (Kind     => " & Element_Kind & ",");
         Put_Line ("        Extent   => 0,");
         Put_Line ("        Proxy    =>");
         Put_Line
          ("          new AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_"
             & Plural (To_Ada_Identifier (Class_Name))
             & "."
             & Metamodel_Name.To_Wide_Wide_String
             & "_"
             & To_Ada_Identifier (Class_Name)
             & "_Proxy'(Id => Self),");
         Put_Line ("        Member   => (0      => (Kind => M_None),");

         for J in 1 .. Natural (Class.Slot_Index.Length) loop
            Attribute := Class.Slot_Index.Element (J);
            Attribute_Type := Attribute.Get_Type;
            Default := Attribute.Get_Default;

            Put ("                    " & Integer'Wide_Wide_Image (J));
            Set_Col (29);
            Put ("=>");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        Put (" (M_Element, 0),");

                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                        raise Program_Error;
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        Put (" (M_Element, 0),");

                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                        raise Program_Error;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.all
                    in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
            then
               --  Enumeration type

               Put
                (" ("
                   & Generator.Type_Mapping.Member_Kind_Name
                      (Attribute_Type,
                       Representation (Attribute)).To_Wide_Wide_String);

               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        --  There is no default value specified, initialize to
                        --  the value of first enumeration literal.

                        Put
                         (", "
                            & Type_Mapping.Ada_Enumeration_Literal_Name
                               (AMF.CMOF.Enumerations.CMOF_Enumeration'Class
                                 (Attribute_Type.all).Get_Owned_Literal.Element
                                   (1)).To_Wide_Wide_String
                            & "),");

                     else
                        declare
                           use type AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;

                           Literals : constant
                             AMF.CMOF.Enumeration_Literals.Collections.Ordered_Set_Of_CMOF_Enumeration_Literal
                                 := AMF.CMOF.Enumerations.CMOF_Enumeration'Class
                                     (Attribute_Type.all).Get_Owned_Literal;
                           Literal  :
                             AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access;

                        begin
                           for J in 1 .. Literals.Length loop
                              if Literals.Element (J).Get_Name = Default then
                                 Literal := Literals.Element (J);

                                 exit;
                              end if;
                           end loop;

                           if Literal = null then
                              raise Program_Error;
                           end if;

                           Put
                            (", "
                               & Type_Mapping.Ada_Enumeration_Literal_Name
                                  (Literal).To_Wide_Wide_String
                               & "),");
                        end;
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        Put (", (Is_Empty => True)),");

                     else
                        raise Program_Error;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        if Boolean'Wide_Wide_Value
                            (Default.Value.To_Wide_Wide_String)
                        then
                           Put (" (M_Boolean, True),");

                        else
                           Put (" (M_Boolean, False),");
                        end if;
                     end if;

                  when Holder =>
                     Put (" (M_Boolean_Holder, (Is_Empty => True)),");

                  when Set =>
                     Put (" (M_Collection_Of_Boolean, 0),");

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Integer_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        Put
                         (" (M_Integer,"
                            & Integer'Wide_Wide_Image
                               (Integer'Wide_Wide_Value
                                 (Default.Value.To_Wide_Wide_String))
                            & "),");
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        Put
                         (" (M_Integer_Holder, (False,"
                            & Integer'Wide_Wide_Image
                               (Integer'Wide_Wide_Value
                                 (Default.Value.To_Wide_Wide_String))
                            & ")),");
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = String_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        Put (" (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),");

                     else
                        raise Program_Error;
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        Put (" (M_String, null),");

                     else
                        raise Program_Error;
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Put (" (M_Collection_Of_String, 0),");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Put (" (M_Collection_Of_String, 0),");
               end case;

            elsif Attribute_Type.Get_Name = Real_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        Put (" (M_Real, 0.0),");

                     else
--                        if Boolean'Wide_Wide_Value
--                            (Default.Value.To_Wide_Wide_String)
--                        then
--                           Put (" (M_Boolean, True),");
--
--                        else
--                           Put (" (M_Boolean, False),");
--                        end if;
                        raise Program_Error;
                     end if;

                  when Holder =>
--                     if Default.Is_Empty then
                        raise Program_Error;
--
--                     else
--                        if Default = Unlimited_Image then
--                           raise Program_Error;
--
--                        else
--                           New_Line;
--                           Set_Col (22);
--                           Put
--                            (" (M_Unlimited_Natural_Holder, (False, (False,"
--                               & Integer'Wide_Wide_Image
--                                  (Integer'Wide_Wide_Value
--                                    (Default.Value.To_Wide_Wide_String))
--                               & "))),");
--                        end if;
--                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Unlimited_Natural_Name then
               case Representation (Attribute) is
                  when Value =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        Put
                         (" (M_Unlimited_Natural, (False,"
                               & Integer'Wide_Wide_Image
                                  (Integer'Wide_Wide_Value
                                    (Default.Value.To_Wide_Wide_String))
                               & ")),");
                     end if;

                  when Holder =>
                     if Default.Is_Empty then
                        raise Program_Error;

                     else
                        if Default = Unlimited_Image then
                           raise Program_Error;

                        else
                           New_Line;
                           Set_Col (22);
                           Put
                            (" (M_Unlimited_Natural_Holder, (False, (False,"
                               & Integer'Wide_Wide_Image
                                  (Integer'Wide_Wide_Value
                                    (Default.Value.To_Wide_Wide_String))
                               & "))),");
                        end if;
                     end if;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            else
               raise Program_Error;
            end if;

            New_Line;
            Put_Line
             ("                       --  "
                & Attribute.Get_Name.Value.To_Wide_Wide_String);
         end loop;

         Put_Line ("                     others => (Kind => M_None)));");
         Put_Line
          ("      "
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element_Table.Table (Self).Member (0) :=");
         Put_Line ("       (M_Collection_Of_Element,");
         Put_Line
          ("        AMF.Internals.Element_Collections.Allocate_Collections ("
             & Trim
                (Ada.Containers.Count_Type'Wide_Wide_Image
                  (Class.Collection_Index.Length),
                 Both)
             & "));");

         for J in 1 .. Natural (Class.Collection_Index.Length) loop
            Attribute := Class.Collection_Index.Element (J);

               New_Line;
               Put_Line
                ("      --  " & Attribute.Get_Name.Value.To_Wide_Wide_String);
               New_Line;

            case Representation (Attribute) is
               when Value =>
                  raise Program_Error;

               when Holder =>
                  raise Program_Error;

               when Set =>
                  Put_Line
                   ("      "
                      & "AMF.Internals.Element_Collections"
                      & ".Initialize_Set_Collection");

               when Ordered_Set =>
                  Put_Line
                   ("      "
                      & "AMF.Internals.Element_Collections"
                      & ".Initialize_Ordered_Set_Collection");

               when Bag =>
                  raise Program_Error;

               when Sequence =>
                  raise Program_Error;
            end case;

            Put_Line
             ("       (Self,");
            Put_Line
             ("        " & Property_Constant_Name (Attribute) & ",");
            Put_Line
             ("        "
                & Metamodel_Name.To_Wide_Wide_String
                & "_Element_Table.Table (Self).Member (0).Collection +"
                & Integer'Wide_Wide_Image (J) & ");");
         end loop;

         New_Line;
         Put_Line ("      return Self;");
         Put_Line ("   end " & Name & ";");
      end Generate_Create;

      -------------------
      -- Generate_With --
      -------------------

      procedure Generate_With
       (Position : Class_Information_Maps.Cursor)
      is
         Class          : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name     : constant League.Strings.Universal_String
           := Class.Class.Get_Name.Value;

      begin
         if not Class.Class.Get_Is_Abstract then
            Put_Line
             ("with AMF.Internals."
                & Metamodel_Name.To_Wide_Wide_String
                & "_"
                & Plural (To_Ada_Identifier (Class_Name))
                & ";");
         end if;
      end Generate_With;

   begin
      Put_Header;
      Put_Line ("with AMF." & Metamodel_Name.To_Wide_Wide_String & ";");
      Class_Info.Iterate (Generate_With'Access);
      Put_Line ("with AMF.Internals.Element_Collections;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Element_Table;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types;");
      Put_Line ("with Matreshka.Internals.Strings;");
      New_Line;
      Put_Line
       ("package body AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Constructors is");
      New_Line;
      Put_Line ("   use AMF.Internals.Tables;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types;");
      Put_Line ("   use type AMF.Internals.AMF_Collection_Of_Element;");
      Class_Info.Iterate (Generate_Create'Access);
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Constructors;");
   end Generate_Constructors_Implementation;

   -----------------------------------------
   -- Generate_Constructors_Specification --
   -----------------------------------------

   procedure Generate_Constructors_Specification is

      procedure Generate_Create (Position : Class_Information_Maps.Cursor);

      ---------------------
      -- Generate_Create --
      ---------------------

      procedure Generate_Create (Position : Class_Information_Maps.Cursor) is
         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Name  : constant Wide_Wide_String
           := "Create_" & To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         New_Line;
         Put_Line
          ("   function "
             & Name
             & " return AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element;");
      end Generate_Create;

   begin
      Put_Header;

      New_Line;
      Put_Line
       ("package AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Constructors is");
      Class_Info.Iterate (Generate_Create'Access);
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Constructors;");
   end Generate_Constructors_Specification;

end Generator.Constructors;
